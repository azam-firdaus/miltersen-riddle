def generate_array(x)
    # 'to_a' untuk tukarkan ke array
    array_limit = (1..x).to_a
    return array_limit
end

def loop_find(kotak, bil_banduan)

    jumpa = 1
    texttt = ""
    # x = 1
    # current_banduan = x
    # kotak_awal = kotak[x]
    # current_kotak = kotak_awal 
    # kotak_cari = x
    # bilangan_loop = 1

    # puts "-----------------------------"
    # puts "current_banduan \t: #{current_banduan}"
    # puts "kotak_awal \t\t: #{kotak_awal}"
    # puts "\n"
    # puts "-----------------------------"

    # puts "\n###################################\n"
    # puts "kotak \t:#{x} =>  nombor \t:#{kotak_awal}"
    # puts "Chain \t:#{bilangan_loop}"    
    # puts "\n###################################\n"
    
    # while bilangan_loop <= bil_banduan  and kotak_cari != kotak_awal

    #     current_kotak = kotak_awal
    #     kotak_awal = kotak[current_kotak]

    #     bilangan_loop = bilangan_loop + 1;

    #     puts "kotak \t:#{current_kotak} =>  nombor \t:#{kotak_awal}"
    #     puts "Chain \t:#{bilangan_loop}"
    #     puts "###################################\n"
    # end

    # puts "\n\n bilangan loop untuk banduan #{x} \t: #{bilangan_loop}" 



    (1..(kotak.size())).each do |x|

        kotak_awal = kotak[x]
        current_kotak = kotak_awal 
        kotak_cari = x
        bilangan_loop = 1

        while bilangan_loop <= bil_banduan && kotak_cari != kotak_awal
            current_kotak = kotak_awal
            kotak_awal = kotak[current_kotak]
            bilangan_loop = bilangan_loop + 1;
        end
        
        if bilangan_loop <= bil_banduan/2
            jumpa = jumpa + 1
            texttt << "Bilangan loop untuk banduan #{x} \t: #{bilangan_loop} \n"
        end
    end   

    if jumpa != 0 && jumpa/bil_banduan == 1
        puts texttt
        return "banduan bebas"
    else
        return "banduan fail"
    end
end

# TUKAR BILANGAN BANDUAN DISINI
bilangan_prisoner = 100

if bilangan_prisoner.even?
    bilangan_prisoner = bilangan_prisoner
else
    bilangan_prisoner = bilangan_prisoner + 1
end

kotak = generate_array(bilangan_prisoner)

# untuk random kan array
# array.shuffle

kertas = kotak.shuffle
bilik = Hash.new



# create pair kotak-kertas
(0..(bilangan_prisoner-1)).each do |k|
    bilik[kotak[k]] = kertas[k]
end


# example pair kotak-kertas
bilik2 = {
    1=>15, 2=>21, 3=>85, 4=>91, 5=>22, 6=>63, 7=>56, 8=>75, 
    9=>67, 10=>83, 11=>66, 12=>39, 13=>55, 14=>37, 15=>50, 
    16=>18, 17=>46, 18=>27, 19=>74, 20=>68, 21=>53, 22=>93, 
    23=>26, 24=>64, 25=>42, 26=>72, 27=>9, 28=>34, 29=>52, 
    30=>88, 31=>14, 32=>77, 33=>96, 34=>41, 35=>73, 36=>95, 
    37=>47, 38=>49, 39=>5, 40=>16, 41=>31, 42=>69, 43=>58, 
    44=>79, 45=>12, 46=>8, 47=>19, 48=>25, 49=>86, 50=>36, 
    51=>94, 52=>33, 53=>100, 54=>6, 55=>84, 56=>2, 57=>78, 
    58=>32, 59=>13, 60=>1, 61=>71, 62=>44, 63=>92, 64=>61, 
    65=>76, 66=>38, 67=>81, 68=>23, 69=>90, 70=>62, 71=>82, 
    72=>11, 73=>80, 74=>10, 75=>57, 76=>45, 77=>87, 78=>97, 
    79=>40, 80=>65, 81=>59, 82=>3, 83=>24, 84=>89, 85=>35, 
    86=>29, 87=>4, 88=>54, 89=>20, 90=>7, 91=>51, 92=>99, 
    93=>70, 94=>17, 95=>43, 96=>98, 97=>48, 98=>60, 99=>28, 100=>30
}


loooop = 1
while loop_find(bilik, bilangan_prisoner) !=  "banduan bebas"
    loooop = loooop + 1
    kotak = generate_array(bilangan_prisoner)

    # untuk random kan array
    # array.shuffle

    kertas = kotak.shuffle
    bilik = Hash.new



    # create pair kotak-kertas
    (0..(bilangan_prisoner-1)).each do |k|
        bilik[kotak[k]] = kertas[k]
    end
end

puts "\n$$$$$$$$$$$$$$$$$$$$$$$$$$$\nBagi banduan seramai #{bilangan_prisoner}"
puts "Cuma 1 dalam #{loooop} percubaan yang berjaya"

# puts loop_find(bilik, bilangan_prisoner)

# puts bilik
# loop_find(bilik2, bilangan_prisoner)
# puts bilik2

# masukkan key/find value berdasarkan key
# bilik.fetch_values(1) 

# masukkan value/find key berdasarkan value
# bilik.fetch(1) 

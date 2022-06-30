require 'pry'   

def generate_array(x)
    # 'to_a' untuk tukarkan ke array
    prime_limit = (1..x).to_a
    return prime_limit
end

def loop_find(kotak)

    x = 1
    current_banduan = x
    kotak_awal = kotak[x]
    current_kotak = kotak_awal 
    kotak_cari = x
    bilangan_loop = 0

    puts "-----------------------------"
    puts "current_banduan \t: #{current_banduan}"
    puts "kotak_awal \t\t: #{kotak_awal}"
    puts "\n"
    puts "-----------------------------"

    puts "\n###################################\n"
    puts "kotak \t:#{x} =>  nombor \t:#{kotak_awal}"
    puts "\n###################################\n"
    
    while bilangan_loop <= 100  and kotak_cari != kotak_awal

        current_kotak = kotak_awal
        kotak_awal = kotak[current_kotak]

        # current_kotak = kotak.fetch(kotak_awal)
        bilangan_loop = bilangan_loop + 1;

        puts "\n###################################\n"
        puts "kotak \t:#{current_kotak} =>  nombor \t:#{kotak_awal}"
        puts "\n###################################\n"
    end

    puts "\n\n bilangan loop untuk banduan #{x} \t: #{bilangan_loop}" 

    (0..(kotak.size()-1)).each do |x|
        current_banduan = x
        kotak_awal = kotak[x]
        current_kotak = kotak_awal 
        kotak_cari = x
        bilangan_loop = 0
    end    
end


bilangan_prisoner = 100

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
    1=>28, 2=>20, 3=>54, 4=>74, 5=>92, 6=>97, 7=>83, 
    8=>15, 9=>26, 10=>52, 11=>5, 12=>34, 13=>84, 14=>9, 
    15=>75, 16=>53, 17=>14, 18=>23, 19=>90, 20=>55, 
    21=>17, 22=>19, 23=>33, 24=>81, 25=>45, 26=>65, 
    27=>41, 28=>43, 29=>4, 30=>25, 31=>82, 32=>86, 
    33=>58, 34=>88, 35=>85, 36=>39, 37=>47, 38=>30, 
    39=>96, 40=>72, 41=>60, 42=>40, 43=>44, 44=>67, 
    45=>63, 46=>61, 47=>29, 48=>59, 49=>91, 50=>99, 
    51=>42, 52=>71, 53=>73, 54=>57, 55=>64, 56=>32, 
    57=>11, 58=>100, 59=>2, 60=>89, 61=>78, 62=>6, 
    63=>3, 64=>8, 65=>36, 66=>87, 67=>94, 68=>51, 
    69=>21, 70=>62, 71=>56, 72=>35, 73=>49, 74=>70, 
    75=>22, 76=>31, 77=>1, 78=>93, 79=>95, 80=>98, 
    81=>27, 82=>13, 83=>68, 84=>37, 85=>7, 86=>12, 
    87=>48, 88=>80, 89=>77, 90=>46, 91=>50, 92=>76, 
    93=>24, 94=>79, 95=>38, 96=>18, 97=>69, 98=>10, 99=>16, 100=>66
}


loop_find(bilik)
# puts loop_find(bilik2)



# masukkan key/find value berdasarkan key
# bilik.fetch_values(1) 

# masukkan value/find key berdasarkan value
# bilik.fetch(1) 

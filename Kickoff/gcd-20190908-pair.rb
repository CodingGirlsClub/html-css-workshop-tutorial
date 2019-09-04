tutors  = ["文洋","Jonathan","李燕伦","康雪婷","曹蓉","高乐","莫圆圈","文圆承"]
girls   = ["华华","刘帆","Chih Yi Pan","张洁","吴陈","窦俊楠","徐歆雯","赵梅星",
          "王冬梅","李京予","姜佳慧","郑代茵美","刁媛媛","金晶慧","朱妍","杨洁",
          "李丹","刘师晴","陈丽君","朱明丽","世间一痴傻人","徐琤","张国玮","徐未般",
          "张田园","赵可佳","周斯民","荣章歆","yan guanjun","刘日南","志华",
          "Cynthia Li","周航","Cynthia Li"]

# 大乐透地址 http://www.lottery.gov.cn/dlt/index.html
number = 51015193103046
tutors = tutors.shuffle(random: Random.new(number))
girls = girls.shuffle(random: Random.new(number))
result = Hash.new { |hash, key| hash[key] = [] }

tutors.cycle(5).each_with_index do |tutor, i|
  result[tutor] << (girls[i] || "未配对")
end

result.each do |key, value|
  puts "#{key} => #{value.join(", ")}"
end
#DDMMSS.SSSからDD.DDDDDDDに変換する
def dms2ddd(dms)
   num = 0
   dms = dms.to_s
   
   case  dms.to_f.floor.to_s.length
      when 7
         num = 2
      when 6
         num = 1
   end

   dd = dms.slice(0 .. 0 + num)
   mm = dms.slice(1 + num .. 2 + num)
   ss = dms.slice(3 + num .. dms.length - 1)

   dms2ddd = dd.to_f + mm.to_f / 60 + ss.to_f / 3600
end

#DD.DDDDDDDからDDMMSS.SSSに変換する
def ddd2dms(ddd)

   dd = ddd.to_f.floor
   mm = ((ddd.to_f - dd) * 60)
   ss = ((mm - mm.floor) * 60)

   if ss.floor.to_s.length == 1
      sss = "0" + ss.to_s
   elsif
      sss = ss.to_s
   end

   ddd2dms = (dd * 100 +  mm).floor.to_s + sss
end

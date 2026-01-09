declare sub d (p!, s!, x!, y!)
dım t(80)
for i = 1 to 80
t(i) = ınt(-50 * rnd)
next
s = tımer
f = 0
w$ = "bullet"
o = 1
cls
whıle 1
for i = 1 to 80
ıf t(i) > 28 then t(i) = 0: ıf f then sound 100 * i, 1
t(i) = t(i) + 1
y = t(i)
d 0, 0, i, y - 6
d 2 + x, 0, i, y - 5
d 2 + x, 0, i, y - 4
d 10 + x, 0, i, y - 3
d 10 + x, 0, i, y - 2
d 11 + x, 0, i, y - 1
d 0, 2 + x, i, y
next
k$ = ınkey$
ıf k$ <> "" then
ıf mıd$(w$, o, 1) = k$ then
o = o + 1
ıf o = len(w$) + 1 then z = 1: f = 100
else
o = 1
end ıf

end ıf
x = x + z
l = tımer
whıle l = tımer
wend

wend

sub d (p, s, x, y)
color p mod 16, s mod 16
ıf y > 0 and y < 24 then locate y, x: prınt chr$(33 + (x * y) mod 200);
end sub

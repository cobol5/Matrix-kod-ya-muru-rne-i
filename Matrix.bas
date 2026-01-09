declare sub d (p!, s!, x!, y!)
dim t(80)
for i = 1 to 80
t(i) = int(-50 * rnd)
next
s = timer
f = 0
w$ = "bullet"
o = 1
cls
while 1
for i = 1 to 80
if t(i) > 28 then t(i) = 0: if f then sound 100 * i, 1
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
k$ = inkey$
if k$ <> "" then
if mid$(w$, o, 1) = k$ then
o = o + 1
if o = len(w$) + 1 then z = 1: f = 100
else
o = 1
if k$=chr$(27) then end
end if

end if
x = x + z
l = timer
while l = timer
wend

wend

sub d (p, s, x, y)
color p mod 16, s mod 16
if y > 0 and y < 24 then locate y, x: print chr$(33 + (x * y) mod 200);
end sub

assembly = open("assemblyInput.txt", "r")
# print assembly

binary_code = open("binary.txt", "w")
binary_list = []
# binary_code.write("this is binary")
assembly_txt = assembly.read()
assembly_list = assembly_txt.split('\n')

n = 6
nAddr = 192
oneAddr = nAddr + 1
twoAddr = nAddr + 2
threeAddr = nAddr + 3
fourAddr = nAddr + 4
aAddr = nAddr + 5
bAddr = nAddr + 6
xAddr = nAddr + 7
yAddr = nAddr + 8
np1Addr = nAddr + 9
nm1Addr = nAddr + 10
twonAddr = nAddr + 11
nb2Addr = nAddr + 12
interAddr = nAddr + 13
jumpAddr1 = 27
jumpAddr2 = nAddr + 15
firstPixelAddr = nAddr + 16
newPixelAddr = "first pixel location"#161 #nAddr + n*n + 18
specialAddr = 133

for i in assembly_list:
    if i == "LDAC":
        binary_list.append(7)
    elif i == "CLAC":
        binary_list.append(32)
    elif i == "STAC":
        binary_list.append(18)
    elif i == "MVAC2R":
        binary_list.append(14)
    elif i == "MVAC2TR":
        binary_list.append(16)
    elif i == "LOAD":
        binary_list.append(36)
    elif i == "ADD":
        binary_list.append(4)
    elif i == "SUB":
        binary_list.append(5)
    elif i == "MVTR2AC":
        binary_list.append(40)
    elif i == "MVR2AC":
        binary_list.append(15)
    elif i == "MVTR2DR":
        binary_list.append(17)
    elif i == "JUMP":
        binary_list.append(24)
    elif i == "JPNZ":
        binary_list.append(28)
    elif i == "LSHIFT":
        binary_list.append(33)
    elif i == "RSHIFT":
        binary_list.append(34)
    elif i == "ENDOPS":
        binary_list.append(35)
    elif i == "NOP":
        binary_list.append(6)
    elif i == "address of a":
        binary_list.append(aAddr)
    elif i == "address of b":
        binary_list.append(bAddr)
    elif i == "address of new pixel":
        binary_list.append(newPixelAddr)
    elif i == "address of first pixel":
        binary_list.append(firstPixelAddr)
    elif i == "address of 1":
        binary_list.append(oneAddr)
    elif i == "address of 2":
        binary_list.append(twoAddr)
    elif i == "address of 3":
        binary_list.append(threeAddr)
    elif i == "address of 4":
        binary_list.append(fourAddr)
    elif i == "address of n":
        binary_list.append(nAddr)
    elif i == "address of n-1":
        binary_list.append(nm1Addr)
    elif i == "address of n+1":
        binary_list.append(np1Addr)
    elif i == "address of x":
        binary_list.append(xAddr)
    elif i == "address of y":
        binary_list.append(yAddr)
    elif i == "address of 2n":
        binary_list.append(twonAddr)
    elif i == "address of n/2":
        binary_list.append(nb2Addr)
    elif i == "address of intermediate":
        binary_list.append(interAddr)
    elif i == "special address":
        binary_list.append(specialAddr)
    elif i == "JUMP ADDRESS":
        binary_list.append(jumpAddr1)
    else:
        binary_list.append(i)

length1 = len(binary_list)
print(length1)

a = b = 0
x = y = 0
intermediate = 0
jump1 = 27
jump2 = 0
firstPixelLocation = length1 + 18
newPixelLocation = length1 + 18 + n * n

print(binary_list)

for i in range(len(binary_list)):
    if binary_list[i] == "first pixel location":
        binary_list[i] = firstPixelLocation

resources = [n, 1, 2, 3, 4, a, b, x, y, 0, 0, 2 * n, (n // 2)-1, intermediate, jump1, jump2, firstPixelLocation,
             newPixelLocation]
print (resources)
print(len(resources))
binary_list = binary_list + resources

##assembly_array=assembly.split( )
# print assembly_list
print(binary_list)
binary_code.writelines(["%s\n" % item for item in binary_list])
binary_code.close()

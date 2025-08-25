import re

path = "/home/me/Documents"
original = f"{path}/apt-list"
new = f"{path}/new-pkgs"

def on_working_node():
    run = "sudo apt list --installed > apt-list"

def _test_replace():
    # https://stackoverflow.com/a/66805073
    input_string = '''aisleriot/jammy,now 1:3.22.22-1 arm64 [installed,automatic]'''
    output = re.sub('\/(.*?)\]', ' ', input_string, flags=re.DOTALL)
    print(output)

def openFile():
    file1 = open(original, 'r')
    Lines = file1.readlines()
    all_pkgs = []

    # Strips the newline character
    for line in Lines:
        clean_line = re.sub('\/(.*?)\]\n', '', line, flags=re.DOTALL)
        all_pkgs.append(clean_line)

    # Remove first line
    all_pkgs.pop(0)
    # print(pkgs)
    return all_pkgs

def newFile():
    pkgs = openFile()
    print(pkgs)

    oneline = ' '.join(pkgs)
    file1 = open(new, 'w')
    file1.writelines("sudo apt install ")
    file1.writelines(oneline)
    file1.close()

    # print(oneline)

if __name__ == '__main__':
    newFile()

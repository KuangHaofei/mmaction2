import json

if __name__ == '__main__':
    split = 'val'

    file = '/Users/haofeik/anet_anno_{}.json'.format(split)

    with open(file, 'r') as f:
        json_data = json.load(f)

    print(len(json_data))

    txt_file = '/Users/haofeik/anet_{}_clip.txt'.format(split)

    txt_data = []
    for line in open(txt_file, "r"):  # 设置文件对象并读取每一行文件
        txt_data.append(line.split()[0])

    cuhk2our = {}

    found = False
    idx = 0
    for key in json_data.keys():
        for name in txt_data:
            if key[2:] in name:
                found = True
                cuhk2our[key] = name
                break
        if not found:
            idx += 1
        found = False

    print(idx)

    anet_anno = {}
    for key, name in cuhk2our.items():
        anet_anno[name] = json_data[key]

    annet_anno_file = 'anet_anno_{}.json'.format(split)
    with open(annet_anno_file, 'w') as fw:
        json.dump(anet_anno, fw)

import glob
for path in sorted(glob.glob("/Users/gaoyuezhou/dev/photorama/img/galleries/g05/*"), key=str.casefold):
    img_name = path.split('photorama')[-1]
    print('- image_path: {}'.format(img_name))
    # print('  caption: ')
import glob
for path in sorted(glob.glob("/Users/gaoyuezhou/dev/photorama/img/galleries/g04/*"), key=str.casefold):
# for path in glob.glob("/Users/gaoyuezhou/dev/photorama/img/galleries/g04/*"):
    img_name = path.split('photorama')[-1]
    print('- image_path: {}'.format(img_name))
    # print('  caption: ')
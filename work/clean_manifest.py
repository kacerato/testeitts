import re

manifest_path = r'C:\Users\donod\Downloads\itsmaagic\extracted\apktool_base\AndroidManifest.xml'
target_manifest = r'C:\Users\donod\Downloads\itsmaagic\source\app\src\main\AndroidManifest.xml'

with open(manifest_path, 'r', encoding='utf-8') as f:
    content = f.read()

# Remove split attributes from <manifest> tag
content = re.sub(r'\s*android:requiredSplitTypes="[^"]*"', '', content)
content = re.sub(r'\s*android:splitTypes="[^"]*"', '', content)
content = re.sub(r'\s*android:isSplitRequired="[^"]*"', '', content)

with open(target_manifest, 'w', encoding='utf-8') as f:
    f.write(content)

print('Cleaned and wrote source/app/src/main/AndroidManifest.xml')

import re

manifest_path = r'C:\Users\donod\Downloads\itsmaagic\extracted\apktool_base\AndroidManifest.xml'

with open(manifest_path, 'r', encoding='utf-8') as f:
    content = f.read()

# Remove split attributes from <manifest> tag
content = re.sub(r'\s*android:requiredSplitTypes="[^"]*"', '', content)
content = re.sub(r'\s*android:splitTypes="[^"]*"', '', content)
content = re.sub(r'\s*android:isSplitRequired="[^"]*"', '', content)

# Remove split meta-data tags
content = re.sub(r'\s*<meta-data\s+android:name="com\.android\.vending\.splits\.required"\s+android:value="[^"]*"\s*/>', '', content)
content = re.sub(r'\s*<meta-data\s+android:name="com\.android\.vending\.splits"\s+android:resource="[^"]*"\s*/>', '', content)
content = re.sub(r'\s*<meta-data\s+android:name="com\.android\.vending\.derived\.apk\.id"\s+android:value="[^"]*"\s*/>', '', content)
content = re.sub(r'\s*<meta-data\s+android:name="com\.android\.stamp\.source"\s+android:value="[^"]*"\s*/>', '', content)
content = re.sub(r'\s*<meta-data\s+android:name="com\.android\.stamp\.type"\s+android:value="[^"]*"\s*/>', '', content)

with open(manifest_path, 'w', encoding='utf-8') as f:
    f.write(content)

print('Cleaned split tags from extracted/apktool_base/AndroidManifest.xml')

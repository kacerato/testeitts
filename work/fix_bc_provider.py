import os, subprocess, shutil

d_smali_path = r"C:\Users\donod\Downloads\itsmaagic\extracted\apktool_base\smali_classes4\w3.1\d.smali"
with open(d_smali_path, "r", encoding="utf-8") as f:
    content = f.read()

# 1. In method c: remove setProvider on JcaContentSignerBuilder
target1 = """    sget-object v0, Lw3/d;->e:Lorg/bouncycastle/jce/provider/a;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/operator/jcajce/b;->g(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/b;

    move-result-object v1"""

repl1 = """    # removed setProvider(BC) to use default Android JCA (Conscrypt/AndroidOpenSSL)"""

# 2. In method c: remove setProvider on JcaDigestCalculatorProviderBuilder
target2 = """    invoke-virtual {v3, v0}, Lorg/bouncycastle/operator/jcajce/d;->e(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/d;

    move-result-object v0"""

repl2 = """    move-object v0, v3"""

# 3. In method i: remove setProvider on JcaContentSignerBuilder
target3 = """    sget-object v4, Lw3/d;->e:Lorg/bouncycastle/jce/provider/a;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/operator/jcajce/b;->g(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/b;

    move-result-object v3"""

repl3 = """    # removed setProvider(BC) to use default Android JCA (Conscrypt/AndroidOpenSSL)"""

# 4. In method i: remove setProvider on JcaX509CertificateConverter
target4 = """    invoke-virtual {v3, v4}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;->c(Ljava/security/Provider;)Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    move-result-object v11"""

repl4 = """    move-object v11, v3"""

assert target1 in content, "target1 not found"
assert target2 in content, "target2 not found"
assert target3 in content, "target3 not found"
assert target4 in content, "target4 not found"

content = content.replace(target1, repl1)
content = content.replace(target2, repl2)
content = content.replace(target3, repl3)
content = content.replace(target4, repl4)

with open(d_smali_path, "w", encoding="utf-8") as f:
    f.write(content)

print("SUCCESS: Patched d.smali to remove BC provider restriction and use native Android JCA!")

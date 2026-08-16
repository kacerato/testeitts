.class public final Lorg/bouncycastle/jce/provider/a;
.super Ljava/security/Provider;
.source "SourceFile"

# interfaces
.implements LTj/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jce/provider/a$c;
    }
.end annotation


# static fields
.field public static final c:Ljava/util/logging/Logger;

.field public static d:Ljava/lang/String; = null

.field public static final e:Ljava/lang/String; = "BC"

.field public static final f:LTj/c;

.field public static final g:Ljava/util/Map;

.field public static final h:Ljava/lang/Class;

.field public static final i:Ljava/lang/String; = "org.bouncycastle.jcajce.provider.symmetric."

.field public static final j:[Ljava/lang/String;

.field public static final k:[Ljava/lang/String;

.field public static final l:[LBi/n;

.field public static final m:Ljava/lang/String; = "org.bouncycastle.jcajce.provider.asymmetric."

.field public static final n:[Ljava/lang/String;

.field public static final o:[Ljava/lang/String;

.field public static final p:Ljava/lang/String; = "org.bouncycastle.jcajce.provider.digest."

.field public static final q:[Ljava/lang/String;

.field public static final r:Ljava/lang/String; = "org.bouncycastle.jcajce.provider.keystore."

.field public static final s:[Ljava/lang/String;

.field public static final t:Ljava/lang/String; = "org.bouncycastle.jcajce.provider.drbg."

.field public static final u:[Ljava/lang/String;


# instance fields
.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 41

    const-class v0, Lorg/bouncycastle/jce/provider/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/jce/provider/a;->c:Ljava/util/logging/Logger;

    const-string v1, "BouncyCastle Security Provider v1.78.1"

    sput-object v1, Lorg/bouncycastle/jce/provider/a;->d:Ljava/lang/String;

    new-instance v1, Lorg/bouncycastle/jce/provider/b;

    invoke-direct {v1}, Lorg/bouncycastle/jce/provider/b;-><init>()V

    sput-object v1, Lorg/bouncycastle/jce/provider/a;->f:LTj/c;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/bouncycastle/jce/provider/a;->g:Ljava/util/Map;

    const-string v1, "java.security.cert.PKIXRevocationChecker"

    invoke-static {v0, v1}, Lak/g;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/a;->h:Ljava/lang/Class;

    const-string v0, "TLSKDF"

    const-string v1, "SCRYPT"

    const-string v2, "PBEPBKDF1"

    const-string v3, "PBEPBKDF2"

    const-string v4, "PBEPKCS12"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/a;->j:[Ljava/lang/String;

    const-string v0, "SipHash128"

    const-string v1, "Poly1305"

    const-string v2, "SipHash"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/a;->k:[Ljava/lang/String;

    const-string v0, "AES"

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v0

    const-string v2, "ARC4"

    const/16 v3, 0x14

    invoke-static {v2, v3}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v2

    const-string v4, "ARIA"

    invoke-static {v4, v1}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v4

    const-string v5, "Blowfish"

    const/16 v6, 0x80

    invoke-static {v5, v6}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v5

    const-string v7, "Camellia"

    invoke-static {v7, v1}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v7

    const-string v8, "CAST5"

    invoke-static {v8, v6}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v8

    const-string v9, "CAST6"

    invoke-static {v9, v1}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v9

    const-string v10, "ChaCha"

    invoke-static {v10, v6}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v10

    const-string v11, "DES"

    const/16 v12, 0x38

    invoke-static {v11, v12}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v11

    const-string v12, "DESede"

    const/16 v13, 0x70

    invoke-static {v12, v13}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v12

    const-string v13, "GOST28147"

    invoke-static {v13, v6}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v13

    const-string v14, "Grainv1"

    invoke-static {v14, v6}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v14

    const-string v15, "Grain128"

    invoke-static {v15, v6}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v15

    const-string v3, "HC128"

    invoke-static {v3, v6}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v3

    const-string v6, "HC256"

    invoke-static {v6, v1}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v6

    const-string v1, "IDEA"

    move-object/from16 v19, v6

    const/16 v6, 0x80

    invoke-static {v1, v6}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v1

    move-object/from16 v17, v1

    const-string v1, "Noekeon"

    invoke-static {v1, v6}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v1

    move-object/from16 v20, v1

    const-string v1, "RC2"

    invoke-static {v1, v6}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v1

    move-object/from16 v21, v1

    const-string v1, "RC5"

    invoke-static {v1, v6}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v1

    const-string v6, "RC6"

    move-object/from16 v23, v1

    const/16 v1, 0x100

    invoke-static {v6, v1}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v6

    move-object/from16 v24, v6

    const-string v6, "Rijndael"

    invoke-static {v6, v1}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v6

    const-string v1, "Salsa20"

    move-object/from16 v25, v6

    const/16 v6, 0x80

    invoke-static {v1, v6}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v1

    move-object/from16 v22, v1

    const-string v1, "SEED"

    invoke-static {v1, v6}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v1

    const-string v6, "Serpent"

    move-object/from16 v27, v1

    const/16 v1, 0x100

    invoke-static {v6, v1}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v6

    const-string v1, "Shacal2"

    move-object/from16 v28, v6

    const/16 v6, 0x80

    invoke-static {v1, v6}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v1

    const-string v6, "Skipjack"

    move-object/from16 v29, v1

    const/16 v1, 0x50

    invoke-static {v6, v1}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v1

    const-string v6, "SM4"

    move-object/from16 v30, v1

    const/16 v1, 0x80

    invoke-static {v6, v1}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v6

    move-object/from16 v26, v6

    const-string v6, "TEA"

    invoke-static {v6, v1}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v6

    const-string v1, "Twofish"

    move-object/from16 v32, v6

    const/16 v6, 0x100

    invoke-static {v1, v6}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v1

    const-string v6, "Threefish"

    move-object/from16 v33, v1

    const/16 v1, 0x80

    invoke-static {v6, v1}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v6

    move-object/from16 v31, v6

    const-string v6, "VMPC"

    invoke-static {v6, v1}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v6

    move-object/from16 v34, v6

    const-string v6, "VMPCKSA3"

    invoke-static {v6, v1}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v6

    move-object/from16 v35, v6

    const-string v6, "XTEA"

    invoke-static {v6, v1}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v6

    move-object/from16 v36, v6

    const-string v6, "XSalsa20"

    invoke-static {v6, v1}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v6

    move-object/from16 v37, v6

    const-string v6, "OpenSSLPBKDF"

    invoke-static {v6, v1}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v6

    const-string v1, "DSTU7624"

    move-object/from16 v39, v6

    const/16 v6, 0x100

    invoke-static {v1, v6}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v1

    move-object/from16 v18, v1

    const-string v1, "GOST3412_2015"

    invoke-static {v1, v6}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v1

    const-string v6, "Zuc"

    move-object/from16 v40, v1

    const/16 v1, 0x80

    invoke-static {v6, v1}, Lorg/bouncycastle/jce/provider/a;->w(Ljava/lang/String;I)LBi/n;

    move-result-object v1

    const/16 v6, 0x26

    new-array v6, v6, [LBi/n;

    const/16 v38, 0x0

    aput-object v0, v6, v38

    const/4 v0, 0x1

    aput-object v2, v6, v0

    const/4 v0, 0x2

    aput-object v4, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v8, v6, v0

    const/4 v0, 0x6

    aput-object v9, v6, v0

    const/4 v0, 0x7

    aput-object v10, v6, v0

    const/16 v0, 0x8

    aput-object v11, v6, v0

    const/16 v0, 0x9

    aput-object v12, v6, v0

    const/16 v0, 0xa

    aput-object v13, v6, v0

    const/16 v0, 0xb

    aput-object v14, v6, v0

    const/16 v0, 0xc

    aput-object v15, v6, v0

    const/16 v0, 0xd

    aput-object v3, v6, v0

    const/16 v0, 0xe

    aput-object v19, v6, v0

    const/16 v0, 0xf

    aput-object v17, v6, v0

    const/16 v0, 0x10

    aput-object v20, v6, v0

    const/16 v0, 0x11

    aput-object v21, v6, v0

    const/16 v0, 0x12

    aput-object v23, v6, v0

    const/16 v0, 0x13

    aput-object v24, v6, v0

    const/16 v0, 0x14

    aput-object v25, v6, v0

    const/16 v0, 0x15

    aput-object v22, v6, v0

    const/16 v0, 0x16

    aput-object v27, v6, v0

    const/16 v0, 0x17

    aput-object v28, v6, v0

    const/16 v0, 0x18

    aput-object v29, v6, v0

    const/16 v0, 0x19

    aput-object v30, v6, v0

    const/16 v0, 0x1a

    aput-object v26, v6, v0

    const/16 v0, 0x1b

    aput-object v32, v6, v0

    const/16 v0, 0x1c

    aput-object v33, v6, v0

    const/16 v0, 0x1d

    aput-object v31, v6, v0

    const/16 v0, 0x1e

    aput-object v34, v6, v0

    const/16 v0, 0x1f

    aput-object v35, v6, v0

    const/16 v0, 0x20

    aput-object v36, v6, v0

    const/16 v0, 0x21

    aput-object v37, v6, v0

    const/16 v0, 0x22

    aput-object v39, v6, v0

    const/16 v0, 0x23

    aput-object v18, v6, v0

    const/16 v0, 0x24

    aput-object v40, v6, v0

    const/16 v0, 0x25

    aput-object v1, v6, v0

    sput-object v6, Lorg/bouncycastle/jce/provider/a;->l:[LBi/n;

    const-string v0, "EXTERNAL"

    const-string v1, "CompositeSignatures"

    const-string v2, "X509"

    const-string v3, "IES"

    const-string v4, "COMPOSITE"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/a;->n:[Ljava/lang/String;

    const-string v14, "Falcon"

    const-string v15, "NTRU"

    const-string v1, "DSA"

    const-string v2, "DH"

    const-string v3, "EC"

    const-string v4, "RSA"

    const-string v5, "GOST"

    const-string v6, "ECGOST"

    const-string v7, "ElGamal"

    const-string v8, "DSTU4145"

    const-string v9, "GM"

    const-string v10, "EdEC"

    const-string v11, "LMS"

    const-string v12, "SPHINCSPlus"

    const-string v13, "Dilithium"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/a;->o:[Ljava/lang/String;

    const-string v23, "Haraka"

    const-string v24, "Blake3"

    const-string v1, "GOST3411"

    const-string v2, "Keccak"

    const-string v3, "MD2"

    const-string v4, "MD4"

    const-string v5, "MD5"

    const-string v6, "SHA1"

    const-string v7, "RIPEMD128"

    const-string v8, "RIPEMD160"

    const-string v9, "RIPEMD256"

    const-string v10, "RIPEMD320"

    const-string v11, "SHA224"

    const-string v12, "SHA256"

    const-string v13, "SHA384"

    const-string v14, "SHA512"

    const-string v15, "SHA3"

    const-string v16, "Skein"

    const-string v17, "SM3"

    const-string v18, "Tiger"

    const-string v19, "Whirlpool"

    const-string v20, "Blake2b"

    const-string v21, "Blake2s"

    const-string v22, "DSTU7564"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/a;->q:[Ljava/lang/String;

    const-string v0, "BCFKS"

    const-string v1, "PKCS12"

    const-string v2, "BC"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/a;->s:[Ljava/lang/String;

    const-string v0, "DRBG"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/a;->u:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide v0, 0x3ffc7b4a2339c0ecL    # 1.7801

    sget-object v2, Lorg/bouncycastle/jce/provider/a;->d:Ljava/lang/String;

    const-string v3, "BC"

    invoke-direct {p0, v3, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/a;->b:Ljava/util/Map;

    new-instance v0, Lorg/bouncycastle/jce/provider/a$a;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jce/provider/a$a;-><init>(Lorg/bouncycastle/jce/provider/a;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic j(Lorg/bouncycastle/jce/provider/a;)V
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/a;->x()V

    return-void
.end method

.method public static synthetic k(Lorg/bouncycastle/jce/provider/a;Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .locals 0

    invoke-super {p0, p1, p2}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lorg/bouncycastle/jce/provider/a;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/a;->b:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic m(Lorg/bouncycastle/jce/provider/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1}, Ljava/security/Provider;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lorg/bouncycastle/jce/provider/a;Ljava/security/Provider$Service;)V
    .locals 0

    invoke-super {p0, p1}, Ljava/security/Provider;->putService(Ljava/security/Provider$Service;)V

    return-void
.end method

.method public static o(Loh/x;)Lbk/c;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jce/provider/a;->g:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbk/c;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static p(LXh/v;)Ljava/security/PrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LXh/v;->y()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/a;->o(Loh/x;)Lbk/c;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {v0, p0}, Lbk/c;->b(LXh/v;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public static q(Lhi/h0;)Ljava/security/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lhi/h0;->u()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    sget-object v1, Lqh/a;->Z0:Loh/x;

    invoke-virtual {v0, v1}, Loh/x;->O(Loh/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LHl/c;

    invoke-direct {v0}, LHl/c;-><init>()V

    invoke-virtual {v0, p0}, LHl/c;->a(Lhi/h0;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lhi/h0;->u()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/a;->o(Loh/x;)Lbk/c;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-interface {v0, p0}, Lbk/c;->a(Lhi/h0;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static w(Ljava/lang/String;I)LBi/n;
    .locals 1

    new-instance v0, Lorg/bouncycastle/jce/provider/a$c;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/jce/provider/a$c;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lorg/bouncycastle/jce/provider/a;->f:LTj/c;

    monitor-enter v0

    :try_start_0
    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/jce/provider/b;

    invoke-virtual {v1, p1, p2}, Lorg/bouncycastle/jce/provider/b;->f(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jce/provider/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/jce/provider/a;->h(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public c(Loh/x;Lbk/c;)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/jce/provider/a;->g:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "duplicate provider key ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") found"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public e(Loh/x;)Lbk/c;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jce/provider/a;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbk/c;

    return-object p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alg.Alias."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public g(Ljava/lang/String;Loh/x;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lorg/bouncycastle/jce/provider/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".OID."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/jce/provider/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .locals 3

    invoke-static {p2}, Lorg/bouncycastle/util/w;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/a;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider$Service;

    if-nez v1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/a;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/bouncycastle/jce/provider/a$b;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/bouncycastle/jce/provider/a$b;-><init>(Lorg/bouncycastle/jce/provider/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Ljava/security/Provider$Service;

    move-object v1, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/jce/provider/a;->b:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :goto_1
    monitor-exit p0

    goto :goto_3

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_3
    return-object v1
.end method

.method public h(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ImplementedIn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Software"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "duplicate provider attribute key ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") found"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public i(Ljava/lang/String;Loh/x;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Loh/x;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/jce/provider/a;->g(Ljava/lang/String;Loh/x;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, p4}, Lorg/bouncycastle/jce/provider/a;->h(Ljava/lang/String;Ljava/util/Map;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".OID."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Lorg/bouncycastle/jce/provider/a;->h(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final r(Ljava/lang/String;[LBi/n;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-eq v0, v1, :cond_1

    aget-object v1, p2, v0

    :try_start_0
    invoke-static {v1}, LBi/r;->a(LBi/n;)V

    invoke-interface {v1}, LBi/n;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/jce/provider/a;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/bouncycastle/crypto/CryptoServiceConstraintsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object v2, Lorg/bouncycastle/jce/provider/a;->c:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, LBi/n;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ignored due to constraints"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final s(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-eq v0, v1, :cond_0

    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v1}, Lorg/bouncycastle/jce/provider/a;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final u()V
    .locals 3

    sget-object v0, Lqh/a;->a0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->b0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->c0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->d0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->e0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->f0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->g0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->h0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->i0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->j0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->k0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->l0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->m0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->n0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->o0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->p0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->q0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->r0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->s0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->t0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->u0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->v0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->w0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->x0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->y0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->z0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->A0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->B0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->C0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->D0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->E0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->F0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->G0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->H0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->I0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->J0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->K0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->N0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->P0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->R0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    new-instance v0, Loh/x;

    const-string v1, "1.3.9999.6.4.10"

    invoke-direct {v0, v1}, Loh/x;-><init>(Ljava/lang/String;)V

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->S0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->U0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->W0:Loh/x;

    new-instance v1, LLl/c;

    invoke-direct {v1}, LLl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, LXk/m;->r:Loh/x;

    new-instance v1, LKl/d;

    invoke-direct {v1}, LKl/d;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, LXk/m;->v:Loh/x;

    new-instance v1, LEl/d;

    invoke-direct {v1}, LEl/d;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, LXk/m;->w:Loh/x;

    new-instance v1, LNl/f;

    invoke-direct {v1}, LNl/f;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Ltj/a;->a:Loh/x;

    new-instance v1, LNl/f;

    invoke-direct {v1}, LNl/f;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, LXk/m;->F:Loh/x;

    new-instance v1, LNl/h;

    invoke-direct {v1}, LNl/h;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Ltj/a;->b:Loh/x;

    new-instance v1, LNl/h;

    invoke-direct {v1}, LNl/h;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, LXh/t;->Q2:Loh/x;

    new-instance v1, LCl/d;

    invoke-direct {v1}, LCl/d;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->Z0:Loh/x;

    new-instance v1, LHl/c;

    invoke-direct {v1}, LHl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->r1:Loh/x;

    new-instance v1, Lxl/c;

    invoke-direct {v1}, Lxl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->s1:Loh/x;

    new-instance v1, Lxl/c;

    invoke-direct {v1}, Lxl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->u1:Loh/x;

    new-instance v1, Lwl/c;

    invoke-direct {v1}, Lwl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->v1:Loh/x;

    new-instance v1, Lwl/c;

    invoke-direct {v1}, Lwl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->w1:Loh/x;

    new-instance v1, Lwl/c;

    invoke-direct {v1}, Lwl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->x1:Loh/x;

    new-instance v1, Lwl/c;

    invoke-direct {v1}, Lwl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->y1:Loh/x;

    new-instance v1, Lwl/c;

    invoke-direct {v1}, Lwl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->z1:Loh/x;

    new-instance v1, Lwl/c;

    invoke-direct {v1}, Lwl/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->P2:Loh/x;

    new-instance v1, LBl/d;

    invoke-direct {v1}, LBl/d;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->Q2:Loh/x;

    new-instance v1, LBl/d;

    invoke-direct {v1}, LBl/d;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->R2:Loh/x;

    new-instance v1, LBl/d;

    invoke-direct {v1}, LBl/d;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v1, Lqh/a;->O1:Loh/x;

    new-instance v2, Lvl/d;

    invoke-direct {v2}, Lvl/d;-><init>()V

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v1, Lqh/a;->Q1:Loh/x;

    new-instance v2, Lvl/d;

    invoke-direct {v2}, Lvl/d;-><init>()V

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v1, Lqh/a;->S1:Loh/x;

    new-instance v2, Lvl/d;

    invoke-direct {v2}, Lvl/d;-><init>()V

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v1, Lqh/a;->U1:Loh/x;

    new-instance v2, Lvl/d;

    invoke-direct {v2}, Lvl/d;-><init>()V

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v1, Lqh/a;->W1:Loh/x;

    new-instance v2, Lvl/d;

    invoke-direct {v2}, Lvl/d;-><init>()V

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v1, Lqh/a;->l3:Loh/x;

    new-instance v2, Lul/d;

    invoke-direct {v2}, Lul/d;-><init>()V

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v1, Lqh/a;->m3:Loh/x;

    new-instance v2, Lul/d;

    invoke-direct {v2}, Lul/d;-><init>()V

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v1, Lqh/a;->n3:Loh/x;

    new-instance v2, Lul/d;

    invoke-direct {v2}, Lul/d;-><init>()V

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v1, Lqh/a;->p3:Loh/x;

    new-instance v2, LAl/d;

    invoke-direct {v2}, LAl/d;-><init>()V

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v1, Lqh/a;->q3:Loh/x;

    new-instance v2, LAl/d;

    invoke-direct {v2}, LAl/d;-><init>()V

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v1, Lqh/a;->r3:Loh/x;

    new-instance v2, LAl/d;

    invoke-direct {v2}, LAl/d;-><init>()V

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    new-instance v1, LBl/d;

    invoke-direct {v1}, LBl/d;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->S2:Loh/x;

    new-instance v1, LBl/d;

    invoke-direct {v1}, LBl/d;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->T2:Loh/x;

    new-instance v1, LBl/d;

    invoke-direct {v1}, LBl/d;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->U2:Loh/x;

    new-instance v1, LBl/d;

    invoke-direct {v1}, LBl/d;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->I2:Loh/x;

    new-instance v1, LFl/d;

    invoke-direct {v1}, LFl/d;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->J2:Loh/x;

    new-instance v1, LFl/d;

    invoke-direct {v1}, LFl/d;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->K2:Loh/x;

    new-instance v1, LFl/d;

    invoke-direct {v1}, LFl/d;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    sget-object v0, Lqh/a;->L2:Loh/x;

    new-instance v1, LFl/d;

    invoke-direct {v1}, LFl/d;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->c(Loh/x;Lbk/c;)V

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$Mappings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lorg/bouncycastle/jce/provider/a;

    invoke-static {v1, v0}, Lak/g;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbk/a;

    invoke-virtual {v0, p0}, Lbk/a;->a(LTj/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/InternalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot create instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "$Mappings : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public final x()V
    .locals 9

    const-string v0, "org.bouncycastle.jcajce.provider.digest."

    sget-object v1, Lorg/bouncycastle/jce/provider/a;->q:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->s(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/jce/provider/a;->j:[Ljava/lang/String;

    const-string v1, "org.bouncycastle.jcajce.provider.symmetric."

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/jce/provider/a;->s(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/jce/provider/a;->k:[Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/jce/provider/a;->s(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/jce/provider/a;->l:[LBi/n;

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/jce/provider/a;->r(Ljava/lang/String;[LBi/n;)V

    sget-object v0, Lorg/bouncycastle/jce/provider/a;->n:[Ljava/lang/String;

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric."

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/jce/provider/a;->s(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/jce/provider/a;->o:[Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/jce/provider/a;->s(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "org.bouncycastle.jcajce.provider.keystore."

    sget-object v1, Lorg/bouncycastle/jce/provider/a;->s:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->s(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "org.bouncycastle.jcajce.provider.drbg."

    sget-object v1, Lorg/bouncycastle/jce/provider/a;->u:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/a;->s(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/a;->u()V

    const-string v0, "X509Store.CERTIFICATE/COLLECTION"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreCertCollection"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.ATTRIBUTECERTIFICATE/COLLECTION"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreAttrCertCollection"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.CRL/COLLECTION"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreCRLCollection"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.CERTIFICATEPAIR/COLLECTION"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreCertPairCollection"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.CERTIFICATE/LDAP"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreLDAPCerts"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.CRL/LDAP"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreLDAPCRLs"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.ATTRIBUTECERTIFICATE/LDAP"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreLDAPAttrCerts"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.CERTIFICATEPAIR/LDAP"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreLDAPCertPairs"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509StreamParser.CERTIFICATE"

    const-string v1, "org.bouncycastle.jce.provider.X509CertParser"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509StreamParser.ATTRIBUTECERTIFICATE"

    const-string v1, "org.bouncycastle.jce.provider.X509AttrCertParser"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509StreamParser.CRL"

    const-string v1, "org.bouncycastle.jce.provider.X509CRLParser"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509StreamParser.CERTIFICATEPAIR"

    const-string v1, "org.bouncycastle.jce.provider.X509CertPairParser"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cipher.BROKENPBEWITHMD5ANDDES"

    const-string v1, "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithMD5AndDES"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cipher.BROKENPBEWITHSHA1ANDDES"

    const-string v1, "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithSHA1AndDES"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cipher.OLDPBEWITHSHAANDTWOFISH-CBC"

    const-string v1, "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$OldPBEWithSHAAndTwofish"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jce/provider/a;->h:Ljava/lang/Class;

    const-string v1, "CertPathBuilder.PKIX"

    const-string v2, "CertPathValidator.PKIX"

    const-string v3, "CertPathBuilder.RFC3280"

    const-string v4, "CertPathValidator.RFC3280"

    const-string v5, "org.bouncycastle.jce.provider.PKIXAttrCertPathBuilderSpi"

    const-string v6, "CertPathBuilder.RFC3281"

    const-string v7, "org.bouncycastle.jce.provider.PKIXAttrCertPathValidatorSpi"

    const-string v8, "CertPathValidator.RFC3281"

    invoke-virtual {p0, v8, v7}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v6, v5}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    const-string v0, "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi_8"

    invoke-virtual {p0, v4, v0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "org.bouncycastle.jce.provider.PKIXCertPathBuilderSpi_8"

    :goto_0
    invoke-virtual {p0, v3, v4}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2, v0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1, v4}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const-string v0, "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi"

    invoke-virtual {p0, v4, v0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "org.bouncycastle.jce.provider.PKIXCertPathBuilderSpi"

    goto :goto_0

    :goto_1
    const-string v0, "CertStore.Collection"

    const-string v1, "org.bouncycastle.jce.provider.CertStoreCollectionSpi"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CertStore.LDAP"

    const-string v1, "org.bouncycastle.jce.provider.X509LDAPCertStoreSpi"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CertStore.Multi"

    const-string v1, "org.bouncycastle.jce.provider.MultiCertStoreSpi"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.CertStore.X509LDAP"

    const-string v1, "LDAP"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

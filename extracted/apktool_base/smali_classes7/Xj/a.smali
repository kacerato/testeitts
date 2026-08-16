.class public LXj/a;
.super Ljava/security/KeyStoreSpi;
.source "SourceFile"

# interfaces
.implements LXh/t;
.implements Lhi/E0;
.implements Lfk/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LXj/a$c;,
        LXj/a$b;,
        LXj/a$d;,
        LXj/a$e;,
        LXj/a$f;,
        LXj/a$h;,
        LXj/a$g;,
        LXj/a$i;,
        LXj/a$j;,
        LXj/a$k;,
        LXj/a$l;
    }
.end annotation


# static fields
.field public static final o:Ljava/lang/String; = "org.bouncycastle.pkcs12.max_it_count"

.field public static final p:I = 0x14

.field public static final q:I = 0xc800

.field public static final r:LXj/a$k;

.field public static final s:I = 0x0

.field public static final t:I = 0x1

.field public static final u:I = 0x2

.field public static final v:I = 0x3

.field public static final w:I = 0x4

.field public static final x:I = 0x0

.field public static final y:I = 0x1

.field public static final z:I = 0x2


# instance fields
.field public final b:Ldk/f;

.field public c:LXj/a$l;

.field public d:LXj/a$l;

.field public e:LXj/a$l;

.field public f:Ljava/util/Hashtable;

.field public g:Ljava/util/Hashtable;

.field public h:Ljava/security/SecureRandom;

.field public i:Ljava/security/cert/CertificateFactory;

.field public j:Loh/x;

.field public k:Loh/x;

.field public l:Lhi/b;

.field public m:I

.field public n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LXj/a$k;

    invoke-direct {v0}, LXj/a$k;-><init>()V

    sput-object v0, LXj/a;->r:LXj/a$k;

    return-void
.end method

.method public constructor <init>(Ldk/f;Loh/x;Loh/x;)V
    .locals 3

    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    new-instance v0, Ldk/c;

    invoke-direct {v0}, Ldk/c;-><init>()V

    iput-object v0, p0, LXj/a;->b:Ldk/f;

    new-instance v0, LXj/a$l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LXj/a$l;-><init>(LXj/a$a;)V

    iput-object v0, p0, LXj/a;->c:LXj/a$l;

    new-instance v0, LXj/a$l;

    invoke-direct {v0, v1}, LXj/a$l;-><init>(LXj/a$a;)V

    iput-object v0, p0, LXj/a;->d:LXj/a$l;

    new-instance v0, LXj/a$l;

    invoke-direct {v0, v1}, LXj/a$l;-><init>(LXj/a$a;)V

    iput-object v0, p0, LXj/a;->e:LXj/a$l;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, LXj/a;->f:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, LXj/a;->g:Ljava/util/Hashtable;

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, LXj/a;->h:Ljava/security/SecureRandom;

    new-instance v0, Lhi/b;

    sget-object v1, LBj/b;->i:Loh/x;

    sget-object v2, Loh/A0;->c:Loh/A0;

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    iput-object v0, p0, LXj/a;->l:Lhi/b;

    const v0, 0x19000

    iput v0, p0, LXj/a;->m:I

    const/16 v0, 0x14

    iput v0, p0, LXj/a;->n:I

    iput-object p2, p0, LXj/a;->j:Loh/x;

    iput-object p3, p0, LXj/a;->k:Loh/x;

    :try_start_0
    const-string p2, "X.509"

    invoke-interface {p1, p2}, Ldk/f;->r(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    iput-object p1, p0, LXj/a;->i:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can\'t create cert factory - "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static synthetic b(LXj/a;Ljava/security/PublicKey;)Lhi/g0;
    .locals 0

    invoke-virtual {p0, p1}, LXj/a;->f(Ljava/security/PublicKey;)Lhi/g0;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lhi/h0;)[B
    .locals 4

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->d()LBi/y;

    move-result-object v0

    invoke-interface {v0}, LBi/y;->f()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p0}, Lhi/h0;->z()Loh/c;

    move-result-object p0

    invoke-virtual {p0}, Loh/c;->F()[B

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    invoke-interface {v0, p0, v3, v2}, LBi/y;->update([BII)V

    invoke-interface {v0, v1, v3}, LBi/y;->c([BI)I

    return-object v1
.end method

.method public static k(Loh/x;)I
    .locals 1

    sget-object v0, LSh/d;->Q:Loh/x;

    invoke-virtual {p0, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, LSh/d;->U:Loh/x;

    invoke-virtual {p0, v0}, Loh/B;->A(Loh/B;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x10

    return p0

    :cond_1
    :goto_0
    const/16 p0, 0x20

    return p0
.end method

.method public static m(Loh/x;)Z
    .locals 1

    sget-object v0, LSh/d;->Q:Loh/x;

    invoke-virtual {p0, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, LSh/d;->U:Loh/x;

    invoke-virtual {p0, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, LSh/d;->y:Loh/x;

    invoke-virtual {p0, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, LSh/d;->C:Loh/x;

    invoke-virtual {p0, v0}, Loh/B;->A(Loh/B;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public a(Ljava/security/SecureRandom;)V
    .locals 0

    iput-object p1, p0, LXj/a;->h:Ljava/security/SecureRandom;

    return-void
.end method

.method public final c(Loh/x;[BI[CZ[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-direct {v0, p2, p3}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iget-object p2, p0, LXj/a;->b:Ldk/f;

    invoke-virtual {p1}, Loh/x;->J()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ldk/f;->w(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    new-instance p2, LHj/l;

    invoke-direct {p2, p4, p5}, LHj/l;-><init>([CZ)V

    invoke-virtual {p1, p2, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p1, p6}, Ljavax/crypto/Mac;->update([B)V

    invoke-virtual {p1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    return-object p1
.end method

.method public final d(I[CLhi/b;)Ljavax/crypto/Cipher;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    invoke-virtual {p3}, Lhi/b;->x()Loh/g;

    move-result-object p3

    invoke-static {p3}, LXh/p;->v(Ljava/lang/Object;)LXh/p;

    move-result-object p3

    invoke-virtual {p3}, LXh/p;->x()LXh/m;

    move-result-object v0

    invoke-virtual {v0}, LXh/m;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, LXh/q;->u(Ljava/lang/Object;)LXh/q;

    move-result-object v0

    invoke-virtual {p3}, LXh/p;->u()LXh/k;

    move-result-object v1

    invoke-static {v1}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v1

    iget-object v2, p0, LXj/a;->b:Ldk/f;

    invoke-virtual {p3}, LXh/p;->x()LXh/m;

    move-result-object v3

    invoke-virtual {v3}, LXh/m;->u()Loh/x;

    move-result-object v3

    invoke-virtual {v3}, Loh/x;->J()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ldk/f;->s(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    invoke-virtual {v0}, LXh/q;->A()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, LXh/q;->z()[B

    move-result-object v4

    invoke-virtual {v0}, LXh/q;->v()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, LXj/a;->q(Ljava/math/BigInteger;)I

    move-result v0

    sget-object v5, LXj/a;->r:LXj/a$k;

    invoke-virtual {v5, v1}, LXj/a$k;->a(Lhi/b;)I

    move-result v5

    invoke-direct {v3, p2, v4, v0, v5}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v2, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance v9, Lck/v;

    invoke-virtual {v0}, LXh/q;->z()[B

    move-result-object v5

    invoke-virtual {v0}, LXh/q;->v()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0, v3}, LXj/a;->q(Ljava/math/BigInteger;)I

    move-result v6

    sget-object v3, LXj/a;->r:LXj/a$k;

    invoke-virtual {v3, v1}, LXj/a$k;->a(Lhi/b;)I

    move-result v7

    invoke-virtual {v0}, LXh/q;->y()Lhi/b;

    move-result-object v8

    move-object v3, v9

    move-object v4, p2

    invoke-direct/range {v3 .. v8}, Lck/v;-><init>([C[BIILhi/b;)V

    invoke-virtual {v2, v9}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p2

    :goto_0
    iget-object v0, p0, LXj/a;->b:Ldk/f;

    invoke-virtual {p3}, LXh/p;->u()LXh/k;

    move-result-object v2

    invoke-virtual {v2}, LXh/k;->u()Loh/x;

    move-result-object v2

    invoke-virtual {v2}, Loh/x;->J()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ldk/f;->e(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {p3}, LXh/p;->u()LXh/k;

    move-result-object p3

    invoke-virtual {p3}, LXh/k;->x()Loh/g;

    move-result-object p3

    instance-of v2, p3, Loh/y;

    if-eqz v2, :cond_1

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {p3}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p3

    invoke-virtual {p3}, Loh/y;->H()[B

    move-result-object p3

    invoke-direct {v1, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    :goto_1
    invoke-virtual {v0, p1, p2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_2

    :cond_1
    invoke-static {p3}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    instance-of v3, v3, Loh/x;

    if-eqz v3, :cond_2

    invoke-static {p3}, Lyh/d;->w(Ljava/lang/Object;)Lyh/d;

    move-result-object p3

    new-instance v1, Lck/j;

    invoke-virtual {p3}, Lyh/d;->u()Loh/x;

    move-result-object v2

    invoke-virtual {p3}, Lyh/d;->v()[B

    move-result-object p3

    invoke-direct {v1, v2, p3}, Lck/j;-><init>(Loh/x;[B)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lhi/b;->u()Loh/x;

    move-result-object p3

    invoke-virtual {p3}, Loh/x;->J()Ljava/lang/String;

    move-result-object p3

    const-string v1, "BC"

    invoke-static {p3, v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p3

    :try_start_0
    invoke-virtual {v2}, Loh/v;->getEncoded()[B

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    :goto_2
    return-object v0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final e(Ljava/lang/String;Ljava/security/cert/Certificate;)LXh/C;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    new-instance v0, LXh/d;

    sget-object v1, LXh/t;->n2:Loh/x;

    new-instance v2, Loh/C0;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Loh/C0;-><init>([B)V

    invoke-direct {v0, v1, v2}, LXh/d;-><init>(Loh/x;Loh/g;)V

    new-instance v1, Loh/h;

    invoke-direct {v1}, Loh/h;-><init>()V

    instance-of v2, p2, Lfk/p;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    move-object v2, p2

    check-cast v2, Lfk/p;

    sget-object v4, LXh/t;->h2:Loh/x;

    invoke-interface {v2, v4}, Lfk/p;->c(Loh/x;)Loh/g;

    move-result-object v5

    check-cast v5, Loh/b;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Loh/b;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    new-instance v5, Loh/q0;

    invoke-direct {v5, p1}, Loh/q0;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4, v5}, Lfk/p;->a(Loh/x;Loh/g;)V

    :cond_1
    invoke-interface {v2}, Lfk/p;->d()Ljava/util/Enumeration;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Loh/x;

    sget-object v6, LXh/t;->j2:Loh/x;

    invoke-virtual {v5, v6}, Loh/B;->A(Loh/B;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    new-instance v3, Loh/h;

    invoke-direct {v3}, Loh/h;-><init>()V

    invoke-virtual {v3, v5}, Loh/h;->a(Loh/g;)V

    new-instance v6, Loh/I0;

    invoke-interface {v2, v5}, Lfk/p;->c(Loh/x;)Loh/g;

    move-result-object v5

    invoke-direct {v6, v5}, Loh/I0;-><init>(Loh/g;)V

    invoke-virtual {v3, v6}, Loh/h;->a(Loh/g;)V

    new-instance v5, Loh/G0;

    invoke-direct {v5, v3}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v1, v5}, Loh/h;->a(Loh/g;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    new-instance v2, Loh/h;

    invoke-direct {v2}, Loh/h;-><init>()V

    sget-object v3, LXh/t;->h2:Loh/x;

    invoke-virtual {v2, v3}, Loh/h;->a(Loh/g;)V

    new-instance v3, Loh/I0;

    new-instance v4, Loh/q0;

    invoke-direct {v4, p1}, Loh/q0;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Loh/I0;-><init>(Loh/g;)V

    invoke-virtual {v2, v3}, Loh/h;->a(Loh/g;)V

    new-instance p1, Loh/G0;

    invoke-direct {p1, v2}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v1, p1}, Loh/h;->a(Loh/g;)V

    :cond_4
    instance-of p1, p2, Ljava/security/cert/X509Certificate;

    if-eqz p1, :cond_7

    check-cast p2, Ljava/security/cert/X509Certificate;

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object p1

    invoke-static {p1}, Lhi/j0;->w(Ljava/lang/Object;)Lhi/j0;

    move-result-object p1

    invoke-virtual {p1}, Lhi/j0;->v()Lhi/C;

    move-result-object p1

    if-eqz p1, :cond_6

    sget-object p2, Lhi/B;->y:Loh/x;

    invoke-virtual {p1, p2}, Lhi/C;->x(Loh/x;)Lhi/B;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance p2, Loh/h;

    invoke-direct {p2}, Loh/h;-><init>()V

    sget-object v2, Lyj/c;->R:Loh/x;

    invoke-virtual {p2, v2}, Loh/h;->a(Loh/g;)V

    new-instance v2, Loh/I0;

    invoke-virtual {p1}, Lhi/B;->A()Loh/g;

    move-result-object p1

    invoke-static {p1}, Lhi/A;->v(Ljava/lang/Object;)Lhi/A;

    move-result-object p1

    invoke-virtual {p1}, Lhi/A;->x()[Lhi/M;

    move-result-object p1

    invoke-direct {v2, p1}, Loh/I0;-><init>([Loh/g;)V

    invoke-virtual {p2, v2}, Loh/h;->a(Loh/g;)V

    new-instance p1, Loh/G0;

    invoke-direct {p1, p2}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v1, p1}, Loh/h;->a(Loh/g;)V

    goto :goto_2

    :cond_5
    new-instance p1, Loh/h;

    invoke-direct {p1}, Loh/h;-><init>()V

    sget-object p2, Lyj/c;->R:Loh/x;

    invoke-virtual {p1, p2}, Loh/h;->a(Loh/g;)V

    new-instance p2, Loh/I0;

    sget-object v2, Lhi/M;->d:Lhi/M;

    invoke-direct {p2, v2}, Loh/I0;-><init>(Loh/g;)V

    invoke-virtual {p1, p2}, Loh/h;->a(Loh/g;)V

    new-instance p2, Loh/G0;

    invoke-direct {p2, p1}, Loh/G0;-><init>(Loh/h;)V

    goto :goto_1

    :cond_6
    new-instance p1, Loh/h;

    invoke-direct {p1}, Loh/h;-><init>()V

    sget-object p2, Lyj/c;->R:Loh/x;

    invoke-virtual {p1, p2}, Loh/h;->a(Loh/g;)V

    new-instance p2, Loh/I0;

    sget-object v2, Lhi/M;->d:Lhi/M;

    invoke-direct {p2, v2}, Loh/I0;-><init>(Loh/g;)V

    invoke-virtual {p1, p2}, Loh/h;->a(Loh/g;)V

    new-instance p2, Loh/G0;

    invoke-direct {p2, p1}, Loh/G0;-><init>(Loh/h;)V

    :goto_1
    invoke-virtual {v1, p2}, Loh/h;->a(Loh/g;)V

    :cond_7
    :goto_2
    new-instance p1, LXh/C;

    sget-object p2, LXh/t;->Z3:Loh/x;

    invoke-virtual {v0}, LXh/d;->r()Loh/B;

    move-result-object v0

    new-instance v2, Loh/I0;

    invoke-direct {v2, v1}, Loh/I0;-><init>(Loh/h;)V

    invoke-direct {p1, p2, v0, v2}, LXh/C;-><init>(Loh/x;Loh/g;Loh/G;)V

    return-object p1
.end method

.method public engineAliases()Ljava/util/Enumeration;
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-object v1, p0, LXj/a;->e:LXj/a$l;

    invoke-virtual {v1}, LXj/a$l;->d()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "cert"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, LXj/a;->c:LXj/a$l;

    invoke-virtual {v1}, LXj/a$l;->d()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "key"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, LXj/a;->e:LXj/a$l;

    invoke-virtual {v0, p1}, LXj/a$l;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, LXj/a;->c:LXj/a$l;

    invoke-virtual {v0, p1}, LXj/a$l;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

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

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, LXj/a;->e:LXj/a$l;

    invoke-virtual {v0, p1}, LXj/a$l;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    if-eqz v0, :cond_0

    iget-object v1, p0, LXj/a;->f:Ljava/util/Hashtable;

    new-instance v2, LXj/a$f;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-direct {v2, p0, v0}, LXj/a$f;-><init>(LXj/a;Ljava/security/PublicKey;)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, LXj/a;->c:LXj/a$l;

    invoke-virtual {v0, p1}, LXj/a$l;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    if-eqz v0, :cond_1

    iget-object v0, p0, LXj/a;->d:LXj/a$l;

    invoke-virtual {v0, p1}, LXj/a$l;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object v0, p0, LXj/a;->g:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/Certificate;

    if-eqz p1, :cond_1

    iget-object v0, p0, LXj/a;->f:Ljava/util/Hashtable;

    new-instance v1, LXj/a$f;

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-direct {v1, p0, p1}, LXj/a$f;-><init>(LXj/a;Ljava/security/PublicKey;)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 1

    if-eqz p1, :cond_2

    iget-object v0, p0, LXj/a;->e:LXj/a$l;

    invoke-virtual {v0, p1}, LXj/a$l;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    if-nez v0, :cond_1

    iget-object v0, p0, LXj/a;->d:LXj/a$l;

    invoke-virtual {v0, p1}, LXj/a$l;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p1, p0, LXj/a;->g:Ljava/util/Hashtable;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    move-object v0, p1

    check-cast v0, Ljava/security/cert/Certificate;

    goto :goto_1

    :cond_0
    iget-object v0, p0, LXj/a;->g:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null alias passed to getCertificate."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, LXj/a;->e:LXj/a$l;

    invoke-virtual {v0}, LXj/a$l;->b()Ljava/util/Enumeration;

    move-result-object v0

    iget-object v1, p0, LXj/a;->e:LXj/a$l;

    invoke-virtual {v1}, LXj/a$l;->d()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v3

    :cond_1
    iget-object v0, p0, LXj/a;->g:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    iget-object v1, p0, LXj/a;->g:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v3

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 8

    if-eqz p1, :cond_8

    invoke-virtual {p0, p1}, LXj/a;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, LXj/a;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_0
    if-eqz p1, :cond_6

    move-object v2, p1

    check-cast v2, Ljava/security/cert/X509Certificate;

    sget-object v3, Lhi/B;->w:Loh/x;

    invoke-virtual {v3}, Loh/x;->J()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v3

    invoke-virtual {v3}, Loh/y;->H()[B

    move-result-object v3

    invoke-static {v3}, Lhi/k;->y(Ljava/lang/Object;)Lhi/k;

    move-result-object v3

    invoke-virtual {v3}, Lhi/k;->A()[B

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, LXj/a;->f:Ljava/util/Hashtable;

    new-instance v5, LXj/a$f;

    invoke-direct {v5, p0, v3}, LXj/a$f;-><init>(LXj/a;[B)V

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, LXj/a;->f:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    :catch_0
    :cond_2
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, LXj/a;->f:Ljava/util/Hashtable;

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :try_start_0
    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v6

    :cond_3
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move-object p1, v1

    goto :goto_0

    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-eq v3, p1, :cond_4

    move-object p1, v3

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    new-array v1, p1, [Ljava/security/cert/Certificate;

    const/4 v2, 0x0

    :goto_2
    if-eq v2, p1, :cond_7

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    return-object v1

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null alias passed to getCertificateChain."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, LXj/a;->c:LXj/a$l;

    invoke-virtual {v0, p1}, LXj/a$l;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, LXj/a;->e:LXj/a$l;

    invoke-virtual {v0, p1}, LXj/a$l;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "alias == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p2, p0, LXj/a;->c:LXj/a$l;

    invoke-virtual {p2, p1}, LXj/a$l;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/Key;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null alias passed to getKey."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, LXj/a;->e:LXj/a$l;

    invoke-virtual {v0, p1}, LXj/a$l;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LXj/a;->c:LXj/a$l;

    invoke-virtual {v0, p1}, LXj/a$l;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, LXj/a;->c:LXj/a$l;

    invoke-virtual {v0, p1}, LXj/a$l;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    if-nez v0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_24

    const/16 v2, 0x30

    if-ne v0, v2, :cond_23

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->reset()V

    new-instance v0, Loh/r;

    invoke-direct {v0, v1}, Loh/r;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v0}, Loh/r;->k()Loh/B;

    move-result-object v0

    invoke-static {v0}, LXh/u;->v(Ljava/lang/Object;)LXh/u;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    invoke-virtual {v0}, LXh/u;->u()LXh/g;

    move-result-object v10

    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0}, LXh/u;->x()LXh/n;

    move-result-object v1

    const/4 v13, 0x0

    if-eqz v1, :cond_5

    if-eqz v9, :cond_4

    invoke-virtual {v0}, LXh/u;->x()LXh/n;

    move-result-object v0

    invoke-virtual {v0}, LXh/n;->x()Lhi/w;

    move-result-object v14

    invoke-virtual {v14}, Lhi/w;->u()Lhi/b;

    move-result-object v1

    iput-object v1, v8, LXj/a;->l:Lhi/b;

    invoke-virtual {v0}, LXh/n;->y()[B

    move-result-object v15

    invoke-virtual {v0}, LXh/n;->v()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v8, v0}, LXj/a;->q(Ljava/math/BigInteger;)I

    move-result v0

    iput v0, v8, LXj/a;->m:I

    array-length v0, v15

    iput v0, v8, LXj/a;->n:I

    invoke-virtual {v10}, LXh/g;->u()Loh/g;

    move-result-object v0

    check-cast v0, Loh/y;

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    :try_start_1
    iget-object v1, v8, LXj/a;->l:Lhi/b;

    invoke-virtual {v1}, Lhi/b;->u()Loh/x;

    move-result-object v2

    iget v4, v8, LXj/a;->m:I

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v3, v15

    move-object/from16 v5, p2

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, LXj/a;->c(Loh/x;[BI[CZ[B)[B

    move-result-object v1

    invoke-virtual {v14}, Lhi/w;->v()[B

    move-result-object v14

    invoke-static {v1, v14}, Lorg/bouncycastle/util/a;->I([B[B)Z

    move-result v1

    if-nez v1, :cond_3

    array-length v1, v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "PKCS12 key store mac invalid - wrong password or corrupted file."

    if-gtz v1, :cond_2

    :try_start_2
    iget-object v1, v8, LXj/a;->l:Lhi/b;

    invoke-virtual {v1}, Lhi/b;->u()Loh/x;

    move-result-object v2

    iget v4, v8, LXj/a;->m:I

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object v3, v15

    move-object/from16 v5, p2

    move-object v15, v7

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, LXj/a;->c(Loh/x;[BI[CZ[B)[B

    move-result-object v0

    invoke-static {v0, v14}, Lorg/bouncycastle/util/a;->I([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v15, v7

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    move v0, v13

    :goto_0
    move v7, v13

    goto :goto_3

    :goto_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error constructing MAC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_2
    throw v0

    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "no password supplied when one expected"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v0, v13

    const/4 v7, 0x1

    :goto_3
    new-instance v1, LXj/a$l;

    const/4 v14, 0x0

    invoke-direct {v1, v14}, LXj/a$l;-><init>(LXj/a$a;)V

    iput-object v1, v8, LXj/a;->c:LXj/a$l;

    new-instance v1, LXj/a$l;

    invoke-direct {v1, v14}, LXj/a$l;-><init>(LXj/a$a;)V

    iput-object v1, v8, LXj/a;->d:LXj/a$l;

    invoke-virtual {v10}, LXh/g;->v()Loh/x;

    move-result-object v1

    sget-object v2, LXh/t;->G1:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v10}, LXh/g;->u()Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v1

    invoke-virtual {v1}, Loh/y;->H()[B

    move-result-object v1

    invoke-static {v1}, LXh/b;->w(Ljava/lang/Object;)LXh/b;

    move-result-object v1

    invoke-virtual {v1}, LXh/b;->v()[LXh/g;

    move-result-object v10

    move v15, v13

    move/from16 v16, v15

    const/4 v1, 0x1

    :goto_4
    array-length v2, v10

    if-eq v15, v2, :cond_11

    aget-object v2, v10, v15

    invoke-virtual {v2}, LXh/g;->v()Loh/x;

    move-result-object v2

    sget-object v3, LXh/t;->G1:Loh/x;

    invoke-virtual {v2, v3}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-eqz v2, :cond_9

    aget-object v2, v10, v15

    invoke-virtual {v2}, LXh/g;->u()Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v2

    invoke-virtual {v2}, Loh/y;->H()[B

    move-result-object v2

    invoke-static {v2}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v2

    move v3, v13

    :goto_5
    invoke-virtual {v2}, Loh/E;->size()I

    move-result v4

    if-eq v3, v4, :cond_f

    invoke-virtual {v2, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    invoke-static {v4}, LXh/C;->y(Ljava/lang/Object;)LXh/C;

    move-result-object v4

    invoke-virtual {v4}, LXh/C;->v()Loh/x;

    move-result-object v5

    sget-object v6, LXh/t;->Y3:Loh/x;

    invoke-virtual {v5, v6}, Loh/B;->A(Loh/B;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v8, v4, v9, v0}, LXj/a;->o(LXh/C;[CZ)Z

    move-result v1

    move/from16 v16, v1

    move v1, v13

    goto :goto_6

    :cond_6
    invoke-virtual {v4}, LXh/C;->v()Loh/x;

    move-result-object v5

    sget-object v6, LXh/t;->Z3:Loh/x;

    invoke-virtual {v5, v6}, Loh/B;->A(Loh/B;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v11, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_6

    :cond_7
    invoke-virtual {v4}, LXh/C;->v()Loh/x;

    move-result-object v5

    sget-object v6, LXh/t;->X3:Loh/x;

    invoke-virtual {v5, v6}, Loh/B;->A(Loh/B;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v8, v4}, LXj/a;->n(LXh/C;)V

    goto :goto_6

    :cond_8
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "extra in data "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, LXh/C;->v()Loh/x;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v4}, Lei/a;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    aget-object v2, v10, v15

    invoke-virtual {v2}, LXh/g;->v()Loh/x;

    move-result-object v2

    sget-object v3, LXh/t;->O1:Loh/x;

    invoke-virtual {v2, v3}, Loh/B;->A(Loh/B;)Z

    move-result v2

    if-eqz v2, :cond_e

    aget-object v1, v10, v15

    invoke-virtual {v1}, LXh/g;->u()Loh/g;

    move-result-object v1

    invoke-static {v1}, LXh/i;->y(Ljava/lang/Object;)LXh/i;

    move-result-object v1

    invoke-virtual {v1}, LXh/i;->x()Lhi/b;

    move-result-object v3

    invoke-virtual {v1}, LXh/i;->u()Loh/y;

    move-result-object v1

    invoke-virtual {v1}, Loh/y;->H()[B

    move-result-object v6

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move v5, v0

    invoke-virtual/range {v1 .. v6}, LXj/a;->g(ZLhi/b;[CZ[B)[B

    move-result-object v1

    invoke-static {v1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v1

    move v2, v13

    :goto_7
    invoke-virtual {v1}, Loh/E;->size()I

    move-result v3

    if-eq v2, v3, :cond_d

    invoke-virtual {v1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, LXh/C;->y(Ljava/lang/Object;)LXh/C;

    move-result-object v3

    invoke-virtual {v3}, LXh/C;->v()Loh/x;

    move-result-object v4

    sget-object v5, LXh/t;->Z3:Loh/x;

    invoke-virtual {v4, v5}, Loh/B;->A(Loh/B;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v11, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_8

    :cond_a
    invoke-virtual {v3}, LXh/C;->v()Loh/x;

    move-result-object v4

    sget-object v5, LXh/t;->Y3:Loh/x;

    invoke-virtual {v4, v5}, Loh/B;->A(Loh/B;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v8, v3, v9, v0}, LXj/a;->o(LXh/C;[CZ)Z

    move-result v3

    move/from16 v16, v3

    goto :goto_8

    :cond_b
    invoke-virtual {v3}, LXh/C;->v()Loh/x;

    move-result-object v4

    sget-object v5, LXh/t;->X3:Loh/x;

    invoke-virtual {v4, v5}, Loh/B;->A(Loh/B;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v8, v3}, LXj/a;->n(LXh/C;)V

    goto :goto_8

    :cond_c
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extra in encryptedData "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, LXh/C;->v()Loh/x;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v3}, Lei/a;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_d
    move v1, v13

    goto :goto_9

    :cond_e
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extra "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v10, v15

    invoke-virtual {v5}, LXh/g;->v()Loh/x;

    move-result-object v5

    invoke-virtual {v5}, Loh/x;->J()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v10, v15

    invoke-virtual {v4}, LXh/g;->u()Loh/g;

    move-result-object v4

    invoke-static {v4}, Lei/a;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_f
    :goto_9
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4

    :cond_10
    move/from16 v16, v13

    const/4 v1, 0x1

    :cond_11
    new-instance v0, LXj/a$l;

    invoke-direct {v0, v14}, LXj/a$l;-><init>(LXj/a$a;)V

    iput-object v0, v8, LXj/a;->e:LXj/a$l;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, v8, LXj/a;->f:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, v8, LXj/a;->g:Ljava/util/Hashtable;

    move v0, v13

    :goto_a
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v0, v2, :cond_20

    invoke-virtual {v11, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LXh/C;

    invoke-virtual {v2}, LXh/C;->x()Loh/g;

    move-result-object v3

    invoke-static {v3}, LXh/d;->w(Ljava/lang/Object;)LXh/d;

    move-result-object v3

    invoke-virtual {v3}, LXh/d;->u()Loh/x;

    move-result-object v4

    sget-object v5, LXh/t;->n2:Loh/x;

    invoke-virtual {v4, v5}, Loh/B;->A(Loh/B;)Z

    move-result v4

    if-eqz v4, :cond_1f

    :try_start_3
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, LXh/d;->v()Loh/g;

    move-result-object v3

    check-cast v3, Loh/y;

    invoke-virtual {v3}, Loh/y;->H()[B

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v3, v8, LXj/a;->i:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v3, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    invoke-virtual {v2}, LXh/C;->u()Loh/G;

    move-result-object v4

    if-eqz v4, :cond_1b

    invoke-virtual {v2}, LXh/C;->u()Loh/G;

    move-result-object v2

    invoke-virtual {v2}, Loh/G;->I()Ljava/util/Enumeration;

    move-result-object v2

    move-object v4, v14

    move-object v5, v4

    :goto_b
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v6

    invoke-virtual {v6, v13}, Loh/E;->I(I)Loh/g;

    move-result-object v10

    invoke-static {v10}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object v10

    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Loh/E;->I(I)Loh/g;

    move-result-object v6

    invoke-static {v6}, Loh/G;->F(Ljava/lang/Object;)Loh/G;

    move-result-object v6

    invoke-virtual {v6}, Loh/G;->size()I

    move-result v12

    if-lez v12, :cond_18

    invoke-virtual {v6, v13}, Loh/G;->H(I)Loh/g;

    move-result-object v12

    check-cast v12, Loh/B;

    instance-of v15, v3, Lfk/p;

    if-eqz v15, :cond_13

    move-object v15, v3

    check-cast v15, Lfk/p;

    invoke-interface {v15, v10}, Lfk/p;->c(Loh/x;)Loh/g;

    move-result-object v17

    if-eqz v17, :cond_15

    sget-object v6, LXh/t;->j2:Loh/x;

    invoke-virtual {v10, v6}, Loh/B;->A(Loh/B;)Z

    move-result v6

    if-eqz v6, :cond_12

    move-object v6, v12

    check-cast v6, Loh/y;

    invoke-virtual {v6}, Loh/y;->H()[B

    move-result-object v6

    invoke-static {v6}, Lem/h;->j([B)Ljava/lang/String;

    move-result-object v6

    iget-object v15, v8, LXj/a;->c:LXj/a$l;

    invoke-static {v15}, LXj/a$l;->a(LXj/a$l;)Ljava/util/Hashtable;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_12

    iget-object v15, v8, LXj/a;->d:LXj/a$l;

    invoke-static {v15}, LXj/a$l;->a(LXj/a$l;)Ljava/util/Hashtable;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    goto :goto_b

    :cond_12
    invoke-interface/range {v17 .. v17}, Loh/g;->r()Loh/B;

    move-result-object v6

    invoke-virtual {v6, v12}, Loh/B;->A(Loh/B;)Z

    move-result v6

    if-eqz v6, :cond_14

    :cond_13
    const/4 v14, 0x1

    goto :goto_c

    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string v1, "attempt to add existing attribute with different value"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    invoke-virtual {v6}, Loh/G;->size()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_16

    invoke-interface {v15, v10, v6}, Lfk/p;->a(Loh/x;Loh/g;)V

    goto :goto_c

    :cond_16
    invoke-interface {v15, v10, v12}, Lfk/p;->a(Loh/x;Loh/g;)V

    :goto_c
    sget-object v6, LXh/t;->h2:Loh/x;

    invoke-virtual {v10, v6}, Loh/B;->A(Loh/B;)Z

    move-result v6

    if-eqz v6, :cond_17

    check-cast v12, Loh/b;

    invoke-virtual {v12}, Loh/b;->getString()Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    :cond_17
    sget-object v6, LXh/t;->j2:Loh/x;

    invoke-virtual {v10, v6}, Loh/B;->A(Loh/B;)Z

    move-result v6

    if-eqz v6, :cond_19

    check-cast v12, Loh/y;

    move-object v4, v12

    goto :goto_d

    :cond_18
    const/4 v14, 0x1

    :cond_19
    :goto_d
    const/4 v13, 0x0

    const/4 v14, 0x0

    goto/16 :goto_b

    :cond_1a
    const/4 v14, 0x1

    goto :goto_e

    :cond_1b
    const/4 v14, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_e
    iget-object v2, v8, LXj/a;->f:Ljava/util/Hashtable;

    new-instance v6, LXj/a$f;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    invoke-direct {v6, v8, v10}, LXj/a$f;-><init>(LXj/a;Ljava/security/PublicKey;)V

    invoke-virtual {v2, v6, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v16, :cond_1c

    iget-object v2, v8, LXj/a;->g:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1e

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-virtual {v8, v4}, LXj/a;->f(Ljava/security/PublicKey;)Lhi/g0;

    move-result-object v4

    invoke-virtual {v4}, Lhi/g0;->x()[B

    move-result-object v4

    invoke-static {v4}, Lem/h;->h([B)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    iget-object v4, v8, LXj/a;->g:Ljava/util/Hashtable;

    invoke-virtual {v4, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v8, LXj/a;->c:LXj/a$l;

    const-string v4, "unmarked"

    invoke-virtual {v3, v4}, LXj/a$l;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, LXj/a$l;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_f

    :cond_1c
    if-eqz v4, :cond_1d

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v4}, Loh/y;->H()[B

    move-result-object v4

    invoke-static {v4}, Lem/h;->h([B)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    iget-object v4, v8, LXj/a;->g:Ljava/util/Hashtable;

    invoke-virtual {v4, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    if-eqz v5, :cond_1e

    iget-object v2, v8, LXj/a;->e:LXj/a$l;

    invoke-virtual {v2, v5, v3}, LXj/a$l;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1e
    :goto_f
    add-int/lit8 v0, v0, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto/16 :goto_a

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported certificate type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, LXh/d;->u()Loh/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    if-eqz v7, :cond_22

    if-eqz v1, :cond_22

    if-eqz v9, :cond_22

    array-length v0, v9

    if-eqz v0, :cond_22

    const-string v0, "org.bouncycastle.pkcs12.ignore_useless_passwd"

    invoke-static {v0}, Lorg/bouncycastle/util/q;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_10

    :cond_21
    new-instance v0, Ljava/io/IOException;

    const-string v1, "password supplied for keystore that does not require one"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    :goto_10
    return-void

    :catch_3
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_23
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream does not represent a PKCS12 key store"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "no data in keystore stream"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1, p1}, LXj/a;->engineLoad(Ljava/io/InputStream;[C)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, LHj/c;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, LHj/c;

    invoke-virtual {v0}, LHj/c;->a()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p1}, LYj/c;->a(Ljava/security/KeyStore$LoadStoreParameter;)[C

    move-result-object p1

    invoke-virtual {p0, v0, p1}, LXj/a;->engineLoad(Ljava/io/InputStream;[C)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no support for \'param\' of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineProbe(Ljava/io/InputStream;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, LXj/a;->c:LXj/a$l;

    invoke-virtual {v0, p1}, LXj/a$l;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, LXj/a;->e:LXj/a$l;

    invoke-virtual {v0, p1, p2}, LXj/a$l;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, LXj/a;->f:Ljava/util/Hashtable;

    new-instance v0, LXj/a$f;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LXj/a$f;-><init>(LXj/a;Ljava/security/PublicKey;)V

    invoke-virtual {p1, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p2, Ljava/security/KeyStoreException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There is a key entry with the name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1
    instance-of p3, p2, Ljava/security/PrivateKey;

    if-eqz p3, :cond_4

    instance-of p3, p2, Ljava/security/PrivateKey;

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/KeyStoreException;

    const-string p2, "no certificate chain for private key"

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p3, p0, LXj/a;->c:LXj/a$l;

    invoke-virtual {p3, p1}, LXj/a$l;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p0, p1}, LXj/a;->engineDeleteEntry(Ljava/lang/String;)V

    :cond_2
    iget-object p3, p0, LXj/a;->c:LXj/a$l;

    invoke-virtual {p3, p1, p2}, LXj/a$l;->e(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p4, :cond_3

    iget-object p2, p0, LXj/a;->e:LXj/a$l;

    const/4 p3, 0x0

    aget-object v0, p4, p3

    invoke-virtual {p2, p1, v0}, LXj/a$l;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    array-length p1, p4

    if-eq p3, p1, :cond_3

    iget-object p1, p0, LXj/a;->f:Ljava/util/Hashtable;

    new-instance p2, LXj/a$f;

    aget-object v0, p4, p3

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-direct {p2, p0, v0}, LXj/a$f;-><init>(LXj/a;Ljava/security/PublicKey;)V

    aget-object v0, p4, p3

    invoke-virtual {p1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/security/KeyStoreException;

    const-string p2, "PKCS12 does not support non-PrivateKeys"

    invoke-direct {p1, p2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "operation not supported"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineSize()I
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-object v1, p0, LXj/a;->e:LXj/a$l;

    invoke-virtual {v1}, LXj/a$l;->d()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "cert"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, LXj/a;->c:LXj/a$l;

    invoke-virtual {v1}, LXj/a$l;->d()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "key"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, LXj/a;->h(Ljava/io/OutputStream;[CZ)V

    return-void
.end method

.method public engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 2
    instance-of v0, p1, LHj/n;

    if-nez v0, :cond_1

    instance-of v1, p1, Lorg/bouncycastle/jce/provider/v;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No support for \'param\' of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, LHj/n;

    goto :goto_1

    :cond_2
    new-instance v0, LHj/n;

    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/jce/provider/v;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/v;->a()Ljava/io/OutputStream;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/v;->b()Z

    move-result v1

    invoke-direct {v0, v2, v3, v1}, LHj/n;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;Z)V

    :goto_1
    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    instance-of v1, p1, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v1, :cond_4

    check-cast p1, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {p1}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object p1

    :goto_2
    invoke-virtual {v0}, LHj/n;->a()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, LHj/n;->b()Z

    move-result v0

    invoke-virtual {p0, v1, p1, v0}, LXj/a;->h(Ljava/io/OutputStream;[CZ)V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No support for protection parameter of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'param\' arg cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Ljava/security/PublicKey;)Lhi/g0;
    .locals 1

    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object p1

    new-instance v0, Lhi/g0;

    invoke-static {p1}, LXj/a;->j(Lhi/h0;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lhi/g0;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "error creating key"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(ZLhi/b;[CZ[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lhi/b;->u()Loh/x;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    sget-object v1, LXh/t;->d4:Loh/x;

    invoke-virtual {v0, v1}, Loh/x;->O(Loh/x;)Z

    move-result v1

    const-string v2, "exception decrypting data - "

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lhi/b;->x()Loh/g;

    move-result-object p2

    invoke-static {p2}, LXh/s;->v(Ljava/lang/Object;)LXh/s;

    move-result-object p2

    :try_start_0
    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p2}, LXh/s;->u()[B

    move-result-object v3

    invoke-virtual {p2}, LXh/s;->x()Ljava/math/BigInteger;

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/util/b;->l(Ljava/math/BigInteger;)I

    move-result p2

    invoke-direct {v1, v3, p2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    new-instance p2, LHj/l;

    invoke-direct {p2, p3, p4}, LHj/l;-><init>([CZ)V

    iget-object p3, p0, LXj/a;->b:Ldk/f;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4}, Ldk/f;->e(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p3

    invoke-virtual {p3, p1, p2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p3, p5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    sget-object p4, LXh/t;->j1:Loh/x;

    invoke-virtual {v0, p4}, Loh/B;->A(Loh/B;)Z

    move-result p4

    if-eqz p4, :cond_2

    :try_start_1
    invoke-virtual {p0, p1, p3, p2}, LXj/a;->d(I[CLhi/b;)Ljavax/crypto/Cipher;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown PBE algorithm: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(Ljava/io/OutputStream;[CZ)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    iget-object v1, v8, LXj/a;->c:LXj/a$l;

    invoke-virtual {v1}, LXj/a$l;->g()I

    move-result v1

    const-string v9, "BER"

    const/4 v10, 0x0

    const-string v2, "Error encoding certificate: "

    const-string v11, "DER"

    if-nez v1, :cond_2

    if-nez v7, :cond_3

    iget-object v1, v8, LXj/a;->e:LXj/a$l;

    invoke-virtual {v1}, LXj/a$l;->d()Ljava/util/Enumeration;

    move-result-object v1

    new-instance v3, Loh/h;

    invoke-direct {v3}, Loh/h;-><init>()V

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v8, LXj/a;->e:LXj/a$l;

    invoke-virtual {v5, v4}, LXj/a$l;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/Certificate;

    invoke-virtual {v8, v4, v5}, LXj/a;->e(Ljava/lang/String;Ljava/security/cert/Certificate;)LXh/C;

    move-result-object v4

    invoke-virtual {v3, v4}, Loh/h;->a(Loh/g;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, LXh/g;

    sget-object v2, LXh/t;->G1:Loh/x;

    if-eqz p3, :cond_1

    new-instance v4, Loh/C0;

    new-instance v5, Loh/G0;

    invoke-direct {v5, v3}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v5}, Loh/v;->getEncoded()[B

    move-result-object v3

    invoke-direct {v4, v3}, Loh/C0;-><init>([B)V

    invoke-direct {v1, v2, v4}, LXh/g;-><init>(Loh/x;Loh/g;)V

    new-instance v3, LXh/u;

    new-instance v4, LXh/g;

    new-instance v5, Loh/C0;

    new-instance v6, Loh/G0;

    invoke-direct {v6, v1}, Loh/G0;-><init>(Loh/g;)V

    invoke-virtual {v6}, Loh/v;->getEncoded()[B

    move-result-object v1

    invoke-direct {v5, v1}, Loh/C0;-><init>([B)V

    invoke-direct {v4, v2, v5}, LXh/g;-><init>(Loh/x;Loh/g;)V

    invoke-direct {v3, v4, v10}, LXh/u;-><init>(LXh/g;LXh/n;)V

    invoke-virtual {v3, v0, v11}, Loh/v;->f(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v4, Loh/c0;

    new-instance v5, Loh/g0;

    invoke-direct {v5, v3}, Loh/g0;-><init>(Loh/h;)V

    invoke-virtual {v5}, Loh/v;->getEncoded()[B

    move-result-object v3

    invoke-direct {v4, v3}, Loh/c0;-><init>([B)V

    invoke-direct {v1, v2, v4}, LXh/g;-><init>(Loh/x;Loh/g;)V

    new-instance v3, LXh/u;

    new-instance v4, LXh/g;

    new-instance v5, Loh/c0;

    new-instance v6, Loh/g0;

    invoke-direct {v6, v1}, Loh/g0;-><init>(Loh/g;)V

    invoke-virtual {v6}, Loh/v;->getEncoded()[B

    move-result-object v1

    invoke-direct {v5, v1}, Loh/c0;-><init>([B)V

    invoke-direct {v4, v2, v5}, LXh/g;-><init>(Loh/x;Loh/g;)V

    invoke-direct {v3, v4, v10}, LXh/u;-><init>(LXh/g;LXh/n;)V

    invoke-virtual {v3, v0, v9}, Loh/v;->f(Ljava/io/OutputStream;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    if-eqz v7, :cond_1e

    :cond_3
    new-instance v1, Loh/h;

    invoke-direct {v1}, Loh/h;-><init>()V

    iget-object v3, v8, LXj/a;->c:LXj/a$l;

    invoke-virtual {v3}, LXj/a$l;->d()Ljava/util/Enumeration;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    const/16 v12, 0x14

    const v13, 0xc800

    if-eqz v4, :cond_b

    new-array v4, v12, [B

    iget-object v12, v8, LXj/a;->h:Ljava/security/SecureRandom;

    invoke-virtual {v12, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iget-object v14, v8, LXj/a;->c:LXj/a$l;

    invoke-virtual {v14, v12}, LXj/a$l;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/security/PrivateKey;

    iget-object v15, v8, LXj/a;->j:Loh/x;

    invoke-static {v15}, LXj/a;->m(Loh/x;)Z

    move-result v15

    if-eqz v15, :cond_4

    new-instance v15, LXh/q;

    iget-object v5, v8, LXj/a;->j:Loh/x;

    invoke-static {v5}, LXj/a;->k(Loh/x;)I

    move-result v5

    new-instance v6, Lhi/b;

    sget-object v10, LXh/t;->z1:Loh/x;

    move-object/from16 v17, v3

    sget-object v3, Loh/A0;->c:Loh/A0;

    invoke-direct {v6, v10, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-direct {v15, v4, v13, v5, v6}, LXh/q;-><init>([BIILhi/b;)V

    new-instance v3, LXh/k;

    iget-object v4, v8, LXj/a;->j:Loh/x;

    invoke-virtual {v8, v4}, LXj/a;->i(Loh/x;)Loh/B;

    move-result-object v5

    invoke-direct {v3, v4, v5}, LXh/k;-><init>(Loh/x;Loh/g;)V

    new-instance v4, Lhi/b;

    sget-object v5, LXh/t;->j1:Loh/x;

    new-instance v6, LXh/p;

    new-instance v10, LXh/m;

    sget-object v13, LXh/t;->h1:Loh/x;

    invoke-direct {v10, v13, v15}, LXh/m;-><init>(Loh/x;Loh/g;)V

    invoke-direct {v6, v10, v3}, LXh/p;-><init>(LXh/m;LXh/k;)V

    invoke-direct {v4, v5, v6}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-virtual {v8, v3, v14, v15, v7}, LXj/a;->r(LXh/k;Ljava/security/Key;LXh/q;[C)[B

    move-result-object v3

    goto :goto_3

    :cond_4
    move-object/from16 v17, v3

    new-instance v3, LXh/s;

    invoke-direct {v3, v4, v13}, LXh/s;-><init>([BI)V

    iget-object v4, v8, LXj/a;->j:Loh/x;

    invoke-virtual {v4}, Loh/x;->J()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4, v14, v3, v7}, LXj/a;->s(Ljava/lang/String;Ljava/security/Key;LXh/s;[C)[B

    move-result-object v4

    new-instance v5, Lhi/b;

    iget-object v6, v8, LXj/a;->j:Loh/x;

    invoke-virtual {v3}, LXh/s;->r()Loh/B;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    move-object v3, v4

    move-object v4, v5

    :goto_3
    new-instance v5, LXh/j;

    invoke-direct {v5, v4, v3}, LXh/j;-><init>(Lhi/b;[B)V

    new-instance v3, Loh/h;

    invoke-direct {v3}, Loh/h;-><init>()V

    instance-of v4, v14, Lfk/p;

    if-eqz v4, :cond_8

    check-cast v14, Lfk/p;

    sget-object v4, LXh/t;->h2:Loh/x;

    invoke-interface {v14, v4}, Lfk/p;->c(Loh/x;)Loh/g;

    move-result-object v6

    check-cast v6, Loh/b;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Loh/b;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    new-instance v6, Loh/q0;

    invoke-direct {v6, v12}, Loh/q0;-><init>(Ljava/lang/String;)V

    invoke-interface {v14, v4, v6}, Lfk/p;->a(Loh/x;Loh/g;)V

    :cond_6
    sget-object v4, LXh/t;->j2:Loh/x;

    invoke-interface {v14, v4}, Lfk/p;->c(Loh/x;)Loh/g;

    move-result-object v6

    if-nez v6, :cond_7

    invoke-virtual {v8, v12}, LXj/a;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-virtual {v8, v6}, LXj/a;->f(Ljava/security/PublicKey;)Lhi/g0;

    move-result-object v6

    invoke-interface {v14, v4, v6}, Lfk/p;->a(Loh/x;Loh/g;)V

    :cond_7
    invoke-interface {v14}, Lfk/p;->d()Ljava/util/Enumeration;

    move-result-object v4

    const/4 v6, 0x0

    :goto_4
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Loh/x;

    new-instance v10, Loh/h;

    invoke-direct {v10}, Loh/h;-><init>()V

    invoke-virtual {v10, v6}, Loh/h;->a(Loh/g;)V

    new-instance v13, Loh/I0;

    invoke-interface {v14, v6}, Lfk/p;->c(Loh/x;)Loh/g;

    move-result-object v6

    invoke-direct {v13, v6}, Loh/I0;-><init>(Loh/g;)V

    invoke-virtual {v10, v13}, Loh/h;->a(Loh/g;)V

    new-instance v6, Loh/G0;

    invoke-direct {v6, v10}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v3, v6}, Loh/h;->a(Loh/g;)V

    const/4 v6, 0x1

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    :cond_9
    if-nez v6, :cond_a

    new-instance v4, Loh/h;

    invoke-direct {v4}, Loh/h;-><init>()V

    invoke-virtual {v8, v12}, LXj/a;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    sget-object v10, LXh/t;->j2:Loh/x;

    invoke-virtual {v4, v10}, Loh/h;->a(Loh/g;)V

    new-instance v10, Loh/I0;

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-virtual {v8, v6}, LXj/a;->f(Ljava/security/PublicKey;)Lhi/g0;

    move-result-object v6

    invoke-direct {v10, v6}, Loh/I0;-><init>(Loh/g;)V

    invoke-virtual {v4, v10}, Loh/h;->a(Loh/g;)V

    new-instance v6, Loh/G0;

    invoke-direct {v6, v4}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v3, v6}, Loh/h;->a(Loh/g;)V

    new-instance v4, Loh/h;

    invoke-direct {v4}, Loh/h;-><init>()V

    sget-object v6, LXh/t;->h2:Loh/x;

    invoke-virtual {v4, v6}, Loh/h;->a(Loh/g;)V

    new-instance v6, Loh/I0;

    new-instance v10, Loh/q0;

    invoke-direct {v10, v12}, Loh/q0;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v10}, Loh/I0;-><init>(Loh/g;)V

    invoke-virtual {v4, v6}, Loh/h;->a(Loh/g;)V

    new-instance v6, Loh/G0;

    invoke-direct {v6, v4}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v3, v6}, Loh/h;->a(Loh/g;)V

    :cond_a
    new-instance v4, LXh/C;

    sget-object v6, LXh/t;->Y3:Loh/x;

    invoke-virtual {v5}, LXh/j;->r()Loh/B;

    move-result-object v5

    new-instance v10, Loh/I0;

    invoke-direct {v10, v3}, Loh/I0;-><init>(Loh/h;)V

    invoke-direct {v4, v6, v5, v10}, LXh/C;-><init>(Loh/x;Loh/g;Loh/G;)V

    invoke-virtual {v1, v4}, Loh/h;->a(Loh/g;)V

    move-object/from16 v3, v17

    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_b
    new-instance v3, Loh/G0;

    invoke-direct {v3, v1}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v3, v11}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v10, Loh/c0;

    invoke-direct {v10, v1}, Loh/c0;-><init>([B)V

    new-array v1, v12, [B

    iget-object v3, v8, LXj/a;->h:Ljava/security/SecureRandom;

    invoke-virtual {v3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v3, Loh/h;

    invoke-direct {v3}, Loh/h;-><init>()V

    iget-object v4, v8, LXj/a;->k:Loh/x;

    invoke-static {v4}, LXj/a;->m(Loh/x;)Z

    move-result v4

    if-eqz v4, :cond_c

    new-instance v4, LXh/q;

    iget-object v5, v8, LXj/a;->k:Loh/x;

    invoke-static {v5}, LXj/a;->k(Loh/x;)I

    move-result v5

    new-instance v6, Lhi/b;

    sget-object v12, LXh/t;->z1:Loh/x;

    sget-object v14, Loh/A0;->c:Loh/A0;

    invoke-direct {v6, v12, v14}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-direct {v4, v1, v13, v5, v6}, LXh/q;-><init>([BIILhi/b;)V

    new-instance v1, Lhi/b;

    sget-object v5, LXh/t;->j1:Loh/x;

    new-instance v6, LXh/p;

    new-instance v12, LXh/m;

    sget-object v13, LXh/t;->h1:Loh/x;

    invoke-direct {v12, v13, v4}, LXh/m;-><init>(Loh/x;Loh/g;)V

    new-instance v4, LXh/k;

    iget-object v13, v8, LXj/a;->k:Loh/x;

    invoke-virtual {v8, v13}, LXj/a;->i(Loh/x;)Loh/B;

    move-result-object v14

    invoke-direct {v4, v13, v14}, LXh/k;-><init>(Loh/x;Loh/g;)V

    invoke-direct {v6, v12, v4}, LXh/p;-><init>(LXh/m;LXh/k;)V

    invoke-direct {v1, v5, v6}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    :goto_5
    move-object v12, v1

    goto :goto_6

    :cond_c
    new-instance v4, LXh/s;

    invoke-direct {v4, v1, v13}, LXh/s;-><init>([BI)V

    new-instance v1, Lhi/b;

    iget-object v5, v8, LXj/a;->k:Loh/x;

    invoke-virtual {v4}, LXh/s;->r()Loh/B;

    move-result-object v4

    invoke-direct {v1, v5, v4}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    goto :goto_5

    :goto_6
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iget-object v4, v8, LXj/a;->c:LXj/a$l;

    invoke-virtual {v4}, LXj/a$l;->d()Ljava/util/Enumeration;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_13

    :try_start_1
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v8, v5}, LXj/a;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    new-instance v13, LXh/d;

    sget-object v14, LXh/t;->n2:Loh/x;

    new-instance v15, Loh/C0;

    move-object/from16 v17, v4

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v4

    invoke-direct {v15, v4}, Loh/C0;-><init>([B)V

    invoke-direct {v13, v14, v15}, LXh/d;-><init>(Loh/x;Loh/g;)V

    new-instance v4, Loh/h;

    invoke-direct {v4}, Loh/h;-><init>()V

    instance-of v14, v6, Lfk/p;

    if-eqz v14, :cond_11

    move-object v14, v6

    check-cast v14, Lfk/p;

    sget-object v15, LXh/t;->h2:Loh/x;

    invoke-interface {v14, v15}, Lfk/p;->c(Loh/x;)Loh/g;

    move-result-object v18

    check-cast v18, Loh/b;

    if-eqz v18, :cond_d

    invoke-virtual/range {v18 .. v18}, Loh/b;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    goto :goto_8

    :catch_1
    move-exception v0

    goto/16 :goto_b

    :cond_d
    :goto_8
    new-instance v7, Loh/q0;

    invoke-direct {v7, v5}, Loh/q0;-><init>(Ljava/lang/String;)V

    invoke-interface {v14, v15, v7}, Lfk/p;->a(Loh/x;Loh/g;)V

    :cond_e
    sget-object v7, LXh/t;->j2:Loh/x;

    invoke-interface {v14, v7}, Lfk/p;->c(Loh/x;)Loh/g;

    move-result-object v15

    if-nez v15, :cond_f

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v15

    invoke-virtual {v8, v15}, LXj/a;->f(Ljava/security/PublicKey;)Lhi/g0;

    move-result-object v15

    invoke-interface {v14, v7, v15}, Lfk/p;->a(Loh/x;Loh/g;)V

    :cond_f
    invoke-interface {v14}, Lfk/p;->d()Ljava/util/Enumeration;

    move-result-object v7

    const/4 v15, 0x0

    :goto_9
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_10

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Loh/x;

    move-object/from16 v18, v7

    new-instance v7, Loh/h;

    invoke-direct {v7}, Loh/h;-><init>()V

    invoke-virtual {v7, v15}, Loh/h;->a(Loh/g;)V

    move-object/from16 v19, v9

    new-instance v9, Loh/I0;

    invoke-interface {v14, v15}, Lfk/p;->c(Loh/x;)Loh/g;

    move-result-object v15

    invoke-direct {v9, v15}, Loh/I0;-><init>(Loh/g;)V

    invoke-virtual {v7, v9}, Loh/h;->a(Loh/g;)V

    new-instance v9, Loh/G0;

    invoke-direct {v9, v7}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v4, v9}, Loh/h;->a(Loh/g;)V

    move-object/from16 v7, v18

    move-object/from16 v9, v19

    const/4 v15, 0x1

    goto :goto_9

    :cond_10
    move-object/from16 v19, v9

    goto :goto_a

    :cond_11
    move-object/from16 v19, v9

    const/4 v15, 0x0

    :goto_a
    if-nez v15, :cond_12

    new-instance v7, Loh/h;

    invoke-direct {v7}, Loh/h;-><init>()V

    sget-object v9, LXh/t;->j2:Loh/x;

    invoke-virtual {v7, v9}, Loh/h;->a(Loh/g;)V

    new-instance v9, Loh/I0;

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v14

    invoke-virtual {v8, v14}, LXj/a;->f(Ljava/security/PublicKey;)Lhi/g0;

    move-result-object v14

    invoke-direct {v9, v14}, Loh/I0;-><init>(Loh/g;)V

    invoke-virtual {v7, v9}, Loh/h;->a(Loh/g;)V

    new-instance v9, Loh/G0;

    invoke-direct {v9, v7}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v4, v9}, Loh/h;->a(Loh/g;)V

    new-instance v7, Loh/h;

    invoke-direct {v7}, Loh/h;-><init>()V

    sget-object v9, LXh/t;->h2:Loh/x;

    invoke-virtual {v7, v9}, Loh/h;->a(Loh/g;)V

    new-instance v9, Loh/I0;

    new-instance v14, Loh/q0;

    invoke-direct {v14, v5}, Loh/q0;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v14}, Loh/I0;-><init>(Loh/g;)V

    invoke-virtual {v7, v9}, Loh/h;->a(Loh/g;)V

    new-instance v5, Loh/G0;

    invoke-direct {v5, v7}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v4, v5}, Loh/h;->a(Loh/g;)V

    :cond_12
    new-instance v5, LXh/C;

    sget-object v7, LXh/t;->Z3:Loh/x;

    invoke-virtual {v13}, LXh/d;->r()Loh/B;

    move-result-object v9

    new-instance v13, Loh/I0;

    invoke-direct {v13, v4}, Loh/I0;-><init>(Loh/h;)V

    invoke-direct {v5, v7, v9, v13}, LXh/C;-><init>(Loh/x;Loh/g;Loh/G;)V

    invoke-virtual {v3, v5}, Loh/h;->a(Loh/g;)V

    invoke-virtual {v1, v6, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v7, p2

    move-object/from16 v4, v17

    move-object/from16 v9, v19

    goto/16 :goto_7

    :goto_b
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    move-object/from16 v19, v9

    iget-object v4, v8, LXj/a;->e:LXj/a$l;

    invoke-virtual {v4}, LXj/a$l;->d()Ljava/util/Enumeration;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_15

    :try_start_2
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v8, LXj/a;->e:LXj/a$l;

    invoke-virtual {v6, v5}, LXj/a$l;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/Certificate;

    iget-object v7, v8, LXj/a;->c:LXj/a$l;

    invoke-virtual {v7, v5}, LXj/a$l;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_14

    goto :goto_c

    :cond_14
    invoke-virtual {v8, v5, v6}, LXj/a;->e(Ljava/lang/String;Ljava/security/cert/Certificate;)LXh/C;

    move-result-object v5

    invoke-virtual {v3, v5}, Loh/h;->a(Loh/g;)V

    invoke-virtual {v1, v6, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_c

    :catch_2
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    invoke-virtual/range {p0 .. p0}, LXj/a;->l()Ljava/util/Set;

    move-result-object v4

    iget-object v5, v8, LXj/a;->f:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    :goto_d
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1a

    :try_start_3
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LXj/a$f;

    iget-object v7, v8, LXj/a;->f:Ljava/util/Hashtable;

    invoke-virtual {v7, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/Certificate;

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    goto :goto_d

    :cond_16
    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_17

    goto :goto_d

    :cond_17
    new-instance v7, LXh/d;

    sget-object v9, LXh/t;->n2:Loh/x;

    new-instance v13, Loh/C0;

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v14

    invoke-direct {v13, v14}, Loh/C0;-><init>([B)V

    invoke-direct {v7, v9, v13}, LXh/d;-><init>(Loh/x;Loh/g;)V

    new-instance v9, Loh/h;

    invoke-direct {v9}, Loh/h;-><init>()V

    instance-of v13, v6, Lfk/p;

    if-eqz v13, :cond_19

    check-cast v6, Lfk/p;

    invoke-interface {v6}, Lfk/p;->d()Ljava/util/Enumeration;

    move-result-object v13

    :goto_e
    invoke-interface {v13}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_19

    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Loh/x;

    sget-object v15, LXh/t;->j2:Loh/x;

    invoke-virtual {v14, v15}, Loh/B;->A(Loh/B;)Z

    move-result v15

    if-eqz v15, :cond_18

    goto :goto_e

    :cond_18
    new-instance v15, Loh/h;

    invoke-direct {v15}, Loh/h;-><init>()V

    invoke-virtual {v15, v14}, Loh/h;->a(Loh/g;)V

    move-object/from16 v16, v1

    new-instance v1, Loh/I0;

    invoke-interface {v6, v14}, Lfk/p;->c(Loh/x;)Loh/g;

    move-result-object v14

    invoke-direct {v1, v14}, Loh/I0;-><init>(Loh/g;)V

    invoke-virtual {v15, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v15}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v9, v1}, Loh/h;->a(Loh/g;)V

    move-object/from16 v1, v16

    goto :goto_e

    :catch_3
    move-exception v0

    goto :goto_f

    :cond_19
    move-object/from16 v16, v1

    new-instance v1, LXh/C;

    sget-object v6, LXh/t;->Z3:Loh/x;

    invoke-virtual {v7}, LXh/d;->r()Loh/B;

    move-result-object v7

    new-instance v13, Loh/I0;

    invoke-direct {v13, v9}, Loh/I0;-><init>(Loh/h;)V

    invoke-direct {v1, v6, v7, v13}, LXh/C;-><init>(Loh/x;Loh/g;Loh/G;)V

    invoke-virtual {v3, v1}, Loh/h;->a(Loh/g;)V
    :try_end_3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v1, v16

    goto/16 :goto_d

    :goto_f
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    new-instance v1, Loh/G0;

    invoke-direct {v1, v3}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v1, v11}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v6

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v3, v12

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v6}, LXj/a;->g(ZLhi/b;[CZ[B)[B

    move-result-object v1

    new-instance v2, LXh/i;

    sget-object v3, LXh/t;->G1:Loh/x;

    new-instance v4, Loh/c0;

    invoke-direct {v4, v1}, Loh/c0;-><init>([B)V

    invoke-direct {v2, v3, v12, v4}, LXh/i;-><init>(Loh/x;Lhi/b;Loh/g;)V

    new-instance v1, LXh/g;

    invoke-direct {v1, v3, v10}, LXh/g;-><init>(Loh/x;Loh/g;)V

    new-instance v4, LXh/g;

    sget-object v5, LXh/t;->O1:Loh/x;

    invoke-virtual {v2}, LXh/i;->r()Loh/B;

    move-result-object v2

    invoke-direct {v4, v5, v2}, LXh/g;-><init>(Loh/x;Loh/g;)V

    filled-new-array {v1, v4}, [LXh/g;

    move-result-object v1

    new-instance v2, LXh/b;

    invoke-direct {v2, v1}, LXh/b;-><init>([LXh/g;)V

    if-eqz p3, :cond_1b

    move-object v1, v11

    goto :goto_10

    :cond_1b
    move-object/from16 v1, v19

    :goto_10
    invoke-virtual {v2, v1}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v9, LXh/g;

    new-instance v2, Loh/c0;

    invoke-direct {v2, v1}, Loh/c0;-><init>([B)V

    invoke-direct {v9, v3, v2}, LXh/g;-><init>(Loh/x;Loh/g;)V

    iget v1, v8, LXj/a;->n:I

    new-array v10, v1, [B

    iget-object v1, v8, LXj/a;->h:Ljava/security/SecureRandom;

    invoke-virtual {v1, v10}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {v9}, LXh/g;->u()Loh/g;

    move-result-object v1

    check-cast v1, Loh/y;

    invoke-virtual {v1}, Loh/y;->H()[B

    move-result-object v7

    iget-object v1, v8, LXj/a;->j:Loh/x;

    sget-object v2, LSh/d;->U:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v10, 0x0

    goto :goto_11

    :cond_1c
    :try_start_4
    iget-object v1, v8, LXj/a;->l:Lhi/b;

    invoke-virtual {v1}, Lhi/b;->u()Loh/x;

    move-result-object v2

    iget v4, v8, LXj/a;->m:I

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v3, v10

    move-object/from16 v5, p2

    invoke-virtual/range {v1 .. v7}, LXj/a;->c(Loh/x;[BI[CZ[B)[B

    move-result-object v1

    new-instance v2, Lhi/w;

    iget-object v3, v8, LXj/a;->l:Lhi/b;

    invoke-direct {v2, v3, v1}, Lhi/w;-><init>(Lhi/b;[B)V

    new-instance v1, LXh/n;

    iget v3, v8, LXj/a;->m:I

    invoke-direct {v1, v2, v10, v3}, LXh/n;-><init>(Lhi/w;[BI)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object v10, v1

    :goto_11
    new-instance v1, LXh/u;

    invoke-direct {v1, v9, v10}, LXh/u;-><init>(LXh/g;LXh/n;)V

    if-eqz p3, :cond_1d

    move-object v9, v11

    goto :goto_12

    :cond_1d
    move-object/from16 v9, v19

    :goto_12
    invoke-virtual {v1, v0, v9}, Loh/v;->f(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void

    :catch_4
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error constructing MAC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "no password supplied for PKCS#12 KeyStore"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i(Loh/x;)Loh/B;
    .locals 2

    sget-object v0, LSh/d;->y:Loh/x;

    invoke-virtual {p1, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    const/16 v1, 0x10

    if-nez v0, :cond_3

    sget-object v0, LSh/d;->Q:Loh/x;

    invoke-virtual {p1, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, LSh/d;->C:Loh/x;

    invoke-virtual {p1, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, LSh/d;->U:Loh/x;

    invoke-virtual {p1, v0}, Loh/B;->A(Loh/B;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unknown encryption OID in getAlgParams()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/16 p1, 0xc

    new-array p1, p1, [B

    iget-object v0, p0, LXj/a;->h:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v0, Lnj/c;

    invoke-direct {v0, p1, v1}, Lnj/c;-><init>([BI)V

    invoke-virtual {v0}, Lnj/c;->r()Loh/B;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    new-array p1, v1, [B

    iget-object v0, p0, LXj/a;->h:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v0, Loh/C0;

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    return-object v0
.end method

.method public final l()Ljava/util/Set;
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, LXj/a;->c:LXj/a$l;

    invoke-virtual {v1}, LXj/a$l;->d()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, LXj/a;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-eq v3, v4, :cond_0

    aget-object v4, v2, v3

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, LXj/a;->e:LXj/a$l;

    invoke-virtual {v1}, LXj/a$l;->d()Ljava/util/Enumeration;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, LXj/a;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public final n(LXh/C;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, LXh/C;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, LXh/v;->v(Ljava/lang/Object;)LXh/v;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/a;->p(LXh/v;)Ljava/security/PrivateKey;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lfk/p;

    invoke-virtual {p1}, LXh/C;->u()Loh/G;

    move-result-object p1

    invoke-virtual {p1}, Loh/G;->I()Ljava/util/Enumeration;

    move-result-object p1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Loh/E;->I(I)Loh/g;

    move-result-object v6

    invoke-static {v6}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    invoke-static {v4}, Loh/G;->F(Ljava/lang/Object;)Loh/G;

    move-result-object v4

    invoke-virtual {v4}, Loh/G;->size()I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual {v4, v5}, Loh/G;->H(I)Loh/g;

    move-result-object v4

    check-cast v4, Loh/B;

    invoke-interface {v1, v6}, Lfk/p;->c(Loh/x;)Loh/g;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v5}, Loh/g;->r()Loh/B;

    move-result-object v5

    invoke-virtual {v5, v4}, Loh/B;->A(Loh/B;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "attempt to add existing attribute with different value"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-interface {v1, v6, v4}, Lfk/p;->a(Loh/x;Loh/g;)V

    :goto_1
    sget-object v5, LXh/t;->h2:Loh/x;

    invoke-virtual {v6, v5}, Loh/B;->A(Loh/B;)Z

    move-result v5

    if-eqz v5, :cond_3

    check-cast v4, Loh/b;

    invoke-virtual {v4}, Loh/b;->getString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LXj/a;->c:LXj/a$l;

    invoke-virtual {v4, v3, v0}, LXj/a$l;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    sget-object v5, LXh/t;->j2:Loh/x;

    invoke-virtual {v6, v5}, Loh/B;->A(Loh/B;)Z

    move-result v5

    if-eqz v5, :cond_0

    check-cast v4, Loh/y;

    move-object v2, v4

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v2}, Loh/y;->H()[B

    move-result-object v1

    invoke-static {v1}, Lem/h;->h([B)[B

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    if-nez v3, :cond_5

    iget-object v1, p0, LXj/a;->c:LXj/a$l;

    invoke-virtual {v1, p1, v0}, LXj/a$l;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, LXj/a;->d:LXj/a$l;

    invoke-virtual {v0, v3, p1}, LXj/a$l;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public final o(LXh/C;[CZ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, LXh/C;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, LXh/j;->w(Ljava/lang/Object;)LXh/j;

    move-result-object v0

    invoke-virtual {v0}, LXh/j;->v()Lhi/b;

    move-result-object v1

    invoke-virtual {v0}, LXh/j;->u()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0, p2, p3}, LXj/a;->p(Lhi/b;[B[CZ)Ljava/security/PrivateKey;

    move-result-object p2

    invoke-virtual {p1}, LXh/C;->u()Loh/G;

    move-result-object p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p3, :cond_7

    invoke-virtual {p1}, LXh/C;->u()Loh/G;

    move-result-object p1

    invoke-virtual {p1}, Loh/G;->I()Ljava/util/Enumeration;

    move-result-object p1

    move-object p3, v2

    move-object v3, p3

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Loh/E;

    invoke-virtual {v4, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v5

    check-cast v5, Loh/x;

    invoke-virtual {v4, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    check-cast v4, Loh/G;

    invoke-virtual {v4}, Loh/G;->size()I

    move-result v6

    if-lez v6, :cond_3

    invoke-virtual {v4, v1}, Loh/G;->H(I)Loh/g;

    move-result-object v4

    check-cast v4, Loh/B;

    instance-of v6, p2, Lfk/p;

    if-eqz v6, :cond_4

    move-object v6, p2

    check-cast v6, Lfk/p;

    invoke-interface {v6, v5}, Lfk/p;->c(Loh/x;)Loh/g;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Loh/g;->r()Loh/B;

    move-result-object v6

    invoke-virtual {v6, v4}, Loh/B;->A(Loh/B;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "attempt to add existing attribute with different value"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-interface {v6, v5, v4}, Lfk/p;->a(Loh/x;Loh/g;)V

    goto :goto_1

    :cond_3
    move-object v4, v2

    :cond_4
    :goto_1
    sget-object v6, LXh/t;->h2:Loh/x;

    invoke-virtual {v5, v6}, Loh/B;->A(Loh/B;)Z

    move-result v6

    if-eqz v6, :cond_5

    check-cast v4, Loh/b;

    invoke-virtual {v4}, Loh/b;->getString()Ljava/lang/String;

    move-result-object p3

    iget-object v4, p0, LXj/a;->c:LXj/a$l;

    invoke-virtual {v4, p3, p2}, LXj/a$l;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    sget-object v6, LXh/t;->j2:Loh/x;

    invoke-virtual {v5, v6}, Loh/B;->A(Loh/B;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v3, v4

    check-cast v3, Loh/y;

    goto :goto_0

    :cond_6
    move-object v2, v3

    goto :goto_2

    :cond_7
    move-object p3, v2

    :goto_2
    if-eqz v2, :cond_9

    new-instance p1, Ljava/lang/String;

    invoke-virtual {v2}, Loh/y;->H()[B

    move-result-object v0

    invoke-static {v0}, Lem/h;->h([B)[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    if-nez p3, :cond_8

    iget-object p3, p0, LXj/a;->c:LXj/a$l;

    invoke-virtual {p3, p1, p2}, LXj/a$l;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    iget-object p2, p0, LXj/a;->d:LXj/a$l;

    invoke-virtual {p2, p3, p1}, LXj/a$l;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3
    return v1

    :cond_9
    iget-object p1, p0, LXj/a;->c:LXj/a$l;

    const-string p3, "unmarked"

    invoke-virtual {p1, p3, p2}, LXj/a$l;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method public p(Lhi/b;[B[CZ)Ljava/security/PrivateKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v0

    :try_start_0
    sget-object v1, LXh/t;->d4:Loh/x;

    invoke-virtual {v0, v1}, Loh/x;->O(Loh/x;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    const-string v3, ""

    const/4 v4, 0x4

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object p1

    invoke-static {p1}, LXh/s;->v(Ljava/lang/Object;)LXh/s;

    move-result-object p1

    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p1}, LXh/s;->u()[B

    move-result-object v5

    invoke-virtual {p1}, LXh/s;->x()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, LXj/a;->q(Ljava/math/BigInteger;)I

    move-result p1

    invoke-direct {v1, v5, p1}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iget-object p1, p0, LXj/a;->b:Ldk/f;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ldk/f;->e(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    new-instance v0, LHj/l;

    invoke-direct {v0, p3, p4}, LHj/l;-><init>([CZ)V

    invoke-virtual {p1, v4, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p1, p2, v3, v2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p1

    check-cast p1, Ljava/security/PrivateKey;

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    sget-object p4, LXh/t;->j1:Loh/x;

    invoke-virtual {v0, p4}, Loh/B;->A(Loh/B;)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p0, v4, p3, p1}, LXj/a;->d(I[CLhi/b;)Ljavax/crypto/Cipher;

    move-result-object p1

    invoke-virtual {p1, p2, v3, v2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p1

    check-cast p1, Ljava/security/PrivateKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "exception unwrapping private key - cannot recognise: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "exception unwrapping private key - "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final q(Ljava/math/BigInteger;)I
    .locals 4

    invoke-static {p1}, Lorg/bouncycastle/util/b;->l(Ljava/math/BigInteger;)I

    move-result p1

    if-ltz p1, :cond_2

    const-string v0, "org.bouncycastle.pkcs12.max_it_count"

    invoke-static {v0}, Lorg/bouncycastle/util/q;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/bouncycastle/util/b;->l(Ljava/math/BigInteger;)I

    move-result v1

    if-lt v1, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iteration count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " greater than "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/bouncycastle/util/b;->l(Ljava/math/BigInteger;)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "negative iteration count found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r(LXh/k;Ljava/security/Key;LXh/q;[C)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p3}, LXh/q;->z()[B

    move-result-object v1

    invoke-virtual {p3}, LXh/q;->v()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/util/b;->l(Ljava/math/BigInteger;)I

    move-result v2

    invoke-virtual {p3}, LXh/q;->x()Ljava/math/BigInteger;

    move-result-object p3

    invoke-static {p3}, Lorg/bouncycastle/util/b;->l(Ljava/math/BigInteger;)I

    move-result p3

    mul-int/lit8 p3, p3, 0x8

    invoke-direct {v0, p4, v1, v2, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    :try_start_0
    iget-object p3, p0, LXj/a;->b:Ldk/f;

    const-string p4, "PBKDF2withHMacSHA256"

    invoke-interface {p3, p4}, Ldk/f;->s(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p3

    iget-object p4, p0, LXj/a;->b:Ldk/f;

    invoke-virtual {p1}, LXh/k;->u()Loh/x;

    move-result-object v1

    invoke-virtual {v1}, Loh/x;->J()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Ldk/f;->e(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p4

    invoke-virtual {p1}, LXh/k;->u()Loh/x;

    move-result-object v1

    invoke-virtual {v1}, Loh/x;->J()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    invoke-virtual {p1}, LXh/k;->x()Loh/g;

    move-result-object p1

    invoke-interface {p1}, Loh/g;->r()Loh/B;

    move-result-object p1

    invoke-virtual {p1}, Loh/v;->getEncoded()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/AlgorithmParameters;->init([B)V

    invoke-virtual {p3, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    const/4 p3, 0x3

    invoke-virtual {p4, p3, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    invoke-virtual {p4, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "exception encrypting data - "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public s(Ljava/lang/String;Ljava/security/Key;LXh/s;[C)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v0, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    :try_start_0
    iget-object p4, p0, LXj/a;->b:Ldk/f;

    invoke-interface {p4, p1}, Ldk/f;->s(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p4

    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p3}, LXh/s;->u()[B

    move-result-object v2

    invoke-virtual {p3}, LXh/s;->x()Ljava/math/BigInteger;

    move-result-object p3

    invoke-static {p3}, Lorg/bouncycastle/util/b;->l(Ljava/math/BigInteger;)I

    move-result p3

    invoke-direct {v1, v2, p3}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iget-object p3, p0, LXj/a;->b:Ldk/f;

    invoke-interface {p3, p1}, Ldk/f;->e(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    invoke-virtual {p4, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p3

    const/4 p4, 0x3

    invoke-virtual {p1, p4, p3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "exception encrypting data - "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

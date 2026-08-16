.class public LSj/j;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LSj/j$a;
    }
.end annotation


# static fields
.field public static final d:Lhi/b;

.field public static final e:Lhi/b;

.field public static final f:Ljava/math/BigInteger;


# instance fields
.field public a:LXi/E0;

.field public b:LOi/M;

.field public c:Lhi/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lhi/b;

    sget-object v1, LXh/t;->H0:Loh/x;

    sget-object v2, Loh/A0;->c:Loh/A0;

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    sput-object v0, LSj/j;->d:Lhi/b;

    new-instance v0, Lhi/b;

    sget-object v1, LXh/t;->Q0:Loh/x;

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    sput-object v0, LSj/j;->e:Lhi/b;

    const-wide/32 v0, 0x10001

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, LSj/j;->f:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "RSA"

    sget-object v1, LSj/j;->d:Lhi/b;

    invoke-direct {p0, v0, v1}, LSj/j;-><init>(Ljava/lang/String;Lhi/b;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lhi/b;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, LSj/j;->c:Lhi/b;

    new-instance p1, LOi/M;

    invoke-direct {p1}, LOi/M;-><init>()V

    iput-object p1, p0, LSj/j;->b:LOi/M;

    new-instance p1, LXi/E0;

    sget-object p2, LSj/j;->f:Ljava/math/BigInteger;

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v0

    const/16 v1, 0x800

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/n;->a(I)I

    move-result v2

    invoke-direct {p1, p2, v0, v1, v2}, LXi/E0;-><init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V

    iput-object p1, p0, LSj/j;->a:LXi/E0;

    iget-object p2, p0, LSj/j;->b:LOi/M;

    invoke-virtual {p2, p1}, LOi/M;->b(LBi/G;)V

    return-void
.end method

.method public static synthetic a()Lhi/b;
    .locals 1

    sget-object v0, LSj/j;->e:Lhi/b;

    return-object v0
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 5

    iget-object v0, p0, LSj/j;->b:LOi/M;

    invoke-virtual {v0}, LOi/M;->a()LBi/c;

    move-result-object v0

    invoke-virtual {v0}, LBi/c;->b()LXi/c;

    move-result-object v1

    check-cast v1, LXi/F0;

    invoke-virtual {v0}, LBi/c;->a()LXi/c;

    move-result-object v0

    check-cast v0, LXi/G0;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, LSj/d;

    iget-object v4, p0, LSj/j;->c:Lhi/b;

    invoke-direct {v3, v4, v1}, LSj/d;-><init>(Lhi/b;LXi/F0;)V

    new-instance v1, LSj/b;

    iget-object v4, p0, LSj/j;->c:Lhi/b;

    invoke-direct {v1, v4, v0}, LSj/b;-><init>(Lhi/b;LXi/G0;)V

    invoke-direct {v2, v3, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 3

    .line 1
    new-instance v0, LXi/E0;

    sget-object v1, LSj/j;->f:Ljava/math/BigInteger;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/n;->a(I)I

    move-result v2

    invoke-direct {v0, v1, p2, p1, v2}, LXi/E0;-><init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V

    iput-object v0, p0, LSj/j;->a:LXi/E0;

    iget-object p1, p0, LSj/j;->b:LOi/M;

    invoke-virtual {p1, v0}, LOi/M;->b(LBi/G;)V

    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 2
    instance-of v0, p1, Ljava/security/spec/RSAKeyGenParameterSpec;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/security/spec/RSAKeyGenParameterSpec;

    new-instance v0, LXi/E0;

    invoke-virtual {p1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result p1

    const/16 v2, 0x800

    invoke-static {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/n;->a(I)I

    move-result v2

    invoke-direct {v0, v1, p2, p1, v2}, LXi/E0;-><init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V

    iput-object v0, p0, LSj/j;->a:LXi/E0;

    iget-object p1, p0, LSj/j;->b:LOi/M;

    invoke-virtual {p1, v0}, LOi/M;->b(LBi/G;)V

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "parameter object not a RSAKeyGenParameterSpec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

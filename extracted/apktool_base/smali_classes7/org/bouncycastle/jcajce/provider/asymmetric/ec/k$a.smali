.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static i:Ljava/util/Hashtable;


# instance fields
.field public a:LXi/I;

.field public b:LOi/p;

.field public c:Ljava/lang/Object;

.field public d:I

.field public e:Ljava/security/SecureRandom;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:LTj/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->i:Ljava/util/Hashtable;

    const/16 v1, 0xc0

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "prime192v1"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->i:Ljava/util/Hashtable;

    const/16 v1, 0xef

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "prime239v1"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->i:Ljava/util/Hashtable;

    const/16 v1, 0x100

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "prime256v1"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->i:Ljava/util/Hashtable;

    const/16 v1, 0xe0

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "P-224"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->i:Ljava/util/Hashtable;

    const/16 v1, 0x180

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "P-384"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->i:Ljava/util/Hashtable;

    const/16 v1, 0x209

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "P-521"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "EC"

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k;-><init>(Ljava/lang/String;)V

    new-instance v1, LOi/p;

    invoke-direct {v1}, LOi/p;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->b:LOi/p;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->c:Ljava/lang/Object;

    const/16 v1, 0xef

    iput v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->d:I

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->e:Ljava/security/SecureRandom;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->f:Z

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->g:Ljava/lang/String;

    sget-object v0, Lorg/bouncycastle/jce/provider/a;->f:LTj/c;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->h:LTj/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LTj/c;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k;-><init>(Ljava/lang/String;)V

    new-instance v0, LOi/p;

    invoke-direct {v0}, LOi/p;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->b:LOi/p;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->c:Ljava/lang/Object;

    const/16 v0, 0xef

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->d:I

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->e:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->f:Z

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->g:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->h:LTj/c;

    return-void
.end method


# virtual methods
.method public a(Lhk/e;Ljava/security/SecureRandom;)LXi/I;
    .locals 5

    new-instance v0, LXi/I;

    new-instance v1, LXi/G;

    invoke-virtual {p1}, Lhk/e;->a()Ljk/e;

    move-result-object v2

    invoke-virtual {p1}, Lhk/e;->b()Ljk/i;

    move-result-object v3

    invoke-virtual {p1}, Lhk/e;->d()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lhk/e;->c()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v1, v2, v3, v4, p1}, LXi/G;-><init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, p2}, LXi/I;-><init>(LXi/G;Ljava/security/SecureRandom;)V

    return-object v0
.end method

.method public b(Ljava/security/spec/ECParameterSpec;Ljava/security/SecureRandom;)LXi/I;
    .locals 5

    instance-of v0, p1, Lhk/d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lhk/d;

    invoke-virtual {v0}, Lhk/d;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->h:LTj/c;

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/d;->e(Ljava/lang/String;LTj/c;)Lki/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->c(Lki/l;Ljava/security/SecureRandom;)LXi/I;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->b(Ljava/security/spec/EllipticCurve;)Ljk/e;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->f(Ljk/e;Ljava/security/spec/ECPoint;)Ljk/i;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result p1

    int-to-long v3, p1

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    new-instance v3, LXi/G;

    invoke-direct {v3, v0, v1, v2, p1}, LXi/G;-><init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance p1, LXi/I;

    invoke-direct {p1, v3, p2}, LXi/I;-><init>(LXi/G;Ljava/security/SecureRandom;)V

    return-object p1
.end method

.method public c(Lki/l;Ljava/security/SecureRandom;)LXi/I;
    .locals 4

    new-instance v0, LXi/G;

    invoke-virtual {p1}, Lki/l;->v()Ljk/e;

    move-result-object v1

    invoke-virtual {p1}, Lki/l;->z()Ljk/i;

    move-result-object v2

    invoke-virtual {p1}, Lki/l;->C()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lki/l;->A()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, LXi/G;-><init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance p1, LXi/I;

    invoke-direct {p1, v0, p2}, LXi/I;-><init>(LXi/G;Ljava/security/SecureRandom;)V

    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/security/SecureRandom;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->h:LTj/c;

    invoke-static {p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/d;->e(Ljava/lang/String;LTj/c;)Lki/l;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v8, Lhk/d;

    invoke-virtual {v0}, Lki/l;->v()Ljk/e;

    move-result-object v3

    invoke-virtual {v0}, Lki/l;->z()Ljk/i;

    move-result-object v4

    invoke-virtual {v0}, Lki/l;->C()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lki/l;->A()Ljava/math/BigInteger;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lhk/d;-><init>(Ljava/lang/String;Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    iput-object v8, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->c(Lki/l;Ljava/security/SecureRandom;)LXi/I;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->a:LXi/I;

    return-void

    :cond_0
    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown curve name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 9

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->f:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->d:I

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->initialize(ILjava/security/SecureRandom;)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->b:LOi/p;

    invoke-virtual {v0}, LOi/p;->a()LBi/c;

    move-result-object v0

    invoke-virtual {v0}, LBi/c;->b()LXi/c;

    move-result-object v1

    check-cast v1, LXi/M;

    invoke-virtual {v0}, LBi/c;->a()LXi/c;

    move-result-object v0

    move-object v4, v0

    check-cast v4, LXi/L;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->c:Ljava/lang/Object;

    instance-of v2, v0, Lhk/e;

    if-eqz v2, :cond_1

    move-object v6, v0

    check-cast v6, Lhk/e;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->g:Ljava/lang/String;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->h:LTj/c;

    invoke-direct {v0, v2, v1, v6, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;-><init>(Ljava/lang/String;LXi/M;Lhk/e;LTj/c;)V

    new-instance v1, Ljava/security/KeyPair;

    new-instance v8, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->g:Ljava/lang/String;

    iget-object v7, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->h:LTj/c;

    move-object v2, v8

    move-object v5, v0

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;-><init>(Ljava/lang/String;LXi/L;Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;Lhk/e;LTj/c;)V

    invoke-direct {v1, v0, v8}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Ljava/security/KeyPair;

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->g:Ljava/lang/String;

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->h:LTj/c;

    invoke-direct {v2, v3, v1, v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;-><init>(Ljava/lang/String;LXi/M;LTj/c;)V

    new-instance v1, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->g:Ljava/lang/String;

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->h:LTj/c;

    invoke-direct {v1, v3, v4, v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;-><init>(Ljava/lang/String;LXi/L;LTj/c;)V

    invoke-direct {v0, v2, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v0

    :cond_2
    move-object v6, v0

    check-cast v6, Ljava/security/spec/ECParameterSpec;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->g:Ljava/lang/String;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->h:LTj/c;

    invoke-direct {v0, v2, v1, v6, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;-><init>(Ljava/lang/String;LXi/M;Ljava/security/spec/ECParameterSpec;LTj/c;)V

    new-instance v1, Ljava/security/KeyPair;

    new-instance v8, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->g:Ljava/lang/String;

    iget-object v7, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->h:LTj/c;

    move-object v2, v8

    move-object v5, v0

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/b;-><init>(Ljava/lang/String;LXi/L;Lorg/bouncycastle/jcajce/provider/asymmetric/ec/c;Ljava/security/spec/ECParameterSpec;LTj/c;)V

    invoke-direct {v1, v0, v8}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->d:I

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->e:Ljava/security/SecureRandom;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->i:Ljava/util/Hashtable;

    invoke-static {p1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "key size not configurable."

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "unknown key size."

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 2
    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->h:LTj/c;

    invoke-interface {p1}, LTj/c;->b()Lhk/e;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->c:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->a(Lhk/e;Ljava/security/SecureRandom;)LXi/I;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->a:LXi/I;

    goto :goto_3

    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "null parameter passed but no implicitCA set"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    instance-of v0, p1, Lhk/e;

    if-eqz v0, :cond_2

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->c:Ljava/lang/Object;

    check-cast p1, Lhk/e;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_3

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->c:Ljava/lang/Object;

    check-cast p1, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->b(Ljava/security/spec/ECParameterSpec;Ljava/security/SecureRandom;)LXi/I;

    move-result-object p1

    goto :goto_1

    :cond_3
    instance-of v0, p1, Ljava/security/spec/ECGenParameterSpec;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->d(Ljava/lang/String;Ljava/security/SecureRandom;)V

    goto :goto_3

    :cond_4
    instance-of v0, p1, Lhk/b;

    if-eqz v0, :cond_5

    check-cast p1, Lhk/b;

    invoke-virtual {p1}, Lhk/b;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->h(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v0, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->d(Ljava/lang/String;Ljava/security/SecureRandom;)V

    :goto_3
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->b:LOi/p;

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->a:LXi/I;

    invoke-virtual {p1, p2}, LOi/p;->b(LBi/G;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;->f:Z

    return-void

    :cond_6
    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid parameterSpec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

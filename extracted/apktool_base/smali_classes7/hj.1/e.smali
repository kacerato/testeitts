.class public Lhj/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhj/e$b;
    }
.end annotation


# static fields
.field public static final b:Ljava/util/Hashtable;


# instance fields
.field public a:Lhj/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lhj/e;->b:Ljava/util/Hashtable;

    const-string v1, "SHA1withRSA"

    sget-object v2, LAh/h;->l:Loh/x;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA256withRSA"

    sget-object v2, LAh/h;->m:Loh/x;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA1withRSAandMGF1"

    sget-object v2, LAh/h;->n:Loh/x;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA256withRSAandMGF1"

    sget-object v2, LAh/h;->o:Loh/x;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA512withRSA"

    sget-object v2, LAh/h;->p:Loh/x;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA512withRSAandMGF1"

    sget-object v2, LAh/h;->q:Loh/x;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA1withECDSA"

    sget-object v2, LAh/h;->s:Loh/x;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA224withECDSA"

    sget-object v2, LAh/h;->t:Loh/x;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA256withECDSA"

    sget-object v2, LAh/h;->u:Loh/x;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA384withECDSA"

    sget-object v2, LAh/h;->v:Loh/x;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHA512withECDSA"

    sget-object v2, LAh/h;->w:Loh/x;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lhj/a;

    invoke-direct {v0}, Lhj/a;-><init>()V

    iput-object v0, p0, Lhj/e;->a:Lhj/b;

    return-void
.end method

.method public static synthetic a([B)[B
    .locals 0

    invoke-static {p0}, Lhj/e;->f([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static d([B[BI)V
    .locals 3

    array-length v0, p0

    const/4 v1, 0x0

    aget-byte v2, p0, v1

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    :cond_0
    invoke-static {p0, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static e(II)I
    .locals 0

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0
.end method

.method public static f([B)[B
    .locals 7

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v1

    invoke-virtual {v1}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Loh/E;->I(I)Loh/g;

    move-result-object p0

    invoke-static {p0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p0

    invoke-virtual {p0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    invoke-static {v1}, Lhj/e;->i([B)I

    move-result v2

    invoke-static {p0}, Lhj/e;->i([B)I

    move-result v3

    invoke-static {v2, v3}, Lhj/e;->e(II)I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    new-array v6, v5, [B

    invoke-static {v6, v0}, Ljava/util/Arrays;->fill([BB)V

    sub-int/2addr v4, v2

    invoke-static {v1, v6, v4}, Lhj/e;->d([B[BI)V

    sub-int/2addr v5, v3

    invoke-static {p0, v6, v5}, Lhj/e;->d([B[BI)V

    return-object v6
.end method

.method public static i([B)I
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    aget-byte p0, p0, v1

    if-nez p0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/security/PrivateKey;)Lgj/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    sget-object v0, Lhj/e;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Loh/x;

    invoke-virtual {p0, p1, p2}, Lhj/e;->c(Loh/x;Ljava/security/PrivateKey;)Lgj/b;

    move-result-object p1

    return-object p1
.end method

.method public c(Loh/x;Ljava/security/PrivateKey;)Lgj/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lhj/e;->a:Lhj/b;

    invoke-virtual {v0, p1}, Lhj/b;->b(Loh/x;)Ljava/security/Signature;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p2, Lhj/e$b;

    invoke-direct {p2, v0}, Lhj/e$b;-><init>(Ljava/security/Signature;)V

    new-instance v0, Lhj/e$a;

    invoke-direct {v0, p0, p1, p2}, Lhj/e$a;-><init>(Lhj/e;Loh/x;Lhj/e$b;)V

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :goto_0
    new-instance p2, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    new-instance p2, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to find provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_2
    new-instance p2, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to find algorithm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public g(Ljava/lang/String;)Lhj/e;
    .locals 1

    new-instance v0, Lhj/f;

    invoke-direct {v0, p1}, Lhj/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lhj/e;->a:Lhj/b;

    return-object p0
.end method

.method public h(Ljava/security/Provider;)Lhj/e;
    .locals 1

    new-instance v0, Lhj/g;

    invoke-direct {v0, p1}, Lhj/g;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lhj/e;->a:Lhj/b;

    return-object p0
.end method

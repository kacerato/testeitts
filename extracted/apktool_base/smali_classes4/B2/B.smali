.class public final LB2/B;
.super LB2/c;
.source "SourceFile"


# annotations
.annotation runtime LB2/k;
.end annotation

.annotation runtime LI2/j;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LB2/B$b;
    }
.end annotation


# instance fields
.field public final b:Ljavax/crypto/Mac;

.field public final c:Ljava/security/Key;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, LB2/c;-><init>()V

    invoke-static {p1, p2}, LB2/B;->l(Ljava/lang/String;Ljava/security/Key;)Ljavax/crypto/Mac;

    move-result-object p1

    iput-object p1, p0, LB2/B;->b:Ljavax/crypto/Mac;

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/security/Key;

    iput-object p2, p0, LB2/B;->c:Ljava/security/Key;

    invoke-static {p3}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, LB2/B;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/crypto/Mac;->getMacLength()I

    move-result p2

    mul-int/lit8 p2, p2, 0x8

    iput p2, p0, LB2/B;->e:I

    invoke-static {p1}, LB2/B;->m(Ljavax/crypto/Mac;)Z

    move-result p1

    iput-boolean p1, p0, LB2/B;->f:Z

    return-void
.end method

.method public static l(Ljava/lang/String;Ljava/security/Key;)Ljavax/crypto/Mac;
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static m(Ljavax/crypto/Mac;)Z
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Ljavax/crypto/Mac;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public h()I
    .locals 1

    iget v0, p0, LB2/B;->e:I

    return v0
.end method

.method public i()LB2/r;
    .locals 4

    iget-boolean v0, p0, LB2/B;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, LB2/B$b;

    iget-object v2, p0, LB2/B;->b:Ljavax/crypto/Mac;

    invoke-virtual {v2}, Ljavax/crypto/Mac;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/crypto/Mac;

    invoke-direct {v0, v2, v1}, LB2/B$b;-><init>(Ljavax/crypto/Mac;LB2/B$a;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    new-instance v0, LB2/B$b;

    iget-object v2, p0, LB2/B;->b:Ljavax/crypto/Mac;

    invoke-virtual {v2}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LB2/B;->c:Ljava/security/Key;

    invoke-static {v2, v3}, LB2/B;->l(Ljava/lang/String;Ljava/security/Key;)Ljavax/crypto/Mac;

    move-result-object v2

    invoke-direct {v0, v2, v1}, LB2/B$b;-><init>(Ljavax/crypto/Mac;LB2/B$a;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LB2/B;->d:Ljava/lang/String;

    return-object v0
.end method

.class public final LB2/C;
.super LB2/c;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime LB2/k;
.end annotation

.annotation runtime LI2/j;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LB2/C$b;,
        LB2/C$c;
    }
.end annotation


# instance fields
.field public final b:Ljava/security/MessageDigest;

.field public final c:I

.field public final d:Z

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 6
    invoke-direct {p0}, LB2/c;-><init>()V

    .line 7
    invoke-static {p3}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, LB2/C;->e:Ljava/lang/String;

    .line 8
    invoke-static {p1}, LB2/C;->l(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, LB2/C;->b:Ljava/security/MessageDigest;

    .line 9
    invoke-virtual {p1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result p3

    const/4 v0, 0x4

    if-lt p2, v0, :cond_0

    if-gt p2, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    const-string v1, "bytes (%s) must be >= 4 and < %s"

    invoke-static {v0, v1, p2, p3}, Lw2/H;->m(ZLjava/lang/String;II)V

    .line 11
    iput p2, p0, LB2/C;->c:I

    .line 12
    invoke-static {p1}, LB2/C;->m(Ljava/security/MessageDigest;)Z

    move-result p1

    iput-boolean p1, p0, LB2/C;->d:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LB2/c;-><init>()V

    .line 2
    invoke-static {p1}, LB2/C;->l(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, LB2/C;->b:Ljava/security/MessageDigest;

    .line 3
    invoke-virtual {p1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    iput v0, p0, LB2/C;->c:I

    .line 4
    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, LB2/C;->e:Ljava/lang/String;

    .line 5
    invoke-static {p1}, LB2/C;->m(Ljava/security/MessageDigest;)Z

    move-result p1

    iput-boolean p1, p0, LB2/C;->d:Z

    return-void
.end method

.method public static l(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static m(Ljava/security/MessageDigest;)Z
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;
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

    iget v0, p0, LB2/C;->c:I

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public i()LB2/r;
    .locals 4

    iget-boolean v0, p0, LB2/C;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, LB2/C$b;

    iget-object v2, p0, LB2/C;->b:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/MessageDigest;

    iget v3, p0, LB2/C;->c:I

    invoke-direct {v0, v2, v3, v1}, LB2/C$b;-><init>(Ljava/security/MessageDigest;ILB2/C$a;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    new-instance v0, LB2/C$b;

    iget-object v2, p0, LB2/C;->b:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LB2/C;->l(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    iget v3, p0, LB2/C;->c:I

    invoke-direct {v0, v2, v3, v1}, LB2/C$b;-><init>(Ljava/security/MessageDigest;ILB2/C$a;)V

    return-object v0
.end method

.method public n()Ljava/lang/Object;
    .locals 5

    new-instance v0, LB2/C$c;

    iget-object v1, p0, LB2/C;->b:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, LB2/C;->c:I

    iget-object v3, p0, LB2/C;->e:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, LB2/C$c;-><init>(Ljava/lang/String;ILjava/lang/String;LB2/C$a;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LB2/C;->e:Ljava/lang/String;

    return-object v0
.end method

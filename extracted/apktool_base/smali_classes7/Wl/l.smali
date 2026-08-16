.class public abstract LWl/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/security/SecureRandom;

.field public b:I

.field public c:LWl/f;

.field public d:Ljava/util/Vector;

.field public e:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LWl/l;->a:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public abstract a(LWl/l;)V
.end method

.method public abstract b()V
.end method

.method public final c(LWl/k;LWl/l;)LWl/k;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-ne p2, p0, :cond_0

    :goto_0
    invoke-virtual {p1}, LWl/k;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LWl/k;

    return-object p1

    :cond_0
    iget-object v0, p0, LWl/l;->c:LWl/f;

    iget-object v1, p2, LWl/l;->c:LWl/f;

    invoke-virtual {v0, v1}, LWl/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, LWl/l;->b:I

    iget v1, p2, LWl/l;->b:I

    if-ne v0, v1, :cond_8

    iget-object v0, p0, LWl/l;->d:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p2}, LWl/l;->a(LWl/l;)V

    iget-object v0, p0, LWl/l;->d:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :cond_2
    iget-object v1, p0, LWl/l;->e:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LWl/f;

    invoke-virtual {p1}, LWl/k;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LWl/k;

    instance-of v1, p1, LWl/m;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, LWl/m;

    invoke-virtual {v1}, LWl/m;->G()V

    :cond_3
    new-instance v1, LWl/f;

    iget v2, p0, LWl/l;->b:I

    invoke-interface {p1}, LWl/r;->d()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v1, v2, p1}, LWl/f;-><init>(ILjava/math/BigInteger;)V

    iget p1, p0, LWl/l;->b:I

    invoke-virtual {v1, p1}, LWl/f;->i(I)V

    new-instance p1, LWl/f;

    iget v2, p0, LWl/l;->b:I

    invoke-direct {p1, v2}, LWl/f;-><init>(I)V

    const/4 v2, 0x0

    :goto_1
    iget v3, p0, LWl/l;->b:I

    if-ge v2, v3, :cond_5

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, LWl/f;->a0(LWl/f;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, LWl/l;->b:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v2

    invoke-virtual {p1, v3}, LWl/f;->I(I)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    instance-of v0, p2, LWl/q;

    if-eqz v0, :cond_6

    new-instance v0, LWl/p;

    check-cast p2, LWl/q;

    invoke-direct {v0, p2, p1}, LWl/p;-><init>(LWl/q;LWl/f;)V

    return-object v0

    :cond_6
    instance-of v0, p2, LWl/n;

    if-eqz v0, :cond_7

    new-instance v0, LWl/m;

    check-cast p2, LWl/n;

    invoke-virtual {p1}, LWl/f;->W()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, p2, p1}, LWl/m;-><init>(LWl/n;Ljava/math/BigInteger;)V

    invoke-virtual {v0}, LWl/m;->G()V

    return-object v0

    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "GF2nField.convert: B1 must be an instance of GF2nPolynomialField or GF2nONBField!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "GF2nField.convert: B1 has a different degree and thus cannot be coverted to!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d()I
    .locals 1

    iget v0, p0, LWl/l;->b:I

    return v0
.end method

.method public final e()LWl/f;
    .locals 2

    iget-object v0, p0, LWl/l;->c:LWl/f;

    if-nez v0, :cond_0

    invoke-virtual {p0}, LWl/l;->b()V

    :cond_0
    new-instance v0, LWl/f;

    iget-object v1, p0, LWl/l;->c:LWl/f;

    invoke-direct {v0, v1}, LWl/f;-><init>(LWl/f;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    instance-of v1, p1, LWl/l;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, LWl/l;

    iget v1, p1, LWl/l;->b:I

    iget v2, p0, LWl/l;->b:I

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, LWl/l;->c:LWl/f;

    iget-object v2, p1, LWl/l;->c:LWl/f;

    invoke-virtual {v1, v2}, LWl/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    instance-of v1, p0, LWl/q;

    if-eqz v1, :cond_3

    instance-of v1, p1, LWl/q;

    if-nez v1, :cond_3

    return v0

    :cond_3
    instance-of v1, p0, LWl/n;

    if-eqz v1, :cond_4

    instance-of p1, p1, LWl/n;

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_0
    return v0
.end method

.method public abstract f(LWl/f;)LWl/k;
.end method

.method public final g([LWl/f;)[LWl/f;
    .locals 6

    array-length v0, p1

    new-array v0, v0, [LWl/f;

    array-length v1, p1

    new-array v1, v1, [LWl/f;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, LWl/l;->b:I

    if-ge v3, v4, :cond_0

    new-instance v4, LWl/f;

    aget-object v5, p1, v3

    invoke-direct {v4, v5}, LWl/f;-><init>(LWl/f;)V

    aput-object v4, v0, v3

    new-instance v4, LWl/f;

    iget v5, p0, LWl/l;->b:I

    invoke-direct {v4, v5}, LWl/f;-><init>(I)V

    aput-object v4, v1, v3

    iget v5, p0, LWl/l;->b:I

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v3

    invoke-virtual {v4, v5}, LWl/f;->I(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget p1, p0, LWl/l;->b:I

    add-int/lit8 v3, p1, -0x1

    if-ge v2, v3, :cond_6

    move p1, v2

    :goto_2
    iget v3, p0, LWl/l;->b:I

    if-ge p1, v3, :cond_1

    aget-object v4, v0, p1

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v2

    invoke-virtual {v4, v3}, LWl/f;->U(I)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_1
    iget v3, p0, LWl/l;->b:I

    if-ge p1, v3, :cond_5

    if-eq v2, p1, :cond_2

    aget-object v3, v0, v2

    aget-object v4, v0, p1

    aput-object v4, v0, v2

    aput-object v3, v0, p1

    aget-object v3, v1, v2

    aget-object v4, v1, p1

    aput-object v4, v1, v2

    aput-object v3, v1, p1

    :cond_2
    add-int/lit8 p1, v2, 0x1

    move v3, p1

    :goto_3
    iget v4, p0, LWl/l;->b:I

    if-ge v3, v4, :cond_4

    aget-object v5, v0, v3

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v2

    invoke-virtual {v5, v4}, LWl/f;->U(I)Z

    move-result v4

    if-eqz v4, :cond_3

    aget-object v4, v0, v3

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, LWl/f;->b(LWl/f;)V

    aget-object v4, v1, v3

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, LWl/f;->b(LWl/f;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    move v2, p1

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "GF2nField.invertMatrix: Matrix cannot be inverted!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    add-int/lit8 p1, p1, -0x1

    :goto_4
    if-lez p1, :cond_9

    add-int/lit8 v2, p1, -0x1

    :goto_5
    if-ltz v2, :cond_8

    aget-object v3, v0, v2

    iget v4, p0, LWl/l;->b:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, p1

    invoke-virtual {v3, v4}, LWl/f;->U(I)Z

    move-result v3

    if-eqz v3, :cond_7

    aget-object v3, v0, v2

    aget-object v4, v0, p1

    invoke-virtual {v3, v4}, LWl/f;->b(LWl/f;)V

    aget-object v3, v1, v2

    aget-object v4, v1, p1

    invoke-virtual {v3, v4}, LWl/f;->b(LWl/f;)V

    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_8
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :cond_9
    return-object v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, LWl/l;->b:I

    iget-object v1, p0, LWl/l;->c:LWl/f;

    invoke-virtual {v1}, LWl/f;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.class public LYl/d;
.super LYl/e;
.source "SourceFile"

# interfaces
.implements LYl/m;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LYl/e;-><init>(I)V

    invoke-virtual {p0}, LYl/d;->X()V

    return-void
.end method

.method public constructor <init>(LYl/e;)V
    .locals 0

    .line 2
    iget-object p1, p1, LYl/e;->a:[I

    invoke-direct {p0, p1}, LYl/d;-><init>([I)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, LYl/e;-><init>([I)V

    invoke-virtual {p0}, LYl/d;->X()V

    return-void
.end method

.method public static Y(IIILjava/security/SecureRandom;)LYl/d;
    .locals 0

    invoke-static {p0, p1, p2, p3}, LZl/b;->b(IIILjava/security/SecureRandom;)[I

    move-result-object p0

    new-instance p1, LYl/d;

    invoke-direct {p1, p0}, LYl/d;-><init>([I)V

    return-object p1
.end method

.method public static Z(ILjava/security/SecureRandom;)LYl/d;
    .locals 4

    new-instance v0, LYl/d;

    invoke-direct {v0, p0}, LYl/d;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    iget-object v2, v0, LYl/e;->a:[I

    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final X()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LYl/e;->a:[I

    array-length v2, v1

    if-eq v0, v2, :cond_1

    aget v1, v1, v0

    const/4 v2, -0x1

    if-lt v1, v2, :cond_0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", must be one of {-1, 0, 1}"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public d()[I
    .locals 6

    iget-object v0, p0, LYl/e;->a:[I

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, LYl/e;->a:[I

    aget v4, v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    add-int/lit8 v4, v3, 0x1

    aput v2, v1, v3

    move v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1, v3}, Lorg/bouncycastle/util/a;->S([II)[I

    move-result-object v0

    return-object v0
.end method

.method public e(LYl/e;I)LYl/e;
    .locals 1

    const/16 v0, 0x800

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, LYl/e;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LYl/e;

    invoke-virtual {p1, v0}, LYl/e;->D(I)V

    new-instance p2, LYl/g;

    invoke-direct {p2, p1}, LYl/g;-><init>(LYl/e;)V

    invoke-virtual {p2, p0}, LYl/g;->a(LYl/m;)LYl/g;

    move-result-object p1

    invoke-virtual {p1}, LYl/g;->b()LYl/e;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, LYl/e;->e(LYl/e;I)LYl/e;

    move-result-object p1

    return-object p1
.end method

.method public f()[I
    .locals 6

    iget-object v0, p0, LYl/e;->a:[I

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, LYl/e;->a:[I

    aget v4, v4, v2

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    add-int/lit8 v4, v3, 0x1

    aput v2, v1, v3

    move v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1, v3}, Lorg/bouncycastle/util/a;->S([II)[I

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYl/e;->a:[I

    array-length v0, v0

    return v0
.end method

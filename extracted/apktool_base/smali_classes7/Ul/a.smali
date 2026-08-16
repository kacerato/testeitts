.class public LUl/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:[[[S

.field public e:[[[S

.field public f:[[S

.field public g:[S


# direct methods
.method public constructor <init>(BB[[[S[[[S[[S[S)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, LUl/a;->a:I

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, LUl/a;->b:I

    sub-int/2addr p2, p1

    iput p2, p0, LUl/a;->c:I

    iput-object p3, p0, LUl/a;->d:[[[S

    iput-object p4, p0, LUl/a;->e:[[[S

    iput-object p5, p0, LUl/a;->f:[[S

    iput-object p6, p0, LUl/a;->g:[S

    return-void
.end method

.method public constructor <init>(IILjava/security/SecureRandom;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LUl/a;->a:I

    iput p2, p0, LUl/a;->b:I

    sub-int/2addr p2, p1

    iput p2, p0, LUl/a;->c:I

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x2

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const/4 v3, 0x0

    aput p2, v1, v3

    sget-object p2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[S

    iput-object v1, p0, LUl/a;->d:[[[S

    iget v1, p0, LUl/a;->c:I

    iget v4, p0, LUl/a;->a:I

    new-array v0, v0, [I

    aput v4, v0, v2

    aput v4, v0, p1

    aput v1, v0, v3

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[S

    iput-object v0, p0, LUl/a;->e:[[[S

    iget v0, p0, LUl/a;->c:I

    iget v1, p0, LUl/a;->b:I

    new-array v2, v2, [I

    aput v1, v2, p1

    aput v0, v2, v3

    invoke-static {p2, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[S

    iput-object p1, p0, LUl/a;->f:[[S

    iget p1, p0, LUl/a;->c:I

    new-array p2, p1, [S

    iput-object p2, p0, LUl/a;->g:[S

    move p2, v3

    :goto_0
    if-ge p2, p1, :cond_2

    move v0, v3

    :goto_1
    iget v1, p0, LUl/a;->c:I

    if-ge v0, v1, :cond_1

    move v1, v3

    :goto_2
    iget v2, p0, LUl/a;->a:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, LUl/a;->d:[[[S

    aget-object v2, v2, p2

    aget-object v2, v2, v0

    invoke-virtual {p3}, Ljava/util/Random;->nextInt()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    aput-short v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    move p2, v3

    :goto_3
    if-ge p2, p1, :cond_5

    move v0, v3

    :goto_4
    iget v1, p0, LUl/a;->a:I

    if-ge v0, v1, :cond_4

    move v1, v3

    :goto_5
    iget v2, p0, LUl/a;->a:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, LUl/a;->e:[[[S

    aget-object v2, v2, p2

    aget-object v2, v2, v0

    invoke-virtual {p3}, Ljava/util/Random;->nextInt()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    aput-short v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_5
    move p2, v3

    :goto_6
    if-ge p2, p1, :cond_7

    move v0, v3

    :goto_7
    iget v1, p0, LUl/a;->b:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, LUl/a;->f:[[S

    aget-object v1, v1, p2

    invoke-virtual {p3}, Ljava/util/Random;->nextInt()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_7
    :goto_8
    if-ge v3, p1, :cond_8

    iget-object p2, p0, LUl/a;->g:[S

    invoke-virtual {p3}, Ljava/util/Random;->nextInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    aput-short v0, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_8
    return-void
.end method


# virtual methods
.method public a()[[[S
    .locals 1

    iget-object v0, p0, LUl/a;->d:[[[S

    return-object v0
.end method

.method public b()[[[S
    .locals 1

    iget-object v0, p0, LUl/a;->e:[[[S

    return-object v0
.end method

.method public c()[S
    .locals 1

    iget-object v0, p0, LUl/a;->g:[S

    return-object v0
.end method

.method public d()[[S
    .locals 1

    iget-object v0, p0, LUl/a;->f:[[S

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, LUl/a;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, LUl/a;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, LUl/a;

    iget v1, p0, LUl/a;->a:I

    invoke-virtual {p1}, LUl/a;->f()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, p0, LUl/a;->b:I

    invoke-virtual {p1}, LUl/a;->g()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, p0, LUl/a;->c:I

    invoke-virtual {p1}, LUl/a;->e()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, LUl/a;->d:[[[S

    invoke-virtual {p1}, LUl/a;->a()[[[S

    move-result-object v2

    invoke-static {v1, v2}, LVl/c;->k([[[S[[[S)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LUl/a;->e:[[[S

    invoke-virtual {p1}, LUl/a;->b()[[[S

    move-result-object v2

    invoke-static {v1, v2}, LVl/c;->k([[[S[[[S)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LUl/a;->f:[[S

    invoke-virtual {p1}, LUl/a;->d()[[S

    move-result-object v2

    invoke-static {v1, v2}, LVl/c;->j([[S[[S)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LUl/a;->g:[S

    invoke-virtual {p1}, LUl/a;->c()[S

    move-result-object p1

    invoke-static {v1, p1}, LVl/c;->i([S[S)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, LUl/a;->a:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, LUl/a;->b:I

    return v0
.end method

.method public h([S)[[S
    .locals 9

    iget v0, p0, LUl/a;->c:I

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iget v2, p0, LUl/a;->c:I

    new-array v2, v2, [S

    move v3, v1

    :goto_0
    iget v4, p0, LUl/a;->c:I

    if-ge v3, v4, :cond_2

    move v4, v1

    :goto_1
    iget v5, p0, LUl/a;->a:I

    if-ge v4, v5, :cond_1

    move v5, v1

    :goto_2
    iget v6, p0, LUl/a;->a:I

    if-ge v5, v6, :cond_0

    iget-object v6, p0, LUl/a;->e:[[[S

    aget-object v6, v6, v3

    aget-object v6, v6, v4

    aget-short v6, v6, v5

    aget-short v7, p1, v4

    invoke-static {v6, v7}, LVl/b;->e(SS)S

    move-result v6

    aget-short v7, p1, v5

    invoke-static {v6, v7}, LVl/b;->e(SS)S

    move-result v6

    aget-short v7, v2, v3

    invoke-static {v7, v6}, LVl/b;->a(SS)S

    move-result v6

    aput-short v6, v2, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_3
    iget v4, p0, LUl/a;->c:I

    if-ge v3, v4, :cond_5

    move v4, v1

    :goto_4
    iget v5, p0, LUl/a;->c:I

    if-ge v4, v5, :cond_4

    move v5, v1

    :goto_5
    iget v6, p0, LUl/a;->a:I

    if-ge v5, v6, :cond_3

    iget-object v6, p0, LUl/a;->d:[[[S

    aget-object v6, v6, v3

    aget-object v6, v6, v4

    aget-short v6, v6, v5

    aget-short v7, p1, v5

    invoke-static {v6, v7}, LVl/b;->e(SS)S

    move-result v6

    aget-object v7, v0, v3

    aget-short v8, v7, v4

    invoke-static {v8, v6}, LVl/b;->a(SS)S

    move-result v6

    aput-short v6, v7, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    move v3, v1

    :goto_6
    iget v4, p0, LUl/a;->c:I

    if-ge v3, v4, :cond_7

    move v4, v1

    :goto_7
    iget v5, p0, LUl/a;->a:I

    if-ge v4, v5, :cond_6

    iget-object v5, p0, LUl/a;->f:[[S

    aget-object v5, v5, v3

    aget-short v5, v5, v4

    aget-short v6, p1, v4

    invoke-static {v5, v6}, LVl/b;->e(SS)S

    move-result v5

    aget-short v6, v2, v3

    invoke-static {v6, v5}, LVl/b;->a(SS)S

    move-result v5

    aput-short v5, v2, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    move p1, v1

    :goto_8
    iget v3, p0, LUl/a;->c:I

    if-ge p1, v3, :cond_9

    iget v3, p0, LUl/a;->a:I

    :goto_9
    iget v4, p0, LUl/a;->b:I

    if-ge v3, v4, :cond_8

    aget-object v4, v0, p1

    iget v5, p0, LUl/a;->a:I

    sub-int v6, v3, v5

    iget-object v7, p0, LUl/a;->f:[[S

    aget-object v7, v7, p1

    aget-short v7, v7, v3

    sub-int v5, v3, v5

    aget-short v5, v4, v5

    invoke-static {v7, v5}, LVl/b;->a(SS)S

    move-result v5

    aput-short v5, v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_9
    move p1, v1

    :goto_a
    iget v3, p0, LUl/a;->c:I

    if-ge p1, v3, :cond_a

    aget-short v3, v2, p1

    iget-object v4, p0, LUl/a;->g:[S

    aget-short v4, v4, p1

    invoke-static {v3, v4}, LVl/b;->a(SS)S

    move-result v3

    aput-short v3, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_a
    :goto_b
    iget p1, p0, LUl/a;->c:I

    if-ge v1, p1, :cond_b

    aget-object v3, v0, v1

    aget-short v4, v2, v1

    aput-short v4, v3, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_b
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, LUl/a;->a:I

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, LUl/a;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, LUl/a;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, LUl/a;->d:[[[S

    invoke-static {v1}, Lorg/bouncycastle/util/a;->E0([[[S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, LUl/a;->e:[[[S

    invoke-static {v1}, Lorg/bouncycastle/util/a;->E0([[[S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, LUl/a;->f:[[S

    invoke-static {v1}, Lorg/bouncycastle/util/a;->D0([[S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, LUl/a;->g:[S

    invoke-static {v1}, Lorg/bouncycastle/util/a;->B0([S)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

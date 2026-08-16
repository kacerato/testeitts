.class public Lll/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lll/a;

.field public b:Lll/h;

.field public final c:I


# direct methods
.method public constructor <init>(Lll/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    iput v0, p0, Lll/k;->c:I

    new-instance v0, Lll/a;

    invoke-direct {v0}, Lll/a;-><init>()V

    iput-object v0, p0, Lll/k;->a:Lll/a;

    iput-object p1, p0, Lll/k;->b:Lll/h;

    return-void
.end method


# virtual methods
.method public final a([[S)[S
    .locals 10

    iget-object v0, p0, Lll/k;->b:Lll/h;

    invoke-virtual {v0}, Lll/h;->e()I

    move-result v0

    new-array v1, v0, [S

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x8

    if-ge v3, v4, :cond_2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    int-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    new-array v5, v0, [S

    move v6, v4

    :goto_1
    const/16 v7, 0x100

    if-ge v6, v7, :cond_1

    move v7, v2

    :goto_2
    if-ge v7, v4, :cond_0

    iget-object v8, p0, Lll/k;->a:Lll/a;

    add-int v9, v6, v7

    aget-object v9, p1, v9

    invoke-virtual {v8, v5, v9}, Lll/a;->c([S[S)[S

    move-result-object v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lll/k;->a:Lll/a;

    int-to-short v4, v4

    invoke-virtual {v6, v4, v5}, Lll/a;->g(S[S)[S

    move-result-object v4

    invoke-virtual {v6, v1, v4}, Lll/a;->c([S[S)[S

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final b([S[S[[[SI)[[S
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p4, v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x100

    aput v2, v0, v1

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    array-length v2, p2

    aget-object v3, p3, v1

    array-length v4, v3

    if-ne v2, v4, :cond_4

    array-length v2, p1

    aget-object v3, v3, v1

    array-length v3, v3

    if-ne v2, v3, :cond_4

    array-length v2, p3

    if-ne v2, p4, :cond_4

    move p4, v1

    :goto_0
    array-length v2, p2

    if-ge p4, v2, :cond_3

    iget-object v2, p0, Lll/k;->a:Lll/a;

    aget-short v3, p2, p4

    invoke-virtual {v2, v3, p1}, Lll/a;->g(S[S)[S

    move-result-object v2

    move v3, v1

    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_2

    move v4, v1

    :goto_2
    array-length v5, p3

    if-ge v4, v5, :cond_1

    aget-short v5, v2, v3

    if-eqz v5, :cond_0

    aget-object v5, v0, v5

    aget-short v6, v5, v4

    aget-object v7, p3, v4

    aget-object v7, v7, p4

    aget-short v7, v7, v3

    invoke-static {v6, v7}, Lll/b;->a(SS)S

    move-result v6

    aput-short v6, v5, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Accumulator calculation not possible!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lll/j;[S)[S
    .locals 1

    iget-object p1, p1, Lll/j;->e:[[[S

    iget-object v0, p0, Lll/k;->b:Lll/h;

    invoke-virtual {v0}, Lll/h;->e()I

    move-result v0

    invoke-virtual {p0, p2, p2, p1, v0}, Lll/k;->b([S[S[[[SI)[[S

    move-result-object p1

    invoke-virtual {p0, p1}, Lll/k;->a([[S)[S

    move-result-object p1

    return-object p1
.end method

.method public d(Lll/j;[S)[S
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lll/k;->b:Lll/h;

    invoke-virtual {v3}, Lll/h;->j()I

    move-result v3

    iget-object v4, v0, Lll/k;->b:Lll/h;

    invoke-virtual {v4}, Lll/h;->h()I

    move-result v4

    iget-object v5, v0, Lll/k;->b:Lll/h;

    invoke-virtual {v5}, Lll/h;->i()I

    move-result v5

    add-int v6, v4, v5

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x1

    aput v6, v7, v8

    const/4 v6, 0x0

    const/16 v9, 0x100

    aput v9, v7, v6

    sget-object v10, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[S

    invoke-static {v2, v6, v3}, Lorg/bouncycastle/util/a;->c0([SII)[S

    move-result-object v10

    add-int v11, v3, v4

    invoke-static {v2, v3, v11}, Lorg/bouncycastle/util/a;->c0([SII)[S

    move-result-object v12

    array-length v13, v2

    invoke-static {v2, v11, v13}, Lorg/bouncycastle/util/a;->c0([SII)[S

    move-result-object v2

    new-instance v11, Lll/c;

    iget-object v13, v1, Lll/j;->f:[B

    invoke-virtual/range {p1 .. p1}, Lll/g;->e()Lll/h;

    move-result-object v14

    invoke-virtual {v14}, Lll/h;->a()LBi/y;

    move-result-object v14

    invoke-direct {v11, v13, v14}, Lll/c;-><init>([BLBi/y;)V

    invoke-static {v11, v4, v3, v3, v8}, Lll/m;->h(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v13

    invoke-virtual {v0, v10, v10, v13, v4}, Lll/k;->b([S[S[[[SI)[[S

    move-result-object v13

    invoke-static {v11, v4, v3, v4, v6}, Lll/m;->h(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v14

    iget-object v15, v0, Lll/k;->a:Lll/a;

    invoke-virtual {v0, v12, v10, v14, v4}, Lll/k;->b([S[S[[[SI)[[S

    move-result-object v14

    invoke-virtual {v15, v13, v14}, Lll/a;->a([[S[[S)[[S

    move-result-object v13

    iget-object v14, v0, Lll/k;->a:Lll/a;

    iget-object v15, v1, Lll/j;->g:[[[S

    invoke-virtual {v0, v2, v10, v15, v4}, Lll/k;->b([S[S[[[SI)[[S

    move-result-object v15

    invoke-virtual {v14, v13, v15}, Lll/a;->a([[S[[S)[[S

    move-result-object v13

    iget-object v14, v0, Lll/k;->a:Lll/a;

    iget-object v15, v1, Lll/j;->h:[[[S

    invoke-virtual {v0, v12, v12, v15, v4}, Lll/k;->b([S[S[[[SI)[[S

    move-result-object v15

    invoke-virtual {v14, v13, v15}, Lll/a;->a([[S[[S)[[S

    move-result-object v13

    iget-object v14, v0, Lll/k;->a:Lll/a;

    iget-object v15, v1, Lll/j;->i:[[[S

    invoke-virtual {v0, v2, v12, v15, v4}, Lll/k;->b([S[S[[[SI)[[S

    move-result-object v15

    invoke-virtual {v14, v13, v15}, Lll/a;->a([[S[[S)[[S

    move-result-object v13

    iget-object v14, v0, Lll/k;->a:Lll/a;

    iget-object v15, v1, Lll/j;->j:[[[S

    invoke-virtual {v0, v2, v2, v15, v4}, Lll/k;->b([S[S[[[SI)[[S

    move-result-object v15

    invoke-virtual {v14, v13, v15}, Lll/a;->a([[S[[S)[[S

    move-result-object v13

    invoke-static {v11, v5, v3, v3, v8}, Lll/m;->h(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v14

    invoke-virtual {v0, v10, v10, v14, v5}, Lll/k;->b([S[S[[[SI)[[S

    move-result-object v14

    invoke-static {v11, v5, v3, v4, v6}, Lll/m;->h(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v15

    iget-object v9, v0, Lll/k;->a:Lll/a;

    invoke-virtual {v0, v12, v10, v15, v5}, Lll/k;->b([S[S[[[SI)[[S

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Lll/a;->a([[S[[S)[[S

    move-result-object v9

    invoke-static {v11, v5, v3, v5, v6}, Lll/m;->h(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v3

    iget-object v14, v0, Lll/k;->a:Lll/a;

    invoke-virtual {v0, v2, v10, v3, v5}, Lll/k;->b([S[S[[[SI)[[S

    move-result-object v3

    invoke-virtual {v14, v9, v3}, Lll/a;->a([[S[[S)[[S

    move-result-object v3

    invoke-static {v11, v5, v4, v4, v8}, Lll/m;->h(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v8

    iget-object v9, v0, Lll/k;->a:Lll/a;

    invoke-virtual {v0, v12, v12, v8, v5}, Lll/k;->b([S[S[[[SI)[[S

    move-result-object v8

    invoke-virtual {v9, v3, v8}, Lll/a;->a([[S[[S)[[S

    move-result-object v3

    invoke-static {v11, v5, v4, v5, v6}, Lll/m;->h(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v4

    iget-object v8, v0, Lll/k;->a:Lll/a;

    invoke-virtual {v0, v2, v12, v4, v5}, Lll/k;->b([S[S[[[SI)[[S

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Lll/a;->a([[S[[S)[[S

    move-result-object v3

    iget-object v4, v0, Lll/k;->a:Lll/a;

    iget-object v1, v1, Lll/j;->k:[[[S

    invoke-virtual {v0, v2, v2, v1, v5}, Lll/k;->b([S[S[[[SI)[[S

    move-result-object v1

    invoke-virtual {v4, v3, v1}, Lll/a;->a([[S[[S)[[S

    move-result-object v1

    const/16 v2, 0x100

    :goto_0
    if-ge v6, v2, :cond_0

    aget-object v3, v13, v6

    aget-object v4, v1, v6

    invoke-static {v3, v4}, Lorg/bouncycastle/util/a;->G([S[S)[S

    move-result-object v3

    aput-object v3, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v7}, Lll/k;->a([[S)[S

    move-result-object v1

    return-object v1
.end method

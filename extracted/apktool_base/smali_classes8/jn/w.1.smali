.class public Ljn/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljn/w$b;,
        Ljn/w$c;,
        Ljn/w$d;,
        Ljn/w$e;
    }
.end annotation


# static fields
.field public static final a:I = 0xffff

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x4

.field public static final e:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([Ljn/w$b;III)[[I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "items",
            "nitems",
            "imin",
            "imax"
        }
    .end annotation

    const/4 p1, 0x3

    new-array v0, p1, [I

    new-array p1, p1, [I

    aget-object v1, p0, p2

    iget-object v2, v1, Ljn/w$b;->a:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    aput v4, v0, v3

    const/4 v4, 0x1

    aget v5, v2, v4

    aput v5, v0, v4

    const/4 v5, 0x2

    aget v2, v2, v5

    aput v2, v0, v5

    iget-object v1, v1, Ljn/w$b;->b:[I

    aget v2, v1, v3

    aput v2, p1, v3

    aget v2, v1, v4

    aput v2, p1, v4

    aget v1, v1, v5

    aput v1, p1, v5

    add-int/2addr p2, v4

    :goto_0
    if-ge p2, p3, :cond_6

    aget-object v1, p0, p2

    iget-object v2, v1, Ljn/w$b;->a:[I

    aget v6, v2, v3

    aget v7, v0, v3

    if-ge v6, v7, :cond_0

    aput v6, v0, v3

    :cond_0
    aget v6, v2, v4

    aget v7, v0, v4

    if-ge v6, v7, :cond_1

    aput v6, v0, v4

    :cond_1
    aget v2, v2, v5

    aget v6, v0, v5

    if-ge v2, v6, :cond_2

    aput v2, v0, v5

    :cond_2
    iget-object v1, v1, Ljn/w$b;->b:[I

    aget v2, v1, v3

    aget v6, p1, v3

    if-le v2, v6, :cond_3

    aput v2, p1, v3

    :cond_3
    aget v2, v1, v4

    aget v6, p1, v4

    if-le v2, v6, :cond_4

    aput v2, p1, v4

    :cond_4
    aget v1, v1, v5

    aget v2, p1, v5

    if-le v1, v2, :cond_5

    aput v1, p1, v5

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    filled-new-array {v0, p1}, [[I

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljn/W;[F[F)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pt",
            "bmin",
            "bmax"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljn/W;->a(I)F

    move-result v1

    aget v2, p2, v0

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljn/W;->a(I)F

    move-result v4

    aget p2, p2, v3

    cmpl-float p2, v4, p2

    if-ltz p2, :cond_1

    move p2, v3

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    or-int/2addr p2, v1

    invoke-virtual {p0, v0}, Ljn/W;->a(I)F

    move-result v1

    aget v4, p1, v0

    cmpg-float v1, v1, v4

    const/4 v4, 0x4

    if-gez v1, :cond_2

    move v1, v4

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    or-int/2addr p2, v1

    invoke-virtual {p0, v3}, Ljn/W;->a(I)F

    move-result p0

    aget p1, p1, v3

    cmpg-float p0, p0, p1

    const/16 p1, 0x8

    if-gez p0, :cond_3

    move p0, p1

    goto :goto_3

    :cond_3
    move p0, v0

    :goto_3
    or-int/2addr p0, p2

    if-eq p0, v2, :cond_b

    if-eq p0, v3, :cond_a

    const/4 p2, 0x3

    if-eq p0, p2, :cond_9

    if-eq p0, v4, :cond_8

    const/4 v0, 0x6

    if-eq p0, v0, :cond_7

    const/16 p2, 0xc

    if-eq p0, p2, :cond_6

    if-eq p0, p1, :cond_5

    const/16 p1, 0x9

    if-eq p0, p1, :cond_4

    const/16 p0, 0xff

    return p0

    :cond_4
    const/4 p0, 0x7

    return p0

    :cond_5
    return v0

    :cond_6
    const/4 p0, 0x5

    return p0

    :cond_7
    return p2

    :cond_8
    return v4

    :cond_9
    return v2

    :cond_a
    return v3

    :cond_b
    return v0
.end method

.method public static c(Ljn/x;[Ljn/a;)I
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "params",
            "nodes"
        }
    .end annotation

    iget v0, p0, Ljn/x;->C:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iget v0, p0, Ljn/x;->f:I

    new-array v2, v0, [Ljn/w$b;

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    iget v5, p0, Ljn/x;->f:I

    if-ge v3, v5, :cond_a

    new-instance v4, Ljn/w$b;

    invoke-direct {v4}, Ljn/w$b;-><init>()V

    aput-object v4, v2, v3

    iput v3, v4, Ljn/w$b;->c:I

    iget-object v5, p0, Ljn/x;->h:[I

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v5, :cond_1

    mul-int/lit8 v9, v3, 0x4

    aget v10, v5, v9

    add-int/2addr v9, v8

    aget v5, v5, v9

    new-array v9, v6, [F

    new-array v11, v6, [F

    mul-int/2addr v10, v6

    iget-object v6, p0, Ljn/x;->i:[F

    invoke-static {v9, v6, v10}, Ljn/g;->x([F[FI)V

    iget-object v6, p0, Ljn/x;->i:[F

    invoke-static {v11, v6, v10}, Ljn/g;->x([F[FI)V

    move v6, v8

    :goto_1
    if-ge v6, v5, :cond_0

    iget-object v12, p0, Ljn/x;->i:[F

    mul-int/lit8 v13, v6, 0x3

    add-int/2addr v13, v10

    invoke-static {v9, v12, v13}, Ljn/g;->Q([F[FI)V

    iget-object v12, p0, Ljn/x;->i:[F

    invoke-static {v11, v12, v13}, Ljn/g;->P([F[FI)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    iget-object v5, v4, Ljn/w$b;->a:[I

    aget v6, v9, v0

    iget-object v10, p0, Ljn/x;->x:[F

    aget v10, v10, v0

    sub-float/2addr v6, v10

    mul-float/2addr v6, v1

    float-to-int v6, v6

    const v10, 0x7fffffff

    invoke-static {v6, v0, v10}, Ljn/g;->b(III)I

    move-result v6

    aput v6, v5, v0

    iget-object v5, v4, Ljn/w$b;->a:[I

    aget v6, v9, v8

    iget-object v12, p0, Ljn/x;->x:[F

    aget v12, v12, v8

    sub-float/2addr v6, v12

    mul-float/2addr v6, v1

    float-to-int v6, v6

    invoke-static {v6, v0, v10}, Ljn/g;->b(III)I

    move-result v6

    aput v6, v5, v8

    iget-object v5, v4, Ljn/w$b;->a:[I

    aget v6, v9, v7

    iget-object v9, p0, Ljn/x;->x:[F

    aget v9, v9, v7

    sub-float/2addr v6, v9

    mul-float/2addr v6, v1

    float-to-int v6, v6

    invoke-static {v6, v0, v10}, Ljn/g;->b(III)I

    move-result v6

    aput v6, v5, v7

    iget-object v5, v4, Ljn/w$b;->b:[I

    aget v6, v11, v0

    iget-object v9, p0, Ljn/x;->x:[F

    aget v9, v9, v0

    sub-float/2addr v6, v9

    mul-float/2addr v6, v1

    float-to-int v6, v6

    invoke-static {v6, v0, v10}, Ljn/g;->b(III)I

    move-result v6

    aput v6, v5, v0

    iget-object v5, v4, Ljn/w$b;->b:[I

    aget v6, v11, v8

    iget-object v9, p0, Ljn/x;->x:[F

    aget v9, v9, v8

    sub-float/2addr v6, v9

    mul-float/2addr v6, v1

    float-to-int v6, v6

    invoke-static {v6, v0, v10}, Ljn/g;->b(III)I

    move-result v6

    aput v6, v5, v8

    iget-object v4, v4, Ljn/w$b;->b:[I

    aget v5, v11, v7

    iget-object v6, p0, Ljn/x;->x:[F

    aget v6, v6, v7

    sub-float/2addr v5, v6

    mul-float/2addr v5, v1

    float-to-int v5, v5

    invoke-static {v5, v0, v10}, Ljn/g;->b(III)I

    move-result v5

    aput v5, v4, v7

    goto/16 :goto_4

    :cond_1
    iget v5, p0, Ljn/x;->g:I

    mul-int/2addr v5, v3

    mul-int/2addr v5, v7

    iget-object v9, v4, Ljn/w$b;->a:[I

    iget-object v10, v4, Ljn/w$b;->b:[I

    iget-object v11, p0, Ljn/x;->a:[I

    iget-object v12, p0, Ljn/x;->c:[I

    aget v13, v12, v5

    mul-int/2addr v13, v6

    aget v13, v11, v13

    aput v13, v10, v0

    aput v13, v9, v0

    aget v13, v12, v5

    mul-int/2addr v13, v6

    add-int/2addr v13, v8

    aget v13, v11, v13

    aput v13, v10, v8

    aput v13, v9, v8

    aget v12, v12, v5

    mul-int/2addr v12, v6

    add-int/2addr v12, v7

    aget v6, v11, v12

    aput v6, v10, v7

    aput v6, v9, v7

    move v6, v8

    :goto_2
    iget v9, p0, Ljn/x;->g:I

    if-ge v6, v9, :cond_9

    iget-object v9, p0, Ljn/x;->c:[I

    add-int v10, v5, v6

    aget v9, v9, v10

    const v10, 0xffff

    if-ne v9, v10, :cond_2

    goto :goto_3

    :cond_2
    iget-object v10, p0, Ljn/x;->a:[I

    mul-int/lit8 v11, v9, 0x3

    aget v11, v10, v11

    mul-int/lit8 v12, v9, 0x3

    add-int/2addr v12, v8

    aget v12, v10, v12

    mul-int/lit8 v9, v9, 0x3

    add-int/2addr v9, v7

    aget v9, v10, v9

    iget-object v10, v4, Ljn/w$b;->a:[I

    aget v13, v10, v0

    if-ge v11, v13, :cond_3

    aput v11, v10, v0

    :cond_3
    aget v13, v10, v8

    if-ge v12, v13, :cond_4

    aput v12, v10, v8

    :cond_4
    aget v13, v10, v7

    if-ge v9, v13, :cond_5

    aput v9, v10, v7

    :cond_5
    iget-object v10, v4, Ljn/w$b;->b:[I

    aget v13, v10, v0

    if-le v11, v13, :cond_6

    aput v11, v10, v0

    :cond_6
    aget v11, v10, v8

    if-le v12, v11, :cond_7

    aput v12, v10, v8

    :cond_7
    aget v11, v10, v7

    if-le v9, v11, :cond_8

    aput v9, v10, v7

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    iget-object v5, v4, Ljn/w$b;->a:[I

    aget v6, v5, v8

    int-to-float v6, v6

    iget v7, p0, Ljn/x;->D:F

    mul-float/2addr v6, v7

    mul-float/2addr v6, v1

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    aput v6, v5, v8

    iget-object v4, v4, Ljn/w$b;->b:[I

    aget v5, v4, v8

    int-to-float v5, v5

    iget v6, p0, Ljn/x;->D:F

    mul-float/2addr v5, v6

    mul-float/2addr v5, v1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    aput v5, v4, v8

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, v5

    move-object v7, p1

    invoke-static/range {v2 .. v7}, Ljn/w;->f([Ljn/w$b;IIII[Ljn/a;)I

    move-result p0

    return p0
.end method

.method public static d(Ljn/x;)Ljn/q;
    .locals 28
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    move-object/from16 v0, p0

    iget v1, v0, Ljn/x;->b:I

    const/4 v2, 0x0

    const v3, 0xffff

    if-lt v1, v3, :cond_0

    return-object v2

    :cond_0
    if-eqz v1, :cond_32

    iget-object v1, v0, Ljn/x;->a:[I

    if-nez v1, :cond_1

    goto/16 :goto_1f

    :cond_1
    iget v1, v0, Ljn/x;->f:I

    if-eqz v1, :cond_32

    iget-object v1, v0, Ljn/x;->c:[I

    if-nez v1, :cond_2

    goto/16 :goto_1f

    :cond_2
    iget v1, v0, Ljn/x;->g:I

    iget v4, v0, Ljn/x;->s:I

    const/16 v5, 0xff

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-lez v4, :cond_a

    mul-int/2addr v4, v7

    new-array v2, v4, [I

    iget-object v4, v0, Ljn/x;->i:[F

    const v10, 0x7f7fffff    # Float.MAX_VALUE

    const v11, -0x800001

    if-eqz v4, :cond_3

    iget v4, v0, Ljn/x;->j:I

    if-eqz v4, :cond_3

    move v4, v8

    :goto_0
    iget v12, v0, Ljn/x;->j:I

    if-ge v4, v12, :cond_4

    iget-object v12, v0, Ljn/x;->i:[F

    mul-int/lit8 v13, v4, 0x3

    add-int/2addr v13, v9

    aget v12, v12, v13

    invoke-static {v10, v12}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move v4, v8

    :goto_1
    iget v12, v0, Ljn/x;->b:I

    if-ge v4, v12, :cond_4

    mul-int/lit8 v12, v4, 0x3

    iget-object v13, v0, Ljn/x;->x:[F

    aget v13, v13, v9

    iget-object v14, v0, Ljn/x;->a:[I

    add-int/2addr v12, v9

    aget v12, v14, v12

    int-to-float v12, v12

    iget v14, v0, Ljn/x;->D:F

    mul-float/2addr v12, v14

    add-float/2addr v13, v12

    invoke-static {v10, v13}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v11, v13}, Ljava/lang/Math;->max(FF)F

    move-result v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget v4, v0, Ljn/x;->B:F

    sub-float/2addr v10, v4

    add-float/2addr v11, v4

    new-array v4, v6, [F

    new-array v12, v6, [F

    iget-object v13, v0, Ljn/x;->x:[F

    invoke-static {v4, v13}, Ljn/g;->w([F[F)V

    iget-object v13, v0, Ljn/x;->y:[F

    invoke-static {v12, v13}, Ljn/g;->w([F[F)V

    aput v10, v4, v9

    aput v11, v12, v9

    move v10, v8

    move v11, v10

    move v13, v11

    :goto_2
    iget v14, v0, Ljn/x;->s:I

    if-ge v10, v14, :cond_b

    new-instance v14, Ljn/W;

    iget-object v15, v0, Ljn/x;->m:[F

    mul-int/lit8 v16, v10, 0x2

    mul-int/lit8 v6, v10, 0x6

    invoke-direct {v14, v15, v6}, Ljn/W;-><init>([FI)V

    new-instance v6, Ljn/W;

    iget-object v15, v0, Ljn/x;->m:[F

    add-int/lit8 v18, v16, 0x1

    mul-int/lit8 v7, v18, 0x3

    invoke-direct {v6, v15, v7}, Ljn/W;-><init>([FI)V

    invoke-static {v14, v4, v12}, Ljn/w;->b(Ljn/W;[F[F)I

    move-result v7

    aput v7, v2, v16

    invoke-static {v6, v4, v12}, Ljn/w;->b(Ljn/W;[F[F)I

    move-result v6

    aput v6, v2, v18

    aget v6, v2, v16

    if-ne v6, v5, :cond_6

    invoke-virtual {v14, v9}, Ljn/W;->a(I)F

    move-result v6

    aget v7, v4, v9

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_5

    invoke-virtual {v14, v9}, Ljn/W;->a(I)F

    move-result v6

    aget v7, v12, v9

    cmpl-float v6, v6, v7

    if-lez v6, :cond_6

    :cond_5
    aput v8, v2, v16

    :cond_6
    aget v6, v2, v16

    if-ne v6, v5, :cond_7

    add-int/lit8 v13, v13, 0x1

    :cond_7
    aget v7, v2, v18

    if-ne v7, v5, :cond_8

    add-int/lit8 v13, v13, 0x1

    :cond_8
    if-ne v6, v5, :cond_9

    add-int/lit8 v11, v11, 0x1

    :cond_9
    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x2

    goto :goto_2

    :cond_a
    move v11, v8

    move v13, v11

    :cond_b
    iget v4, v0, Ljn/x;->f:I

    add-int/2addr v4, v11

    iget v6, v0, Ljn/x;->b:I

    mul-int/lit8 v7, v11, 0x2

    add-int/2addr v6, v7

    move v7, v8

    move v10, v7

    move v12, v10

    :goto_3
    iget v14, v0, Ljn/x;->f:I

    const v15, 0x8000

    if-ge v7, v14, :cond_f

    mul-int/lit8 v14, v7, 0x2

    mul-int/2addr v14, v1

    :goto_4
    if-ge v8, v1, :cond_e

    iget-object v9, v0, Ljn/x;->c:[I

    add-int v20, v14, v8

    aget v5, v9, v20

    if-ne v5, v3, :cond_c

    goto :goto_5

    :cond_c
    add-int/lit8 v10, v10, 0x1

    add-int v5, v14, v1

    add-int/2addr v5, v8

    aget v5, v9, v5

    and-int v9, v5, v15

    if-eqz v9, :cond_d

    and-int/lit8 v5, v5, 0xf

    const/16 v9, 0xf

    if-eq v5, v9, :cond_d

    add-int/lit8 v12, v12, 0x1

    :cond_d
    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x1

    goto :goto_4

    :cond_e
    :goto_5
    add-int/lit8 v7, v7, 0x1

    const/16 v5, 0xff

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_3

    :cond_f
    const/4 v5, 0x2

    mul-int/2addr v12, v5

    add-int/2addr v10, v12

    mul-int/2addr v13, v5

    add-int/2addr v10, v13

    iget-object v7, v0, Ljn/x;->h:[I

    if-eqz v7, :cond_12

    iget v7, v0, Ljn/x;->l:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_6
    iget v12, v0, Ljn/x;->f:I

    if-ge v8, v12, :cond_16

    mul-int v12, v8, v1

    mul-int/2addr v12, v5

    iget-object v5, v0, Ljn/x;->h:[I

    mul-int/lit8 v13, v8, 0x4

    const/4 v14, 0x1

    add-int/2addr v13, v14

    aget v5, v5, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_7
    if-ge v13, v1, :cond_11

    iget-object v15, v0, Ljn/x;->c:[I

    add-int v21, v12, v13

    aget v15, v15, v21

    if-ne v15, v3, :cond_10

    goto :goto_8

    :cond_10
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v13, v13, 0x1

    const v15, 0x8000

    goto :goto_7

    :cond_11
    :goto_8
    sub-int/2addr v5, v14

    add-int/2addr v9, v5

    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x2

    const v15, 0x8000

    goto :goto_6

    :cond_12
    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_9
    iget v8, v0, Ljn/x;->f:I

    if-ge v5, v8, :cond_15

    mul-int v8, v5, v1

    const/4 v9, 0x2

    mul-int/2addr v8, v9

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_a
    if-ge v9, v1, :cond_14

    iget-object v13, v0, Ljn/x;->c:[I

    add-int v14, v8, v9

    aget v13, v13, v14

    if-ne v13, v3, :cond_13

    goto :goto_b

    :cond_13
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_14
    :goto_b
    add-int/lit8 v12, v12, -0x2

    add-int/2addr v7, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_15
    const/4 v9, 0x0

    :cond_16
    iget-boolean v5, v0, Ljn/x;->E:Z

    if-eqz v5, :cond_17

    iget v5, v0, Ljn/x;->f:I

    const/4 v8, 0x2

    mul-int/2addr v5, v8

    goto :goto_c

    :cond_17
    const/4 v5, 0x0

    :goto_c
    new-instance v8, Ljn/r;

    invoke-direct {v8}, Ljn/r;-><init>()V

    mul-int/lit8 v12, v6, 0x3

    new-array v12, v12, [F

    new-array v13, v4, [Ljn/G;

    iget v14, v0, Ljn/x;->f:I

    new-array v14, v14, [Ljn/H;

    mul-int/lit8 v15, v9, 0x3

    new-array v15, v15, [F

    mul-int/lit8 v3, v7, 0x4

    new-array v3, v3, [I

    move-object/from16 v22, v3

    new-array v3, v5, [Ljn/a;

    move-object/from16 v23, v3

    new-array v3, v11, [Ljn/F;

    move-object/from16 v24, v3

    const v3, 0x444e4156

    iput v3, v8, Ljn/r;->a:I

    const/4 v3, 0x7

    iput v3, v8, Ljn/r;->b:I

    iget v3, v0, Ljn/x;->u:I

    iput v3, v8, Ljn/r;->c:I

    iget v3, v0, Ljn/x;->v:I

    iput v3, v8, Ljn/r;->d:I

    iget v3, v0, Ljn/x;->w:I

    iput v3, v8, Ljn/r;->e:I

    iget v3, v0, Ljn/x;->t:I

    iput v3, v8, Ljn/r;->f:I

    iput v4, v8, Ljn/r;->g:I

    iput v6, v8, Ljn/r;->h:I

    iput v10, v8, Ljn/r;->i:I

    iget-object v3, v8, Ljn/r;->s:[F

    iget-object v4, v0, Ljn/x;->x:[F

    invoke-static {v3, v4}, Ljn/g;->w([F[F)V

    iget-object v3, v8, Ljn/r;->t:[F

    iget-object v4, v0, Ljn/x;->y:[F

    invoke-static {v3, v4}, Ljn/g;->w([F[F)V

    iget v3, v0, Ljn/x;->f:I

    iput v3, v8, Ljn/r;->j:I

    iput v9, v8, Ljn/r;->k:I

    iput v7, v8, Ljn/r;->l:I

    const/high16 v4, 0x3f800000    # 1.0f

    iget v6, v0, Ljn/x;->C:F

    div-float/2addr v4, v6

    iput v4, v8, Ljn/r;->u:F

    iput v3, v8, Ljn/r;->o:I

    iget v4, v0, Ljn/x;->z:F

    iput v4, v8, Ljn/r;->p:F

    iget v4, v0, Ljn/x;->A:F

    iput v4, v8, Ljn/r;->q:F

    iget v4, v0, Ljn/x;->B:F

    iput v4, v8, Ljn/r;->r:F

    iput v11, v8, Ljn/r;->n:I

    iput v5, v8, Ljn/r;->m:I

    iget v4, v0, Ljn/x;->b:I

    const/4 v5, 0x0

    :goto_d
    iget v6, v0, Ljn/x;->b:I

    if-ge v5, v6, :cond_18

    mul-int/lit8 v6, v5, 0x3

    iget-object v7, v0, Ljn/x;->x:[F

    const/4 v9, 0x0

    aget v10, v7, v9

    iget-object v9, v0, Ljn/x;->a:[I

    aget v11, v9, v6

    int-to-float v11, v11

    move-object/from16 v25, v8

    iget v8, v0, Ljn/x;->C:F

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    aput v10, v12, v6

    add-int/lit8 v10, v6, 0x1

    const/4 v11, 0x1

    aget v26, v7, v11

    aget v11, v9, v10

    int-to-float v11, v11

    move-object/from16 v27, v15

    iget v15, v0, Ljn/x;->D:F

    mul-float/2addr v11, v15

    add-float v26, v26, v11

    aput v26, v12, v10

    const/4 v10, 0x2

    add-int/2addr v6, v10

    aget v7, v7, v10

    aget v9, v9, v6

    int-to-float v9, v9

    mul-float/2addr v9, v8

    add-float/2addr v7, v9

    aput v7, v12, v6

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v8, v25

    move-object/from16 v15, v27

    goto :goto_d

    :cond_18
    move-object/from16 v25, v8

    move-object/from16 v27, v15

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_e
    iget v7, v0, Ljn/x;->s:I

    const/4 v8, 0x6

    if-ge v5, v7, :cond_1a

    mul-int/lit8 v7, v5, 0x2

    aget v7, v2, v7

    const/16 v9, 0xff

    if-ne v7, v9, :cond_19

    mul-int/lit8 v7, v5, 0x6

    mul-int/lit8 v9, v6, 0x2

    add-int/2addr v9, v4

    const/4 v10, 0x3

    mul-int/2addr v9, v10

    iget-object v10, v0, Ljn/x;->m:[F

    invoke-static {v10, v7, v12, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v6, 0x1

    :cond_19
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_1a
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_f
    iget v7, v0, Ljn/x;->f:I

    if-ge v5, v7, :cond_23

    new-instance v7, Ljn/G;

    invoke-direct {v7, v5, v1}, Ljn/G;-><init>(II)V

    aput-object v7, v13, v5

    const/4 v9, 0x0

    iput v9, v7, Ljn/G;->e:I

    iget-object v10, v0, Ljn/x;->d:[I

    aget v10, v10, v5

    iput v10, v7, Ljn/G;->d:I

    iget-object v10, v0, Ljn/x;->e:[I

    aget v10, v10, v5

    invoke-virtual {v7, v10}, Ljn/G;->c(I)V

    invoke-virtual {v7, v9}, Ljn/G;->d(I)V

    const/4 v9, 0x0

    :goto_10
    if-ge v9, v1, :cond_1b

    iget-object v10, v0, Ljn/x;->c:[I

    add-int v11, v6, v9

    aget v11, v10, v11

    const v15, 0xffff

    if-ne v11, v15, :cond_1c

    :cond_1b
    const v15, 0x8000

    goto :goto_13

    :cond_1c
    iget-object v15, v7, Ljn/G;->b:[I

    aput v11, v15, v9

    add-int v11, v6, v1

    add-int/2addr v11, v9

    aget v10, v10, v11

    const v11, 0x8000

    and-int v15, v10, v11

    if-eqz v15, :cond_21

    and-int/lit8 v10, v10, 0xf

    const/16 v11, 0xf

    if-ne v10, v11, :cond_1d

    iget-object v10, v7, Ljn/G;->c:[I

    const/4 v15, 0x0

    aput v15, v10, v9

    :goto_11
    const v15, 0x8000

    goto :goto_12

    :cond_1d
    if-nez v10, :cond_1e

    iget-object v10, v7, Ljn/G;->c:[I

    const v15, 0x8004

    aput v15, v10, v9

    goto :goto_11

    :cond_1e
    const/4 v15, 0x1

    if-ne v10, v15, :cond_1f

    iget-object v10, v7, Ljn/G;->c:[I

    const v15, 0x8002

    aput v15, v10, v9

    goto :goto_11

    :cond_1f
    const/4 v15, 0x2

    if-ne v10, v15, :cond_20

    iget-object v10, v7, Ljn/G;->c:[I

    const v15, 0x8000

    aput v15, v10, v9

    goto :goto_12

    :cond_20
    const/4 v11, 0x3

    const v15, 0x8000

    if-ne v10, v11, :cond_22

    iget-object v10, v7, Ljn/G;->c:[I

    const v11, 0x8006

    aput v11, v10, v9

    goto :goto_12

    :cond_21
    const v15, 0x8000

    iget-object v11, v7, Ljn/G;->c:[I

    add-int/lit8 v10, v10, 0x1

    aput v10, v11, v9

    :cond_22
    :goto_12
    iget v10, v7, Ljn/G;->e:I

    const/4 v11, 0x1

    add-int/2addr v10, v11

    iput v10, v7, Ljn/G;->e:I

    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :goto_13
    mul-int/lit8 v7, v1, 0x2

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_f

    :cond_23
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_14
    iget v7, v0, Ljn/x;->s:I

    if-ge v5, v7, :cond_25

    mul-int/lit8 v7, v5, 0x2

    aget v7, v2, v7

    const/16 v9, 0xff

    if-ne v7, v9, :cond_24

    new-instance v7, Ljn/G;

    add-int v9, v3, v6

    invoke-direct {v7, v9, v1}, Ljn/G;-><init>(II)V

    aput-object v7, v13, v9

    const/4 v9, 0x2

    iput v9, v7, Ljn/G;->e:I

    iget-object v9, v7, Ljn/G;->b:[I

    mul-int/lit8 v10, v6, 0x2

    add-int/2addr v10, v4

    const/4 v11, 0x0

    aput v10, v9, v11

    const/4 v11, 0x1

    add-int/2addr v10, v11

    aput v10, v9, v11

    iget-object v9, v0, Ljn/x;->o:[I

    aget v9, v9, v5

    iput v9, v7, Ljn/G;->d:I

    iget-object v9, v0, Ljn/x;->p:[I

    aget v9, v9, v5

    invoke-virtual {v7, v9}, Ljn/G;->c(I)V

    invoke-virtual {v7, v11}, Ljn/G;->d(I)V

    add-int/lit8 v6, v6, 0x1

    :cond_24
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_25
    iget-object v1, v0, Ljn/x;->h:[I

    const/4 v4, 0x4

    if-eqz v1, :cond_29

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_15
    iget v6, v0, Ljn/x;->f:I

    if-ge v1, v6, :cond_27

    new-instance v6, Ljn/H;

    invoke-direct {v6}, Ljn/H;-><init>()V

    aput-object v6, v14, v1

    iget-object v7, v0, Ljn/x;->h:[I

    mul-int/lit8 v9, v1, 0x4

    aget v10, v7, v9

    add-int/lit8 v11, v9, 0x1

    aget v11, v7, v11

    aget-object v15, v13, v1

    iget v15, v15, Ljn/G;->e:I

    iput v5, v6, Ljn/H;->a:I

    sub-int/2addr v11, v15

    iput v11, v6, Ljn/H;->c:I

    add-int/lit8 v19, v9, 0x2

    aget v8, v7, v19

    iput v8, v6, Ljn/H;->b:I

    const/4 v8, 0x3

    add-int/2addr v9, v8

    aget v7, v7, v9

    iput v7, v6, Ljn/H;->d:I

    if-eqz v11, :cond_26

    iget-object v6, v0, Ljn/x;->i:[F

    add-int/2addr v10, v15

    mul-int/2addr v10, v8

    mul-int/lit8 v7, v5, 0x3

    mul-int/lit8 v8, v11, 0x3

    move-object/from16 v9, v27

    invoke-static {v6, v10, v9, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v11

    goto :goto_16

    :cond_26
    move-object/from16 v9, v27

    :goto_16
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v27, v9

    const/4 v8, 0x6

    goto :goto_15

    :cond_27
    move-object/from16 v9, v27

    iget-object v1, v0, Ljn/x;->k:[I

    iget v5, v0, Ljn/x;->l:I

    mul-int/2addr v5, v4

    move-object/from16 v7, v22

    const/4 v6, 0x0

    invoke-static {v1, v6, v7, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_28
    const/16 v19, 0x1

    goto :goto_1a

    :cond_29
    move-object/from16 v7, v22

    move-object/from16 v9, v27

    const/4 v6, 0x0

    move v1, v6

    move v5, v1

    :goto_17
    iget v8, v0, Ljn/x;->f:I

    if-ge v1, v8, :cond_28

    new-instance v8, Ljn/H;

    invoke-direct {v8}, Ljn/H;-><init>()V

    aput-object v8, v14, v1

    aget-object v10, v13, v1

    iget v10, v10, Ljn/G;->e:I

    iput v6, v8, Ljn/H;->a:I

    iput v6, v8, Ljn/H;->c:I

    iput v5, v8, Ljn/H;->b:I

    add-int/lit8 v11, v10, -0x2

    iput v11, v8, Ljn/H;->d:I

    move v8, v5

    const/4 v5, 0x2

    :goto_18
    if-ge v5, v10, :cond_2c

    mul-int/lit8 v11, v8, 0x4

    aput v6, v7, v11

    add-int/lit8 v6, v11, 0x1

    add-int/lit8 v15, v5, -0x1

    aput v15, v7, v6

    add-int/lit8 v6, v11, 0x2

    aput v5, v7, v6

    const/4 v6, 0x3

    add-int/2addr v11, v6

    aput v4, v7, v11

    const/4 v15, 0x2

    if-ne v5, v15, :cond_2a

    const/16 v17, 0x4

    const/16 v19, 0x1

    or-int/lit8 v17, v17, 0x1

    aput v17, v7, v11

    goto :goto_19

    :cond_2a
    const/16 v19, 0x1

    :goto_19
    add-int/lit8 v4, v10, -0x1

    if-ne v5, v4, :cond_2b

    aget v4, v7, v11

    or-int/lit8 v4, v4, 0x10

    aput v4, v7, v11

    :cond_2b
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x4

    const/4 v6, 0x0

    goto :goto_18

    :cond_2c
    const/4 v6, 0x3

    const/4 v15, 0x2

    const/16 v19, 0x1

    add-int/lit8 v1, v1, 0x1

    move v5, v8

    const/4 v4, 0x4

    const/4 v6, 0x0

    goto :goto_17

    :goto_1a
    iget-boolean v1, v0, Ljn/x;->E:Z

    if-eqz v1, :cond_2d

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljn/w;->c(Ljn/x;[Ljn/a;)I

    move-result v4

    move-object/from16 v5, v25

    iput v4, v5, Ljn/r;->m:I

    goto :goto_1b

    :cond_2d
    move-object/from16 v1, v23

    move-object/from16 v5, v25

    :goto_1b
    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_1c
    iget v8, v0, Ljn/x;->s:I

    if-ge v4, v8, :cond_31

    mul-int/lit8 v8, v4, 0x2

    aget v10, v2, v8

    const/16 v11, 0xff

    if-ne v10, v11, :cond_30

    new-instance v10, Ljn/F;

    invoke-direct {v10}, Ljn/F;-><init>()V

    aput-object v10, v24, v6

    add-int v15, v3, v6

    iput v15, v10, Ljn/F;->c:I

    mul-int/lit8 v15, v4, 0x6

    iget-object v11, v0, Ljn/x;->m:[F

    move/from16 v17, v3

    iget-object v3, v10, Ljn/F;->a:[F

    move-object/from16 v23, v1

    move-object/from16 v22, v7

    const/4 v1, 0x0

    const/4 v7, 0x6

    invoke-static {v11, v15, v3, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v0, Ljn/x;->n:[F

    aget v3, v3, v4

    iput v3, v10, Ljn/F;->b:F

    iget-object v3, v0, Ljn/x;->q:[I

    aget v3, v3, v4

    if-eqz v3, :cond_2e

    move/from16 v3, v19

    goto :goto_1d

    :cond_2e
    move v3, v1

    :goto_1d
    iput v3, v10, Ljn/F;->d:I

    add-int/lit8 v8, v8, 0x1

    aget v3, v2, v8

    iput v3, v10, Ljn/F;->e:I

    iget-object v3, v0, Ljn/x;->r:[I

    if-eqz v3, :cond_2f

    aget v3, v3, v4

    iput v3, v10, Ljn/F;->f:I

    :cond_2f
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    :cond_30
    move-object/from16 v23, v1

    move/from16 v17, v3

    move-object/from16 v22, v7

    const/4 v1, 0x0

    const/4 v7, 0x6

    :goto_1e
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v17

    move-object/from16 v7, v22

    move-object/from16 v1, v23

    goto :goto_1c

    :cond_31
    move-object/from16 v23, v1

    move-object/from16 v22, v7

    new-instance v0, Ljn/q;

    invoke-direct {v0}, Ljn/q;-><init>()V

    iput-object v5, v0, Ljn/q;->a:Ljn/r;

    iput-object v12, v0, Ljn/q;->b:[F

    iput-object v13, v0, Ljn/q;->c:[Ljn/G;

    iput-object v14, v0, Ljn/q;->d:[Ljn/H;

    iput-object v9, v0, Ljn/q;->e:[F

    move-object/from16 v1, v22

    iput-object v1, v0, Ljn/q;->f:[I

    move-object/from16 v1, v23

    iput-object v1, v0, Ljn/q;->g:[Ljn/a;

    move-object/from16 v1, v24

    iput-object v1, v0, Ljn/q;->h:[Ljn/F;

    return-object v0

    :cond_32
    :goto_1f
    return-object v2
.end method

.method public static e(III)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    move v0, p1

    move p1, p0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-le p2, p0, :cond_1

    const/4 p1, 0x2

    :cond_1
    return p1
.end method

.method public static f([Ljn/w$b;IIII[Ljn/a;)I
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "items",
            "nitems",
            "imin",
            "imax",
            "curNode",
            "nodes"
        }
    .end annotation

    move-object v6, p0

    move v2, p2

    sub-int v0, p3, v2

    new-instance v7, Ljn/a;

    invoke-direct {v7}, Ljn/a;-><init>()V

    add-int/lit8 v4, p4, 0x1

    aput-object v7, p5, p4

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    iget-object v0, v7, Ljn/a;->a:[I

    aget-object v2, v6, v2

    iget-object v6, v2, Ljn/w$b;->a:[I

    aget v8, v6, v3

    aput v8, v0, v3

    aget v8, v6, v5

    aput v8, v0, v5

    aget v6, v6, v1

    aput v6, v0, v1

    iget-object v0, v7, Ljn/a;->b:[I

    iget-object v6, v2, Ljn/w$b;->b:[I

    aget v8, v6, v3

    aput v8, v0, v3

    aget v3, v6, v5

    aput v3, v0, v5

    aget v3, v6, v1

    aput v3, v0, v1

    iget v0, v2, Ljn/w$b;->c:I

    iput v0, v7, Ljn/a;->c:I

    goto :goto_1

    :cond_0
    invoke-static {p0, p1, p2, p3}, Ljn/w;->a([Ljn/w$b;III)[[I

    move-result-object v8

    aget-object v9, v8, v3

    iput-object v9, v7, Ljn/a;->a:[I

    aget-object v8, v8, v5

    iput-object v8, v7, Ljn/a;->b:[I

    aget v10, v8, v3

    aget v3, v9, v3

    sub-int/2addr v10, v3

    aget v3, v8, v5

    aget v11, v9, v5

    sub-int/2addr v3, v11

    aget v8, v8, v1

    aget v9, v9, v1

    sub-int/2addr v8, v9

    invoke-static {v10, v3, v8}, Ljn/w;->e(III)I

    move-result v3

    const/4 v8, 0x0

    if-nez v3, :cond_1

    add-int v3, v2, v0

    new-instance v5, Ljn/w$c;

    invoke-direct {v5, v8}, Ljn/w$c;-><init>(Ljn/w$a;)V

    invoke-static {p0, p2, v3, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    goto :goto_0

    :cond_1
    if-ne v3, v5, :cond_2

    add-int v3, v2, v0

    new-instance v5, Ljn/w$d;

    invoke-direct {v5, v8}, Ljn/w$d;-><init>(Ljn/w$a;)V

    invoke-static {p0, p2, v3, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    goto :goto_0

    :cond_2
    add-int v3, v2, v0

    new-instance v5, Ljn/w$e;

    invoke-direct {v5, v8}, Ljn/w$e;-><init>(Ljn/w$a;)V

    invoke-static {p0, p2, v3, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    :goto_0
    div-int/2addr v0, v1

    add-int v8, v2, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v8

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Ljn/w;->f([Ljn/w$b;IIII[Ljn/a;)I

    move-result v4

    move v2, v8

    move v3, p3

    invoke-static/range {v0 .. v5}, Ljn/w;->f([Ljn/w$b;IIII[Ljn/a;)I

    move-result v4

    sub-int v0, v4, p4

    neg-int v0, v0

    iput v0, v7, Ljn/a;->c:I

    :goto_1
    return v4
.end method

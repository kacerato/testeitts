.class public Lqn/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqn/h$d;,
        Lqn/h$c;,
        Lqn/h$e;,
        Lqn/h$b;
    }
.end annotation


# static fields
.field public static final b:I = 0x0

.field public static final c:I = 0x3f

.field public static final d:I = 0xffff

.field public static final e:I = 0x100


# instance fields
.field public final a:Lrn/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lrn/a;

    invoke-direct {v0}, Lrn/a;-><init>()V

    iput-object v0, p0, Lqn/h;->a:Lrn/a;

    return-void
.end method

.method public static u(Lqn/l;IIII)Ljn/U;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "layer",
            "x",
            "y",
            "z",
            "walkableClimb"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqn/l;",
            "IIII)",
            "Ljn/U<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lqn/l;->a:Lqn/m;

    iget v2, v1, Lqn/m;->j:I

    iget v1, v1, Lqn/m;->k:I

    const/16 v4, 0xf

    const/16 v5, 0xff

    move v12, v5

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    :goto_0
    const/4 v13, 0x4

    if-gtz v8, :cond_4

    const/4 v14, -0x1

    :goto_1
    if-gtz v14, :cond_3

    add-int v15, p1, v14

    add-int v3, p3, v8

    if-ltz v15, :cond_1

    if-ltz v3, :cond_1

    if-ge v15, v2, :cond_1

    if-ge v3, v1, :cond_1

    mul-int/2addr v3, v2

    add-int/2addr v15, v3

    iget-object v3, v0, Lqn/l;->c:[S

    aget-short v3, v3, v15

    sub-int v16, v3, p2

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v7

    move/from16 v6, p4

    if-gt v7, v6, :cond_2

    iget-object v7, v0, Lqn/l;->d:[S

    aget-short v7, v7, v15

    if-eqz v7, :cond_2

    int-to-char v3, v3

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v7, v0, Lqn/l;->e:[S

    aget-short v7, v7, v15

    shr-int/2addr v7, v13

    and-int/2addr v4, v7

    if-eq v12, v5, :cond_0

    iget-object v7, v0, Lqn/l;->f:[S

    aget-short v7, v7, v15

    if-eq v12, v7, :cond_0

    const/4 v10, 0x0

    :cond_0
    iget-object v7, v0, Lqn/l;->f:[S

    aget-short v7, v7, v15

    add-int/lit8 v9, v9, 0x1

    move v11, v3

    move v12, v7

    goto :goto_2

    :cond_1
    move/from16 v6, p4

    :cond_2
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    move/from16 v6, p4

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3
    if-ge v0, v13, :cond_6

    const/4 v2, 0x1

    shl-int v3, v2, v0

    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    add-int/lit8 v1, v1, 0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x1

    if-le v9, v2, :cond_7

    if-ne v1, v2, :cond_7

    if-eqz v10, :cond_7

    move v3, v2

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    new-instance v0, Ljn/U;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljn/U;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final A([IIIII)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "verts",
            "a",
            "b",
            "c",
            "d"
        }
    .end annotation

    invoke-virtual/range {p0 .. p5}, Lqn/h;->B([IIIII)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lqn/h;->e([IIII)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1, p2, p3, p5}, Lqn/h;->e([IIII)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1, p4, p5, p2}, Lqn/h;->e([IIII)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0, p1, p4, p5, p3}, Lqn/h;->e([IIII)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public final B([IIIII)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "verts",
            "a",
            "b",
            "c",
            "d"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lqn/h;->l([IIII)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2, p3, p5}, Lqn/h;->l([IIII)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p4, p5, p2}, Lqn/h;->l([IIII)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p4, p5, p3}, Lqn/h;->l([IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lqn/h;->D([IIII)Z

    move-result v0

    invoke-virtual {p0, p1, p2, p3, p5}, Lqn/h;->D([IIII)Z

    move-result v2

    xor-int/2addr v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p4, p5, p2}, Lqn/h;->D([IIII)Z

    move-result p2

    invoke-virtual {p0, p1, p4, p5, p3}, Lqn/h;->D([IIII)Z

    move-result p1

    xor-int/2addr p1, p2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public C(Lqn/l;III)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "layer",
            "ia",
            "ib",
            "walkableClimb"
        }
    .end annotation

    iget-object v0, p1, Lqn/l;->d:[S

    aget-short v1, v0, p2

    aget-short v0, v0, p3

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    iget-object p1, p1, Lqn/l;->c:[S

    aget-short p2, p1, p2

    aget-short p1, p1, p3

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le p1, p4, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final D([IIII)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "verts",
            "a",
            "b",
            "c"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lqn/h;->d([IIII)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final E([IIII)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "verts",
            "a",
            "b",
            "c"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lqn/h;->d([IIII)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public F(Lqn/l;[FFF[F[FI)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "layer",
            "orig",
            "cs",
            "ch",
            "bmin",
            "bmax",
            "areaId"
        }
    .end annotation

    move-object v0, p1

    iget-object v1, v0, Lqn/l;->a:Lqn/m;

    iget v2, v1, Lqn/m;->j:I

    iget v1, v1, Lqn/m;->k:I

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v4, v3, p3

    div-float v3, v3, p4

    const/4 v5, 0x0

    aget v6, p5, v5

    aget v7, p2, v5

    sub-float/2addr v6, v7

    mul-float/2addr v6, v4

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    const/4 v7, 0x1

    aget v8, p5, v7

    aget v9, p2, v7

    sub-float/2addr v8, v9

    mul-float/2addr v8, v3

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    const/4 v9, 0x2

    aget v10, p5, v9

    aget v11, p2, v9

    sub-float/2addr v10, v11

    mul-float/2addr v10, v4

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    aget v11, p6, v5

    aget v12, p2, v5

    sub-float/2addr v11, v12

    mul-float/2addr v11, v4

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v11, v11

    aget v12, p6, v7

    aget v13, p2, v7

    sub-float/2addr v12, v13

    mul-float/2addr v12, v3

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v3, v12

    aget v12, p6, v9

    aget v9, p2, v9

    sub-float/2addr v12, v9

    mul-float/2addr v12, v4

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v4, v12

    if-gez v11, :cond_0

    return-void

    :cond_0
    if-lt v6, v2, :cond_1

    return-void

    :cond_1
    if-gez v4, :cond_2

    return-void

    :cond_2
    if-lt v10, v1, :cond_3

    return-void

    :cond_3
    if-gez v6, :cond_4

    move v6, v5

    :cond_4
    if-lt v11, v2, :cond_5

    add-int/lit8 v11, v2, -0x1

    :cond_5
    if-gez v10, :cond_6

    goto :goto_0

    :cond_6
    move v5, v10

    :goto_0
    if-lt v4, v1, :cond_7

    add-int/lit8 v4, v1, -0x1

    :cond_7
    :goto_1
    if-gt v5, v4, :cond_b

    move v1, v6

    :goto_2
    if-gt v1, v11, :cond_a

    iget-object v7, v0, Lqn/l;->c:[S

    mul-int v9, v5, v2

    add-int/2addr v9, v1

    aget-short v7, v7, v9

    if-lt v7, v8, :cond_8

    if-le v7, v3, :cond_9

    :cond_8
    move/from16 v10, p7

    goto :goto_3

    :cond_9
    iget-object v7, v0, Lqn/l;->d:[S

    move/from16 v10, p7

    int-to-short v12, v10

    aput-short v12, v7, v9

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    move/from16 v10, p7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_b
    return-void
.end method

.method public G(Lqn/l;[FFF[F[F[FI)V
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "layer",
            "orig",
            "cs",
            "ch",
            "center",
            "extents",
            "rotAux",
            "areaId"
        }
    .end annotation

    move-object/from16 v0, p1

    iget-object v1, v0, Lqn/l;->a:Lqn/m;

    iget v2, v1, Lqn/m;->j:I

    iget v1, v1, Lqn/m;->k:I

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v4, v3, p3

    div-float v3, v3, p4

    const/4 v5, 0x0

    aget v6, p5, v5

    aget v7, p2, v5

    sub-float/2addr v6, v7

    mul-float/2addr v6, v4

    const/4 v7, 0x2

    aget v8, p5, v7

    aget v9, p2, v7

    sub-float/2addr v8, v9

    mul-float/2addr v8, v4

    aget v9, p6, v5

    aget v10, p6, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const v10, 0x3fb47ae1    # 1.41f

    mul-float/2addr v9, v10

    mul-float/2addr v9, v4

    sub-float v10, v6, v9

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    add-float v11, v6, v9

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v11, v11

    sub-float v12, v8, v9

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v12, v12

    add-float/2addr v9, v8

    float-to-double v13, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v9, v13

    const/4 v13, 0x1

    aget v14, p5, v13

    aget v15, p6, v13

    sub-float/2addr v14, v15

    aget v15, p2, v13

    sub-float/2addr v14, v15

    mul-float/2addr v14, v3

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v14, v14

    aget v15, p5, v13

    aget v16, p6, v13

    add-float v15, v15, v16

    aget v16, p2, v13

    sub-float v15, v15, v16

    mul-float/2addr v15, v3

    move/from16 p4, v8

    float-to-double v7, v15

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v3, v7

    if-gez v11, :cond_0

    return-void

    :cond_0
    if-lt v10, v2, :cond_1

    return-void

    :cond_1
    if-gez v9, :cond_2

    return-void

    :cond_2
    if-lt v12, v1, :cond_3

    return-void

    :cond_3
    if-gez v10, :cond_4

    move v10, v5

    :cond_4
    if-lt v11, v2, :cond_5

    add-int/lit8 v11, v2, -0x1

    :cond_5
    if-gez v12, :cond_6

    move v12, v5

    :cond_6
    if-lt v9, v1, :cond_7

    add-int/lit8 v9, v1, -0x1

    :cond_7
    aget v1, p6, v5

    mul-float/2addr v1, v4

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v1, v7

    const/4 v8, 0x2

    aget v8, p6, v8

    mul-float/2addr v8, v4

    add-float/2addr v8, v7

    :goto_0
    if-gt v12, v9, :cond_d

    move v4, v10

    :goto_1
    if-gt v4, v11, :cond_c

    int-to-float v7, v4

    sub-float/2addr v7, v6

    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v7, v15

    int-to-float v5, v12

    sub-float v5, v5, p4

    mul-float/2addr v5, v15

    aget v15, p7, v13

    mul-float v16, v15, v7

    const/16 v17, 0x0

    aget v18, p7, v17

    mul-float v19, v18, v5

    add-float v16, v16, v19

    cmpl-float v19, v16, v1

    if-gtz v19, :cond_8

    neg-float v13, v1

    cmpg-float v13, v16, v13

    if-gez v13, :cond_9

    :cond_8
    :goto_2
    move/from16 v13, p8

    goto :goto_3

    :cond_9
    mul-float/2addr v15, v5

    mul-float v18, v18, v7

    sub-float v15, v15, v18

    cmpl-float v5, v15, v8

    if-gtz v5, :cond_8

    neg-float v5, v8

    cmpg-float v5, v15, v5

    if-gez v5, :cond_a

    goto :goto_2

    :cond_a
    iget-object v5, v0, Lqn/l;->c:[S

    mul-int v7, v12, v2

    add-int/2addr v7, v4

    aget-short v5, v5, v7

    if-lt v5, v14, :cond_8

    if-le v5, v3, :cond_b

    goto :goto_2

    :cond_b
    iget-object v5, v0, Lqn/l;->d:[S

    move/from16 v13, p8

    int-to-short v15, v13

    aput-short v15, v5, v7

    :goto_3
    add-int/lit8 v4, v4, 0x1

    move/from16 v5, v17

    const/4 v13, 0x1

    goto :goto_1

    :cond_c
    move/from16 v13, p8

    move/from16 v17, v5

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x1

    goto :goto_0

    :cond_d
    return-void
.end method

.method public H(Lqn/l;[FFF[FFFI)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "layer",
            "orig",
            "cs",
            "ch",
            "pos",
            "radius",
            "height",
            "areaId"
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    aget v2, p5, v1

    sub-float v3, v2, p6

    const/4 v4, 0x1

    aget v5, p5, v4

    const/4 v6, 0x2

    aget v7, p5, v6

    sub-float v8, v7, p6

    const/4 v9, 0x3

    new-array v10, v9, [F

    aput v3, v10, v1

    aput v5, v10, v4

    aput v8, v10, v6

    add-float v2, v2, p6

    add-float v5, v5, p7

    add-float v7, v7, p6

    new-array v3, v9, [F

    aput v2, v3, v1

    aput v5, v3, v4

    aput v7, v3, v6

    div-float v2, p6, p3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v2, v5

    invoke-static {v2}, Ljn/g;->s(F)F

    move-result v2

    iget-object v7, v0, Lqn/l;->a:Lqn/m;

    iget v8, v7, Lqn/m;->j:I

    iget v7, v7, Lqn/m;->k:I

    const/high16 v9, 0x3f800000    # 1.0f

    div-float v11, v9, p3

    div-float v9, v9, p4

    aget v12, p5, v1

    aget v13, p2, v1

    sub-float/2addr v12, v13

    mul-float/2addr v12, v11

    aget v14, p5, v6

    aget v15, p2, v6

    sub-float/2addr v14, v15

    mul-float/2addr v14, v11

    aget v15, v10, v1

    sub-float/2addr v15, v13

    mul-float/2addr v15, v11

    move/from16 p6, v2

    float-to-double v1, v15

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    aget v2, v10, v4

    aget v15, p2, v4

    sub-float/2addr v2, v15

    mul-float/2addr v2, v9

    move/from16 p3, v14

    float-to-double v13, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v2, v13

    aget v10, v10, v6

    aget v13, p2, v6

    sub-float/2addr v10, v13

    mul-float/2addr v10, v11

    float-to-double v13, v10

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v10, v13

    const/4 v13, 0x0

    aget v14, v3, v13

    aget v15, p2, v13

    sub-float/2addr v14, v15

    mul-float/2addr v14, v11

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v14, v14

    aget v15, v3, v4

    aget v16, p2, v4

    sub-float v15, v15, v16

    mul-float/2addr v15, v9

    float-to-double v4, v15

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    aget v3, v3, v6

    aget v5, p2, v6

    sub-float/2addr v3, v5

    mul-float/2addr v3, v11

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v3, v5

    if-gez v14, :cond_0

    return-void

    :cond_0
    if-lt v1, v8, :cond_1

    return-void

    :cond_1
    if-gez v3, :cond_2

    return-void

    :cond_2
    if-lt v10, v7, :cond_3

    return-void

    :cond_3
    if-gez v1, :cond_4

    move v1, v13

    :cond_4
    const/4 v5, 0x1

    if-lt v14, v8, :cond_5

    add-int/lit8 v14, v8, -0x1

    :cond_5
    if-gez v10, :cond_6

    move v10, v13

    :cond_6
    if-lt v3, v7, :cond_7

    add-int/lit8 v3, v7, -0x1

    :cond_7
    :goto_0
    if-gt v10, v3, :cond_c

    move v5, v1

    :goto_1
    if-gt v5, v14, :cond_b

    int-to-float v6, v5

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    sub-float/2addr v6, v12

    int-to-float v11, v10

    add-float/2addr v11, v7

    sub-float v11, v11, p3

    mul-float/2addr v6, v6

    mul-float/2addr v11, v11

    add-float/2addr v6, v11

    cmpl-float v6, v6, p6

    if-lez v6, :cond_9

    :cond_8
    :goto_2
    move/from16 v13, p8

    :goto_3
    const/4 v6, 0x1

    goto :goto_4

    :cond_9
    iget-object v6, v0, Lqn/l;->c:[S

    mul-int v11, v10, v8

    add-int/2addr v11, v5

    aget-short v6, v6, v11

    if-lt v6, v2, :cond_8

    if-le v6, v4, :cond_a

    goto :goto_2

    :cond_a
    iget-object v6, v0, Lqn/l;->d:[S

    move/from16 v13, p8

    int-to-short v15, v13

    aput-short v15, v6, v11

    goto :goto_3

    :goto_4
    add-int/2addr v5, v6

    goto :goto_1

    :cond_b
    move/from16 v13, p8

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    add-int/2addr v10, v6

    goto :goto_0

    :cond_c
    return-void
.end method

.method public final I([IIIIII)V
    .locals 8
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
            "polys",
            "pa",
            "pb",
            "ea",
            "eb",
            "maxVertsPerPoly"
        }
    .end annotation

    mul-int/lit8 v0, p6, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, p1, p2, p6}, Lqn/h;->p([III)I

    move-result v1

    invoke-virtual {p0, p1, p3, p6}, Lqn/h;->p([III)I

    move-result v2

    const v3, 0xffff

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    add-int/lit8 v6, v1, -0x1

    if-ge v4, v6, :cond_0

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v7, p4, 0x1

    add-int/2addr v7, v4

    rem-int/2addr v7, v1

    add-int/2addr v7, p2

    aget v7, p1, v7

    aput v7, v0, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_0

    :cond_0
    move p4, v3

    :goto_1
    add-int/lit8 v1, v2, -0x1

    if-ge p4, v1, :cond_1

    add-int/lit8 v1, v5, 0x1

    add-int/lit8 v4, p5, 0x1

    add-int/2addr v4, p4

    rem-int/2addr v4, v2

    add-int/2addr v4, p3

    aget v4, p1, v4

    aput v4, v0, v5

    add-int/lit8 p4, p4, 0x1

    move v5, v1

    goto :goto_1

    :cond_1
    invoke-static {v0, v3, p1, p2, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final J(II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "n"
        }
    .end annotation

    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final K(IIII)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "amin",
            "amax",
            "bmin",
            "bmax"
        }
    .end annotation

    if-ge p1, p4, :cond_1

    if-gt p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final L(II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "n"
        }
    .end annotation

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p2, -0x1

    :goto_0
    return p1
.end method

.method public final M(ILjava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "arr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public final N(ILjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "arr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public final O(Lqn/q;II)V
    .locals 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mesh",
            "rem",
            "maxTris"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v0, p2

    move/from16 v9, p3

    iget v10, v8, Lqn/q;->a:I

    const/4 v1, 0x0

    :goto_0
    iget v2, v8, Lqn/q;->c:I

    const/4 v12, 0x2

    if-ge v1, v2, :cond_1

    mul-int v2, v1, v10

    mul-int/2addr v2, v12

    iget-object v3, v8, Lqn/q;->e:[I

    invoke-virtual {v7, v3, v2, v10}, Lqn/h;->p([III)I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    iget-object v5, v8, Lqn/q;->e:[I

    add-int v6, v2, v4

    aget v5, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    iget v6, v8, Lqn/q;->c:I

    if-ge v4, v6, :cond_7

    mul-int v6, v4, v10

    mul-int/2addr v6, v12

    iget-object v15, v8, Lqn/q;->e:[I

    invoke-virtual {v7, v15, v6, v10}, Lqn/h;->p([III)I

    move-result v15

    const/4 v11, 0x0

    const/16 v17, 0x0

    :goto_3
    if-ge v11, v15, :cond_3

    iget-object v13, v8, Lqn/q;->e:[I

    add-int v18, v6, v11

    aget v13, v13, v18

    if-ne v13, v0, :cond_2

    const/16 v17, 0x1

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_3
    if-eqz v17, :cond_6

    add-int/lit8 v11, v15, -0x1

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v15, :cond_5

    iget-object v12, v8, Lqn/q;->e:[I

    add-int v18, v6, v13

    aget v14, v12, v18

    if-eq v14, v0, :cond_4

    add-int/2addr v11, v6

    aget v11, v12, v11

    if-eq v11, v0, :cond_4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v11, v8, Lqn/q;->e:[I

    aget v11, v11, v18

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v11, v8, Lqn/q;->g:[I

    aget v11, v11, v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    :cond_4
    add-int/lit8 v11, v13, 0x1

    const/4 v12, 0x2

    move/from16 v23, v13

    move v13, v11

    move/from16 v11, v23

    goto :goto_4

    :cond_5
    iget v11, v8, Lqn/q;->c:I

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    mul-int/2addr v11, v10

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    iget-object v12, v8, Lqn/q;->e:[I

    invoke-static {v12, v11, v12, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v11, v8, Lqn/q;->e:[I

    add-int v12, v6, v10

    mul-int/lit8 v13, v10, 0x2

    add-int/2addr v6, v13

    const v13, 0xffff

    invoke-static {v11, v12, v6, v13}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v6, v8, Lqn/q;->g:[I

    iget v11, v8, Lqn/q;->c:I

    add-int/lit8 v12, v11, -0x1

    aget v12, v6, v12

    aput v12, v6, v4

    const/4 v6, 0x1

    sub-int/2addr v11, v6

    iput v11, v8, Lqn/q;->c:I

    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    :cond_6
    const/4 v6, 0x1

    :goto_5
    add-int/2addr v4, v6

    const/4 v12, 0x2

    goto/16 :goto_2

    :cond_7
    move v4, v0

    :goto_6
    iget v6, v8, Lqn/q;->b:I

    if-ge v4, v6, :cond_8

    iget-object v6, v8, Lqn/q;->d:[I

    mul-int/lit8 v11, v4, 0x3

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v12, v4, 0x3

    aget v13, v6, v12

    aput v13, v6, v11

    add-int/lit8 v13, v11, 0x1

    add-int/lit8 v14, v12, 0x1

    aget v14, v6, v14

    aput v14, v6, v13

    const/4 v13, 0x2

    add-int/2addr v11, v13

    add-int/2addr v12, v13

    aget v12, v6, v12

    aput v12, v6, v11

    goto :goto_6

    :cond_8
    const/4 v4, 0x1

    const/4 v13, 0x2

    sub-int/2addr v6, v4

    iput v6, v8, Lqn/q;->b:I

    const/4 v4, 0x0

    :goto_7
    iget v6, v8, Lqn/q;->c:I

    if-ge v4, v6, :cond_b

    mul-int v6, v4, v10

    mul-int/2addr v6, v13

    iget-object v11, v8, Lqn/q;->e:[I

    invoke-virtual {v7, v11, v6, v10}, Lqn/h;->p([III)I

    move-result v11

    const/4 v12, 0x0

    :goto_8
    if-ge v12, v11, :cond_a

    iget-object v13, v8, Lqn/q;->e:[I

    add-int v14, v6, v12

    aget v15, v13, v14

    if-le v15, v0, :cond_9

    add-int/lit8 v15, v15, -0x1

    aput v15, v13, v14

    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_a
    add-int/lit8 v4, v4, 0x1

    const/4 v13, 0x2

    goto :goto_7

    :cond_b
    const/4 v4, 0x0

    :goto_9
    if-ge v4, v5, :cond_e

    mul-int/lit8 v6, v4, 0x3

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v11, v0, :cond_c

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v6, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v6, v6, 0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v11, v0, :cond_d

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v6, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_e
    if-nez v5, :cond_f

    return-void

    :cond_f
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v7, v0, v2}, Lqn/h;->M(ILjava/util/List;)I

    move-result v0

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v7, v4, v3}, Lqn/h;->M(ILjava/util/List;)I

    :goto_a
    if-eqz v5, :cond_15

    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_b
    if-ge v6, v5, :cond_13

    mul-int/lit8 v12, v6, 0x3

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/lit8 v14, v12, 0x1

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/lit8 v4, v12, 0x2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move/from16 v18, v10

    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v15, :cond_10

    invoke-virtual {v7, v13, v2}, Lqn/h;->N(ILjava/util/List;)I

    move-result v0

    invoke-virtual {v7, v9, v3}, Lqn/h;->N(ILjava/util/List;)I

    :goto_c
    const/4 v9, 0x1

    goto :goto_d

    :cond_10
    add-int/lit8 v10, v0, -0x1

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v13, :cond_11

    invoke-virtual {v7, v15, v2}, Lqn/h;->M(ILjava/util/List;)I

    move-result v0

    invoke-virtual {v7, v9, v3}, Lqn/h;->M(ILjava/util/List;)I

    goto :goto_c

    :cond_11
    const/4 v9, 0x0

    :goto_d
    if-eqz v9, :cond_12

    add-int/lit8 v9, v5, -0x1

    const/4 v10, 0x3

    mul-int/2addr v9, v10

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-interface {v1, v12, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x1

    add-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v14, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x2

    add-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v4, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, -0x1

    const/4 v4, 0x1

    const/4 v11, 0x1

    goto :goto_e

    :cond_12
    const/4 v4, 0x1

    :goto_e
    add-int/2addr v6, v4

    move/from16 v9, p3

    move/from16 v10, v18

    goto/16 :goto_b

    :cond_13
    move/from16 v18, v10

    if-nez v11, :cond_14

    goto :goto_f

    :cond_14
    move/from16 v9, p3

    move/from16 v10, v18

    goto/16 :goto_a

    :cond_15
    move/from16 v18, v10

    :goto_f
    mul-int/lit8 v1, v0, 0x3

    new-array v1, v1, [I

    mul-int/lit8 v4, v0, 0x4

    new-array v4, v4, [I

    new-array v5, v0, [I

    const/4 v6, 0x0

    :goto_10
    if-ge v6, v0, :cond_16

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    mul-int/lit8 v10, v6, 0x4

    iget-object v11, v8, Lqn/q;->d:[I

    const/4 v12, 0x3

    mul-int/2addr v9, v12

    aget v12, v11, v9

    aput v12, v4, v10

    add-int/lit8 v12, v10, 0x1

    add-int/lit8 v13, v9, 0x1

    aget v13, v11, v13

    aput v13, v4, v12

    add-int/lit8 v12, v10, 0x2

    const/4 v13, 0x2

    add-int/2addr v9, v13

    aget v9, v11, v9

    aput v9, v4, v12

    const/4 v9, 0x3

    add-int/2addr v10, v9

    const/4 v9, 0x0

    aput v9, v4, v10

    aput v6, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_16
    invoke-virtual {v7, v0, v4, v5, v1}, Lqn/h;->Q(I[I[I[I)I

    move-result v0

    if-gez v0, :cond_17

    neg-int v0, v0

    :cond_17
    mul-int v10, v0, v18

    new-array v9, v10, [I

    new-array v11, v0, [I

    const/4 v4, 0x0

    const v5, 0xffff

    invoke-static {v9, v4, v10, v5}, Ljava/util/Arrays;->fill([IIII)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_11
    if-ge v4, v0, :cond_19

    mul-int/lit8 v6, v4, 0x3

    aget v10, v1, v6

    add-int/lit8 v12, v6, 0x1

    aget v13, v1, v12

    if-eq v10, v13, :cond_18

    add-int/lit8 v14, v6, 0x2

    aget v15, v1, v14

    if-eq v10, v15, :cond_18

    if-eq v13, v15, :cond_18

    mul-int v13, v5, v18

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v9, v13

    add-int/lit8 v10, v13, 0x1

    aget v12, v1, v12

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aput v12, v9, v10

    const/4 v10, 0x2

    add-int/2addr v13, v10

    aget v10, v1, v14

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v9, v13

    aget v6, v1, v6

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v11, v5

    add-int/lit8 v5, v5, 0x1

    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_19
    if-nez v5, :cond_1a

    return-void

    :cond_1a
    move/from16 v10, v18

    const/4 v0, 0x3

    if-le v10, v0, :cond_1f

    move v12, v5

    :goto_12
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    :goto_13
    add-int/lit8 v14, v12, -0x1

    if-ge v6, v14, :cond_1d

    mul-int v14, v6, v10

    add-int/lit8 v15, v6, 0x1

    move/from16 v18, v1

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v13

    move v5, v15

    move v13, v0

    :goto_14
    if-ge v5, v12, :cond_1c

    mul-int v3, v5, v10

    iget-object v4, v8, Lqn/q;->d:[I

    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v14

    move/from16 v22, v5

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lqn/h;->y([III[II)[I

    move-result-object v0

    const/16 v16, 0x0

    aget v1, v0, v16

    const/4 v2, 0x1

    aget v3, v0, v2

    const/4 v2, 0x2

    aget v0, v0, v2

    if-le v1, v13, :cond_1b

    move/from16 v20, v0

    move v13, v1

    move/from16 v19, v3

    move/from16 v18, v6

    move/from16 v21, v22

    :cond_1b
    add-int/lit8 v5, v22, 0x1

    goto :goto_14

    :cond_1c
    const/16 v16, 0x0

    move v0, v13

    move v6, v15

    move/from16 v1, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v13, v21

    goto :goto_13

    :cond_1d
    const/16 v16, 0x0

    if-lez v0, :cond_1e

    mul-int v2, v1, v10

    mul-int v15, v13, v10

    move-object/from16 v0, p0

    move-object v1, v9

    move v3, v15

    move v6, v10

    invoke-virtual/range {v0 .. v6}, Lqn/h;->I([IIIIII)V

    mul-int v0, v14, v10

    invoke-static {v9, v0, v9, v15, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget v0, v11, v14

    aput v0, v11, v13

    add-int/lit8 v12, v12, -0x1

    goto :goto_12

    :cond_1e
    move v5, v12

    goto :goto_15

    :cond_1f
    const/16 v16, 0x0

    :goto_15
    move/from16 v0, v16

    :goto_16
    if-ge v0, v5, :cond_23

    iget v1, v8, Lqn/q;->c:I

    move/from16 v2, p3

    if-lt v1, v2, :cond_20

    goto :goto_18

    :cond_20
    mul-int/2addr v1, v10

    const/4 v3, 0x2

    mul-int/2addr v1, v3

    iget-object v4, v8, Lqn/q;->e:[I

    mul-int/lit8 v6, v10, 0x2

    add-int/2addr v6, v1

    const v12, 0xffff

    invoke-static {v4, v1, v6, v12}, Ljava/util/Arrays;->fill([IIII)V

    move/from16 v4, v16

    :goto_17
    if-ge v4, v10, :cond_21

    iget-object v6, v8, Lqn/q;->e:[I

    add-int v13, v1, v4

    mul-int v14, v0, v10

    add-int/2addr v14, v4

    aget v14, v9, v14

    aput v14, v6, v13

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_21
    iget-object v1, v8, Lqn/q;->g:[I

    iget v4, v8, Lqn/q;->c:I

    aget v6, v11, v0

    aput v6, v1, v4

    const/4 v1, 0x1

    add-int/2addr v4, v1

    iput v4, v8, Lqn/q;->c:I

    if-gt v4, v2, :cond_22

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_22
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Buffer too small"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    :goto_18
    return-void
.end method

.method public final P(Lqn/h$e;F)V
    .locals 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cont",
            "maxError"
        }
    .end annotation

    move-object/from16 v0, p1

    iget-object v1, v0, Lqn/h$e;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, v0, Lqn/h$e;->b:I

    if-ge v2, v3, :cond_1

    add-int/lit8 v4, v2, 0x1

    rem-int v3, v4, v3

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x3

    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x3

    iget-object v6, v0, Lqn/h$e;->a:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v6, v0, Lqn/h$e;->a:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v3, v5, :cond_0

    iget-object v3, v0, Lqn/h$e;->c:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lqn/h$e;->b()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_7

    iget-object v2, v0, Lqn/h$e;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v5, v0, Lqn/h$e;->a:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v0, Lqn/h$e;->a:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v0, Lqn/h$e;->a:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v9, v1

    move v10, v9

    const/4 v8, 0x1

    :goto_1
    iget v11, v0, Lqn/h$e;->b:I

    if-ge v8, v11, :cond_6

    iget-object v11, v0, Lqn/h$e;->a:Ljava/util/List;

    mul-int/lit8 v12, v8, 0x4

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v13, v0, Lqn/h$e;->a:Ljava/util/List;

    add-int/2addr v12, v3

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lt v11, v2, :cond_2

    if-ne v11, v2, :cond_3

    if-ge v12, v5, :cond_3

    :cond_2
    move v9, v8

    move v2, v11

    move v5, v12

    :cond_3
    if-gt v11, v6, :cond_4

    if-ne v11, v6, :cond_5

    if-le v12, v7, :cond_5

    :cond_4
    move v10, v8

    move v6, v11

    move v7, v12

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    iget-object v2, v0, Lqn/h$e;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, v0, Lqn/h$e;->c:Ljava/util/List;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lqn/h$e;->c:Ljava/util/List;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lqn/h$e;->b()I

    move-result v5

    if-ge v2, v5, :cond_d

    add-int/lit8 v5, v2, 0x1

    invoke-virtual/range {p1 .. p1}, Lqn/h$e;->b()I

    move-result v6

    rem-int v6, v5, v6

    iget-object v7, v0, Lqn/h$e;->c:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v0, Lqn/h$e;->a:Ljava/util/List;

    mul-int/lit8 v9, v7, 0x4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v10, v0, Lqn/h$e;->a:Ljava/util/List;

    add-int/2addr v9, v3

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, v0, Lqn/h$e;->c:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v10, v0, Lqn/h$e;->a:Ljava/util/List;

    mul-int/lit8 v11, v6, 0x4

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v15

    iget-object v10, v0, Lqn/h$e;->a:Ljava/util/List;

    add-int/2addr v11, v3

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v13, -0x1

    const/4 v10, 0x0

    if-gt v15, v8, :cond_9

    if-ne v15, v8, :cond_8

    if-le v14, v9, :cond_8

    goto :goto_3

    :cond_8
    iget v11, v0, Lqn/h$e;->b:I

    add-int/lit8 v12, v11, -0x1

    add-int/2addr v6, v12

    rem-int/2addr v6, v11

    move/from16 v17, v10

    move/from16 v18, v12

    move v12, v13

    goto :goto_4

    :cond_9
    :goto_3
    add-int/lit8 v7, v7, 0x1

    iget v11, v0, Lqn/h$e;->b:I

    rem-int/2addr v7, v11

    move/from16 v17, v10

    move v12, v13

    const/16 v18, 0x1

    move/from16 v22, v7

    move v7, v6

    move/from16 v6, v22

    :goto_4
    if-eq v6, v7, :cond_b

    iget-object v10, v0, Lqn/h$e;->a:Ljava/util/List;

    mul-int/lit8 v11, v6, 0x4

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v16

    iget-object v10, v0, Lqn/h$e;->a:Ljava/util/List;

    add-int/2addr v11, v3

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v10, p0

    move/from16 v11, v16

    move v3, v12

    move/from16 v12, v19

    move v4, v13

    move v13, v8

    move/from16 v20, v14

    move v14, v9

    move/from16 v21, v15

    move/from16 v16, v20

    invoke-virtual/range {v10 .. v16}, Lqn/h;->t(IIIIII)F

    move-result v10

    cmpl-float v11, v10, v17

    if-lez v11, :cond_a

    move v12, v6

    move/from16 v17, v10

    goto :goto_5

    :cond_a
    move v12, v3

    :goto_5
    add-int v6, v6, v18

    iget v3, v0, Lqn/h$e;->b:I

    rem-int/2addr v6, v3

    move v13, v4

    move/from16 v14, v20

    move/from16 v15, v21

    const/4 v3, 0x2

    goto :goto_4

    :cond_b
    move v3, v12

    move v4, v13

    if-eq v3, v4, :cond_c

    mul-float v4, p2, p2

    cmpl-float v4, v17, v4

    if-lez v4, :cond_c

    iget-object v4, v0, Lqn/h$e;->c:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_6

    :cond_c
    move v2, v5

    :goto_6
    const/4 v3, 0x2

    goto/16 :goto_2

    :cond_d
    move v3, v1

    const/4 v2, 0x1

    :goto_7
    invoke-virtual/range {p1 .. p1}, Lqn/h$e;->b()I

    move-result v4

    if-ge v2, v4, :cond_f

    iget-object v4, v0, Lqn/h$e;->c:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v0, Lqn/h$e;->c:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v4, v5, :cond_e

    move v3, v2

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_f
    iput v1, v0, Lqn/h$e;->b:I

    :goto_8
    invoke-virtual/range {p1 .. p1}, Lqn/h$e;->b()I

    move-result v2

    if-ge v1, v2, :cond_10

    add-int v2, v3, v1

    invoke-virtual/range {p1 .. p1}, Lqn/h$e;->b()I

    move-result v4

    rem-int/2addr v2, v4

    iget-object v4, v0, Lqn/h$e;->c:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    iget v4, v0, Lqn/h$e;->b:I

    mul-int/lit8 v4, v4, 0x4

    iget-object v5, v0, Lqn/h$e;->a:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-interface {v5, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lqn/h$e;->a:Ljava/util/List;

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v2, 0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-interface {v5, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lqn/h$e;->a:Ljava/util/List;

    add-int/lit8 v6, v4, 0x2

    add-int/lit8 v7, v2, 0x2

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-interface {v5, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lqn/h$e;->a:Ljava/util/List;

    add-int/lit8 v4, v4, 0x3

    add-int/lit8 v2, v2, 0x3

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v5, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v2, v0, Lqn/h$e;->b:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, v0, Lqn/h$e;->b:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_10
    return-void
.end method

.method public final Q(I[I[I[I)I
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "verts",
            "indices",
            "tris"
        }
    .end annotation

    move-object v6, p0

    move/from16 v7, p1

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    const v10, 0x8000

    if-ge v9, v7, :cond_1

    invoke-virtual {p0, v9, v7}, Lqn/h;->J(II)I

    move-result v11

    invoke-virtual {p0, v11, v7}, Lqn/h;->J(II)I

    move-result v2

    move-object v0, p0

    move v1, v9

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lqn/h;->r(III[I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    aget v0, p3, v11

    or-int/2addr v0, v10

    aput v0, p3, v11

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    move v0, v8

    move v1, v0

    :goto_1
    const/4 v2, 0x3

    const/4 v3, 0x2

    if-le v7, v2, :cond_a

    const/4 v2, -0x1

    move v5, v2

    move v9, v5

    move v4, v8

    :goto_2
    if-ge v4, v7, :cond_4

    invoke-virtual {p0, v4, v7}, Lqn/h;->J(II)I

    move-result v11

    aget v12, p3, v11

    and-int/2addr v12, v10

    if-eqz v12, :cond_3

    aget v12, p3, v4

    and-int/lit16 v12, v12, 0x7fff

    mul-int/lit8 v12, v12, 0x4

    invoke-virtual {p0, v11, v7}, Lqn/h;->J(II)I

    move-result v11

    aget v11, p3, v11

    and-int/lit16 v11, v11, 0x7fff

    mul-int/lit8 v11, v11, 0x4

    aget v13, p2, v11

    aget v14, p2, v12

    sub-int/2addr v13, v14

    add-int/2addr v11, v3

    aget v11, p2, v11

    add-int/2addr v12, v3

    aget v12, p2, v12

    sub-int/2addr v11, v12

    mul-int/2addr v13, v13

    mul-int/2addr v11, v11

    add-int/2addr v13, v11

    if-ltz v9, :cond_2

    if-ge v13, v9, :cond_3

    :cond_2
    move v5, v4

    move v9, v13

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    if-ne v5, v2, :cond_5

    neg-int v0, v1

    return v0

    :cond_5
    invoke-virtual {p0, v5, v7}, Lqn/h;->J(II)I

    move-result v2

    invoke-virtual {p0, v2, v7}, Lqn/h;->J(II)I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    aget v5, p3, v5

    and-int/lit16 v5, v5, 0x7fff

    aput v5, p4, v0

    add-int/lit8 v5, v0, 0x2

    aget v9, p3, v2

    and-int/lit16 v9, v9, 0x7fff

    aput v9, p4, v4

    add-int/lit8 v9, v0, 0x3

    aget v0, p3, v3

    and-int/lit16 v0, v0, 0x7fff

    aput v0, p4, v5

    add-int/lit8 v11, v1, 0x1

    add-int/lit8 v7, v7, -0x1

    move v0, v2

    :goto_3
    if-ge v0, v7, :cond_6

    add-int/lit8 v1, v0, 0x1

    aget v3, p3, v1

    aput v3, p3, v0

    move v0, v1

    goto :goto_3

    :cond_6
    if-lt v2, v7, :cond_7

    move v12, v8

    goto :goto_4

    :cond_7
    move v12, v2

    :goto_4
    invoke-virtual {p0, v12, v7}, Lqn/h;->L(II)I

    move-result v13

    invoke-virtual {p0, v13, v7}, Lqn/h;->L(II)I

    move-result v1

    move-object v0, p0

    move v2, v12

    move v3, v7

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lqn/h;->r(III[I[I)Z

    move-result v0

    if-eqz v0, :cond_8

    aget v0, p3, v13

    or-int/2addr v0, v10

    aput v0, p3, v13

    goto :goto_5

    :cond_8
    aget v0, p3, v13

    and-int/lit16 v0, v0, 0x7fff

    aput v0, p3, v13

    :goto_5
    invoke-virtual {p0, v12, v7}, Lqn/h;->J(II)I

    move-result v2

    move-object v0, p0

    move v1, v13

    move v3, v7

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lqn/h;->r(III[I[I)Z

    move-result v0

    if-eqz v0, :cond_9

    aget v0, p3, v12

    or-int/2addr v0, v10

    aput v0, p3, v12

    goto :goto_6

    :cond_9
    aget v0, p3, v12

    and-int/lit16 v0, v0, 0x7fff

    aput v0, p3, v12

    :goto_6
    move v0, v9

    move v1, v11

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v2, v0, 0x1

    aget v4, p3, v8

    and-int/lit16 v4, v4, 0x7fff

    aput v4, p4, v0

    add-int/2addr v0, v3

    const/4 v4, 0x1

    aget v5, p3, v4

    and-int/lit16 v5, v5, 0x7fff

    aput v5, p4, v2

    aget v2, p3, v3

    and-int/lit16 v2, v2, 0x7fff

    aput v2, p4, v0

    add-int/2addr v1, v4

    return v1
.end method

.method public final R([IIII)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "verts",
            "a",
            "b",
            "c"
        }
    .end annotation

    aget v0, p1, p3

    aget v1, p1, p2

    sub-int/2addr v0, v1

    add-int/lit8 v2, p4, 0x2

    aget v2, p1, v2

    add-int/lit8 p2, p2, 0x2

    aget p2, p1, p2

    sub-int/2addr v2, p2

    mul-int/2addr v0, v2

    aget p4, p1, p4

    sub-int/2addr p4, v1

    add-int/lit8 p3, p3, 0x2

    aget p1, p1, p3

    sub-int/2addr p1, p2

    mul-int/2addr p4, p1

    sub-int/2addr v0, p4

    if-gez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final S([III)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "verts",
            "a",
            "b"
        }
    .end annotation

    aget v0, p1, p2

    aget v1, p1, p3

    if-ne v0, v1, :cond_0

    add-int/lit8 p2, p2, 0x2

    aget p2, p1, p2

    add-int/lit8 p3, p3, 0x2

    aget p1, p1, p3

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final T(Lqn/l;IILqn/h$e;)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "layer",
            "x",
            "y",
            "cont"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    iget-object v0, v7, Lqn/l;->a:Lqn/m;

    iget v11, v0, Lqn/m;->j:I

    iget v0, v0, Lqn/m;->k:I

    invoke-virtual/range {p4 .. p4}, Lqn/h$e;->a()V

    const/4 v1, 0x0

    :goto_0
    const/4 v13, 0x4

    const/4 v2, -0x1

    if-ge v1, v13, :cond_1

    add-int/lit8 v3, v1, 0x3

    and-int/lit8 v3, v3, 0x3

    invoke-virtual {v6, v7, v8, v9, v3}, Lqn/h;->x(Lqn/l;III)I

    move-result v4

    iget-object v5, v7, Lqn/l;->f:[S

    mul-int v14, v9, v11

    add-int/2addr v14, v8

    aget-short v5, v5, v14

    if-eq v4, v5, :cond_0

    move v14, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v14, v2

    :goto_1
    if-ne v14, v2, :cond_2

    return-void

    :cond_2
    mul-int v15, v11, v0

    move v4, v8

    move v3, v9

    move v2, v14

    const/4 v5, 0x0

    :goto_2
    const/4 v1, 0x2

    const/4 v0, 0x1

    if-ge v5, v15, :cond_8

    invoke-virtual {v6, v7, v4, v3, v2}, Lqn/h;->x(Lqn/l;III)I

    move-result v12

    iget-object v13, v7, Lqn/l;->f:[S

    mul-int v16, v3, v11

    add-int v16, v4, v16

    aget-short v13, v13, v16

    if-eq v12, v13, :cond_6

    if-eqz v2, :cond_5

    if-eq v2, v0, :cond_4

    if-eq v2, v1, :cond_3

    move/from16 v17, v3

    :goto_3
    move v13, v4

    goto :goto_4

    :cond_3
    add-int/lit8 v13, v4, 0x1

    move/from16 v17, v3

    goto :goto_4

    :cond_4
    add-int/lit8 v13, v4, 0x1

    add-int/lit8 v17, v3, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v13, v3, 0x1

    move/from16 v17, v13

    goto :goto_3

    :goto_4
    iget-object v0, v7, Lqn/l;->c:[S

    aget-short v16, v0, v16

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move v7, v1

    move-object/from16 v1, p4

    move v7, v2

    move v2, v13

    move v13, v3

    move/from16 v3, v16

    move/from16 v16, v11

    move v11, v4

    move/from16 v4, v17

    move/from16 v17, v5

    move v5, v12

    invoke-virtual/range {v0 .. v5}, Lqn/h;->c(Lqn/h$e;IIII)V

    add-int/lit8 v2, v7, 0x1

    and-int/lit8 v0, v2, 0x3

    move v2, v0

    move v4, v11

    move v3, v13

    goto :goto_5

    :cond_6
    move/from16 v18, v0

    move v7, v2

    move v13, v3

    move/from16 v17, v5

    move/from16 v16, v11

    move v11, v4

    invoke-virtual {v6, v7}, Lqn/h;->v(I)I

    move-result v0

    add-int v4, v11, v0

    invoke-virtual {v6, v7}, Lqn/h;->w(I)I

    move-result v0

    add-int v3, v13, v0

    add-int/lit8 v2, v7, 0x3

    and-int/lit8 v0, v2, 0x3

    move v2, v0

    :goto_5
    if-lez v17, :cond_7

    if-ne v11, v8, :cond_7

    if-ne v13, v9, :cond_7

    if-ne v7, v14, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v5, v17, 0x1

    move-object/from16 v7, p1

    move/from16 v11, v16

    const/4 v13, 0x4

    goto :goto_2

    :cond_8
    move/from16 v18, v0

    :goto_6
    iget v0, v10, Lqn/h$e;->b:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    mul-int/2addr v0, v1

    iget-object v1, v10, Lqn/h$e;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v10, Lqn/h$e;->a:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_9

    iget-object v1, v10, Lqn/h$e;->a:Ljava/util/List;

    const/4 v2, 0x2

    add-int/2addr v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v10, Lqn/h$e;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_9

    iget v0, v10, Lqn/h$e;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v10, Lqn/h$e;->b:I

    :cond_9
    return-void
.end method

.method public a(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "v"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(III[I[I[II)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "verts",
            "firstVert",
            "nextVert",
            "nv"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lqn/h;->o(III)I

    move-result v0

    aget v1, p5, v0

    :goto_0
    const v2, 0xffff

    const/4 v3, 0x2

    if-eq v1, v2, :cond_1

    mul-int/lit8 v2, v1, 0x3

    aget v4, p4, v2

    if-ne v4, p1, :cond_0

    add-int/lit8 v4, v2, 0x2

    aget v4, p4, v4

    if-ne v4, p3, :cond_0

    add-int/lit8 v2, v2, 0x1

    aget v2, p4, v2

    sub-int/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v3, :cond_0

    return v1

    :cond_0
    aget v1, p6, v1

    goto :goto_0

    :cond_1
    mul-int/lit8 v1, p7, 0x3

    aput p1, p4, v1

    add-int/lit8 p1, v1, 0x1

    aput p2, p4, p1

    add-int/2addr v1, v3

    aput p3, p4, v1

    aget p1, p5, v0

    aput p1, p6, p7

    aput p7, p5, v0

    return p7
.end method

.method public final c(Lqn/h$e;IIII)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cont",
            "x",
            "y",
            "z",
            "r"
        }
    .end annotation

    iget v0, p1, Lqn/h$e;->b:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    add-int/lit8 v2, v0, -0x2

    mul-int/lit8 v2, v2, 0x4

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    iget-object v3, p1, Lqn/h$e;->a:Ljava/util/List;

    add-int/lit8 v4, v0, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p5, :cond_1

    iget-object v3, p1, Lqn/h$e;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p1, Lqn/h$e;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v3, p1, Lqn/h$e;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p2, :cond_0

    iget-object p2, p1, Lqn/h$e;->a:Ljava/util/List;

    add-int/lit8 p5, v0, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p5, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lqn/h$e;->a:Ljava/util/List;

    add-int/lit8 v0, v0, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v3, p1, Lqn/h$e;->a:Ljava/util/List;

    add-int/lit8 v2, v2, 0x2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p1, Lqn/h$e;->a:Ljava/util/List;

    add-int/lit8 v4, v0, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p1, Lqn/h$e;->a:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p4, :cond_1

    iget-object p4, p1, Lqn/h$e;->a:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lqn/h$e;->a:Ljava/util/List;

    add-int/2addr v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    iget-object v0, p1, Lqn/h$e;->a:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p1, Lqn/h$e;->a:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p1, Lqn/h$e;->a:Ljava/util/List;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p1, Lqn/h$e;->a:Ljava/util/List;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p2, p1, Lqn/h$e;->b:I

    add-int/2addr p2, v1

    iput p2, p1, Lqn/h$e;->b:I

    return-void
.end method

.method public final d([IIII)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "verts",
            "a",
            "b",
            "c"
        }
    .end annotation

    aget v0, p1, p3

    aget v1, p1, p2

    sub-int/2addr v0, v1

    add-int/lit8 v2, p4, 0x2

    aget v2, p1, v2

    add-int/lit8 p2, p2, 0x2

    aget p2, p1, p2

    sub-int/2addr v2, p2

    mul-int/2addr v0, v2

    aget p4, p1, p4

    sub-int/2addr p4, v1

    add-int/lit8 p3, p3, 0x2

    aget p1, p1, p3

    sub-int/2addr p1, p2

    mul-int/2addr p4, p1

    sub-int/2addr v0, p4

    return v0
.end method

.method public final e([IIII)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "verts",
            "a",
            "b",
            "c"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lqn/h;->l([IIII)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    aget v0, p1, p2

    aget v2, p1, p3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_4

    aget p1, p1, p4

    if-gt v0, p1, :cond_1

    if-le p1, v2, :cond_2

    :cond_1
    if-lt v0, p1, :cond_3

    if-lt p1, v2, :cond_3

    :cond_2
    move v1, v3

    :cond_3
    return v1

    :cond_4
    add-int/lit8 p2, p2, 0x2

    aget p2, p1, p2

    add-int/lit8 p4, p4, 0x2

    aget p4, p1, p4

    if-gt p2, p4, :cond_5

    add-int/lit8 v0, p3, 0x2

    aget v0, p1, v0

    if-le p4, v0, :cond_6

    :cond_5
    if-lt p2, p4, :cond_7

    add-int/lit8 p3, p3, 0x2

    aget p1, p1, p3

    if-lt p4, p1, :cond_7

    :cond_6
    move v1, v3

    :cond_7
    return v1
.end method

.method public final f([II[IILqn/k;I)V
    .locals 22
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
            "polys",
            "npolys",
            "verts",
            "nverts",
            "lcset",
            "maxVertsPerPoly"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    mul-int v5, v1, v4

    add-int v6, v2, v5

    new-array v6, v6, [I

    new-array v7, v5, [Lqn/h$b;

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v5, :cond_0

    new-instance v10, Lqn/h$b;

    const/4 v11, 0x0

    invoke-direct {v10, v0, v11}, Lqn/h$b;-><init>(Lqn/h;Lqn/h$a;)V

    aput-object v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    move v5, v8

    :goto_1
    const v9, 0xffff

    if-ge v5, v2, :cond_1

    aput v9, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v8

    move v10, v5

    :goto_2
    const/4 v12, 0x2

    if-ge v5, v1, :cond_7

    mul-int v14, v5, v4

    mul-int/2addr v14, v12

    move v12, v8

    :goto_3
    if-ge v12, v4, :cond_6

    add-int v15, v14, v12

    aget v11, p1, v15

    if-ne v11, v9, :cond_2

    goto :goto_5

    :cond_2
    add-int/lit8 v13, v12, 0x1

    if-ge v13, v4, :cond_3

    add-int/lit8 v15, v15, 0x1

    aget v15, p1, v15

    if-ne v15, v9, :cond_4

    :cond_3
    aget v15, p1, v14

    :cond_4
    if-ge v11, v15, :cond_5

    aget-object v9, v7, v10

    move/from16 v17, v13

    iget-object v13, v9, Lqn/h$b;->a:[I

    aput v11, v13, v8

    const/16 v16, 0x1

    aput v15, v13, v16

    iget-object v13, v9, Lqn/h$b;->c:[I

    aput v5, v13, v8

    iget-object v9, v9, Lqn/h$b;->b:[I

    aput v12, v9, v8

    aput v5, v13, v16

    const/16 v12, 0xff

    aput v12, v9, v16

    add-int v9, v2, v10

    aget v12, v6, v11

    aput v12, v6, v9

    int-to-short v9, v10

    aput v9, v6, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_5
    move/from16 v17, v13

    :goto_4
    move/from16 v12, v17

    const v9, 0xffff

    goto :goto_3

    :cond_6
    :goto_5
    add-int/lit8 v5, v5, 0x1

    const v9, 0xffff

    goto :goto_2

    :cond_7
    move v5, v8

    :goto_6
    if-ge v5, v1, :cond_10

    mul-int v9, v5, v4

    mul-int/2addr v9, v12

    move v11, v8

    :goto_7
    if-ge v11, v4, :cond_f

    add-int v13, v9, v11

    aget v14, p1, v13

    const v15, 0xffff

    if-ne v14, v15, :cond_8

    goto/16 :goto_a

    :cond_8
    add-int/lit8 v12, v11, 0x1

    if-ge v12, v4, :cond_9

    add-int/lit8 v13, v13, 0x1

    aget v13, p1, v13

    if-ne v13, v15, :cond_a

    :cond_9
    aget v13, p1, v9

    :cond_a
    if-le v14, v13, :cond_e

    aget v17, v6, v13

    move/from16 v8, v17

    :goto_8
    if-eq v8, v15, :cond_d

    aget-object v15, v7, v8

    iget-object v1, v15, Lqn/h$b;->a:[I

    const/16 v16, 0x1

    aget v1, v1, v16

    if-ne v1, v14, :cond_b

    iget-object v1, v15, Lqn/h$b;->c:[I

    move/from16 v19, v9

    const/16 v18, 0x0

    aget v9, v1, v18

    move/from16 v20, v12

    aget v12, v1, v16

    if-ne v9, v12, :cond_c

    aput v5, v1, v16

    iget-object v1, v15, Lqn/h$b;->b:[I

    aput v11, v1, v16

    goto :goto_9

    :cond_b
    move/from16 v19, v9

    move/from16 v20, v12

    :cond_c
    add-int v1, v2, v8

    aget v8, v6, v1

    move/from16 v1, p2

    move/from16 v9, v19

    move/from16 v12, v20

    const v15, 0xffff

    goto :goto_8

    :cond_d
    move/from16 v19, v9

    move/from16 v20, v12

    const/16 v16, 0x1

    aget-object v1, v7, v10

    iget-object v8, v1, Lqn/h$b;->a:[I

    const/4 v9, 0x0

    aput v13, v8, v9

    aput v14, v8, v16

    iget-object v8, v1, Lqn/h$b;->c:[I

    int-to-short v12, v5

    aput v12, v8, v9

    iget-object v1, v1, Lqn/h$b;->b:[I

    int-to-short v11, v11

    aput v11, v1, v9

    aput v12, v8, v16

    const/16 v8, 0xff

    aput v8, v1, v16

    add-int v1, v2, v10

    aget v8, v6, v13

    aput v8, v6, v1

    int-to-short v1, v10

    aput v1, v6, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_e
    move/from16 v19, v9

    move/from16 v20, v12

    :goto_9
    move/from16 v1, p2

    move/from16 v9, v19

    move/from16 v11, v20

    const/4 v8, 0x0

    const/4 v12, 0x2

    goto/16 :goto_7

    :cond_f
    :goto_a
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, p2

    const/4 v8, 0x0

    const/4 v12, 0x2

    goto/16 :goto_6

    :cond_10
    const/4 v1, 0x0

    :goto_b
    iget v2, v3, Lqn/k;->a:I

    if-ge v1, v2, :cond_20

    iget-object v2, v3, Lqn/k;->b:[Lqn/j;

    aget-object v2, v2, v1

    iget v5, v2, Lqn/j;->a:I

    const/4 v6, 0x3

    if-ge v5, v6, :cond_11

    goto/16 :goto_13

    :cond_11
    add-int/lit8 v5, v5, -0x1

    const/4 v8, 0x0

    :goto_c
    iget v9, v2, Lqn/j;->a:I

    if-ge v8, v9, :cond_1f

    mul-int/lit8 v5, v5, 0x4

    mul-int/lit8 v9, v8, 0x4

    iget-object v11, v2, Lqn/j;->b:[I

    add-int/lit8 v12, v5, 0x3

    aget v12, v11, v12

    const/16 v13, 0xf

    and-int/2addr v12, v13

    if-ne v12, v13, :cond_13

    :cond_12
    move-object/from16 p4, v2

    goto/16 :goto_12

    :cond_13
    if-eqz v12, :cond_14

    const/4 v13, 0x2

    if-ne v12, v13, :cond_15

    :cond_14
    move-object/from16 p4, v2

    goto :goto_f

    :cond_15
    add-int/lit8 v13, v5, 0x2

    aget v13, v11, v13

    aget v5, v11, v5

    aget v9, v11, v9

    if-le v5, v9, :cond_16

    move/from16 v21, v9

    move v9, v5

    move/from16 v5, v21

    :cond_16
    const/4 v11, 0x0

    :goto_d
    if-ge v11, v10, :cond_12

    aget-object v14, v7, v11

    iget-object v15, v14, Lqn/h$b;->c:[I

    const/16 v17, 0x0

    aget v6, v15, v17

    const/16 v16, 0x1

    aget v15, v15, v16

    if-eq v6, v15, :cond_17

    move-object/from16 p4, v2

    goto :goto_e

    :cond_17
    iget-object v6, v14, Lqn/h$b;->a:[I

    aget v15, v6, v17

    const/16 v17, 0x3

    mul-int/lit8 v15, v15, 0x3

    aget v6, v6, v16

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v17, v15, 0x2

    move-object/from16 p4, v2

    aget v2, p3, v17

    if-ne v2, v13, :cond_19

    add-int/lit8 v2, v6, 0x2

    aget v2, p3, v2

    if-ne v2, v13, :cond_19

    aget v2, p3, v15

    aget v6, p3, v6

    if-le v2, v6, :cond_18

    move/from16 v21, v6

    move v6, v2

    move/from16 v2, v21

    :cond_18
    invoke-virtual {v0, v5, v9, v2, v6}, Lqn/h;->K(IIII)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v14, Lqn/h$b;->b:[I

    const/4 v6, 0x1

    aput v12, v2, v6

    :cond_19
    :goto_e
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p4

    const/4 v6, 0x3

    goto :goto_d

    :goto_f
    aget v2, v11, v5

    add-int/lit8 v5, v5, 0x2

    aget v5, v11, v5

    add-int/lit8 v9, v9, 0x2

    aget v6, v11, v9

    if-le v5, v6, :cond_1a

    move/from16 v21, v6

    move v6, v5

    move/from16 v5, v21

    :cond_1a
    const/4 v9, 0x0

    :goto_10
    if-ge v9, v10, :cond_1e

    aget-object v11, v7, v9

    iget-object v13, v11, Lqn/h$b;->c:[I

    const/4 v14, 0x0

    aget v15, v13, v14

    const/16 v16, 0x1

    aget v13, v13, v16

    if-eq v15, v13, :cond_1b

    goto :goto_11

    :cond_1b
    iget-object v13, v11, Lqn/h$b;->a:[I

    aget v15, v13, v14

    const/4 v14, 0x3

    mul-int/2addr v15, v14

    aget v13, v13, v16

    mul-int/2addr v13, v14

    aget v14, p3, v15

    if-ne v14, v2, :cond_1d

    aget v14, p3, v13

    if-ne v14, v2, :cond_1d

    add-int/lit8 v15, v15, 0x2

    aget v14, p3, v15

    add-int/lit8 v13, v13, 0x2

    aget v13, p3, v13

    if-le v14, v13, :cond_1c

    move/from16 v21, v14

    move v14, v13

    move/from16 v13, v21

    :cond_1c
    invoke-virtual {v0, v5, v6, v14, v13}, Lqn/h;->K(IIII)Z

    move-result v13

    if-eqz v13, :cond_1d

    iget-object v11, v11, Lqn/h$b;->b:[I

    const/4 v13, 0x1

    aput v12, v11, v13

    :cond_1d
    :goto_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_1e
    :goto_12
    add-int/lit8 v2, v8, 0x1

    move v5, v8

    const/4 v6, 0x3

    move v8, v2

    move-object/from16 v2, p4

    goto/16 :goto_c

    :cond_1f
    :goto_13
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_b

    :cond_20
    const/4 v1, 0x0

    :goto_14
    if-ge v1, v10, :cond_23

    aget-object v2, v7, v1

    iget-object v3, v2, Lqn/h$b;->c:[I

    const/4 v5, 0x0

    aget v6, v3, v5

    const/4 v8, 0x1

    aget v9, v3, v8

    if-eq v6, v9, :cond_22

    mul-int/2addr v6, v4

    const/4 v8, 0x2

    mul-int/2addr v6, v8

    mul-int v11, v9, v4

    mul-int/2addr v11, v8

    add-int/2addr v6, v4

    iget-object v2, v2, Lqn/h$b;->b:[I

    aget v8, v2, v5

    add-int/2addr v6, v8

    aput v9, p1, v6

    add-int/2addr v11, v4

    const/4 v8, 0x1

    aget v2, v2, v8

    add-int/2addr v11, v2

    aget v2, v3, v5

    aput v2, p1, v11

    const/16 v9, 0xff

    :cond_21
    const/4 v11, 0x2

    goto :goto_15

    :cond_22
    const/4 v8, 0x1

    iget-object v2, v2, Lqn/h$b;->b:[I

    aget v3, v2, v8

    const/16 v9, 0xff

    if-eq v3, v9, :cond_21

    mul-int/2addr v6, v4

    const/4 v11, 0x2

    mul-int/2addr v6, v11

    add-int/2addr v6, v4

    aget v2, v2, v5

    add-int/2addr v6, v2

    const v2, 0x8000

    int-to-short v3, v3

    or-int/2addr v2, v3

    aput v2, p1, v6

    :goto_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_23
    return-void
.end method

.method public g(Lqn/l;IF)Lqn/k;
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "layer",
            "walkableClimb",
            "maxError"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lqn/l;->a:Lqn/m;

    iget v3, v2, Lqn/m;->j:I

    iget v2, v2, Lqn/m;->k:I

    new-instance v4, Lqn/k;

    invoke-direct {v4}, Lqn/k;-><init>()V

    iget v5, v1, Lqn/l;->b:I

    iput v5, v4, Lqn/k;->a:I

    new-array v5, v5, [Lqn/j;

    iput-object v5, v4, Lqn/k;->b:[Lqn/j;

    const/4 v6, 0x0

    :goto_0
    iget v7, v4, Lqn/k;->a:I

    if-ge v6, v7, :cond_0

    iget-object v7, v4, Lqn/k;->b:[Lqn/j;

    new-instance v8, Lqn/j;

    invoke-direct {v8}, Lqn/j;-><init>()V

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-instance v6, Lqn/h$e;

    invoke-direct {v6, v0}, Lqn/h$e;-><init>(Lqn/h;)V

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v2, :cond_7

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v3, :cond_6

    mul-int v9, v7, v3

    add-int/2addr v9, v8

    iget-object v10, v1, Lqn/l;->f:[S

    aget-short v10, v10, v9

    const/16 v11, 0xff

    if-ne v10, v11, :cond_2

    :goto_3
    move/from16 v9, p3

    :cond_1
    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v3, p2

    goto/16 :goto_5

    :cond_2
    iget-object v12, v4, Lqn/k;->b:[Lqn/j;

    aget-object v12, v12, v10

    iget v13, v12, Lqn/j;->a:I

    if-lez v13, :cond_3

    goto :goto_3

    :cond_3
    iput v10, v12, Lqn/j;->c:I

    iget-object v10, v1, Lqn/l;->d:[S

    aget-short v9, v10, v9

    iput v9, v12, Lqn/j;->d:I

    invoke-virtual {v0, v1, v8, v7, v6}, Lqn/h;->T(Lqn/l;IILqn/h$e;)V

    move/from16 v9, p3

    invoke-virtual {v0, v6, v9}, Lqn/h;->P(Lqn/h$e;F)V

    iget v10, v6, Lqn/h$e;->b:I

    iput v10, v12, Lqn/j;->a:I

    if-lez v10, :cond_1

    mul-int/lit8 v13, v10, 0x4

    new-array v13, v13, [I

    iput-object v13, v12, Lqn/j;->b:[I

    add-int/lit8 v10, v10, -0x1

    move v13, v10

    const/4 v10, 0x0

    :goto_4
    iget v14, v6, Lqn/h$e;->b:I

    if-ge v10, v14, :cond_1

    mul-int/lit8 v13, v13, 0x4

    mul-int/lit8 v14, v10, 0x4

    iget-object v15, v6, Lqn/h$e;->a:Ljava/util/List;

    add-int/lit8 v14, v14, 0x3

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget-object v15, v6, Lqn/h$e;->a:Ljava/util/List;

    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    iget-object v5, v6, Lqn/h$e;->a:Ljava/util/List;

    add-int/lit8 v11, v13, 0x1

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, v6, Lqn/h$e;->a:Ljava/util/List;

    move/from16 v16, v2

    add-int/lit8 v2, v13, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move/from16 v17, v3

    move/from16 v3, p2

    invoke-static {v1, v15, v5, v0, v3}, Lqn/h;->u(Lqn/l;IIII)Ljn/U;

    move-result-object v0

    iget-object v5, v0, Ljn/U;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, v0, Ljn/U;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v15, v12, Lqn/j;->b:[I

    iget-object v1, v6, Lqn/h$e;->a:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v15, v13

    iget-object v1, v12, Lqn/j;->b:[I

    aput v5, v1, v11

    iget-object v5, v6, Lqn/h$e;->a:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v1, v2

    iget-object v1, v12, Lqn/j;->b:[I

    add-int/lit8 v13, v13, 0x3

    const/16 v2, 0xf

    aput v2, v1, v13

    const/16 v2, 0xff

    if-eq v14, v2, :cond_4

    const/16 v5, 0xf8

    if-lt v14, v5, :cond_4

    add-int/lit16 v14, v14, -0xf8

    aput v14, v1, v13

    :cond_4
    if-eqz v0, :cond_5

    aget v0, v1, v13

    or-int/lit16 v0, v0, 0x80

    aput v0, v1, v13

    :cond_5
    add-int/lit8 v0, v10, 0x1

    move-object/from16 v1, p1

    move v11, v2

    move v13, v10

    move/from16 v2, v16

    move/from16 v3, v17

    move v10, v0

    move-object/from16 v0, p0

    goto/16 :goto_4

    :goto_5
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, v17

    goto/16 :goto_2

    :cond_6
    move/from16 v9, p3

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v3, p2

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, v17

    goto/16 :goto_1

    :cond_7
    return-object v4
.end method

.method public h(Lqn/k;I)Lqn/q;
    .locals 32
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lcset",
            "maxVertsPerPoly"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    const/4 v11, 0x0

    move v0, v11

    move v1, v0

    move v2, v1

    move v12, v2

    :goto_0
    iget v3, v9, Lqn/k;->a:I

    const/4 v13, 0x3

    if-ge v0, v3, :cond_1

    iget-object v3, v9, Lqn/k;->b:[Lqn/j;

    aget-object v3, v3, v0

    iget v3, v3, Lqn/j;->a:I

    if-ge v3, v13, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v1, v3

    add-int/lit8 v4, v3, -0x2

    add-int/2addr v12, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v14, Lqn/q;

    invoke-direct {v14, v10}, Lqn/q;-><init>(I)V

    new-array v15, v1, [I

    mul-int/lit8 v0, v1, 0x3

    new-array v0, v0, [I

    iput-object v0, v14, Lqn/q;->d:[I

    mul-int v0, v12, v10

    const/16 v16, 0x2

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, v14, Lqn/q;->e:[I

    new-array v3, v12, [I

    iput-object v3, v14, Lqn/q;->g:[I

    new-array v3, v12, [I

    iput-object v3, v14, Lqn/q;->f:[I

    iput v11, v14, Lqn/q;->b:I

    iput v11, v14, Lqn/q;->c:I

    const v7, 0xffff

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([II)V

    const/16 v0, 0x100

    new-array v6, v0, [I

    move v3, v11

    :goto_2
    if-ge v3, v0, :cond_2

    aput v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    new-array v5, v1, [I

    new-array v4, v2, [I

    mul-int/lit8 v0, v2, 0x3

    new-array v3, v0, [I

    mul-int/2addr v2, v10

    new-array v2, v2, [I

    move v1, v11

    :goto_3
    iget v0, v9, Lqn/k;->a:I

    const/16 v17, 0x1

    if-ge v1, v0, :cond_13

    iget-object v0, v9, Lqn/k;->b:[Lqn/j;

    aget-object v0, v0, v1

    iget v7, v0, Lqn/j;->a:I

    if-ge v7, v13, :cond_3

    move/from16 v21, v1

    move-object v8, v2

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v26, v6

    move/from16 v19, v11

    move v11, v12

    const v12, 0xffff

    goto/16 :goto_e

    :cond_3
    move v7, v11

    :goto_4
    iget v11, v0, Lqn/j;->a:I

    if-ge v7, v11, :cond_4

    aput v7, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    iget-object v7, v0, Lqn/j;->b:[I

    invoke-virtual {v8, v11, v7, v4, v3}, Lqn/h;->Q(I[I[I[I)I

    move-result v7

    if-gtz v7, :cond_5

    neg-int v7, v7

    :cond_5
    move v11, v7

    const/4 v7, 0x0

    :goto_5
    iget v13, v0, Lqn/j;->a:I

    if-ge v7, v13, :cond_7

    mul-int/lit8 v13, v7, 0x4

    move/from16 v21, v1

    iget-object v1, v0, Lqn/j;->b:[I

    aget v22, v1, v13

    add-int/lit8 v23, v13, 0x1

    aget v23, v1, v23

    add-int/lit8 v24, v13, 0x2

    aget v24, v1, v24

    iget-object v1, v14, Lqn/q;->d:[I

    move/from16 v25, v7

    iget v7, v14, Lqn/q;->b:I

    move-object v9, v0

    move-object/from16 v0, p0

    move-object/from16 v26, v1

    move/from16 v1, v22

    move-object v8, v2

    move/from16 v2, v23

    move-object/from16 v22, v3

    move/from16 v3, v24

    move-object/from16 v23, v4

    move-object/from16 v4, v26

    move-object/from16 v24, v5

    move-object v5, v6

    move-object/from16 v26, v6

    move-object/from16 v6, v24

    move/from16 v27, v12

    move/from16 v18, v25

    const v12, 0xffff

    invoke-virtual/range {v0 .. v7}, Lqn/h;->b(III[I[I[II)I

    move-result v0

    aput v0, v23, v18

    iget v1, v14, Lqn/q;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v14, Lqn/q;->b:I

    iget-object v0, v9, Lqn/j;->b:[I

    const/4 v1, 0x3

    add-int/2addr v13, v1

    aget v0, v0, v13

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    aget v0, v23, v18

    aput v17, v15, v0

    :cond_6
    add-int/lit8 v7, v18, 0x1

    move-object v2, v8

    move-object v0, v9

    move/from16 v1, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    move-object/from16 v6, v26

    move/from16 v12, v27

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    goto :goto_5

    :cond_7
    move-object v9, v0

    move/from16 v21, v1

    move-object v8, v2

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v26, v6

    move/from16 v27, v12

    const v12, 0xffff

    invoke-static {v8, v12}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_6
    if-ge v0, v11, :cond_9

    mul-int/lit8 v2, v0, 0x3

    aget v3, v22, v2

    add-int/lit8 v4, v2, 0x1

    aget v5, v22, v4

    if-eq v3, v5, :cond_8

    add-int/lit8 v2, v2, 0x2

    aget v6, v22, v2

    if-eq v3, v6, :cond_8

    if-eq v5, v6, :cond_8

    mul-int v5, v1, v10

    aget v3, v23, v3

    aput v3, v8, v5

    add-int/lit8 v3, v5, 0x1

    aget v4, v22, v4

    aget v4, v23, v4

    aput v4, v8, v3

    add-int/lit8 v5, v5, 0x2

    aget v2, v22, v2

    aget v2, v23, v2

    aput v2, v8, v5

    add-int/lit8 v1, v1, 0x1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_9
    if-nez v1, :cond_a

    move/from16 v11, v27

    const/16 v19, 0x0

    goto/16 :goto_e

    :cond_a
    const/4 v7, 0x3

    if-le v10, v7, :cond_f

    move v11, v1

    :goto_7
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_8
    add-int/lit8 v13, v11, -0x1

    if-ge v6, v13, :cond_d

    mul-int v13, v6, v10

    add-int/lit8 v18, v6, 0x1

    move/from16 v20, v1

    move/from16 v25, v2

    move/from16 v28, v4

    move/from16 v29, v5

    move/from16 v4, v18

    move v5, v0

    :goto_9
    if-ge v4, v11, :cond_c

    mul-int v3, v4, v10

    iget-object v2, v14, Lqn/q;->d:[I

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v30, v2

    move v2, v13

    move/from16 v31, v4

    move-object/from16 v4, v30

    move v7, v5

    move/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lqn/h;->y([III[II)[I

    move-result-object v0

    const/16 v19, 0x0

    aget v1, v0, v19

    aget v2, v0, v17

    aget v0, v0, v16

    if-le v1, v7, :cond_b

    move/from16 v29, v0

    move v5, v1

    move/from16 v28, v2

    move/from16 v20, v6

    move/from16 v25, v31

    goto :goto_a

    :cond_b
    move v5, v7

    :goto_a
    add-int/lit8 v4, v31, 0x1

    const/4 v7, 0x3

    goto :goto_9

    :cond_c
    move v7, v5

    const/16 v19, 0x0

    move v0, v7

    move/from16 v6, v18

    move/from16 v1, v20

    move/from16 v2, v25

    move/from16 v4, v28

    move/from16 v5, v29

    const/4 v7, 0x3

    goto :goto_8

    :cond_d
    const/16 v19, 0x0

    if-lez v0, :cond_e

    mul-int v3, v1, v10

    mul-int v7, v2, v10

    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v3

    move v3, v7

    move/from16 v6, p2

    invoke-virtual/range {v0 .. v6}, Lqn/h;->I([IIIIII)V

    mul-int/2addr v13, v10

    invoke-static {v8, v13, v8, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v11, v11, -0x1

    const/4 v7, 0x3

    goto :goto_7

    :cond_e
    move v1, v11

    goto :goto_b

    :cond_f
    const/16 v19, 0x0

    :goto_b
    move/from16 v0, v19

    :goto_c
    if-ge v0, v1, :cond_12

    iget v2, v14, Lqn/q;->c:I

    mul-int/2addr v2, v10

    mul-int/lit8 v2, v2, 0x2

    mul-int v3, v0, v10

    move/from16 v4, v19

    :goto_d
    if-ge v4, v10, :cond_10

    iget-object v5, v14, Lqn/q;->e:[I

    add-int v6, v2, v4

    add-int v7, v3, v4

    aget v7, v8, v7

    aput v7, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_10
    iget-object v2, v14, Lqn/q;->g:[I

    iget v3, v14, Lqn/q;->c:I

    iget v4, v9, Lqn/j;->d:I

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, v14, Lqn/q;->c:I

    move/from16 v11, v27

    if-gt v3, v11, :cond_11

    add-int/lit8 v0, v0, 0x1

    move/from16 v27, v11

    goto :goto_c

    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Buffer too small"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    move/from16 v11, v27

    :goto_e
    add-int/lit8 v1, v21, 0x1

    move-object/from16 v9, p1

    move-object v2, v8

    move v7, v12

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    move-object/from16 v6, v26

    const/4 v13, 0x3

    move-object/from16 v8, p0

    move v12, v11

    move/from16 v11, v19

    goto/16 :goto_3

    :cond_13
    move/from16 v19, v11

    move v11, v12

    move/from16 v0, v19

    :goto_f
    iget v4, v14, Lqn/q;->b:I

    if-ge v0, v4, :cond_17

    aget v1, v15, v0

    move-object/from16 v7, p0

    if-eqz v1, :cond_16

    invoke-virtual {v7, v14, v0}, Lqn/h;->k(Lqn/q;I)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_11

    :cond_14
    invoke-virtual {v7, v14, v0, v11}, Lqn/h;->O(Lqn/q;II)V

    move v1, v0

    :goto_10
    iget v2, v14, Lqn/q;->b:I

    if-ge v1, v2, :cond_15

    add-int/lit8 v2, v1, 0x1

    aget v3, v15, v2

    aput v3, v15, v1

    move v1, v2

    goto :goto_10

    :cond_15
    add-int/lit8 v0, v0, -0x1

    :cond_16
    :goto_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_17
    move-object/from16 v7, p0

    iget-object v1, v14, Lqn/q;->e:[I

    iget v2, v14, Lqn/q;->c:I

    iget-object v3, v14, Lqn/q;->d:[I

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v0 .. v6}, Lqn/h;->f([II[IILqn/k;I)V

    return-object v14
.end method

.method public i(Lqn/l;I)V
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layer",
            "walkableClimb"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v1, Lqn/l;->a:Lqn/m;

    iget v4, v3, Lqn/m;->j:I

    iget v3, v3, Lqn/m;->k:I

    iget-object v5, v1, Lqn/l;->f:[S

    const/16 v6, 0xff

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([SS)V

    new-array v5, v4, [Lqn/h$d;

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    const/4 v9, 0x0

    if-ge v8, v4, :cond_0

    new-instance v10, Lqn/h$d;

    invoke-direct {v10, v0, v9}, Lqn/h$d;-><init>(Lqn/h;Lqn/h$a;)V

    aput-object v10, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    const/16 v8, 0x100

    new-array v10, v8, [I

    move v11, v7

    move v12, v11

    :goto_1
    if-ge v11, v3, :cond_e

    if-lez v12, :cond_1

    invoke-static {v10, v7, v12, v7}, Ljava/util/Arrays;->fill([IIII)V

    :cond_1
    move v14, v7

    move v15, v14

    :goto_2
    if-ge v14, v4, :cond_8

    mul-int v16, v11, v4

    add-int v8, v14, v16

    iget-object v9, v1, Lqn/l;->d:[S

    aget-short v9, v9, v8

    if-nez v9, :cond_2

    goto :goto_6

    :cond_2
    add-int/lit8 v9, v14, -0x1

    add-int v9, v9, v16

    if-lez v14, :cond_3

    invoke-virtual {v0, v1, v8, v9, v2}, Lqn/h;->C(Lqn/l;III)Z

    move-result v16

    if-eqz v16, :cond_3

    iget-object v13, v1, Lqn/l;->f:[S

    aget-short v9, v13, v9

    if-eq v9, v6, :cond_3

    goto :goto_3

    :cond_3
    move v9, v6

    :goto_3
    if-ne v9, v6, :cond_4

    add-int/lit8 v9, v15, 0x1

    aget-object v13, v5, v15

    iput v6, v13, Lqn/h$d;->c:I

    iput v7, v13, Lqn/h$d;->a:I

    goto :goto_4

    :cond_4
    move/from16 v20, v15

    move v15, v9

    move/from16 v9, v20

    :goto_4
    add-int/lit8 v13, v11, -0x1

    mul-int/2addr v13, v4

    add-int/2addr v13, v14

    if-lez v11, :cond_7

    invoke-virtual {v0, v1, v8, v13, v2}, Lqn/h;->C(Lqn/l;III)Z

    move-result v18

    if-eqz v18, :cond_7

    iget-object v7, v1, Lqn/l;->f:[S

    aget-short v7, v7, v13

    if-eq v7, v6, :cond_7

    aget-object v13, v5, v15

    iget v6, v13, Lqn/h$d;->a:I

    if-nez v6, :cond_5

    iput v7, v13, Lqn/h$d;->c:I

    :cond_5
    move/from16 v19, v9

    iget v9, v13, Lqn/h$d;->c:I

    if-ne v9, v7, :cond_6

    add-int/lit8 v6, v6, 0x1

    iput v6, v13, Lqn/h$d;->a:I

    aget v6, v10, v7

    const/4 v9, 0x1

    add-int/2addr v6, v9

    aput v6, v10, v7

    goto :goto_5

    :cond_6
    const/16 v6, 0xff

    iput v6, v13, Lqn/h$d;->c:I

    goto :goto_5

    :cond_7
    move/from16 v19, v9

    :goto_5
    iget-object v6, v1, Lqn/l;->f:[S

    int-to-byte v7, v15

    int-to-short v7, v7

    aput-short v7, v6, v8

    move/from16 v15, v19

    :goto_6
    add-int/lit8 v14, v14, 0x1

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/16 v8, 0x100

    const/4 v9, 0x0

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    :goto_7
    if-ge v6, v15, :cond_b

    aget-object v7, v5, v6

    iget v8, v7, Lqn/h$d;->c:I

    const/16 v9, 0xff

    if-eq v8, v9, :cond_9

    aget v13, v10, v8

    iget v14, v7, Lqn/h$d;->a:I

    if-ne v13, v14, :cond_9

    iput v8, v7, Lqn/h$d;->b:I

    goto :goto_8

    :cond_9
    if-eq v12, v9, :cond_a

    add-int/lit8 v8, v12, 0x1

    iput v12, v7, Lqn/h$d;->b:I

    move v12, v8

    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_a
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Buffer too small"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    const/4 v6, 0x0

    :goto_9
    if-ge v6, v4, :cond_d

    mul-int v7, v11, v4

    add-int/2addr v7, v6

    iget-object v8, v1, Lqn/l;->f:[S

    aget-short v9, v8, v7

    const/16 v13, 0xff

    if-eq v9, v13, :cond_c

    aget-object v9, v5, v9

    iget v9, v9, Lqn/h$d;->b:I

    int-to-short v9, v9

    aput-short v9, v8, v7

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_d
    add-int/lit8 v11, v11, 0x1

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/16 v8, 0x100

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_e
    new-array v5, v12, [Lqn/h$c;

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v12, :cond_f

    new-instance v7, Lqn/h$c;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8}, Lqn/h$c;-><init>(Lqn/h;Lqn/h$a;)V

    aput-object v7, v5, v6

    const/16 v9, 0xff

    iput v9, v7, Lqn/h$c;->c:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_f
    const/4 v6, 0x0

    :goto_b
    if-ge v6, v3, :cond_13

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v4, :cond_12

    mul-int v8, v6, v4

    add-int/2addr v8, v7

    iget-object v9, v1, Lqn/l;->f:[S

    aget-short v9, v9, v8

    const/16 v10, 0xff

    if-ne v9, v10, :cond_10

    goto :goto_d

    :cond_10
    aget-object v10, v5, v9

    iget v11, v10, Lqn/h$c;->a:I

    const/4 v13, 0x1

    add-int/2addr v11, v13

    iput v11, v10, Lqn/h$c;->a:I

    iget-object v11, v1, Lqn/l;->d:[S

    aget-short v11, v11, v8

    iput v11, v10, Lqn/h$c;->d:I

    add-int/lit8 v10, v6, -0x1

    mul-int/2addr v10, v4

    add-int/2addr v10, v7

    if-lez v6, :cond_11

    invoke-virtual {v0, v1, v8, v10, v2}, Lqn/h;->C(Lqn/l;III)Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v8, v1, Lqn/l;->f:[S

    aget-short v8, v8, v10

    const/16 v10, 0xff

    if-eq v8, v10, :cond_11

    if-eq v8, v9, :cond_11

    aget-object v10, v5, v9

    iget-object v10, v10, Lqn/h$c;->b:Ljava/util/List;

    invoke-virtual {v0, v10, v8}, Lqn/h;->a(Ljava/util/List;I)V

    aget-object v8, v5, v8

    iget-object v8, v8, Lqn/h$c;->b:Ljava/util/List;

    invoke-virtual {v0, v8, v9}, Lqn/h;->a(Ljava/util/List;I)V

    :cond_11
    :goto_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_13
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v12, :cond_14

    aget-object v6, v5, v2

    iput v2, v6, Lqn/h$c;->c:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_14
    const/4 v2, 0x0

    :goto_f
    if-ge v2, v12, :cond_1b

    aget-object v6, v5, v2

    iget-object v7, v6, Lqn/h$c;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v9, -0x1

    const/4 v10, 0x0

    :goto_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v13, v5, v11

    iget v14, v6, Lqn/h$c;->c:I

    iget v15, v13, Lqn/h$c;->c:I

    if-ne v14, v15, :cond_15

    move-object/from16 v17, v7

    goto :goto_11

    :cond_15
    iget v8, v6, Lqn/h$c;->d:I

    move-object/from16 v17, v7

    iget v7, v13, Lqn/h$c;->d:I

    if-eq v8, v7, :cond_17

    :cond_16
    :goto_11
    move-object/from16 v7, v17

    goto :goto_10

    :cond_17
    iget v7, v13, Lqn/h$c;->a:I

    if-le v7, v10, :cond_16

    invoke-virtual {v0, v14, v15, v5, v12}, Lqn/h;->j(II[Lqn/h$c;I)Z

    move-result v7

    if-eqz v7, :cond_16

    iget v7, v13, Lqn/h$c;->a:I

    move v10, v7

    move v9, v11

    goto :goto_11

    :cond_18
    const/4 v7, -0x1

    if-eq v9, v7, :cond_1a

    iget v6, v6, Lqn/h$c;->c:I

    aget-object v7, v5, v9

    iget v7, v7, Lqn/h$c;->c:I

    const/4 v8, 0x0

    :goto_12
    if-ge v8, v12, :cond_1a

    aget-object v9, v5, v8

    iget v10, v9, Lqn/h$c;->c:I

    if-ne v10, v6, :cond_19

    iput v7, v9, Lqn/h$c;->c:I

    :cond_19
    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1b
    const/16 v2, 0x100

    new-array v6, v2, [I

    const/4 v7, 0x0

    :goto_13
    if-ge v7, v12, :cond_1c

    aget-object v8, v5, v7

    iget v8, v8, Lqn/h$c;->c:I

    const/4 v9, 0x1

    aput v9, v6, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    :cond_1c
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_14
    if-ge v7, v2, :cond_1e

    aget v9, v6, v7

    if-eqz v9, :cond_1d

    add-int/lit8 v9, v8, 0x1

    aput v8, v6, v7

    move v8, v9

    :cond_1d
    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_1e
    const/4 v2, 0x0

    :goto_15
    if-ge v2, v12, :cond_1f

    aget-object v7, v5, v2

    iget v9, v7, Lqn/h$c;->c:I

    aget v9, v6, v9

    iput v9, v7, Lqn/h$c;->c:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_1f
    iput v8, v1, Lqn/l;->b:I

    const/4 v7, 0x0

    :goto_16
    mul-int v2, v4, v3

    if-ge v7, v2, :cond_21

    iget-object v2, v1, Lqn/l;->f:[S

    aget-short v6, v2, v7

    const/16 v8, 0xff

    if-eq v6, v8, :cond_20

    aget-object v6, v5, v6

    iget v6, v6, Lqn/h$c;->c:I

    int-to-short v6, v6

    aput-short v6, v2, v7

    :cond_20
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    :cond_21
    return-void
.end method

.method public j(II[Lqn/h$c;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "oldRegId",
            "newRegId",
            "regs",
            "nregs"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p4, :cond_3

    aget-object v3, p3, v1

    iget v4, v3, Lqn/h$c;->c:I

    if-eq v4, p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, v3, Lqn/h$c;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v4, p3, v4

    iget v4, v4, Lqn/h$c;->c:I

    if-ne v4, p2, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    if-ne v2, p1, :cond_4

    move v0, p1

    :cond_4
    return v0
.end method

.method public final k(Lqn/q;I)Z
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mesh",
            "rem"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget v3, v1, Lqn/q;->a:I

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    iget v8, v1, Lqn/q;->c:I

    const/4 v9, 0x2

    if-ge v5, v8, :cond_3

    iget v8, v1, Lqn/q;->a:I

    mul-int/2addr v8, v5

    mul-int/2addr v8, v9

    iget-object v9, v1, Lqn/q;->e:[I

    invoke-virtual {v0, v9, v8, v3}, Lqn/h;->p([III)I

    move-result v9

    move v10, v4

    move v11, v10

    move v12, v11

    :goto_1
    if-ge v10, v9, :cond_1

    iget-object v13, v1, Lqn/q;->e:[I

    add-int v14, v8, v10

    aget v13, v13, v14

    if-ne v13, v2, :cond_0

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v11, v11, 0x1

    :cond_0
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    if-eqz v11, :cond_2

    add-int/lit8 v11, v11, 0x1

    sub-int/2addr v12, v11

    add-int/2addr v6, v12

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    if-gt v6, v9, :cond_4

    return v4

    :cond_4
    mul-int/2addr v7, v9

    new-array v5, v7, [I

    move v6, v4

    move v7, v6

    :goto_2
    iget v8, v1, Lqn/q;->c:I

    const/4 v10, 0x1

    if-ge v6, v8, :cond_b

    iget v8, v1, Lqn/q;->a:I

    mul-int/2addr v8, v6

    mul-int/2addr v8, v9

    iget-object v11, v1, Lqn/q;->e:[I

    invoke-virtual {v0, v11, v8, v3}, Lqn/h;->p([III)I

    move-result v11

    add-int/lit8 v12, v11, -0x1

    move v13, v12

    move v12, v4

    :goto_3
    if-ge v12, v11, :cond_a

    iget-object v14, v1, Lqn/q;->e:[I

    add-int v15, v8, v12

    aget v15, v14, v15

    if-eq v15, v2, :cond_5

    add-int v16, v8, v13

    aget v4, v14, v16

    if-ne v4, v2, :cond_9

    :cond_5
    add-int/2addr v13, v8

    aget v4, v14, v13

    if-ne v4, v2, :cond_6

    move/from16 v18, v15

    move v15, v4

    move/from16 v4, v18

    :cond_6
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_4
    if-ge v13, v7, :cond_8

    mul-int/lit8 v16, v13, 0x3

    add-int/lit8 v17, v16, 0x1

    aget v9, v5, v17

    if-ne v9, v4, :cond_7

    add-int/lit8 v16, v16, 0x2

    aget v9, v5, v16

    add-int/2addr v9, v10

    aput v9, v5, v16

    move v14, v10

    :cond_7
    add-int/lit8 v13, v13, 0x1

    const/4 v9, 0x2

    goto :goto_4

    :cond_8
    if-nez v14, :cond_9

    mul-int/lit8 v9, v7, 0x3

    aput v15, v5, v9

    add-int/lit8 v13, v9, 0x1

    aput v4, v5, v13

    const/4 v4, 0x2

    add-int/2addr v9, v4

    aput v10, v5, v9

    add-int/lit8 v7, v7, 0x1

    :cond_9
    add-int/lit8 v4, v12, 0x1

    move v13, v12

    const/4 v9, 0x2

    move v12, v4

    const/4 v4, 0x0

    goto :goto_3

    :cond_a
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x2

    goto :goto_2

    :cond_b
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v1, v7, :cond_d

    mul-int/lit8 v3, v1, 0x3

    const/4 v4, 0x2

    add-int/2addr v3, v4

    aget v3, v5, v3

    if-ge v3, v4, :cond_c

    add-int/lit8 v2, v2, 0x1

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_d
    const/4 v4, 0x2

    if-le v2, v4, :cond_e

    const/4 v1, 0x0

    return v1

    :cond_e
    return v10
.end method

.method public final l([IIII)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "verts",
            "a",
            "b",
            "c"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lqn/h;->d([IIII)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public m(Lqn/l;Ljava/nio/ByteOrder;Z)[B
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "layer",
            "order",
            "cCompatibility"
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lrn/b;

    invoke-direct {v1}, Lrn/b;-><init>()V

    :try_start_0
    iget-object v2, p1, Lqn/l;->a:Lqn/m;

    invoke-virtual {v1, v0, v2, p2, p3}, Lrn/b;->h(Ljava/io/OutputStream;Lqn/m;Ljava/nio/ByteOrder;Z)V

    iget-object p2, p1, Lqn/l;->a:Lqn/m;

    iget v1, p2, Lqn/m;->j:I

    iget p2, p2, Lqn/m;->k:I

    mul-int/2addr v1, p2

    mul-int/lit8 p2, v1, 0x3

    new-array p2, p2, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p1, Lqn/l;->c:[S

    aget-short v3, v3, v2

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    add-int v3, v1, v2

    iget-object v4, p1, Lqn/l;->d:[S

    aget-short v4, v4, v2

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v3, v2

    iget-object v4, p1, Lqn/l;->e:[S

    aget-short v4, v4, v2

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-static {p3}, Lsn/d;->a(Z)Lqn/i;

    move-result-object p1

    invoke-interface {p1, p2}, Lqn/i;->b([B)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public n(Lqn/m;[I[I[ILjava/nio/ByteOrder;Z)[B
    .locals 4
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
            "header",
            "heights",
            "areas",
            "cons",
            "order",
            "cCompatibility"
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lrn/b;

    invoke-direct {v1}, Lrn/b;-><init>()V

    :try_start_0
    invoke-virtual {v1, v0, p1, p5, p6}, Lrn/b;->h(Ljava/io/OutputStream;Lqn/m;Ljava/nio/ByteOrder;Z)V

    iget p5, p1, Lqn/m;->j:I

    iget p1, p1, Lqn/m;->k:I

    mul-int/2addr p5, p1

    mul-int/lit8 p1, p5, 0x3

    new-array p1, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p5, :cond_0

    aget v2, p2, v1

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int v2, p5, v1

    aget v3, p3, v1

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    mul-int/lit8 v2, p5, 0x2

    add-int/2addr v2, v1

    aget v3, p4, v1

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-static {p6}, Lsn/d;->a(Z)Lqn/i;

    move-result-object p2

    invoke-interface {p2, p1}, Lqn/i;->b([B)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final o(III)I
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

    const v0, -0x72594cbd

    mul-int/2addr p1, v0

    const v0, -0x27e9c7bf

    mul-int/2addr p2, v0

    add-int/2addr p1, p2

    const p2, -0x34e54ce1    # -1.0138399E7f

    mul-int/2addr p3, p2

    add-int/2addr p1, p3

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public final p([III)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "polys",
            "p",
            "maxVertsPerPoly"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int v1, p2, v0

    aget v1, p1, v1

    const v2, 0xffff

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p3
.end method

.method public q(Lqn/i;[BLjava/nio/ByteOrder;Z)Lqn/l;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "comp",
            "compressed",
            "order",
            "cCompatibility"
        }
    .end annotation

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance p3, Lqn/l;

    invoke-direct {p3}, Lqn/l;-><init>()V

    :try_start_0
    iget-object v1, p0, Lqn/h;->a:Lrn/a;

    invoke-virtual {v1, v0, p4}, Lrn/a;->a(Ljava/nio/ByteBuffer;Z)Lqn/m;

    move-result-object p4

    iput-object p4, p3, Lqn/l;->a:Lqn/m;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget v1, p4, Lqn/m;->j:I

    iget p4, p4, Lqn/m;->k:I

    mul-int/2addr v1, p4

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result p4

    array-length v2, p2

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    sub-int/2addr v2, v0

    mul-int/lit8 v0, v1, 0x3

    invoke-interface {p1, p2, p4, v2, v0}, Lqn/i;->a([BIII)[B

    move-result-object p1

    new-array p2, v1, [S

    iput-object p2, p3, Lqn/l;->c:[S

    new-array p2, v1, [S

    iput-object p2, p3, Lqn/l;->d:[S

    new-array p2, v1, [S

    iput-object p2, p3, Lqn/l;->e:[S

    new-array p2, v1, [S

    iput-object p2, p3, Lqn/l;->f:[S

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v1, :cond_0

    iget-object p4, p3, Lqn/l;->c:[S

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    aput-short v0, p4, p2

    iget-object p4, p3, Lqn/l;->d:[S

    add-int v0, p2, v1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    aput-short v0, p4, p2

    iget-object p4, p3, Lqn/l;->e:[S

    mul-int/lit8 v0, v1, 0x2

    add-int/2addr v0, p2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    aput-short v0, p4, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p3

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final r(III[I[I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "j",
            "n",
            "verts",
            "indices"
        }
    .end annotation

    invoke-virtual/range {p0 .. p5}, Lqn/h;->z(III[I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p5}, Lqn/h;->s(III[I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final s(III[I[I)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "j",
            "n",
            "verts",
            "indices"
        }
    .end annotation

    aget v0, p5, p1

    and-int/lit16 v0, v0, 0x7fff

    mul-int/lit8 v0, v0, 0x4

    aget v1, p5, p2

    and-int/lit16 v1, v1, 0x7fff

    mul-int/lit8 v7, v1, 0x4

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, p3, :cond_2

    invoke-virtual {p0, v9, p3}, Lqn/h;->J(II)I

    move-result v1

    if-eq v9, p1, :cond_1

    if-eq v1, p1, :cond_1

    if-eq v9, p2, :cond_1

    if-eq v1, p2, :cond_1

    aget v2, p5, v9

    and-int/lit16 v2, v2, 0x7fff

    mul-int/lit8 v5, v2, 0x4

    aget v1, p5, v1

    and-int/lit16 v1, v1, 0x7fff

    mul-int/lit8 v6, v1, 0x4

    invoke-virtual {p0, p4, v0, v5}, Lqn/h;->S([III)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p4, v7, v5}, Lqn/h;->S([III)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p4, v0, v6}, Lqn/h;->S([III)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p4, v7, v6}, Lqn/h;->S([III)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, p0

    move-object v2, p4

    move v3, v0

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Lqn/h;->A([IIIII)Z

    move-result v1

    if-eqz v1, :cond_1

    return v8

    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final t(IIIIII)F
    .locals 4
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
            "x",
            "z",
            "px",
            "pz",
            "qx",
            "qz"
        }
    .end annotation

    sub-int/2addr p5, p3

    int-to-float p5, p5

    sub-int/2addr p6, p4

    int-to-float p6, p6

    sub-int v0, p1, p3

    int-to-float v0, v0

    sub-int v1, p2, p4

    int-to-float v1, v1

    mul-float v2, p5, p5

    mul-float v3, p6, p6

    add-float/2addr v2, v3

    mul-float/2addr v0, p5

    mul-float/2addr v1, p6

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v3, v2, v1

    if-lez v3, :cond_0

    div-float/2addr v0, v2

    :cond_0
    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    int-to-float p3, p3

    mul-float/2addr p5, v1

    add-float/2addr p3, p5

    int-to-float p1, p1

    sub-float/2addr p3, p1

    int-to-float p1, p4

    mul-float/2addr v1, p6

    add-float/2addr p1, v1

    int-to-float p2, p2

    sub-float/2addr p1, p2

    mul-float/2addr p3, p3

    mul-float/2addr p1, p1

    add-float/2addr p3, p1

    return p3
.end method

.method public final v(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    filled-new-array {v2, v0, v1, v0}, [I

    move-result-object v0

    and-int/lit8 p1, p1, 0x3

    aget p1, v0, p1

    return p1
.end method

.method public final w(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    filled-new-array {v2, v0, v2, v1}, [I

    move-result-object v0

    and-int/lit8 p1, p1, 0x3

    aget p1, v0, p1

    return p1
.end method

.method public final x(Lqn/l;III)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "layer",
            "ax",
            "ay",
            "dir"
        }
    .end annotation

    iget-object v0, p1, Lqn/l;->a:Lqn/m;

    iget v0, v0, Lqn/m;->j:I

    mul-int v1, p3, v0

    add-int/2addr v1, p2

    iget-object v2, p1, Lqn/l;->e:[S

    aget-short v1, v2, v1

    and-int/lit8 v2, v1, 0xf

    shr-int/lit8 v1, v1, 0x4

    const/4 v3, 0x1

    shl-int/2addr v3, p4

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    and-int p1, v1, v3

    if-eqz p1, :cond_0

    add-int/lit16 p4, p4, 0xf8

    return p4

    :cond_0
    const/16 p1, 0xff

    return p1

    :cond_1
    invoke-virtual {p0, p4}, Lqn/h;->v(I)I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {p0, p4}, Lqn/h;->w(I)I

    move-result p4

    add-int/2addr p3, p4

    mul-int/2addr p3, v0

    add-int/2addr p2, p3

    iget-object p1, p1, Lqn/l;->f:[S

    aget-short p1, p1, p2

    return p1
.end method

.method public final y([III[II)[I
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "polys",
            "pa",
            "pb",
            "verts",
            "maxVertsPerPoly"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual {v0, v1, v2, v5}, Lqn/h;->p([III)I

    move-result v6

    invoke-virtual {v0, v1, v3, v5}, Lqn/h;->p([III)I

    move-result v7

    add-int v8, v6, v7

    add-int/lit8 v8, v8, -0x2

    const/4 v9, 0x0

    const/4 v10, -0x1

    if-le v8, v5, :cond_0

    filled-new-array {v10, v9, v9}, [I

    move-result-object v1

    return-object v1

    :cond_0
    move v5, v9

    move v8, v10

    move v11, v8

    :goto_0
    if-ge v5, v6, :cond_5

    add-int v12, v2, v5

    aget v12, v1, v12

    add-int/lit8 v13, v5, 0x1

    rem-int v14, v13, v6

    add-int/2addr v14, v2

    aget v14, v1, v14

    if-le v12, v14, :cond_1

    move/from16 v18, v14

    move v14, v12

    move/from16 v12, v18

    :cond_1
    move v15, v9

    :goto_1
    if-ge v15, v7, :cond_4

    add-int v16, v3, v15

    aget v9, v1, v16

    add-int/lit8 v16, v15, 0x1

    rem-int v17, v16, v7

    add-int v17, v3, v17

    aget v10, v1, v17

    if-le v9, v10, :cond_2

    move/from16 v18, v10

    move v10, v9

    move/from16 v9, v18

    :cond_2
    if-ne v12, v9, :cond_3

    if-ne v14, v10, :cond_3

    move v8, v5

    move v11, v15

    goto :goto_2

    :cond_3
    move/from16 v15, v16

    const/4 v9, 0x0

    const/4 v10, -0x1

    goto :goto_1

    :cond_4
    :goto_2
    move v5, v13

    const/4 v9, 0x0

    const/4 v10, -0x1

    goto :goto_0

    :cond_5
    move v5, v10

    if-eq v8, v5, :cond_6

    if-ne v11, v5, :cond_7

    :cond_6
    move v1, v5

    goto :goto_3

    :cond_7
    add-int v5, v8, v6

    add-int/lit8 v5, v5, -0x1

    rem-int/2addr v5, v6

    add-int/2addr v5, v2

    aget v5, v1, v5

    add-int v9, v2, v8

    aget v10, v1, v9

    add-int/lit8 v12, v11, 0x2

    rem-int/2addr v12, v7

    add-int/2addr v12, v3

    aget v12, v1, v12

    mul-int/lit8 v5, v5, 0x3

    mul-int/lit8 v10, v10, 0x3

    mul-int/lit8 v12, v12, 0x3

    invoke-virtual {v0, v4, v5, v10, v12}, Lqn/h;->R([IIII)Z

    move-result v5

    if-nez v5, :cond_8

    const/4 v5, -0x1

    filled-new-array {v5, v8, v11}, [I

    move-result-object v1

    return-object v1

    :cond_8
    add-int v5, v11, v7

    add-int/lit8 v5, v5, -0x1

    rem-int/2addr v5, v7

    add-int/2addr v5, v3

    aget v5, v1, v5

    add-int/2addr v3, v11

    aget v3, v1, v3

    add-int/lit8 v7, v8, 0x2

    rem-int/2addr v7, v6

    add-int/2addr v7, v2

    aget v7, v1, v7

    mul-int/lit8 v5, v5, 0x3

    mul-int/lit8 v3, v3, 0x3

    mul-int/lit8 v7, v7, 0x3

    invoke-virtual {v0, v4, v5, v3, v7}, Lqn/h;->R([IIII)Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v3, -0x1

    filled-new-array {v3, v8, v11}, [I

    move-result-object v1

    return-object v1

    :cond_9
    aget v3, v1, v9

    add-int/lit8 v5, v8, 0x1

    rem-int/2addr v5, v6

    add-int/2addr v2, v5

    aget v1, v1, v2

    mul-int/lit8 v3, v3, 0x3

    aget v2, v4, v3

    mul-int/lit8 v1, v1, 0x3

    aget v5, v4, v1

    sub-int/2addr v2, v5

    add-int/lit8 v3, v3, 0x2

    aget v3, v4, v3

    add-int/lit8 v1, v1, 0x2

    aget v1, v4, v1

    sub-int/2addr v3, v1

    mul-int/2addr v2, v2

    mul-int/2addr v3, v3

    add-int/2addr v2, v3

    filled-new-array {v2, v8, v11}, [I

    move-result-object v1

    return-object v1

    :goto_3
    filled-new-array {v1, v8, v11}, [I

    move-result-object v1

    return-object v1
.end method

.method public final z(III[I[I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "j",
            "n",
            "verts",
            "indices"
        }
    .end annotation

    aget v0, p5, p1

    and-int/lit16 v0, v0, 0x7fff

    mul-int/lit8 v0, v0, 0x4

    aget p2, p5, p2

    and-int/lit16 p2, p2, 0x7fff

    mul-int/lit8 p2, p2, 0x4

    invoke-virtual {p0, p1, p3}, Lqn/h;->J(II)I

    move-result v1

    aget v1, p5, v1

    and-int/lit16 v1, v1, 0x7fff

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, p1, p3}, Lqn/h;->L(II)I

    move-result p1

    aget p1, p5, p1

    and-int/lit16 p1, p1, 0x7fff

    mul-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p4, p1, v0, v1}, Lqn/h;->E([IIII)Z

    move-result p3

    const/4 p5, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_1

    invoke-virtual {p0, p4, v0, p2, p1}, Lqn/h;->D([IIII)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p4, p2, v0, v1}, Lqn/h;->D([IIII)Z

    move-result p1

    if-eqz p1, :cond_0

    move p5, v2

    :cond_0
    return p5

    :cond_1
    invoke-virtual {p0, p4, v0, p2, v1}, Lqn/h;->E([IIII)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p0, p4, p2, v0, p1}, Lqn/h;->E([IIII)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    move p5, v2

    :cond_3
    return p5
.end method

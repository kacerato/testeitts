.class public Lwn/F;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwn/F$b;
    }
.end annotation


# static fields
.field public static a:I = 0x7f

.field public static b:I = 0xff

.field public static c:I = 0x20

.field public static d:I = 0x0

.field public static e:I = 0x0

.field public static f:I = 0x0

.field public static final g:I = 0x100


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lwn/u;->d:I

    sput v0, Lwn/F;->d:I

    const/4 v0, -0x1

    sput v0, Lwn/F;->e:I

    const/4 v0, -0x2

    sput v0, Lwn/F;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A([FIII)F
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
            "p1",
            "p2",
            "p3"
        }
    .end annotation

    aget v0, p0, p2

    aget v1, p0, p1

    sub-float/2addr v0, v1

    add-int/lit8 p2, p2, 0x2

    aget p2, p0, p2

    add-int/lit8 p1, p1, 0x2

    aget p1, p0, p1

    sub-float/2addr p2, p1

    aget v2, p0, p3

    sub-float/2addr v2, v1

    add-int/lit8 p3, p3, 0x2

    aget p0, p0, p3

    sub-float/2addr p0, p1

    mul-float/2addr v0, p0

    mul-float/2addr p2, v2

    sub-float/2addr v0, p2

    return v0
.end method

.method public static B([F[F[F)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p1",
            "p2",
            "p3"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p1, v0

    aget v2, p0, v0

    sub-float/2addr v1, v2

    const/4 v3, 0x2

    aget p1, p1, v3

    aget p0, p0, v3

    sub-float/2addr p1, p0

    aget v0, p2, v0

    sub-float/2addr v0, v2

    aget p2, p2, v3

    sub-float/2addr p2, p0

    mul-float/2addr v1, p2

    mul-float/2addr p1, v0

    sub-float/2addr v1, p1

    return v1
.end method

.method public static C([FII)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "verts",
            "p",
            "q"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lwn/F;->F([FII)F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static D([F[F)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "q"
        }
    .end annotation

    invoke-static {p0, p1}, Lwn/F;->G([F[F)F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static E([F[FI)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "verts",
            "q"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lwn/F;->H([F[FI)F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static F([FII)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "verts",
            "p",
            "q"
        }
    .end annotation

    aget v0, p0, p2

    aget v1, p0, p1

    sub-float/2addr v0, v1

    add-int/lit8 p2, p2, 0x2

    aget p2, p0, p2

    add-int/lit8 p1, p1, 0x2

    aget p0, p0, p1

    sub-float/2addr p2, p0

    mul-float/2addr v0, v0

    mul-float/2addr p2, p2

    add-float/2addr v0, p2

    return v0
.end method

.method public static G([F[F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "q"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p1, v0

    aget v0, p0, v0

    sub-float/2addr v1, v0

    const/4 v0, 0x2

    aget p1, p1, v0

    aget p0, p0, v0

    sub-float/2addr p1, p0

    mul-float/2addr v1, v1

    mul-float/2addr p1, p1

    add-float/2addr v1, p1

    return v1
.end method

.method public static H([F[FI)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "verts",
            "q"
        }
    .end annotation

    aget v0, p1, p2

    const/4 v1, 0x0

    aget v1, p0, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x2

    add-int/2addr p2, v1

    aget p1, p1, p2

    aget p0, p0, v1

    sub-float/2addr p1, p0

    mul-float/2addr v0, v0

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    return v0
.end method

.method public static I([F[F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v0, p1, v0

    mul-float/2addr v1, v0

    const/4 v0, 0x2

    aget p0, p0, v0

    aget p1, p1, v0

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    return v1
.end method

.method public static a(Lwn/N;Ljava/util/List;IIIII)V
    .locals 0
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
            "ctx",
            "edges",
            "maxEdges",
            "s",
            "t",
            "l",
            "r"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwn/N;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IIIII)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    div-int/lit8 p0, p0, 0x4

    if-ge p0, p2, :cond_1

    invoke-static {p1, p3, p4}, Lwn/F;->l(Ljava/util/List;II)I

    move-result p0

    sget p2, Lwn/F;->e:I

    if-ne p0, p2, :cond_0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "addEdge: Too many edges ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lwn/N;[FIFFILwn/c;Lwn/F$b;[FLjava/util/List;)I
    .locals 40
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
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
            "ctx",
            "in",
            "nin",
            "sampleDist",
            "sampleMaxError",
            "heightSearchRadius",
            "chf",
            "hp",
            "verts",
            "tris"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwn/N;",
            "[FIFFI",
            "Lwn/c;",
            "Lwn/F$b;",
            "[F",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    const/4 v13, 0x2

    new-instance v14, Ljava/util/ArrayList;

    const/16 v1, 0x200

    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(I)V

    sget v1, Lwn/F;->c:I

    const/4 v15, 0x1

    add-int/2addr v1, v15

    const/4 v6, 0x3

    mul-int/2addr v1, v6

    new-array v1, v1, [F

    sget v2, Lwn/F;->a:I

    new-array v5, v2, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v7, :cond_0

    mul-int/lit8 v3, v2, 0x3

    invoke-static {v10, v3, v0, v3}, Lwn/I;->c([FI[FI)V

    add-int/2addr v2, v15

    goto :goto_0

    :cond_0
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->clear()V

    iget v3, v9, Lwn/c;->k:F

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v24, v2, v3

    invoke-static {v10, v7}, Lwn/F;->v([FI)F

    move-result v2

    const/16 v25, 0x0

    cmpl-float v26, v8, v25

    if-lez v26, :cond_e

    add-int/lit8 v16, v7, -0x1

    move/from16 v28, v7

    move/from16 v27, v16

    const/4 v12, 0x0

    const/16 v29, 0x0

    :goto_1
    if-ge v12, v7, :cond_d

    mul-int/lit8 v16, v27, 0x3

    mul-int/lit8 v17, v12, 0x3

    aget v18, v0, v16

    aget v19, v0, v17

    sub-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    const v19, 0x358637bd    # 1.0E-6f

    cmpg-float v18, v18, v19

    if-gez v18, :cond_1

    add-int/lit8 v18, v16, 0x2

    aget v18, v0, v18

    add-int/lit8 v19, v17, 0x2

    aget v19, v0, v19

    cmpl-float v18, v18, v19

    if-lez v18, :cond_2

    :goto_2
    move/from16 v31, v15

    move/from16 v30, v17

    goto :goto_3

    :cond_1
    aget v18, v0, v16

    aget v19, v0, v17

    cmpl-float v18, v18, v19

    if-lez v18, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v30, v16

    move/from16 v16, v17

    const/16 v31, 0x0

    :goto_3
    aget v17, v0, v16

    aget v18, v0, v30

    sub-float v32, v17, v18

    add-int/lit8 v17, v16, 0x1

    aget v17, v0, v17

    add-int/lit8 v33, v30, 0x1

    aget v18, v0, v33

    sub-float v34, v17, v18

    add-int/lit8 v16, v16, 0x2

    aget v16, v0, v16

    add-int/lit8 v35, v30, 0x2

    aget v17, v0, v35

    sub-float v36, v16, v17

    mul-float v16, v32, v32

    mul-float v17, v36, v36

    add-float v4, v16, v17

    move-object/from16 v37, v14

    float-to-double v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v4, v13

    div-float/2addr v4, v8

    float-to-double v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v4, v13

    add-int/2addr v4, v15

    sget v13, Lwn/F;->c:I

    if-lt v4, v13, :cond_3

    add-int/lit8 v4, v13, -0x1

    :cond_3
    add-int v13, v28, v4

    sget v14, Lwn/F;->a:I

    if-lt v13, v14, :cond_4

    sub-int/2addr v14, v15

    sub-int v4, v14, v28

    :cond_4
    const/4 v13, 0x0

    :goto_4
    if-gt v13, v4, :cond_5

    int-to-float v14, v13

    int-to-float v15, v4

    div-float/2addr v14, v15

    mul-int/lit8 v15, v13, 0x3

    aget v16, v0, v30

    mul-float v17, v32, v14

    add-float v16, v16, v17

    aput v16, v1, v15

    const/16 v16, 0x1

    add-int/lit8 v39, v15, 0x1

    aget v16, v0, v33

    mul-float v17, v34, v14

    add-float v16, v16, v17

    aput v16, v1, v39

    const/16 v16, 0x2

    add-int/lit8 v17, v15, 0x2

    aget v16, v0, v35

    mul-float v14, v14, v36

    add-float v18, v16, v14

    aput v18, v1, v17

    aget v16, v1, v15

    aget v17, v1, v39

    iget v14, v9, Lwn/c;->l:F

    move/from16 v19, v3

    move/from16 v20, v24

    move/from16 v21, v14

    move/from16 v22, p5

    move-object/from16 v23, p7

    invoke-static/range {v16 .. v23}, Lwn/F;->n(FFFFFFILwn/F$b;)I

    move-result v14

    int-to-float v14, v14

    iget v15, v9, Lwn/c;->l:F

    mul-float/2addr v14, v15

    aput v14, v1, v39

    const/16 v38, 0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v15, v38

    goto :goto_4

    :cond_5
    move/from16 v38, v15

    sget v13, Lwn/F;->c:I

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput v14, v13, v14

    aput v4, v13, v38

    move v15, v14

    const/4 v4, 0x2

    :goto_5
    add-int/lit8 v14, v4, -0x1

    if-ge v15, v14, :cond_a

    aget v14, v13, v15

    add-int/lit8 v16, v15, 0x1

    move/from16 v17, v3

    aget v3, v13, v16

    mul-int/lit8 v11, v14, 0x3

    mul-int/lit8 v9, v3, 0x3

    add-int/lit8 v14, v14, 0x1

    move/from16 v18, v25

    const/4 v7, -0x1

    :goto_6
    if-ge v14, v3, :cond_7

    move/from16 v19, v3

    mul-int/lit8 v3, v14, 0x3

    invoke-static {v1, v3, v11, v9}, Lwn/F;->j([FIII)F

    move-result v3

    cmpl-float v20, v3, v18

    if-lez v20, :cond_6

    move/from16 v18, v3

    move v7, v14

    :cond_6
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v19

    goto :goto_6

    :cond_7
    const/4 v3, -0x1

    if-eq v7, v3, :cond_9

    mul-float v9, p4, p4

    cmpl-float v9, v18, v9

    if-lez v9, :cond_9

    move v9, v4

    :goto_7
    if-le v9, v15, :cond_8

    add-int/lit8 v11, v9, -0x1

    aget v11, v13, v11

    aput v11, v13, v9

    add-int/2addr v9, v3

    goto :goto_7

    :cond_8
    aput v7, v13, v16

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_9
    move/from16 v15, v16

    :goto_8
    move/from16 v7, p2

    move-object/from16 v9, p6

    move-object/from16 v11, p9

    move/from16 v3, v17

    goto :goto_5

    :cond_a
    move/from16 v17, v3

    add-int/lit8 v15, v29, 0x1

    aput v27, v5, v29

    if-eqz v31, :cond_c

    const/4 v3, 0x2

    sub-int/2addr v4, v3

    :goto_9
    if-lez v4, :cond_b

    mul-int/lit8 v3, v28, 0x3

    aget v7, v13, v4

    mul-int/2addr v7, v6

    invoke-static {v10, v3, v1, v7}, Lwn/I;->c([FI[FI)V

    add-int/lit8 v3, v15, 0x1

    aput v28, v5, v15

    add-int/lit8 v28, v28, 0x1

    const/4 v7, -0x1

    add-int/2addr v4, v7

    move v15, v3

    goto :goto_9

    :cond_b
    move/from16 v29, v15

    goto :goto_b

    :cond_c
    move/from16 v3, v38

    :goto_a
    if-ge v3, v14, :cond_b

    mul-int/lit8 v4, v28, 0x3

    aget v7, v13, v3

    mul-int/2addr v7, v6

    invoke-static {v10, v4, v1, v7}, Lwn/I;->c([FI[FI)V

    add-int/lit8 v4, v15, 0x1

    aput v28, v5, v15

    add-int/lit8 v28, v28, 0x1

    add-int/lit8 v3, v3, 0x1

    move v15, v4

    goto :goto_a

    :goto_b
    add-int/lit8 v15, v12, 0x1

    move/from16 v7, p2

    move-object/from16 v9, p6

    move-object/from16 v11, p9

    move/from16 v27, v12

    move v12, v15

    move/from16 v3, v17

    move-object/from16 v14, v37

    const/4 v13, 0x2

    const/4 v15, 0x1

    goto/16 :goto_1

    :cond_d
    move/from16 v17, v3

    move-object/from16 v37, v14

    move/from16 v7, v28

    goto :goto_c

    :cond_e
    move/from16 v17, v3

    move-object/from16 v37, v14

    move/from16 v7, p2

    const/16 v29, 0x0

    :goto_c
    const/high16 v9, 0x40000000    # 2.0f

    mul-float v1, v8, v9

    cmpg-float v1, v2, v1

    if-gez v1, :cond_f

    move v0, v7

    move-object/from16 v1, p8

    move/from16 v2, v29

    move-object v3, v5

    move/from16 v4, p2

    move-object/from16 v5, p9

    invoke-static/range {v0 .. v5}, Lwn/F;->y(I[FI[IILjava/util/List;)V

    return v7

    :cond_f
    move v1, v7

    move-object/from16 v2, p8

    move/from16 v11, v17

    move/from16 v3, v29

    const/4 v12, 0x0

    move-object v4, v5

    move-object v13, v5

    move/from16 v5, p2

    move v14, v6

    move-object/from16 v6, p9

    invoke-static/range {v1 .. v6}, Lwn/F;->y(I[FI[IILjava/util/List;)V

    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1e

    if-lez v26, :cond_1c

    new-array v1, v14, [F

    new-array v2, v14, [F

    invoke-static {v1, v0, v12}, Lwn/I;->f([F[FI)V

    invoke-static {v2, v0, v12}, Lwn/I;->f([F[FI)V

    move/from16 v4, p2

    const/4 v3, 0x1

    :goto_d
    if-ge v3, v4, :cond_10

    mul-int/lit8 v6, v3, 0x3

    invoke-static {v1, v0, v6}, Lwn/I;->l([F[FI)V

    invoke-static {v2, v0, v6}, Lwn/I;->j([F[FI)V

    const/4 v5, 0x1

    add-int/2addr v3, v5

    goto :goto_d

    :cond_10
    aget v3, v1, v12

    div-float/2addr v3, v8

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v3, v5

    aget v5, v2, v12

    div-float/2addr v5, v8

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    const/4 v6, 0x2

    aget v15, v1, v6

    div-float/2addr v15, v8

    float-to-double v9, v15

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    aget v10, v2, v6

    div-float/2addr v10, v8

    move-object v6, v13

    float-to-double v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v10, v12

    invoke-interface/range {v37 .. v37}, Ljava/util/List;->clear()V

    :goto_e
    if-ge v9, v10, :cond_13

    move v12, v3

    :goto_f
    if-ge v12, v5, :cond_12

    int-to-float v13, v12

    mul-float/2addr v13, v8

    const/4 v15, 0x1

    aget v16, v2, v15

    aget v17, v1, v15

    add-float v16, v16, v17

    const/high16 v17, 0x3f000000    # 0.5f

    mul-float v16, v16, v17

    int-to-float v15, v9

    mul-float/2addr v15, v8

    move-object/from16 v27, v1

    new-array v1, v14, [F

    const/16 v17, 0x0

    aput v13, v1, v17

    const/4 v13, 0x1

    aput v16, v1, v13

    const/16 v16, 0x2

    aput v15, v1, v16

    invoke-static {v4, v0, v1}, Lwn/F;->h(I[F[F)F

    move-result v15

    neg-float v14, v8

    const/high16 v26, 0x40000000    # 2.0f

    div-float v14, v14, v26

    cmpl-float v14, v15, v14

    if-lez v14, :cond_11

    move v1, v13

    move-object/from16 v15, v37

    move-object/from16 v13, p6

    goto :goto_10

    :cond_11
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v15, v37

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget v14, v1, v17

    aget v17, v1, v13

    aget v18, v1, v16

    move-object/from16 v13, p6

    iget v1, v13, Lwn/c;->l:F

    move/from16 v16, v14

    move/from16 v19, v11

    move/from16 v20, v24

    move/from16 v21, v1

    move/from16 v22, p5

    move-object/from16 v23, p7

    invoke-static/range {v16 .. v23}, Lwn/F;->n(FFFFFFILwn/F$b;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    :goto_10
    add-int/2addr v12, v1

    move-object/from16 v37, v15

    move-object/from16 v1, v27

    const/4 v14, 0x3

    goto :goto_f

    :cond_12
    move-object/from16 v13, p6

    move-object/from16 v27, v1

    move-object/from16 v15, v37

    const/4 v1, 0x1

    const/high16 v26, 0x40000000    # 2.0f

    add-int/2addr v9, v1

    move-object/from16 v1, v27

    const/4 v14, 0x3

    goto/16 :goto_e

    :cond_13
    move-object/from16 v13, p6

    move-object/from16 v15, v37

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v9, v0, 0x4

    move v0, v7

    const/4 v7, 0x0

    :goto_11
    if-ge v7, v9, :cond_14

    sget v1, Lwn/F;->a:I

    if-lt v0, v1, :cond_15

    :cond_14
    move-object/from16 v14, p9

    goto/16 :goto_14

    :cond_15
    const/4 v1, 0x3

    new-array v2, v1, [F

    move/from16 v5, v25

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v9, :cond_19

    mul-int/lit8 v10, v4, 0x4

    add-int/lit8 v12, v10, 0x3

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eqz v12, :cond_16

    move-object/from16 v10, p8

    move-object/from16 v14, p9

    move/from16 p1, v9

    const/4 v9, 0x2

    goto :goto_13

    :cond_16
    new-array v12, v1, [F

    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v8

    invoke-static {v4}, Lwn/F;->p(I)F

    move-result v14

    mul-float/2addr v14, v11

    const v16, 0x3dcccccd    # 0.1f

    mul-float v14, v14, v16

    add-float/2addr v1, v14

    const/4 v14, 0x0

    aput v1, v12, v14

    const/4 v1, 0x1

    add-int/lit8 v14, v10, 0x1

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-float v14, v14

    move/from16 p1, v9

    iget v9, v13, Lwn/c;->l:F

    mul-float/2addr v14, v9

    aput v14, v12, v1

    const/4 v9, 0x2

    add-int/2addr v10, v9

    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v8

    invoke-static {v4}, Lwn/F;->q(I)F

    move-result v10

    mul-float/2addr v10, v11

    mul-float v10, v10, v16

    add-float/2addr v1, v10

    aput v1, v12, v9

    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    move-object/from16 v10, p8

    move-object/from16 v14, p9

    invoke-static {v12, v10, v0, v14, v1}, Lwn/F;->i([F[FILjava/util/List;I)F

    move-result v1

    cmpg-float v16, v1, v25

    if-gez v16, :cond_17

    goto :goto_13

    :cond_17
    cmpl-float v16, v1, v5

    if-lez v16, :cond_18

    move v5, v1

    move v3, v4

    move-object v2, v12

    :cond_18
    :goto_13
    const/4 v12, 0x1

    add-int/2addr v4, v12

    move/from16 v9, p1

    const/4 v1, 0x3

    goto/16 :goto_12

    :cond_19
    move-object/from16 v10, p8

    move-object/from16 v14, p9

    move/from16 p1, v9

    const/4 v9, 0x2

    const/4 v12, 0x1

    cmpg-float v1, v5, p4

    if-lez v1, :cond_1b

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1a

    goto :goto_14

    :cond_1a
    mul-int/lit8 v3, v3, 0x4

    const/16 v16, 0x3

    add-int/lit8 v3, v3, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    mul-int/lit8 v1, v0, 0x3

    const/4 v3, 0x0

    invoke-static {v10, v1, v2, v3}, Lwn/I;->c([FI[FI)V

    add-int/lit8 v17, v0, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p8

    move/from16 v3, v29

    move-object v4, v6

    move/from16 v18, v5

    move-object/from16 v5, p9

    invoke-static/range {v0 .. v5}, Lwn/F;->f(Lwn/N;I[FI[ILjava/util/List;)V

    add-int/2addr v7, v12

    move/from16 v9, p1

    move/from16 v0, v17

    goto/16 :goto_11

    :cond_1b
    :goto_14
    move v7, v0

    goto :goto_15

    :cond_1c
    move-object/from16 v14, p9

    :goto_15
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    sget v1, Lwn/F;->b:I

    if-gt v0, v1, :cond_1d

    return v7

    :cond_1d
    mul-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    invoke-interface {v14, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface/range {p9 .. p9}, Ljava/util/List;->clear()V

    invoke-interface {v14, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rcBuildPolyMeshDetail: Shrinking triangle count from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to max "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lwn/F;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1e
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildPolyDetail: Could not triangulate polygon ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") verts)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Lwn/N;Lwn/k;Lwn/c;FF)Lwn/l;
    .locals 40
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "mesh",
            "chf",
            "sampleDist",
            "sampleMaxError"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    const-string v13, "POLYMESHDETAIL"

    invoke-virtual {v10, v13}, Lwn/N;->f(Ljava/lang/String;)V

    iget v0, v11, Lwn/k;->e:I

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    iget v0, v11, Lwn/k;->f:I

    if-nez v0, :cond_0

    goto/16 :goto_f

    :cond_0
    new-instance v14, Lwn/l;

    invoke-direct {v14}, Lwn/l;-><init>()V

    iget v15, v11, Lwn/k;->g:I

    iget v9, v11, Lwn/k;->l:F

    iget v8, v11, Lwn/k;->m:F

    iget-object v7, v11, Lwn/k;->j:[F

    iget v6, v11, Lwn/k;->n:I

    iget v0, v11, Lwn/k;->o:F

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-int v5, v2

    new-instance v4, Ljava/util/ArrayList;

    const/16 v0, 0x200

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v0, 0x300

    new-array v3, v0, [F

    new-instance v2, Lwn/F$b;

    invoke-direct {v2, v1}, Lwn/F$b;-><init>(Lwn/F$a;)V

    iget v0, v11, Lwn/k;->f:I

    mul-int/lit8 v0, v0, 0x4

    new-array v1, v0, [I

    mul-int/lit8 v0, v15, 0x3

    new-array v0, v0, [F

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v19, v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/16 v18, 0x0

    :goto_0
    iget v5, v11, Lwn/k;->f:I

    const/16 v23, 0x2

    const/16 v24, 0x1

    if-ge v10, v5, :cond_5

    mul-int v5, v10, v15

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v20, v10, 0x4

    move/from16 v21, v6

    iget v6, v12, Lwn/c;->a:I

    aput v6, v1, v20

    add-int/lit8 v6, v20, 0x1

    const/16 v22, 0x0

    aput v22, v1, v6

    add-int/lit8 v25, v20, 0x2

    move-object/from16 v26, v7

    iget v7, v12, Lwn/c;->b:I

    aput v7, v1, v25

    add-int/lit8 v7, v20, 0x3

    aput v22, v1, v7

    move-object/from16 v27, v13

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v15, :cond_2

    move/from16 v28, v8

    iget-object v8, v11, Lwn/k;->b:[I

    add-int v29, v5, v13

    aget v8, v8, v29

    move/from16 v29, v5

    sget v5, Lwn/u;->j:I

    if-ne v8, v5, :cond_1

    move-object/from16 v30, v0

    goto :goto_2

    :cond_1
    mul-int/lit8 v8, v8, 0x3

    aget v5, v1, v20

    move-object/from16 v30, v0

    iget-object v0, v11, Lwn/k;->a:[I

    aget v0, v0, v8

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    aput v0, v1, v20

    aget v0, v1, v6

    iget-object v5, v11, Lwn/k;->a:[I

    aget v5, v5, v8

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v1, v6

    aget v0, v1, v25

    iget-object v5, v11, Lwn/k;->a:[I

    add-int/lit8 v8, v8, 0x2

    aget v5, v5, v8

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    aput v0, v1, v25

    aget v0, v1, v7

    iget-object v5, v11, Lwn/k;->a:[I

    aget v5, v5, v8

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v1, v7

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v8, v28

    move/from16 v5, v29

    move-object/from16 v0, v30

    goto :goto_1

    :cond_2
    move-object/from16 v30, v0

    move/from16 v28, v8

    :goto_2
    aget v0, v1, v20

    add-int/lit8 v0, v0, -0x1

    const/4 v5, 0x0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v1, v20

    iget v0, v12, Lwn/c;->a:I

    aget v8, v1, v6

    add-int/lit8 v8, v8, 0x1

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    aput v0, v1, v6

    aget v0, v1, v25

    add-int/lit8 v0, v0, -0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v1, v25

    iget v0, v12, Lwn/c;->b:I

    aget v5, v1, v7

    add-int/lit8 v5, v5, 0x1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    aput v0, v1, v7

    aget v5, v1, v20

    aget v6, v1, v6

    if-ge v5, v6, :cond_4

    aget v8, v1, v25

    if-lt v8, v0, :cond_3

    goto :goto_3

    :cond_3
    sub-int/2addr v6, v5

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    aget v3, v1, v7

    aget v5, v1, v25

    sub-int/2addr v3, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v4, v3

    move v3, v0

    :cond_4
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v21

    move-object/from16 v7, v26

    move-object/from16 v13, v27

    move/from16 v8, v28

    move-object/from16 v0, v30

    goto/16 :goto_0

    :cond_5
    move-object/from16 v30, v0

    move/from16 v21, v6

    move-object/from16 v26, v7

    move/from16 v28, v8

    move-object/from16 v27, v13

    mul-int/2addr v3, v4

    new-array v0, v3, [I

    iput-object v0, v2, Lwn/F$b;->e:[I

    iput v5, v14, Lwn/l;->d:I

    const/4 v0, 0x0

    iput v0, v14, Lwn/l;->e:I

    iput v0, v14, Lwn/l;->f:I

    mul-int/lit8 v5, v5, 0x4

    new-array v3, v5, [I

    iput-object v3, v14, Lwn/l;->a:[I

    div-int/lit8 v3, v18, 0x2

    add-int v18, v18, v3

    mul-int/lit8 v3, v18, 0x2

    iput v0, v14, Lwn/l;->e:I

    mul-int/lit8 v4, v18, 0x3

    new-array v4, v4, [F

    iput-object v4, v14, Lwn/l;->b:[F

    iput v0, v14, Lwn/l;->f:I

    mul-int/lit8 v0, v18, 0x8

    new-array v0, v0, [I

    iput-object v0, v14, Lwn/l;->c:[I

    move v10, v3

    move/from16 v13, v18

    const/4 v8, 0x0

    :goto_4
    iget v0, v11, Lwn/k;->f:I

    if-ge v8, v0, :cond_12

    mul-int v0, v8, v15

    mul-int/lit8 v3, v0, 0x2

    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_5
    if-ge v0, v15, :cond_6

    iget-object v4, v11, Lwn/k;->b:[I

    add-int v5, v3, v0

    aget v4, v4, v5

    sget v5, Lwn/u;->j:I

    if-ne v4, v5, :cond_7

    :cond_6
    move/from16 v20, v10

    move/from16 v25, v15

    goto :goto_6

    :cond_7
    mul-int/lit8 v4, v4, 0x3

    mul-int/lit8 v5, v0, 0x3

    iget-object v6, v11, Lwn/k;->a:[I

    move/from16 v25, v15

    aget v15, v6, v4

    int-to-float v15, v15

    mul-float/2addr v15, v9

    aput v15, v30, v5

    add-int/lit8 v15, v5, 0x1

    add-int/lit8 v18, v4, 0x1

    move/from16 v20, v10

    aget v10, v6, v18

    int-to-float v10, v10

    mul-float v10, v10, v28

    aput v10, v30, v15

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v4, v4, 0x2

    aget v4, v6, v4

    int-to-float v4, v4

    mul-float/2addr v4, v9

    aput v4, v30, v5

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v0, v0, 0x1

    move/from16 v10, v20

    move/from16 v15, v25

    goto :goto_5

    :goto_6
    mul-int/lit8 v10, v8, 0x4

    aget v0, v1, v10

    iput v0, v2, Lwn/F$b;->a:I

    add-int/lit8 v15, v10, 0x2

    aget v4, v1, v15

    iput v4, v2, Lwn/F$b;->b:I

    add-int/lit8 v18, v10, 0x1

    aget v5, v1, v18

    sub-int/2addr v5, v0

    iput v5, v2, Lwn/F$b;->c:I

    add-int/lit8 v29, v10, 0x3

    aget v0, v1, v29

    sub-int/2addr v0, v4

    iput v0, v2, Lwn/F$b;->d:I

    iget-object v4, v11, Lwn/k;->b:[I

    iget-object v5, v11, Lwn/k;->a:[I

    iget-object v0, v11, Lwn/k;->c:[I

    aget v31, v0, v8

    move-object/from16 v0, p0

    move-object/from16 v32, v1

    move-object/from16 v1, p2

    move-object/from16 v33, v2

    move-object v2, v4

    move-object/from16 v34, v16

    move-object/from16 v6, v17

    move v4, v7

    move/from16 v35, v19

    move-object/from16 v37, v6

    move/from16 v36, v21

    move/from16 v6, v36

    move/from16 v38, v7

    move-object/from16 v7, v33

    move/from16 v39, v8

    move/from16 v8, v31

    invoke-static/range {v0 .. v8}, Lwn/F;->o(Lwn/N;Lwn/c;[III[IILwn/F$b;I)V

    move-object/from16 v1, v30

    move/from16 v2, v38

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, v35

    move-object/from16 v6, p2

    move-object/from16 v8, v34

    move/from16 v31, v9

    move-object/from16 v9, v37

    invoke-static/range {v0 .. v9}, Lwn/F;->b(Lwn/N;[FIFFILwn/c;Lwn/F$b;[FLjava/util/List;)I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_8

    mul-int/lit8 v2, v1, 0x3

    aget v3, v34, v2

    const/4 v4, 0x0

    aget v5, v26, v4

    add-float/2addr v3, v5

    aput v3, v34, v2

    add-int/lit8 v3, v2, 0x1

    aget v4, v34, v3

    aget v5, v26, v24

    iget v6, v12, Lwn/c;->l:F

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v34, v3

    add-int/lit8 v2, v2, 0x2

    aget v3, v34, v2

    aget v4, v26, v23

    add-float/2addr v3, v4

    aput v3, v34, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    move/from16 v7, v38

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v7, :cond_9

    mul-int/lit8 v2, v1, 0x3

    aget v3, v30, v2

    const/4 v4, 0x0

    aget v5, v26, v4

    add-float/2addr v3, v5

    aput v3, v30, v2

    add-int/lit8 v3, v2, 0x1

    aget v4, v30, v3

    aget v5, v26, v24

    add-float/2addr v4, v5

    aput v4, v30, v3

    add-int/lit8 v2, v2, 0x2

    aget v3, v30, v2

    aget v4, v26, v23

    add-float/2addr v3, v4

    aput v3, v30, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_9
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    iget-object v2, v14, Lwn/l;->a:[I

    iget v3, v14, Lwn/l;->e:I

    aput v3, v2, v10

    aput v0, v2, v18

    iget v4, v14, Lwn/l;->f:I

    aput v4, v2, v15

    aput v1, v2, v29

    add-int/2addr v3, v0

    if-le v3, v13, :cond_c

    :goto_9
    iget v2, v14, Lwn/l;->e:I

    add-int v3, v2, v0

    if-le v3, v13, :cond_a

    add-int/lit16 v13, v13, 0x100

    goto :goto_9

    :cond_a
    mul-int/lit8 v3, v13, 0x3

    new-array v3, v3, [F

    if-eqz v2, :cond_b

    iget-object v4, v14, Lwn/l;->b:[F

    mul-int/lit8 v2, v2, 0x3

    const/4 v5, 0x0

    invoke-static {v4, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    iput-object v3, v14, Lwn/l;->b:[F

    :cond_c
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_d

    iget-object v3, v14, Lwn/l;->b:[F

    iget v4, v14, Lwn/l;->e:I

    mul-int/lit8 v5, v4, 0x3

    mul-int/lit8 v6, v2, 0x3

    aget v8, v34, v6

    aput v8, v3, v5

    mul-int/lit8 v5, v4, 0x3

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v8, v6, 0x1

    aget v8, v34, v8

    aput v8, v3, v5

    mul-int/lit8 v5, v4, 0x3

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v6, 0x2

    aget v6, v34, v6

    aput v6, v3, v5

    add-int/lit8 v4, v4, 0x1

    iput v4, v14, Lwn/l;->e:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_d
    iget v0, v14, Lwn/l;->f:I

    add-int/2addr v0, v1

    move/from16 v3, v20

    if-le v0, v3, :cond_10

    move v10, v3

    :goto_b
    iget v0, v14, Lwn/l;->f:I

    add-int v2, v0, v1

    if-le v2, v10, :cond_e

    add-int/lit16 v10, v10, 0x100

    goto :goto_b

    :cond_e
    mul-int/lit8 v2, v10, 0x4

    new-array v2, v2, [I

    if-eqz v0, :cond_f

    iget-object v3, v14, Lwn/l;->c:[I

    mul-int/lit8 v0, v0, 0x4

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c

    :cond_f
    const/4 v4, 0x0

    :goto_c
    iput-object v2, v14, Lwn/l;->c:[I

    goto :goto_d

    :cond_10
    const/4 v4, 0x0

    move v10, v3

    :goto_d
    move v0, v4

    :goto_e
    if-ge v0, v1, :cond_11

    mul-int/lit8 v2, v0, 0x4

    iget-object v3, v14, Lwn/l;->c:[I

    iget v5, v14, Lwn/l;->f:I

    mul-int/lit8 v5, v5, 0x4

    move-object/from16 v6, v37

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v3, v5

    iget-object v3, v14, Lwn/l;->c:[I

    iget v5, v14, Lwn/l;->f:I

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v8, v2, 0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v3, v5

    iget-object v3, v14, Lwn/l;->c:[I

    iget v5, v14, Lwn/l;->f:I

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v9, v2, 0x2

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    aput v15, v3, v5

    iget-object v3, v14, Lwn/l;->c:[I

    iget v5, v14, Lwn/l;->f:I

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v17, v2, 0x3

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v18, v2, 0x3

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v19, v2, 0x3

    move-object/from16 v16, v34

    move-object/from16 v20, v30

    move/from16 v21, v7

    invoke-static/range {v16 .. v21}, Lwn/F;->r([FIII[FI)I

    move-result v2

    aput v2, v3, v5

    iget v2, v14, Lwn/l;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v14, Lwn/l;->f:I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e

    :cond_11
    move-object/from16 v6, v37

    add-int/lit8 v8, v39, 0x1

    move-object/from16 v17, v6

    move/from16 v15, v25

    move/from16 v9, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v16, v34

    move/from16 v19, v35

    move/from16 v21, v36

    goto/16 :goto_4

    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lwn/N;->g(Ljava/lang/String;)V

    return-object v14

    :cond_13
    :goto_f
    return-object v1
.end method

.method public static d([FIII[FLjava/util/concurrent/atomic/AtomicReference;)Z
    .locals 18
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
            "verts",
            "p1",
            "p2",
            "p3",
            "c",
            "r"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([FIII[F",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const/4 v4, 0x3

    new-array v5, v4, [F

    new-array v6, v4, [F

    new-array v4, v4, [F

    move/from16 v7, p2

    invoke-static {v6, v0, v7, v1}, Lwn/I;->o([F[FII)V

    move/from16 v7, p3

    invoke-static {v4, v0, v7, v1}, Lwn/I;->o([F[FII)V

    invoke-static {v5, v6, v4}, Lwn/F;->B([F[F[F)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const v9, 0x358637bd    # 1.0E-6f

    cmpl-float v8, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-lez v8, :cond_0

    invoke-static {v5, v5}, Lwn/F;->I([F[F)F

    move-result v8

    invoke-static {v6, v6}, Lwn/F;->I([F[F)F

    move-result v11

    invoke-static {v4, v4}, Lwn/F;->I([F[F)F

    move-result v12

    const/4 v13, 0x2

    aget v14, v6, v13

    aget v15, v4, v13

    sub-float v16, v14, v15

    mul-float v16, v16, v8

    aget v17, v5, v13

    sub-float v15, v15, v17

    mul-float/2addr v15, v11

    add-float v16, v16, v15

    sub-float v17, v17, v14

    mul-float v17, v17, v12

    add-float v16, v16, v17

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v7, v14

    div-float v16, v16, v7

    aput v16, v2, v10

    const/4 v14, 0x1

    aput v9, v2, v14

    aget v4, v4, v10

    aget v6, v6, v10

    sub-float v9, v4, v6

    mul-float/2addr v8, v9

    aget v9, v5, v10

    sub-float v4, v9, v4

    mul-float/2addr v11, v4

    add-float/2addr v8, v11

    sub-float/2addr v6, v9

    mul-float/2addr v12, v6

    add-float/2addr v8, v12

    div-float/2addr v8, v7

    aput v8, v2, v13

    invoke-static {v2, v5}, Lwn/F;->D([F[F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {v2, v2, v0, v1}, Lwn/I;->a([F[F[FI)V

    return v14

    :cond_0
    invoke-static {v2, v0, v1}, Lwn/I;->f([F[FI)V

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return v10
.end method

.method public static e(Lwn/N;[FILjava/util/List;III)I
    .locals 17
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
            "ctx",
            "pts",
            "npts",
            "edges",
            "maxEdges",
            "nfaces",
            "e"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwn/N;",
            "[FI",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;III)I"
        }
    .end annotation

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p5

    mul-int/lit8 v10, p6, 0x4

    add-int/lit8 v0, v10, 0x2

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lwn/F;->e:I

    if-ne v0, v1, :cond_0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v1, v10, 0x1

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    move v12, v0

    move v11, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v10, 0x3

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lwn/F;->e:I

    if-ne v0, v1, :cond_c

    add-int/lit8 v0, v10, 0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :goto_1
    const/4 v0, 0x3

    new-array v13, v0, [F

    new-instance v14, Ljava/util/concurrent/atomic/AtomicReference;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {v14, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x0

    move v15, v0

    move v5, v7

    :goto_2
    if-ge v15, v7, :cond_8

    if-eq v15, v12, :cond_7

    if-ne v15, v11, :cond_1

    goto/16 :goto_4

    :cond_1
    mul-int/lit8 v1, v12, 0x3

    mul-int/lit8 v2, v11, 0x3

    mul-int/lit8 v3, v15, 0x3

    invoke-static {v6, v1, v2, v3}, Lwn/F;->A([FIII)F

    move-result v0

    const v4, 0x3727c5ac    # 1.0E-5f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_7

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v4, 0x0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    move-object/from16 v0, p1

    move-object v4, v13

    move-object v5, v14

    invoke-static/range {v0 .. v5}, Lwn/F;->d([FIII[FLjava/util/concurrent/atomic/AtomicReference;)Z

    goto :goto_3

    :cond_2
    invoke-static {v13, v6, v3}, Lwn/F;->E([F[FI)F

    move-result v0

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const v16, 0x3f8020c5    # 1.001f

    mul-float v4, v4, v16

    cmpl-float v4, v0, v4

    if-lez v4, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const v16, 0x3f7fbe77    # 0.999f

    mul-float v4, v4, v16

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    move-object/from16 v0, p1

    move-object v4, v13

    move-object v5, v14

    invoke-static/range {v0 .. v5}, Lwn/F;->d([FIII[FLjava/util/concurrent/atomic/AtomicReference;)Z

    goto :goto_3

    :cond_4
    invoke-static {v6, v8, v12, v15}, Lwn/F;->t([FLjava/util/List;II)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {v6, v8, v11, v15}, Lwn/F;->t([FLjava/util/List;II)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    move-object/from16 v0, p1

    move-object v4, v13

    move-object v5, v14

    invoke-static/range {v0 .. v5}, Lwn/F;->d([FIII[FLjava/util/concurrent/atomic/AtomicReference;)Z

    :goto_3
    move v5, v15

    :cond_7
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_8
    if-ge v5, v7, :cond_b

    invoke-static {v8, v10, v12, v11, v9}, Lwn/F;->z(Ljava/util/List;IIII)V

    invoke-static {v8, v5, v12}, Lwn/F;->l(Ljava/util/List;II)I

    move-result v0

    sget v6, Lwn/F;->e:I

    if-ne v0, v6, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move v3, v5

    move v4, v12

    move v7, v5

    move/from16 v5, p5

    invoke-static/range {v0 .. v6}, Lwn/F;->a(Lwn/N;Ljava/util/List;IIIII)V

    goto :goto_5

    :cond_9
    move v7, v5

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v8, v0, v7, v12, v9}, Lwn/F;->z(Ljava/util/List;IIII)V

    :goto_5
    invoke-static {v8, v11, v7}, Lwn/F;->l(Ljava/util/List;II)I

    move-result v0

    sget v6, Lwn/F;->e:I

    if-ne v0, v6, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move v3, v11

    move v4, v7

    move/from16 v5, p5

    invoke-static/range {v0 .. v6}, Lwn/F;->a(Lwn/N;Ljava/util/List;IIIII)V

    goto :goto_6

    :cond_a
    mul-int/lit8 v0, v0, 0x4

    invoke-static {v8, v0, v11, v7, v9}, Lwn/F;->z(Ljava/util/List;IIII)V

    :goto_6
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_7

    :cond_b
    sget v0, Lwn/F;->f:I

    invoke-static {v8, v10, v12, v11, v0}, Lwn/F;->z(Ljava/util/List;IIII)V

    :cond_c
    :goto_7
    return v9
.end method

.method public static f(Lwn/N;I[FI[ILjava/util/List;)V
    .locals 14
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
            "ctx",
            "npts",
            "pts",
            "nhull",
            "hull",
            "tris"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwn/N;",
            "I[FI[I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move/from16 v0, p3

    move-object/from16 v1, p5

    mul-int/lit8 v9, p1, 0xa

    new-instance v10, Ljava/util/ArrayList;

    const/16 v2, 0x40

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    add-int/lit8 v2, v0, -0x1

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    if-ge v12, v0, :cond_0

    aget v5, p4, v2

    aget v6, p4, v12

    sget v7, Lwn/F;->f:I

    sget v8, Lwn/F;->e:I

    move-object v2, p0

    move-object v3, v10

    move v4, v9

    invoke-static/range {v2 .. v8}, Lwn/F;->a(Lwn/N;Ljava/util/List;IIIII)V

    add-int/lit8 v2, v12, 0x1

    move v13, v12

    move v12, v2

    move v2, v13

    goto :goto_0

    :cond_0
    move v0, v11

    move v7, v0

    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    if-ge v0, v2, :cond_3

    mul-int/lit8 v12, v0, 0x4

    add-int/lit8 v2, v12, 0x2

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v3, Lwn/F;->e:I

    if-ne v2, v3, :cond_1

    move-object v2, p0

    move-object/from16 v3, p2

    move v4, p1

    move-object v5, v10

    move v6, v9

    move v8, v0

    invoke-static/range {v2 .. v8}, Lwn/F;->e(Lwn/N;[FILjava/util/List;III)I

    move-result v2

    move v7, v2

    :cond_1
    add-int/lit8 v12, v12, 0x3

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v3, Lwn/F;->e:I

    if-ne v2, v3, :cond_2

    move-object v2, p0

    move-object/from16 v3, p2

    move v4, p1

    move-object v5, v10

    move v6, v9

    move v8, v0

    invoke-static/range {v2 .. v8}, Lwn/F;->e(Lwn/N;[FILjava/util/List;III)I

    move-result v2

    move v7, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->clear()V

    move v0, v11

    :goto_2
    mul-int/lit8 v2, v7, 0x4

    const/4 v3, -0x1

    if-ge v0, v2, :cond_4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v11

    :goto_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    if-ge v0, v2, :cond_b

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v4, v2, 0x3

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_7

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v3, :cond_5

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v1, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v1, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_6

    add-int/lit8 v4, v4, 0x2

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v1, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v4, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_7

    add-int/lit8 v4, v4, 0x2

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v1, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_4
    add-int/lit8 v4, v2, 0x2

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_a

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v3, :cond_8

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v1, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_8
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_9

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_9
    add-int/lit8 v5, v4, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_a

    add-int/lit8 v4, v4, 0x2

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_b
    :goto_6
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    if-ge v11, v0, :cond_e

    mul-int/lit8 v0, v11, 0x4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_c

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_c

    add-int/lit8 v2, v0, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_d

    :cond_c
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dangling! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v0, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v0, 0x2

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1, v5, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1, v6, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x3

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v11, v11, -0x1

    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    :cond_e
    return-void
.end method

.method public static g([F[FIII)F
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "verts",
            "a",
            "b",
            "c"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [F

    new-array v2, v0, [F

    new-array v0, v0, [F

    invoke-static {v1, p1, p4, p2}, Lwn/I;->o([F[FII)V

    invoke-static {v2, p1, p3, p2}, Lwn/I;->o([F[FII)V

    invoke-static {v0, p0, p1, p2}, Lwn/I;->p([F[F[FI)V

    invoke-static {v1, v1}, Lwn/F;->I([F[F)F

    move-result p3

    invoke-static {v1, v2}, Lwn/F;->I([F[F)F

    move-result p4

    invoke-static {v1, v0}, Lwn/F;->I([F[F)F

    move-result v3

    invoke-static {v2, v2}, Lwn/F;->I([F[F)F

    move-result v4

    invoke-static {v2, v0}, Lwn/F;->I([F[F)F

    move-result v0

    mul-float v5, p3, v4

    mul-float v6, p4, p4

    sub-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    div-float/2addr v6, v5

    mul-float/2addr v4, v3

    mul-float v5, p4, v0

    sub-float/2addr v4, v5

    mul-float/2addr v4, v6

    mul-float/2addr p3, v0

    mul-float/2addr p4, v3

    sub-float/2addr p3, p4

    mul-float/2addr p3, v6

    const p4, -0x472e48e9    # -1.0E-4f

    cmpl-float v0, v4, p4

    if-ltz v0, :cond_0

    cmpl-float p4, p3, p4

    if-ltz p4, :cond_0

    add-float p4, v4, p3

    const v0, 0x3f800347    # 1.0001f

    cmpg-float p4, p4, v0

    if-gtz p4, :cond_0

    const/4 p4, 0x1

    add-int/2addr p2, p4

    aget p1, p1, p2

    aget p2, v1, p4

    mul-float/2addr p2, v4

    add-float/2addr p1, p2

    aget p2, v2, p4

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    aget p0, p0, p4

    sub-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0

    :cond_0
    const p0, 0x7f7fffff    # Float.MAX_VALUE

    return p0
.end method

.method public static h(I[F[F)F
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nvert",
            "verts",
            "p"
        }
    .end annotation

    add-int/lit8 v0, p0, -0x1

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    move v1, v0

    move v0, v4

    :goto_0
    if-ge v0, p0, :cond_3

    mul-int/lit8 v5, v0, 0x3

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v6, v5, 0x2

    aget v6, p1, v6

    const/4 v7, 0x2

    aget v7, p2, v7

    cmpl-float v8, v6, v7

    const/4 v9, 0x1

    if-lez v8, :cond_0

    move v8, v9

    goto :goto_1

    :cond_0
    move v8, v2

    :goto_1
    add-int/lit8 v10, v1, 0x2

    aget v10, p1, v10

    cmpl-float v11, v10, v7

    if-lez v11, :cond_1

    goto :goto_2

    :cond_1
    move v9, v2

    :goto_2
    if-eq v8, v9, :cond_2

    aget v8, p2, v2

    aget v9, p1, v1

    aget v11, p1, v5

    sub-float/2addr v9, v11

    sub-float/2addr v7, v6

    mul-float/2addr v9, v7

    sub-float/2addr v10, v6

    div-float/2addr v9, v10

    add-float/2addr v9, v11

    cmpg-float v6, v8, v9

    if-gez v6, :cond_2

    xor-int/lit8 v4, v4, 0x1

    :cond_2
    invoke-static {p2, v2, p1, v1, v5}, Lwn/F;->k([FI[FII)F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    add-int/lit8 v1, v0, 0x1

    move v12, v1

    move v1, v0

    move v0, v12

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    neg-float v3, v3

    :cond_4
    return v3
.end method

.method public static i([F[FILjava/util/List;I)F
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
            "p",
            "verts",
            "nverts",
            "tris",
            "ntris"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[FI",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)F"
        }
    .end annotation

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v0, 0x0

    move v1, p2

    :goto_0
    if-ge v0, p4, :cond_1

    mul-int/lit8 v2, v0, 0x4

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v4, v2, 0x1

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v2, v2, 0x2

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    invoke-static {p0, p1, v3, v4, v2}, Lwn/F;->g([F[FIII)F

    move-result v2

    cmpg-float v3, v2, v1

    if-gez v3, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    cmpl-float p0, v1, p2

    if-nez p0, :cond_2

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    :cond_2
    return v1
.end method

.method public static j([FIII)F
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "verts",
            "pt",
            "p",
            "q"
        }
    .end annotation

    aget v0, p0, p3

    aget v1, p0, p2

    sub-float/2addr v0, v1

    add-int/lit8 v2, p3, 0x1

    aget v2, p0, v2

    add-int/lit8 v3, p2, 0x1

    aget v3, p0, v3

    sub-float/2addr v2, v3

    add-int/lit8 p3, p3, 0x2

    aget p3, p0, p3

    add-int/lit8 p2, p2, 0x2

    aget p2, p0, p2

    sub-float/2addr p3, p2

    aget v4, p0, p1

    sub-float v5, v4, v1

    add-int/lit8 v6, p1, 0x1

    aget v6, p0, v6

    sub-float v7, v6, v3

    add-int/lit8 p1, p1, 0x2

    aget p0, p0, p1

    sub-float p1, p0, p2

    mul-float v8, v0, v0

    mul-float v9, v2, v2

    add-float/2addr v8, v9

    mul-float v9, p3, p3

    add-float/2addr v8, v9

    mul-float/2addr v5, v0

    mul-float/2addr v7, v2

    add-float/2addr v5, v7

    mul-float/2addr p1, p3

    add-float/2addr v5, p1

    const/4 p1, 0x0

    cmpl-float v7, v8, p1

    if-lez v7, :cond_0

    div-float/2addr v5, v8

    :cond_0
    cmpg-float v7, v5, p1

    if-gez v7, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v7, v5, p1

    if-lez v7, :cond_2

    goto :goto_0

    :cond_2
    move p1, v5

    :goto_0
    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    sub-float/2addr v1, v4

    mul-float/2addr v2, p1

    add-float/2addr v3, v2

    sub-float/2addr v3, v6

    mul-float/2addr p1, p3

    add-float/2addr p2, p1

    sub-float/2addr p2, p0

    mul-float/2addr v1, v1

    mul-float/2addr v3, v3

    add-float/2addr v1, v3

    mul-float/2addr p2, p2

    add-float/2addr v1, p2

    return v1
.end method

.method public static k([FI[FII)F
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
            "verts",
            "pt",
            "poly",
            "p",
            "q"
        }
    .end annotation

    aget v0, p2, p4

    aget v1, p2, p3

    sub-float/2addr v0, v1

    add-int/lit8 p4, p4, 0x2

    aget p4, p2, p4

    add-int/lit8 p3, p3, 0x2

    aget p2, p2, p3

    sub-float/2addr p4, p2

    aget p3, p0, p1

    sub-float v2, p3, v1

    add-int/lit8 p1, p1, 0x2

    aget p0, p0, p1

    sub-float p1, p0, p2

    mul-float v3, v0, v0

    mul-float v4, p4, p4

    add-float/2addr v3, v4

    mul-float/2addr v2, v0

    mul-float/2addr p1, p4

    add-float/2addr v2, p1

    const/4 p1, 0x0

    cmpl-float v4, v3, p1

    if-lez v4, :cond_0

    div-float/2addr v2, v3

    :cond_0
    cmpg-float v3, v2, p1

    if-gez v3, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v3, v2, p1

    if-lez v3, :cond_2

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    sub-float/2addr v1, p3

    mul-float/2addr p1, p4

    add-float/2addr p2, p1

    sub-float/2addr p2, p0

    mul-float/2addr v1, v1

    mul-float/2addr p2, p2

    add-float/2addr v1, p2

    return v1
.end method

.method public static l(Ljava/util/List;II)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "edges",
            "s",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;II)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_3

    mul-int/lit8 v1, v0, 0x4

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p2, :cond_1

    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_2

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_2

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    sget p0, Lwn/F;->e:I

    return p0
.end method

.method public static m([FII[FI)I
    .locals 7
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
            "va",
            "vb",
            "vpoly",
            "npoly"
        }
    .end annotation

    add-int/lit8 v0, p4, -0x1

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    if-ge v0, p4, :cond_1

    mul-int/lit8 v2, v2, 0x3

    mul-int/lit8 v3, v0, 0x3

    invoke-static {p0, p1, p3, v2, v3}, Lwn/F;->k([FI[FII)F

    move-result v4

    const v5, 0x358637be    # 1.0000001E-6f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    invoke-static {p0, p2, p3, v2, v3}, Lwn/F;->k([FI[FII)F

    move-result v2

    cmpg-float v2, v2, v5

    if-gez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v0, 0x1

    move v6, v2

    move v2, v0

    move v0, v6

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static n(FFFFFFILwn/F$b;)I
    .locals 16
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
            "fx",
            "fy",
            "fz",
            "cs",
            "ics",
            "ch",
            "radius",
            "hp"
        }
    .end annotation

    move-object/from16 v0, p7

    mul-float v1, p0, p4

    const v2, 0x3c23d70a    # 0.01f

    add-float/2addr v1, v2

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    mul-float v3, p2, p4

    add-float/2addr v3, v2

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v0, Lwn/F$b;->a:I

    sub-int/2addr v1, v3

    iget v3, v0, Lwn/F$b;->c:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    invoke-static {v1, v5, v3}, Lwn/r;->e(III)I

    move-result v1

    iget v3, v0, Lwn/F$b;->b:I

    sub-int/2addr v2, v3

    iget v3, v0, Lwn/F$b;->d:I

    sub-int/2addr v3, v4

    invoke-static {v2, v5, v3}, Lwn/r;->e(III)I

    move-result v2

    iget-object v3, v0, Lwn/F$b;->e:[I

    iget v6, v0, Lwn/F$b;->c:I

    mul-int/2addr v6, v2

    add-int/2addr v6, v1

    aget v3, v3, v6

    sget v6, Lwn/F;->d:I

    if-ne v3, v6, :cond_7

    mul-int/lit8 v6, p6, 0x2

    add-int/2addr v6, v4

    mul-int/2addr v6, v6

    sub-int/2addr v6, v4

    const/16 v7, 0x8

    const/16 v8, 0x10

    const v9, 0x7f7fffff    # Float.MAX_VALUE

    move v10, v7

    move v11, v8

    move v12, v9

    move v7, v5

    move v8, v7

    move v9, v8

    move v5, v4

    :goto_0
    if-ge v7, v6, :cond_7

    add-int v13, v1, v4

    add-int v14, v2, v8

    if-ltz v13, :cond_0

    if-ltz v14, :cond_0

    iget v15, v0, Lwn/F$b;->c:I

    if-ge v13, v15, :cond_0

    move/from16 p0, v1

    iget v1, v0, Lwn/F$b;->d:I

    if-ge v14, v1, :cond_1

    iget-object v1, v0, Lwn/F$b;->e:[I

    mul-int/2addr v14, v15

    add-int/2addr v13, v14

    aget v1, v1, v13

    sget v13, Lwn/F;->d:I

    if-eq v1, v13, :cond_1

    int-to-float v13, v1

    mul-float v13, v13, p5

    sub-float v13, v13, p1

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    cmpg-float v14, v13, v12

    if-gez v14, :cond_1

    move v3, v1

    move v12, v13

    goto :goto_1

    :cond_0
    move/from16 p0, v1

    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    if-ne v7, v10, :cond_3

    sget v1, Lwn/F;->d:I

    if-eq v3, v1, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr v10, v11

    add-int/lit8 v11, v11, 0x8

    :cond_3
    if-eq v4, v8, :cond_5

    if-gez v4, :cond_4

    neg-int v1, v8

    if-eq v4, v1, :cond_5

    :cond_4
    if-lez v4, :cond_6

    rsub-int/lit8 v1, v8, 0x1

    if-ne v4, v1, :cond_6

    :cond_5
    neg-int v1, v9

    move v9, v5

    move v5, v1

    :cond_6
    add-int/2addr v4, v5

    add-int/2addr v8, v9

    move/from16 v1, p0

    goto :goto_0

    :cond_7
    :goto_2
    return v3
.end method

.method public static o(Lwn/N;Lwn/c;[III[IILwn/F$b;I)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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
            "ctx",
            "chf",
            "meshpolys",
            "poly",
            "npoly",
            "verts",
            "bs",
            "hp",
            "region"
        }
    .end annotation

    move-object/from16 v9, p1

    move-object/from16 v10, p7

    move/from16 v0, p8

    new-instance v11, Ljava/util/ArrayList;

    const/16 v1, 0x200

    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, v10, Lwn/F$b;->e:[I

    iget v2, v10, Lwn/F$b;->c:I

    iget v3, v10, Lwn/F$b;->d:I

    mul-int/2addr v2, v3

    sget v3, Lwn/F;->d:I

    const/4 v12, 0x0

    invoke-static {v1, v12, v2, v3}, Ljava/util/Arrays;->fill([IIII)V

    sget v1, Lwn/u;->f:I

    const/16 v13, 0x3f

    const/4 v14, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_5

    move v1, v12

    :goto_0
    iget v3, v10, Lwn/F$b;->d:I

    if-ge v1, v3, :cond_5

    iget v3, v10, Lwn/F$b;->b:I

    add-int/2addr v3, v1

    add-int v3, v3, p6

    move v4, v12

    :goto_1
    iget v5, v10, Lwn/F$b;->c:I

    if-ge v4, v5, :cond_4

    iget v5, v10, Lwn/F$b;->a:I

    add-int/2addr v5, v4

    add-int v5, v5, p6

    iget-object v6, v9, Lwn/c;->m:[Lwn/b;

    iget v7, v9, Lwn/c;->a:I

    mul-int/2addr v7, v3

    add-int/2addr v7, v5

    aget-object v6, v6, v7

    iget v7, v6, Lwn/b;->a:I

    iget v6, v6, Lwn/b;->b:I

    add-int/2addr v6, v7

    :goto_2
    if-ge v7, v6, :cond_3

    iget-object v8, v9, Lwn/c;->n:[Lwn/d;

    aget-object v8, v8, v7

    iget v15, v8, Lwn/d;->b:I

    if-ne v15, v0, :cond_2

    iget-object v2, v10, Lwn/F$b;->e:[I

    iget v6, v10, Lwn/F$b;->c:I

    mul-int/2addr v6, v1

    add-int/2addr v6, v4

    iget v15, v8, Lwn/d;->a:I

    aput v15, v2, v6

    move v2, v12

    :goto_3
    if-ge v2, v14, :cond_1

    invoke-static {v8, v2}, Lwn/r;->a(Lwn/d;I)I

    move-result v6

    if-eq v6, v13, :cond_0

    invoke-static {v2}, Lwn/r;->b(I)I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v2}, Lwn/r;->c(I)I

    move-result v15

    add-int/2addr v15, v3

    iget-object v12, v9, Lwn/c;->m:[Lwn/b;

    iget v13, v9, Lwn/c;->a:I

    mul-int/2addr v15, v13

    add-int/2addr v6, v15

    aget-object v6, v12, v6

    iget v6, v6, Lwn/b;->a:I

    invoke-static {v8, v2}, Lwn/r;->a(Lwn/d;I)I

    move-result v12

    add-int/2addr v6, v12

    iget-object v12, v9, Lwn/c;->n:[Lwn/d;

    aget-object v6, v12, v6

    iget v6, v6, Lwn/d;->b:I

    if-eq v6, v0, :cond_0

    invoke-static {v11, v5, v3, v7}, Lwn/F;->w(Ljava/util/List;III)V

    goto :goto_4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x3f

    goto :goto_3

    :cond_1
    :goto_4
    const/4 v2, 0x0

    goto :goto_5

    :cond_2
    add-int/lit8 v7, v7, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x3f

    goto :goto_2

    :cond_3
    :goto_5
    add-int/lit8 v4, v4, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x3f

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x3f

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, v11

    invoke-static/range {v0 .. v8}, Lwn/F;->x(Lwn/N;Lwn/c;[III[IILwn/F$b;Ljava/util/List;)V

    :cond_6
    const/4 v0, 0x0

    :cond_7
    mul-int/lit8 v1, v0, 0x3

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_d

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v1, v1, 0x2

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0x100

    if-lt v0, v4, :cond_8

    const/16 v0, 0x300

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v11, v0, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    move-object v11, v0

    const/4 v0, 0x0

    :cond_8
    iget-object v4, v9, Lwn/c;->n:[Lwn/d;

    aget-object v1, v4, v1

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v14, :cond_7

    invoke-static {v1, v4}, Lwn/r;->a(Lwn/d;I)I

    move-result v5

    const/16 v6, 0x3f

    if-ne v5, v6, :cond_9

    goto :goto_7

    :cond_9
    invoke-static {v4}, Lwn/r;->b(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v4}, Lwn/r;->c(I)I

    move-result v7

    add-int/2addr v7, v3

    iget v8, v10, Lwn/F$b;->a:I

    sub-int v8, v5, v8

    sub-int v8, v8, p6

    iget v12, v10, Lwn/F$b;->b:I

    sub-int v12, v7, v12

    sub-int v12, v12, p6

    if-ltz v8, :cond_c

    iget v13, v10, Lwn/F$b;->c:I

    if-ge v8, v13, :cond_c

    if-ltz v12, :cond_c

    iget v15, v10, Lwn/F$b;->d:I

    if-lt v12, v15, :cond_a

    goto :goto_7

    :cond_a
    iget-object v15, v10, Lwn/F$b;->e:[I

    mul-int/2addr v13, v12

    add-int/2addr v13, v8

    aget v13, v15, v13

    sget v15, Lwn/F;->d:I

    if-eq v13, v15, :cond_b

    goto :goto_7

    :cond_b
    iget-object v13, v9, Lwn/c;->m:[Lwn/b;

    iget v15, v9, Lwn/c;->a:I

    mul-int/2addr v15, v7

    add-int/2addr v15, v5

    aget-object v13, v13, v15

    iget v13, v13, Lwn/b;->a:I

    invoke-static {v1, v4}, Lwn/r;->a(Lwn/d;I)I

    move-result v15

    add-int/2addr v13, v15

    iget-object v15, v9, Lwn/c;->n:[Lwn/d;

    aget-object v15, v15, v13

    iget-object v6, v10, Lwn/F$b;->e:[I

    iget v14, v10, Lwn/F$b;->c:I

    mul-int/2addr v12, v14

    add-int/2addr v8, v12

    iget v12, v15, Lwn/d;->a:I

    aput v12, v6, v8

    invoke-static {v11, v5, v7, v13}, Lwn/F;->w(Ljava/util/List;III)V

    :cond_c
    :goto_7
    add-int/lit8 v4, v4, 0x1

    const/4 v14, 0x4

    goto :goto_6

    :cond_d
    return-void
.end method

.method public static p(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    const v0, -0x72594cbd

    mul-int/2addr p0, v0

    const v0, 0xffff

    and-int/2addr p0, v0

    int-to-float p0, p0

    const v0, 0x477fff00    # 65535.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p0, v0

    return p0
.end method

.method public static q(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    const v0, -0x27e9c7bf

    mul-int/2addr p0, v0

    const v0, 0xffff

    and-int/2addr p0, v0

    int-to-float p0, p0

    const v0, 0x477fff00    # 65535.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p0, v0

    return p0
.end method

.method public static r([FIII[FI)I
    .locals 1
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
            "verts",
            "va",
            "vb",
            "vc",
            "vpoly",
            "npoly"
        }
    .end annotation

    invoke-static {p0, p1, p2, p4, p5}, Lwn/F;->m([FII[FI)I

    move-result v0

    invoke-static {p0, p2, p3, p4, p5}, Lwn/F;->m([FII[FI)I

    move-result p2

    shl-int/lit8 p2, p2, 0x2

    or-int/2addr p2, v0

    invoke-static {p0, p3, p1, p4, p5}, Lwn/F;->m([FII[FI)I

    move-result p0

    shl-int/lit8 p0, p0, 0x4

    or-int/2addr p0, p2

    return p0
.end method

.method public static t([FLjava/util/List;II)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pts",
            "edges",
            "s1",
            "t1"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;II)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_2

    mul-int/lit8 v2, v1, 0x4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v2, v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v3, p2, :cond_1

    if-eq v3, p3, :cond_1

    if-eq v2, p2, :cond_1

    if-ne v2, p3, :cond_0

    goto :goto_1

    :cond_0
    mul-int/lit8 v3, v3, 0x3

    mul-int/lit8 v2, v2, 0x3

    mul-int/lit8 v5, p2, 0x3

    mul-int/lit8 v6, p3, 0x3

    invoke-static {p0, v3, v2, v5, v6}, Lwn/F;->u([FIIII)Z

    move-result v2

    if-eqz v2, :cond_1

    return v4

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static u([FIIII)Z
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

    invoke-static {p0, p1, p2, p4}, Lwn/F;->A([FIII)F

    move-result v0

    invoke-static {p0, p1, p2, p3}, Lwn/F;->A([FIII)F

    move-result p2

    mul-float v1, v0, p2

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    invoke-static {p0, p3, p4, p1}, Lwn/F;->A([FIII)F

    move-result p0

    add-float/2addr p2, p0

    sub-float/2addr p2, v0

    mul-float/2addr p0, p2

    cmpg-float p0, p0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static v([FI)F
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "verts",
            "nverts"
        }
    .end annotation

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_3

    add-int/lit8 v3, v2, 0x1

    rem-int v4, v3, p1

    mul-int/lit8 v5, v2, 0x3

    mul-int/lit8 v6, v4, 0x3

    const/4 v7, 0x0

    move v8, v1

    :goto_1
    if-ge v8, p1, :cond_2

    if-eq v8, v2, :cond_1

    if-ne v8, v4, :cond_0

    goto :goto_2

    :cond_0
    mul-int/lit8 v9, v8, 0x3

    invoke-static {p0, v9, p0, v5, v6}, Lwn/F;->k([FI[FII)F

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v7

    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v2, v3

    goto :goto_0

    :cond_3
    float-to-double p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static w(Ljava/util/List;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "queue",
            "v1",
            "v2",
            "v3"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;III)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static x(Lwn/N;Lwn/c;[III[IILwn/F$b;Ljava/util/List;)V
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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
            "ctx",
            "chf",
            "meshpoly",
            "poly",
            "npoly",
            "verts",
            "bs",
            "hp",
            "array"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwn/N;",
            "Lwn/c;",
            "[III[II",
            "Lwn/F$b;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p4

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v8, 0x1

    const/16 v9, 0x12

    new-array v9, v9, [I

    fill-array-data v9, :array_0

    sget v10, Lwn/F;->d:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    :goto_0
    if-ge v11, v1, :cond_5

    if-lez v10, :cond_5

    const/4 v15, 0x0

    :goto_1
    const/16 v6, 0x9

    if-ge v15, v6, :cond_4

    if-lez v10, :cond_4

    add-int v6, p3, v11

    aget v6, p2, v6

    mul-int/lit8 v16, v6, 0x3

    aget v16, p5, v16

    mul-int/lit8 v17, v15, 0x2

    aget v18, v9, v17

    add-int v7, v16, v18

    mul-int/lit8 v16, v6, 0x3

    add-int/lit8 v16, v16, 0x1

    aget v16, p5, v16

    mul-int/2addr v6, v5

    add-int/2addr v6, v4

    aget v6, p5, v6

    add-int/lit8 v17, v17, 0x1

    aget v17, v9, v17

    add-int v6, v6, v17

    iget v4, v2, Lwn/F$b;->a:I

    if-lt v7, v4, :cond_3

    iget v5, v2, Lwn/F$b;->c:I

    add-int/2addr v4, v5

    if-ge v7, v4, :cond_3

    iget v4, v2, Lwn/F$b;->b:I

    if-lt v6, v4, :cond_3

    iget v5, v2, Lwn/F$b;->d:I

    add-int/2addr v4, v5

    if-lt v6, v4, :cond_0

    goto :goto_3

    :cond_0
    iget-object v4, v0, Lwn/c;->m:[Lwn/b;

    add-int v5, v7, p6

    add-int v19, v6, p6

    iget v8, v0, Lwn/c;->a:I

    mul-int v19, v19, v8

    add-int v5, v5, v19

    aget-object v4, v4, v5

    iget v5, v4, Lwn/b;->a:I

    iget v4, v4, Lwn/b;->b:I

    add-int/2addr v4, v5

    :goto_2
    if-ge v5, v4, :cond_2

    if-lez v10, :cond_2

    iget-object v8, v0, Lwn/c;->n:[Lwn/d;

    aget-object v8, v8, v5

    iget v8, v8, Lwn/d;->a:I

    sub-int v8, v16, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v8, v10, :cond_1

    move v14, v5

    move v13, v6

    move v12, v7

    move v10, v8

    :cond_1
    const/4 v8, 0x1

    add-int/2addr v5, v8

    goto :goto_2

    :cond_2
    const/4 v8, 0x1

    :cond_3
    :goto_3
    add-int/2addr v15, v8

    const/4 v4, 0x2

    const/4 v5, 0x3

    goto :goto_1

    :cond_4
    add-int/2addr v11, v8

    const/4 v4, 0x2

    const/4 v5, 0x3

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_4
    if-ge v4, v1, :cond_6

    add-int v7, p3, v4

    aget v7, p2, v7

    const/4 v8, 0x3

    mul-int/lit8 v9, v7, 0x3

    aget v9, p5, v9

    add-int/2addr v5, v9

    mul-int/2addr v7, v8

    const/4 v8, 0x2

    add-int/2addr v7, v8

    aget v7, p5, v7

    add-int/2addr v6, v7

    const/4 v7, 0x1

    add-int/2addr v4, v7

    goto :goto_4

    :cond_6
    div-int/2addr v5, v1

    div-int/2addr v6, v1

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->clear()V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    new-array v4, v1, [I

    const/4 v7, 0x0

    aput v7, v4, v7

    const/4 v8, 0x1

    aput v8, v4, v8

    const/4 v8, 0x2

    aput v8, v4, v8

    const/4 v8, 0x3

    aput v8, v4, v8

    iget-object v9, v2, Lwn/F$b;->e:[I

    iget v10, v2, Lwn/F$b;->c:I

    iget v11, v2, Lwn/F$b;->d:I

    mul-int/2addr v10, v11

    invoke-static {v9, v7, v10, v7}, Ljava/util/Arrays;->fill([IIII)V

    const/4 v7, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    :goto_5
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v11, v8, :cond_7

    const-string v1, "Walk towards polygon center failed to reach center"

    move-object/from16 v8, p0

    invoke-virtual {v8, v1}, Lwn/N;->h(Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    move-object/from16 v8, p0

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v7

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    invoke-interface {v3, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v9

    invoke-interface {v3, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-interface {v3, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v5, :cond_8

    if-ne v7, v6, :cond_8

    move/from16 v20, v9

    move v9, v7

    move/from16 v7, v20

    :goto_6
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->clear()V

    add-int v1, v7, p6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int v1, v9, p6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v2, Lwn/F$b;->e:[I

    iget v3, v2, Lwn/F$b;->c:I

    iget v4, v2, Lwn/F$b;->d:I

    mul-int/2addr v3, v4

    sget v4, Lwn/F;->d:I

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, v0, Lwn/c;->n:[Lwn/d;

    aget-object v0, v0, v10

    iget-object v1, v2, Lwn/F$b;->e:[I

    iget v3, v2, Lwn/F$b;->a:I

    sub-int/2addr v7, v3

    iget v3, v2, Lwn/F$b;->b:I

    sub-int/2addr v9, v3

    iget v2, v2, Lwn/F$b;->c:I

    mul-int/2addr v9, v2

    add-int/2addr v7, v9

    iget v0, v0, Lwn/d;->a:I

    aput v0, v1, v7

    return-void

    :cond_8
    if-ne v9, v5, :cond_a

    const/4 v11, 0x0

    if-le v6, v7, :cond_9

    const/4 v12, 0x1

    goto :goto_7

    :cond_9
    const/4 v12, -0x1

    :goto_7
    invoke-static {v11, v12}, Lwn/r;->f(II)I

    move-result v12

    :goto_8
    const/4 v13, 0x3

    goto :goto_a

    :cond_a
    const/4 v11, 0x0

    if-le v5, v9, :cond_b

    const/4 v12, 0x1

    goto :goto_9

    :cond_b
    const/4 v12, -0x1

    :goto_9
    invoke-static {v12, v11}, Lwn/r;->f(II)I

    move-result v12

    goto :goto_8

    :goto_a
    aget v14, v4, v13

    aget v15, v4, v12

    aput v15, v4, v13

    aput v14, v4, v12

    iget-object v13, v0, Lwn/c;->n:[Lwn/d;

    aget-object v13, v13, v10

    move v14, v11

    :goto_b
    if-ge v14, v1, :cond_10

    aget v15, v4, v14

    invoke-static {v13, v15}, Lwn/r;->a(Lwn/d;I)I

    move-result v1

    const/16 v11, 0x3f

    if-ne v1, v11, :cond_d

    move/from16 p3, v5

    move/from16 p4, v6

    move/from16 p5, v7

    :cond_c
    :goto_c
    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    invoke-static {v15}, Lwn/r;->b(I)I

    move-result v1

    add-int/2addr v1, v9

    invoke-static {v15}, Lwn/r;->c(I)I

    move-result v11

    add-int/2addr v11, v7

    move/from16 p3, v5

    iget v5, v2, Lwn/F$b;->a:I

    sub-int v5, v1, v5

    move/from16 p4, v6

    iget v6, v2, Lwn/F$b;->b:I

    sub-int v6, v11, v6

    move/from16 p5, v7

    if-ltz v5, :cond_c

    iget v7, v2, Lwn/F$b;->c:I

    if-ge v5, v7, :cond_c

    if-ltz v6, :cond_c

    iget v8, v2, Lwn/F$b;->d:I

    if-lt v6, v8, :cond_e

    :goto_d
    goto :goto_c

    :cond_e
    iget-object v8, v2, Lwn/F$b;->e:[I

    mul-int v16, v6, v7

    add-int v16, v5, v16

    aget v16, v8, v16

    if-eqz v16, :cond_f

    goto :goto_d

    :cond_f
    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x1

    aput v6, v8, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lwn/c;->m:[Lwn/b;

    add-int v1, v1, p6

    add-int v11, v11, p6

    iget v6, v0, Lwn/c;->a:I

    mul-int/2addr v11, v6

    add-int/2addr v1, v11

    aget-object v1, v5, v1

    iget v1, v1, Lwn/b;->a:I

    invoke-static {v13, v15}, Lwn/r;->a(Lwn/d;I)I

    move-result v5

    add-int/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :goto_e
    add-int/2addr v14, v1

    move-object/from16 v8, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    const/4 v1, 0x4

    const/4 v11, 0x0

    goto :goto_b

    :cond_10
    move/from16 p3, v5

    move/from16 p4, v6

    move/from16 p5, v7

    const/4 v1, 0x1

    const/4 v5, 0x3

    aget v6, v4, v5

    aget v7, v4, v12

    aput v7, v4, v5

    aput v6, v4, v12

    move/from16 v6, p4

    move v8, v5

    move v7, v9

    const/4 v1, 0x4

    move/from16 v5, p3

    move/from16 v9, p5

    goto/16 :goto_5

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        -0x1
        -0x1
        0x0
        -0x1
        0x1
        -0x1
        0x1
        0x0
        0x1
        0x1
        0x0
        0x1
        -0x1
        0x1
        -0x1
        0x0
    .end array-data
.end method

.method public static y(I[FI[IILjava/util/List;)V
    .locals 16
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
            "nverts",
            "verts",
            "nhull",
            "hull",
            "nin",
            "tris"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[FI[II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p5

    add-int/lit8 v3, v1, -0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    move v8, v7

    move v7, v6

    move v6, v4

    :goto_0
    if-ge v4, v1, :cond_2

    aget v9, p3, v4

    move/from16 v10, p4

    if-lt v9, v10, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v4, v1}, Lwn/E;->y(II)I

    move-result v9

    invoke-static {v4, v1}, Lwn/E;->x(II)I

    move-result v11

    aget v12, p3, v9

    mul-int/lit8 v12, v12, 0x3

    aget v13, p3, v4

    mul-int/lit8 v13, v13, 0x3

    aget v14, p3, v11

    mul-int/lit8 v14, v14, 0x3

    invoke-static {v0, v12, v13}, Lwn/F;->C([FII)F

    move-result v15

    invoke-static {v0, v13, v14}, Lwn/F;->C([FII)F

    move-result v13

    add-float/2addr v15, v13

    invoke-static {v0, v14, v12}, Lwn/F;->C([FII)F

    move-result v12

    add-float/2addr v15, v12

    cmpg-float v12, v15, v8

    if-gez v12, :cond_1

    move v6, v4

    move v3, v9

    move v7, v11

    move v8, v15

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    aget v4, p3, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget v4, p3, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget v4, p3, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-static {v7, v1}, Lwn/E;->x(II)I

    move-result v4

    if-eq v4, v3, :cond_4

    invoke-static {v7, v1}, Lwn/E;->x(II)I

    move-result v4

    invoke-static {v3, v1}, Lwn/E;->y(II)I

    move-result v6

    aget v8, p3, v7

    mul-int/lit8 v8, v8, 0x3

    aget v9, p3, v4

    mul-int/lit8 v9, v9, 0x3

    aget v10, p3, v3

    mul-int/lit8 v10, v10, 0x3

    aget v11, p3, v6

    mul-int/lit8 v11, v11, 0x3

    invoke-static {v0, v8, v9}, Lwn/F;->C([FII)F

    move-result v12

    invoke-static {v0, v9, v10}, Lwn/F;->C([FII)F

    move-result v9

    add-float/2addr v12, v9

    invoke-static {v0, v10, v11}, Lwn/F;->C([FII)F

    move-result v9

    invoke-static {v0, v8, v11}, Lwn/F;->C([FII)F

    move-result v8

    add-float/2addr v9, v8

    cmpg-float v8, v12, v9

    if-gez v8, :cond_3

    aget v6, p3, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget v6, p3, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget v6, p3, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v4

    goto :goto_2

    :cond_3
    aget v4, p3, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget v4, p3, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget v3, p3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static z(Ljava/util/List;IIII)V
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
            "edges",
            "e",
            "s",
            "t",
            "f"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IIII)V"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p3, :cond_0

    add-int/lit8 v0, p1, 0x2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lwn/F;->e:I

    if-ne v1, v2, :cond_0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p3, :cond_1

    add-int/lit8 p1, p1, 0x3

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget p3, Lwn/F;->e:I

    if-ne p2, p3, :cond_1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public s(Lwn/N;[Lwn/l;I)Lwn/l;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "meshes",
            "nmeshes"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p3

    new-instance v2, Lwn/l;

    invoke-direct {v2}, Lwn/l;-><init>()V

    const-string v3, "MERGE_POLYMESHDETAIL"

    invoke-virtual {v0, v3}, Lwn/N;->f(Ljava/lang/String;)V

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v5, v1, :cond_1

    aget-object v9, p2, v5

    if-nez v9, :cond_0

    goto :goto_1

    :cond_0
    iget v10, v9, Lwn/l;->e:I

    add-int/2addr v8, v10

    iget v10, v9, Lwn/l;->f:I

    add-int/2addr v7, v10

    iget v9, v9, Lwn/l;->d:I

    add-int/2addr v6, v9

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iput v4, v2, Lwn/l;->d:I

    mul-int/lit8 v6, v6, 0x4

    new-array v5, v6, [I

    iput-object v5, v2, Lwn/l;->a:[I

    iput v4, v2, Lwn/l;->f:I

    mul-int/lit8 v7, v7, 0x4

    new-array v5, v7, [I

    iput-object v5, v2, Lwn/l;->c:[I

    iput v4, v2, Lwn/l;->e:I

    mul-int/lit8 v8, v8, 0x3

    new-array v5, v8, [F

    iput-object v5, v2, Lwn/l;->b:[F

    move v5, v4

    :goto_2
    if-ge v5, v1, :cond_6

    aget-object v6, p2, v5

    if-nez v6, :cond_2

    goto/16 :goto_6

    :cond_2
    move v7, v4

    :goto_3
    iget v8, v6, Lwn/l;->d:I

    if-ge v7, v8, :cond_3

    iget v8, v2, Lwn/l;->d:I

    mul-int/lit8 v9, v8, 0x4

    mul-int/lit8 v10, v7, 0x4

    iget-object v11, v2, Lwn/l;->a:[I

    iget v12, v2, Lwn/l;->e:I

    iget-object v13, v6, Lwn/l;->a:[I

    aget v14, v13, v10

    add-int/2addr v12, v14

    aput v12, v11, v9

    add-int/lit8 v12, v9, 0x1

    add-int/lit8 v14, v10, 0x1

    aget v14, v13, v14

    aput v14, v11, v12

    add-int/lit8 v12, v9, 0x2

    iget v14, v2, Lwn/l;->f:I

    add-int/lit8 v15, v10, 0x2

    aget v15, v13, v15

    add-int/2addr v14, v15

    aput v14, v11, v12

    add-int/lit8 v9, v9, 0x3

    add-int/lit8 v10, v10, 0x3

    aget v10, v13, v10

    aput v10, v11, v9

    add-int/lit8 v8, v8, 0x1

    iput v8, v2, Lwn/l;->d:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    move v7, v4

    :goto_4
    iget v8, v6, Lwn/l;->e:I

    if-ge v7, v8, :cond_4

    iget-object v8, v2, Lwn/l;->b:[F

    iget v9, v2, Lwn/l;->e:I

    mul-int/lit8 v9, v9, 0x3

    iget-object v10, v6, Lwn/l;->b:[F

    mul-int/lit8 v11, v7, 0x3

    invoke-static {v8, v9, v10, v11}, Lwn/I;->c([FI[FI)V

    iget v8, v2, Lwn/l;->e:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v2, Lwn/l;->e:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    move v7, v4

    :goto_5
    iget v8, v6, Lwn/l;->f:I

    if-ge v7, v8, :cond_5

    iget-object v8, v2, Lwn/l;->c:[I

    iget v9, v2, Lwn/l;->f:I

    mul-int/lit8 v10, v9, 0x4

    iget-object v11, v6, Lwn/l;->c:[I

    mul-int/lit8 v12, v7, 0x4

    aget v13, v11, v12

    aput v13, v8, v10

    mul-int/lit8 v10, v9, 0x4

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v13, v12, 0x1

    aget v13, v11, v13

    aput v13, v8, v10

    mul-int/lit8 v10, v9, 0x4

    add-int/lit8 v10, v10, 0x2

    add-int/lit8 v13, v12, 0x2

    aget v13, v11, v13

    aput v13, v8, v10

    mul-int/lit8 v10, v9, 0x4

    add-int/lit8 v10, v10, 0x3

    add-int/lit8 v12, v12, 0x3

    aget v11, v11, v12

    aput v11, v8, v10

    add-int/lit8 v9, v9, 0x1

    iput v9, v2, Lwn/l;->f:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_5
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v0, v3}, Lwn/N;->g(Ljava/lang/String;)V

    return-object v2
.end method

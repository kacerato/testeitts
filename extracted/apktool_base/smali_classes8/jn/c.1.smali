.class public Ljn/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljn/c$a;,
        Ljn/c$b;
    }
.end annotation


# static fields
.field public static final a:F = 1.0E-4f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([FI[F)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inters",
            "ii",
            "p"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-lez p1, :cond_1

    add-int/lit8 v3, p1, -0x3

    aget v3, p0, v3

    aget v4, p2, v0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    add-int/lit8 v3, p1, -0x2

    aget v3, p0, v3

    aget v5, p2, v1

    cmpl-float v3, v3, v5

    if-nez v3, :cond_0

    add-int/lit8 v3, p1, -0x1

    aget v3, p0, v3

    aget v5, p2, v2

    cmpl-float v3, v3, v5

    if-nez v3, :cond_0

    return p1

    :cond_0
    aget v3, p0, v0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    aget v3, p0, v1

    aget v4, p2, v1

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    aget v3, p0, v2

    aget v4, p2, v2

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    return p1

    :cond_1
    aget v0, p2, v0

    aput v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    aget v1, p2, v1

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    aget p2, p2, v2

    aput p2, p0, v0

    add-int/lit8 p1, p1, 0x3

    return p1
.end method

.method public static b([F[F[F)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "c"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x2

    aget v3, p0, v2

    aget v4, p1, v2

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v1, v1, v3

    const/4 v3, 0x1

    if-lez v1, :cond_3

    aget p0, p0, v0

    aget p2, p2, v0

    cmpg-float v1, p0, p2

    if-gtz v1, :cond_0

    aget v1, p1, v0

    cmpg-float v1, p2, v1

    if-lez v1, :cond_1

    :cond_0
    cmpl-float p0, p0, p2

    if-ltz p0, :cond_2

    aget p0, p1, v0

    cmpl-float p0, p2, p0

    if-ltz p0, :cond_2

    :cond_1
    move v0, v3

    :cond_2
    return v0

    :cond_3
    aget p0, p0, v2

    aget p2, p2, v2

    cmpg-float v1, p0, p2

    if-gtz v1, :cond_4

    aget v1, p1, v2

    cmpg-float v1, p2, v1

    if-lez v1, :cond_5

    :cond_4
    cmpl-float p0, p0, p2

    if-ltz p0, :cond_6

    aget p0, p1, v2

    cmpl-float p0, p2, p0

    if-ltz p0, :cond_6

    :cond_5
    move v0, v3

    :cond_6
    return v0
.end method

.method public static c(Ljn/c$a;FF)Ljn/c$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflag",
            "aHB",
            "bHA"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    sget-object p0, Ljn/c$a;->Pin:Ljn/c$a;

    return-object p0

    :cond_0
    cmpl-float p1, p2, v0

    if-lez p1, :cond_1

    sget-object p0, Ljn/c$a;->Qin:Ljn/c$a;

    :cond_1
    return-object p0
.end method

.method public static d([F[F)[F
    .locals 33
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v0

    const/4 v3, 0x3

    div-int/2addr v2, v3

    array-length v4, v1

    div-int/2addr v4, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    mul-int/lit8 v5, v5, 0x9

    new-array v5, v5, [F

    new-array v12, v3, [F

    new-array v13, v3, [F

    new-array v14, v3, [F

    new-array v15, v3, [F

    sget-object v6, Ljn/c$a;->Unknown:Ljn/c$a;

    new-array v11, v3, [F

    new-array v10, v3, [F

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v9, v6

    move/from16 v8, v16

    move/from16 v18, v8

    move/from16 v19, v18

    move/from16 v21, v19

    move/from16 v22, v21

    move/from16 v20, v17

    :goto_0
    rem-int v6, v18, v2

    mul-int/2addr v6, v3

    invoke-static {v12, v0, v6}, Ljn/g;->x([F[FI)V

    rem-int v6, v19, v4

    mul-int/2addr v6, v3

    invoke-static {v13, v1, v6}, Ljn/g;->x([F[FI)V

    add-int v6, v18, v2

    add-int/lit8 v6, v6, -0x1

    rem-int/2addr v6, v2

    mul-int/2addr v6, v3

    invoke-static {v14, v0, v6}, Ljn/g;->x([F[FI)V

    add-int v6, v19, v4

    add-int/lit8 v6, v6, -0x1

    rem-int/2addr v6, v4

    mul-int/2addr v6, v3

    invoke-static {v15, v1, v6}, Ljn/g;->x([F[FI)V

    invoke-static {v12, v14}, Ljn/g;->W([F[F)[F

    move-result-object v7

    invoke-static {v13, v15}, Ljn/g;->W([F[F)[F

    move-result-object v6

    aget v23, v6, v16

    const/16 v24, 0x2

    aget v25, v7, v24

    mul-float v23, v23, v25

    aget v25, v7, v16

    aget v24, v6, v24

    mul-float v25, v25, v24

    sub-float v23, v23, v25

    invoke-static {v15, v13, v12}, Ljn/g;->u([F[F[F)F

    move-result v3

    invoke-static {v14, v12, v13}, Ljn/g;->u([F[F[F)F

    move-result v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v25

    const v26, 0x38d1b717    # 1.0E-4f

    cmpg-float v25, v25, v26

    const/16 v27, 0x0

    if-gez v25, :cond_0

    move/from16 v23, v27

    :cond_0
    cmpl-float v23, v23, v27

    if-nez v23, :cond_1

    move/from16 v25, v17

    goto :goto_1

    :cond_1
    move/from16 v25, v16

    :goto_1
    if-eqz v25, :cond_2

    move-object v1, v6

    move-object v6, v14

    move/from16 v28, v4

    move-object v4, v7

    move-object v7, v12

    move/from16 v29, v2

    move v2, v8

    move-object v8, v15

    move-object/from16 v30, v1

    move-object v1, v9

    move-object v9, v13

    move-object/from16 v31, v10

    move-object v10, v11

    move-object/from16 v32, v11

    move-object/from16 v11, v31

    invoke-static/range {v6 .. v11}, Ljn/c;->e([F[F[F[F[F[F)Ljn/c$b;

    move-result-object v6

    goto :goto_2

    :cond_2
    move/from16 v29, v2

    move/from16 v28, v4

    move-object/from16 v30, v6

    move-object v4, v7

    move v2, v8

    move-object v1, v9

    move-object/from16 v31, v10

    move-object/from16 v32, v11

    move-object v6, v14

    move-object v7, v12

    move-object v8, v15

    move-object v9, v13

    move-object/from16 v10, v32

    move-object/from16 v11, v31

    invoke-static/range {v6 .. v11}, Ljn/c;->f([F[F[F[F[F[F)Ljn/c$b;

    move-result-object v6

    :goto_2
    sget-object v7, Ljn/c$b;->Single:Ljn/c$b;

    if-ne v6, v7, :cond_4

    if-eqz v20, :cond_3

    move/from16 v20, v16

    move/from16 v21, v20

    move/from16 v22, v21

    :cond_3
    move-object/from16 v7, v32

    invoke-static {v5, v2, v7}, Ljn/c;->a([FI[F)I

    move-result v8

    invoke-static {v1, v3, v0}, Ljn/c;->c(Ljn/c$a;FF)Ljn/c$a;

    move-result-object v1

    move-object v9, v1

    goto :goto_3

    :cond_4
    move-object/from16 v7, v32

    move-object v9, v1

    move v8, v2

    :goto_3
    sget-object v1, Ljn/c$b;->Overlap:Ljn/c$b;

    const/4 v2, 0x0

    if-ne v6, v1, :cond_5

    move-object/from16 v1, v30

    invoke-static {v4, v1}, Ljn/g;->F([F[F)F

    move-result v1

    cmpg-float v1, v1, v27

    if-gez v1, :cond_5

    invoke-static {v5, v8, v7}, Ljn/c;->a([FI[F)I

    move-result v0

    move-object/from16 v1, v31

    invoke-static {v5, v0, v1}, Ljn/c;->a([FI[F)I

    move-result v0

    goto/16 :goto_9

    :cond_5
    move-object/from16 v1, v31

    if-eqz v25, :cond_6

    cmpg-float v4, v3, v27

    if-gez v4, :cond_6

    cmpg-float v4, v0, v27

    if-gez v4, :cond_6

    return-object v2

    :cond_6
    if-eqz v25, :cond_9

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v26

    if-gez v4, :cond_9

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v26

    if-gez v4, :cond_9

    sget-object v0, Ljn/c$a;->Pin:Ljn/c$a;

    if-ne v9, v0, :cond_8

    :cond_7
    :goto_4
    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v19, v19, 0x1

    :goto_5
    move/from16 v0, v21

    move/from16 v3, v22

    move/from16 v4, v29

    goto :goto_7

    :cond_8
    :goto_6
    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    :cond_9
    if-ltz v23, :cond_b

    cmpl-float v0, v0, v27

    if-lez v0, :cond_a

    sget-object v0, Ljn/c$a;->Pin:Ljn/c$a;

    if-ne v9, v0, :cond_8

    invoke-static {v5, v8, v12}, Ljn/c;->a([FI[F)I

    move-result v8

    goto :goto_6

    :cond_a
    sget-object v0, Ljn/c$a;->Qin:Ljn/c$a;

    if-ne v9, v0, :cond_7

    invoke-static {v5, v8, v13}, Ljn/c;->a([FI[F)I

    move-result v8

    goto :goto_4

    :cond_b
    cmpl-float v0, v3, v27

    if-lez v0, :cond_c

    sget-object v0, Ljn/c$a;->Qin:Ljn/c$a;

    if-ne v9, v0, :cond_7

    invoke-static {v5, v8, v13}, Ljn/c;->a([FI[F)I

    move-result v8

    goto :goto_4

    :cond_c
    sget-object v0, Ljn/c$a;->Pin:Ljn/c$a;

    if-ne v9, v0, :cond_8

    invoke-static {v5, v8, v12}, Ljn/c;->a([FI[F)I

    move-result v8

    goto :goto_6

    :goto_7
    move/from16 v6, v28

    if-lt v0, v4, :cond_d

    if-ge v3, v6, :cond_f

    :cond_d
    mul-int/lit8 v10, v4, 0x2

    if-ge v0, v10, :cond_f

    mul-int/lit8 v10, v6, 0x2

    if-lt v3, v10, :cond_e

    goto :goto_8

    :cond_e
    move/from16 v21, v0

    move-object v10, v1

    move/from16 v22, v3

    move v2, v4

    move v4, v6

    move-object v11, v7

    const/4 v3, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_f
    :goto_8
    move v0, v8

    :goto_9
    sget-object v1, Ljn/c$a;->Unknown:Ljn/c$a;

    if-ne v9, v1, :cond_10

    return-object v2

    :cond_10
    invoke-static {v5, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public static e([F[F[F[F[F[F)Ljn/c$b;
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
            "a",
            "b",
            "c",
            "d",
            "p",
            "q"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Ljn/c;->b([F[F[F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p3}, Ljn/c;->b([F[F[F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p4, p2}, Ljn/g;->w([F[F)V

    invoke-static {p5, p3}, Ljn/g;->w([F[F)V

    sget-object p0, Ljn/c$b;->Overlap:Ljn/c$b;

    return-object p0

    :cond_0
    invoke-static {p2, p3, p0}, Ljn/c;->b([F[F[F)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2, p3, p1}, Ljn/c;->b([F[F[F)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p4, p0}, Ljn/g;->w([F[F)V

    invoke-static {p5, p1}, Ljn/g;->w([F[F)V

    sget-object p0, Ljn/c$b;->Overlap:Ljn/c$b;

    return-object p0

    :cond_1
    invoke-static {p0, p1, p2}, Ljn/c;->b([F[F[F)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2, p3, p1}, Ljn/c;->b([F[F[F)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p4, p2}, Ljn/g;->w([F[F)V

    invoke-static {p5, p1}, Ljn/g;->w([F[F)V

    sget-object p0, Ljn/c$b;->Overlap:Ljn/c$b;

    return-object p0

    :cond_2
    invoke-static {p0, p1, p2}, Ljn/c;->b([F[F[F)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2, p3, p0}, Ljn/c;->b([F[F[F)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p4, p2}, Ljn/g;->w([F[F)V

    invoke-static {p5, p0}, Ljn/g;->w([F[F)V

    sget-object p0, Ljn/c$b;->Overlap:Ljn/c$b;

    return-object p0

    :cond_3
    invoke-static {p0, p1, p3}, Ljn/c;->b([F[F[F)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2, p3, p1}, Ljn/c;->b([F[F[F)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p4, p3}, Ljn/g;->w([F[F)V

    invoke-static {p5, p1}, Ljn/g;->w([F[F)V

    sget-object p0, Ljn/c$b;->Overlap:Ljn/c$b;

    return-object p0

    :cond_4
    invoke-static {p0, p1, p3}, Ljn/c;->b([F[F[F)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {p2, p3, p0}, Ljn/c;->b([F[F[F)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {p4, p3}, Ljn/g;->w([F[F)V

    invoke-static {p5, p0}, Ljn/g;->w([F[F)V

    sget-object p0, Ljn/c$b;->Overlap:Ljn/c$b;

    return-object p0

    :cond_5
    sget-object p0, Ljn/c$b;->None:Ljn/c$b;

    return-object p0
.end method

.method public static f([F[F[F[F[F[F)Ljn/c$b;
    .locals 2
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
            "a",
            "b",
            "c",
            "d",
            "p",
            "q"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Ljn/g;->h([F[F[F[F)Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljn/U;

    iget-object p3, p3, Ljn/U;->a:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljn/U;

    iget-object p2, p2, Ljn/U;->b:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 p5, 0x0

    cmpl-float v0, p3, p5

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p3, v0

    if-gtz v1, :cond_0

    cmpl-float p5, p2, p5

    if-ltz p5, :cond_0

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_0

    const/4 p2, 0x0

    aget p5, p0, p2

    aget v0, p1, p2

    sub-float/2addr v0, p5

    mul-float/2addr v0, p3

    add-float/2addr p5, v0

    aput p5, p4, p2

    const/4 p2, 0x1

    aget p5, p0, p2

    aget v0, p1, p2

    sub-float/2addr v0, p5

    mul-float/2addr v0, p3

    add-float/2addr p5, v0

    aput p5, p4, p2

    const/4 p2, 0x2

    aget p0, p0, p2

    aget p1, p1, p2

    sub-float/2addr p1, p0

    mul-float/2addr p1, p3

    add-float/2addr p0, p1

    aput p0, p4, p2

    sget-object p0, Ljn/c$b;->Single:Ljn/c$b;

    return-object p0

    :cond_0
    sget-object p0, Ljn/c$b;->None:Ljn/c$b;

    return-object p0
.end method

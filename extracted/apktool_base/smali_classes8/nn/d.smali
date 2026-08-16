.class public Lnn/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lwn/k;)[Lnn/c;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mesh"
        }
    .end annotation

    move-object/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_6

    iget-object v2, v0, Lwn/k;->j:[F

    iget v3, v0, Lwn/k;->l:F

    iget v4, v0, Lwn/k;->m:F

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    iget v7, v0, Lwn/k;->f:I

    if-ge v6, v7, :cond_6

    iget v7, v0, Lwn/k;->g:I

    mul-int/lit8 v8, v6, 0x2

    mul-int/2addr v8, v7

    move v9, v5

    :goto_1
    if-ge v9, v7, :cond_5

    iget-object v10, v0, Lwn/k;->b:[I

    add-int v11, v8, v9

    aget v11, v10, v11

    sget v12, Lwn/u;->j:I

    if-ne v11, v12, :cond_0

    goto/16 :goto_3

    :cond_0
    add-int v13, v8, v7

    add-int/2addr v13, v9

    aget v13, v10, v13

    const v14, 0x8000

    and-int/2addr v14, v13

    if-eqz v14, :cond_4

    and-int/lit8 v14, v13, 0xf

    const/16 v15, 0xf

    if-ne v14, v15, :cond_4

    if-eq v13, v12, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v13, v9, 0x1

    if-ge v13, v7, :cond_2

    add-int v14, v8, v13

    aget v14, v10, v14

    if-ne v14, v12, :cond_3

    :cond_2
    move v13, v5

    :cond_3
    mul-int/lit8 v11, v11, 0x3

    add-int/2addr v13, v8

    aget v10, v10, v13

    mul-int/lit8 v10, v10, 0x3

    new-instance v12, Lnn/c;

    invoke-direct {v12}, Lnn/c;-><init>()V

    iget-object v13, v12, Lnn/c;->a:[F

    aget v14, v2, v5

    iget-object v15, v0, Lwn/k;->a:[I

    aget v5, v15, v10

    int-to-float v5, v5

    mul-float/2addr v5, v3

    add-float/2addr v14, v5

    const/4 v5, 0x0

    aput v14, v13, v5

    const/4 v5, 0x1

    aget v14, v2, v5

    add-int/lit8 v16, v10, 0x1

    aget v5, v15, v16

    int-to-float v5, v5

    mul-float/2addr v5, v4

    add-float/2addr v14, v5

    const/4 v5, 0x1

    aput v14, v13, v5

    const/4 v5, 0x2

    aget v14, v2, v5

    add-int/2addr v10, v5

    aget v10, v15, v10

    int-to-float v10, v10

    mul-float/2addr v10, v3

    add-float/2addr v14, v10

    aput v14, v13, v5

    iget-object v10, v12, Lnn/c;->b:[F

    const/4 v13, 0x0

    aget v14, v2, v13

    aget v5, v15, v11

    int-to-float v5, v5

    mul-float/2addr v5, v3

    add-float/2addr v14, v5

    aput v14, v10, v13

    const/4 v5, 0x1

    aget v14, v2, v5

    add-int/lit8 v16, v11, 0x1

    aget v13, v15, v16

    int-to-float v13, v13

    mul-float/2addr v13, v4

    add-float/2addr v14, v13

    aput v14, v10, v5

    const/4 v5, 0x2

    aget v13, v2, v5

    add-int/2addr v11, v5

    aget v11, v15, v11

    int-to-float v11, v11

    mul-float/2addr v11, v3

    add-float/2addr v13, v11

    aput v13, v10, v5

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_5
    :goto_3
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lnn/c;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnn/c;

    return-object v0
.end method

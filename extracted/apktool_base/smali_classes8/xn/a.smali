.class public Lxn/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxn/a$b;,
        Lxn/a$c;,
        Lxn/a$d;,
        Lxn/a$e;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lxn/a$c;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;II)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "verts",
            "tris",
            "ntris",
            "trisPerChunk"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move/from16 v4, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    add-int v0, v4, p4

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    div-int v0, v0, p4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v8, Lxn/a;->a:Ljava/util/List;

    iput v4, v8, Lxn/a;->b:I

    new-array v3, v4, [Lxn/a$b;

    const/4 v9, 0x0

    move v5, v9

    :goto_0
    const/4 v0, 0x3

    if-ge v5, v4, :cond_5

    mul-int/lit8 v6, v5, 0x3

    :try_start_0
    new-instance v10, Lxn/a$b;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lxn/a$b;-><init>(Lxn/a$a;)V

    aput-object v10, v3, v5

    invoke-static {v10, v5}, Lxn/a$b;->d(Lxn/a$b;I)I

    invoke-static {v10}, Lxn/a$b;->a(Lxn/a$b;)[F

    move-result-object v11

    invoke-static {v10}, Lxn/a$b;->b(Lxn/a$b;)[F

    move-result-object v12

    invoke-virtual {v7, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v13

    mul-int/2addr v13, v0

    invoke-virtual {v1, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v13

    aput v13, v12, v9

    aput v13, v11, v9

    invoke-static {v10}, Lxn/a$b;->a(Lxn/a$b;)[F

    move-result-object v11

    invoke-static {v10}, Lxn/a$b;->b(Lxn/a$b;)[F

    move-result-object v12

    invoke-virtual {v7, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v13

    mul-int/2addr v13, v0

    add-int/lit8 v13, v13, 0x2

    invoke-virtual {v1, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v13

    aput v13, v12, v2

    aput v13, v11, v2

    move v11, v2

    :goto_1
    if-ge v11, v0, :cond_4

    add-int v12, v6, v11

    invoke-virtual {v7, v12}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v12

    mul-int/2addr v12, v0

    invoke-virtual {v1, v12}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v13

    invoke-static {v10}, Lxn/a$b;->a(Lxn/a$b;)[F

    move-result-object v14

    aget v14, v14, v9

    cmpg-float v13, v13, v14

    if-gez v13, :cond_0

    invoke-static {v10}, Lxn/a$b;->a(Lxn/a$b;)[F

    move-result-object v13

    invoke-virtual {v1, v12}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v14

    aput v14, v13, v9

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_2
    add-int/lit8 v13, v12, 0x2

    invoke-virtual {v1, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v14

    invoke-static {v10}, Lxn/a$b;->a(Lxn/a$b;)[F

    move-result-object v15

    aget v15, v15, v2

    cmpg-float v14, v14, v15

    if-gez v14, :cond_1

    invoke-static {v10}, Lxn/a$b;->a(Lxn/a$b;)[F

    move-result-object v14

    invoke-virtual {v1, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v15

    aput v15, v14, v2

    :cond_1
    invoke-virtual {v1, v12}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v14

    invoke-static {v10}, Lxn/a$b;->b(Lxn/a$b;)[F

    move-result-object v15

    aget v15, v15, v9

    cmpl-float v14, v14, v15

    if-lez v14, :cond_2

    invoke-static {v10}, Lxn/a$b;->b(Lxn/a$b;)[F

    move-result-object v14

    invoke-virtual {v1, v12}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v12

    aput v12, v14, v9

    :cond_2
    invoke-virtual {v1, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v12

    invoke-static {v10}, Lxn/a$b;->b(Lxn/a$b;)[F

    move-result-object v14

    aget v14, v14, v2

    cmpl-float v12, v12, v14

    if-lez v12, :cond_3

    invoke-static {v10}, Lxn/a$b;->b(Lxn/a$b;)[F

    move-result-object v12

    invoke-virtual {v1, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v13

    aput v13, v12, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v5, 0x0

    iget-object v6, v8, Lxn/a;->a:Ljava/util/List;

    move-object/from16 v1, p0

    move-object v2, v3

    move v3, v5

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p2

    invoke-virtual/range {v1 .. v7}, Lxn/a;->e([Lxn/a$b;IIILjava/util/List;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    iput v9, v8, Lxn/a;->c:I

    iget-object v1, v8, Lxn/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxn/a$c;

    invoke-static {v2}, Lxn/a$c;->c(Lxn/a$c;)I

    move-result v3

    if-ltz v3, :cond_6

    iget-object v3, v2, Lxn/a$c;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v3

    div-int/2addr v3, v0

    iget v4, v8, Lxn/a;->c:I

    if-le v3, v4, :cond_6

    iget-object v2, v2, Lxn/a$c;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v2

    div-int/2addr v2, v0

    iput v2, v8, Lxn/a;->c:I

    goto :goto_4

    :cond_7
    return-void
.end method


# virtual methods
.method public final a([Lxn/a$b;II[F[F)V
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
            "items",
            "imin",
            "imax",
            "bmin",
            "bmax"
        }
    .end annotation

    aget-object v0, p1, p2

    invoke-static {v0}, Lxn/a$b;->a(Lxn/a$b;)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    aput v0, p4, v1

    aget-object v0, p1, p2

    invoke-static {v0}, Lxn/a$b;->a(Lxn/a$b;)[F

    move-result-object v0

    const/4 v2, 0x1

    aget v0, v0, v2

    aput v0, p4, v2

    aget-object v0, p1, p2

    invoke-static {v0}, Lxn/a$b;->b(Lxn/a$b;)[F

    move-result-object v0

    aget v0, v0, v1

    aput v0, p5, v1

    aget-object v0, p1, p2

    invoke-static {v0}, Lxn/a$b;->b(Lxn/a$b;)[F

    move-result-object v0

    aget v0, v0, v2

    aput v0, p5, v2

    add-int/2addr p2, v2

    :goto_0
    if-ge p2, p3, :cond_4

    aget-object v0, p1, p2

    invoke-static {v0}, Lxn/a$b;->a(Lxn/a$b;)[F

    move-result-object v3

    aget v3, v3, v1

    aget v4, p4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    invoke-static {v0}, Lxn/a$b;->a(Lxn/a$b;)[F

    move-result-object v3

    aget v3, v3, v1

    aput v3, p4, v1

    :cond_0
    invoke-static {v0}, Lxn/a$b;->a(Lxn/a$b;)[F

    move-result-object v3

    aget v3, v3, v2

    aget v4, p4, v2

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    invoke-static {v0}, Lxn/a$b;->a(Lxn/a$b;)[F

    move-result-object v3

    aget v3, v3, v2

    aput v3, p4, v2

    :cond_1
    invoke-static {v0}, Lxn/a$b;->b(Lxn/a$b;)[F

    move-result-object v3

    aget v3, v3, v1

    aget v4, p5, v1

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    invoke-static {v0}, Lxn/a$b;->b(Lxn/a$b;)[F

    move-result-object v3

    aget v3, v3, v1

    aput v3, p5, v1

    :cond_2
    invoke-static {v0}, Lxn/a$b;->b(Lxn/a$b;)[F

    move-result-object v3

    aget v3, v3, v2

    aget v4, p5, v2

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    invoke-static {v0}, Lxn/a$b;->b(Lxn/a$b;)[F

    move-result-object v0

    aget v0, v0, v2

    aput v0, p5, v2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final b([F[F[F[F)Z
    .locals 4
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

    const/4 v0, 0x0

    aget v1, p1, v0

    aget v2, p4, v0

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    if-gtz v1, :cond_1

    aget v1, p2, v0

    aget v3, p3, v0

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    aget p1, p1, v2

    aget p4, p4, v2

    cmpl-float p1, p1, p4

    if-gtz p1, :cond_3

    aget p1, p2, v2

    aget p2, p3, v2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    return v0
.end method

.method public c([F[F)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bmin",
            "bmax"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[F)",
            "Ljava/util/List<",
            "Lxn/a$c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lxn/a;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lxn/a;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lxn/a$c;

    invoke-static {v3}, Lxn/a$c;->a(Lxn/a$c;)[F

    move-result-object v4

    invoke-static {v3}, Lxn/a$c;->b(Lxn/a$c;)[F

    move-result-object v5

    invoke-virtual {p0, p1, p2, v4, v5}, Lxn/a;->b([F[F[F[F)Z

    move-result v4

    invoke-static {v3}, Lxn/a$c;->c(Lxn/a$c;)I

    move-result v5

    if-ltz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez v4, :cond_3

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v3}, Lxn/a$c;->c(Lxn/a$c;)I

    move-result v2

    neg-int v2, v2

    goto :goto_0

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public final d(FF)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final e([Lxn/a$b;IIILjava/util/List;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V
    .locals 9
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
            "imin",
            "imax",
            "trisPerChunk",
            "nodes",
            "inTris"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lxn/a$b;",
            "III",
            "Ljava/util/List<",
            "Lxn/a$c;",
            ">;",
            "Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;",
            ")V"
        }
    .end annotation

    sub-int v0, p3, p2

    new-instance v1, Lxn/a$c;

    invoke-direct {v1}, Lxn/a$c;-><init>()V

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    if-gt v0, p4, :cond_0

    invoke-static {v1}, Lxn/a$c;->a(Lxn/a$c;)[F

    move-result-object v7

    invoke-static {v1}, Lxn/a$c;->b(Lxn/a$c;)[F

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Lxn/a;->a([Lxn/a$b;II[F[F)V

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p4

    invoke-static {v1, p4}, Lxn/a$c;->d(Lxn/a$c;I)I

    new-instance p4, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    mul-int/lit8 v0, v0, 0x3

    invoke-direct {p4, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    iput-object p4, v1, Lxn/a$c;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    :goto_0
    if-ge p2, p3, :cond_3

    aget-object p4, p1, p2

    invoke-static {p4}, Lxn/a$b;->c(Lxn/a$b;)I

    move-result p4

    mul-int/lit8 p4, p4, 0x3

    iget-object p5, v1, Lxn/a$c;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p6, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v3

    invoke-virtual {p5, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    iget-object p5, v1, Lxn/a$c;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    add-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, p4, 0x1

    invoke-virtual {p6, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v4

    invoke-virtual {p5, v0, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    iget-object p5, v1, Lxn/a$c;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 p4, p4, 0x2

    invoke-virtual {p6, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result p4

    invoke-virtual {p5, v3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lxn/a$c;->a(Lxn/a$c;)[F

    move-result-object v7

    invoke-static {v1}, Lxn/a$c;->b(Lxn/a$c;)[F

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Lxn/a;->a([Lxn/a$b;II[F[F)V

    invoke-static {v1}, Lxn/a$c;->b(Lxn/a$c;)[F

    move-result-object v3

    aget v3, v3, v2

    invoke-static {v1}, Lxn/a$c;->a(Lxn/a$c;)[F

    move-result-object v4

    aget v2, v4, v2

    sub-float/2addr v3, v2

    invoke-static {v1}, Lxn/a$c;->b(Lxn/a$c;)[F

    move-result-object v2

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-static {v1}, Lxn/a$c;->a(Lxn/a$c;)[F

    move-result-object v5

    aget v5, v5, v4

    sub-float/2addr v2, v5

    invoke-virtual {p0, v3, v2}, Lxn/a;->d(FF)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    new-instance v2, Lxn/a$d;

    invoke-direct {v2, p0, v3}, Lxn/a$d;-><init>(Lxn/a;Lxn/a$a;)V

    invoke-static {p1, p2, p3, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    goto :goto_1

    :cond_1
    if-ne v2, v4, :cond_2

    new-instance v2, Lxn/a$e;

    invoke-direct {v2, p0, v3}, Lxn/a$e;-><init>(Lxn/a;Lxn/a$a;)V

    invoke-static {p1, p2, p3, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    :cond_2
    :goto_1
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, v0

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lxn/a;->e([Lxn/a$b;IIILjava/util/List;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    move v4, v0

    move v5, p3

    invoke-virtual/range {v2 .. v8}, Lxn/a;->e([Lxn/a$b;IIILjava/util/List;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p1

    neg-int p1, p1

    invoke-static {v1, p1}, Lxn/a$c;->d(Lxn/a$c;I)I

    :cond_3
    return-void
.end method

.class public LJb/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJb/c$c;
    }
.end annotation


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

.field public i:LRb/d;

.field public final j:LJb/c$c;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;LJb/c$c;)V
    .locals 0
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
            "verticesBuffer",
            "uvsBuffer",
            "trianglesBuffer",
            "normalsBuffer",
            "tangentsBuffer",
            "jointsBuffer",
            "weightsBuffer",
            "listener"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJb/c;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p2, p0, LJb/c;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p3, p0, LJb/c;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    iput-object p4, p0, LJb/c;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p5, p0, LJb/c;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p6, p0, LJb/c;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p7, p0, LJb/c;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p8, p0, LJb/c;->j:LJb/c$c;

    invoke-virtual {p0}, LJb/c;->e()V

    return-void
.end method

.method public static synthetic a(LJb/c;IZLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;ZILcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V
    .locals 0

    invoke-virtual/range {p0 .. p10}, LJb/c;->o(IZLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;ZILcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V

    return-void
.end method

.method public static b(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vertices",
            "vcount"
        }
    .end annotation

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    move v5, v4

    move v6, v2

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v6, p1, :cond_6

    mul-int/lit8 v7, v6, 0x3

    invoke-virtual {p0, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v8

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {p0, v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v9

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {p0, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v7

    cmpg-float v10, v8, v0

    if-gez v10, :cond_0

    move v0, v8

    :cond_0
    cmpg-float v10, v9, v1

    if-gez v10, :cond_1

    move v1, v9

    :cond_1
    cmpg-float v10, v7, v2

    if-gez v10, :cond_2

    move v2, v7

    :cond_2
    cmpl-float v10, v8, v3

    if-lez v10, :cond_3

    move v3, v8

    :cond_3
    cmpl-float v8, v9, v4

    if-lez v8, :cond_4

    move v4, v9

    :cond_4
    cmpl-float v8, v7, v5

    if-lez v8, :cond_5

    move v5, v7

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    if-gtz p1, :cond_7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    goto :goto_1

    :cond_7
    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_1
    move v7, p1

    invoke-static/range {v1 .. v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->N(FFFFFFI)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;I)Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;
    .locals 0
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
            "vertices",
            "uvs",
            "normals",
            "tangents",
            "triangles",
            "vcount"
        }
    .end annotation

    invoke-static {p0, p2, p3, p5}, LJb/c;->g(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)Z

    move-result p5

    if-eqz p5, :cond_0

    new-instance p1, LJb/a;

    invoke-direct {p1, p0, p2, p3, p4}, LJb/a;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    invoke-virtual {p1}, LJb/a;->b()Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p3, LJb/g;

    invoke-direct {p3, p0, p1, p2, p4}, LJb/g;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    invoke-virtual {p3}, LJb/g;->b()Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "joints",
            "weights",
            "vcount"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    mul-int/lit8 v4, v2, 0x8

    invoke-direct {v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_3

    invoke-static {v0, v5, v4}, LJb/c;->n(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v0, v5, v7}, LJb/c;->n(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)I

    move-result v8

    const/4 v9, 0x2

    invoke-static {v0, v5, v9}, LJb/c;->n(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)I

    move-result v10

    const/4 v11, 0x3

    invoke-static {v0, v5, v11}, LJb/c;->n(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)I

    move-result v12

    invoke-static {v1, v5, v4}, LJb/c;->q(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)F

    move-result v13

    invoke-static {v1, v5, v7}, LJb/c;->q(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)F

    move-result v7

    invoke-static {v1, v5, v9}, LJb/c;->q(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)F

    move-result v9

    invoke-static {v1, v5, v11}, LJb/c;->q(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)F

    move-result v11

    add-float v14, v13, v7

    add-float/2addr v14, v9

    add-float/2addr v14, v11

    const/4 v11, 0x0

    cmpl-float v15, v14, v11

    if-gtz v15, :cond_0

    const/high16 v7, 0x3f800000    # 1.0f

    move v8, v4

    move v10, v8

    move v12, v10

    move v9, v11

    goto :goto_1

    :cond_0
    div-float v11, v13, v14

    div-float/2addr v7, v14

    div-float/2addr v9, v14

    move/from16 v16, v11

    move v11, v7

    move/from16 v7, v16

    :goto_1
    invoke-static {v7}, LJb/c;->p(F)I

    move-result v7

    invoke-static {v11}, LJb/c;->p(F)I

    move-result v11

    invoke-static {v9}, LJb/c;->p(F)I

    move-result v9

    rsub-int v13, v7, 0xff

    sub-int/2addr v13, v11

    sub-int/2addr v13, v9

    if-gez v13, :cond_1

    move v13, v4

    goto :goto_2

    :cond_1
    const/16 v14, 0xff

    if-le v13, v14, :cond_2

    move v13, v14

    :cond_2
    :goto_2
    invoke-static {v6}, LJb/c;->h(I)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v3, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->put(B)V

    invoke-static {v8}, LJb/c;->h(I)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v3, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->put(B)V

    invoke-static {v10}, LJb/c;->h(I)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v3, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->put(B)V

    invoke-static {v12}, LJb/c;->h(I)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v3, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->put(B)V

    int-to-byte v6, v7

    invoke-virtual {v3, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->put(B)V

    int-to-byte v6, v11

    invoke-virtual {v3, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->put(B)V

    int-to-byte v6, v9

    invoke-virtual {v3, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->put(B)V

    int-to-byte v6, v13

    invoke-virtual {v3, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->put(B)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->position(I)V

    return-object v3
.end method

.method public static f(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tris"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v4

    const v5, 0xffff

    and-int/2addr v4, v5

    int-to-short v4, v4

    invoke-virtual {v1, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->put(S)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->position(I)V

    return-object v1
.end method

.method public static g(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vertices",
            "normals",
            "tangents",
            "vcount"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result p0

    mul-int/lit8 p1, p3, 0x3

    if-lt p0, p1, :cond_1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result p0

    mul-int/lit8 p3, p3, 0x4

    if-lt p0, p3, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static h(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0xff

    if-le p0, v0, :cond_1

    return v0

    :cond_1
    return p0
.end method

.method public static n(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "joints",
            "v",
            "k"
        }
    .end annotation

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p1, p2

    const/4 p2, 0x0

    if-nez p0, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    if-lt p1, v0, :cond_1

    return p2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, LJb/c;->h(I)I

    move-result p0

    return p0
.end method

.method public static p(F)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "w01"
        }
    .end annotation

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    const/16 v0, 0xff

    if-le p0, v0, :cond_1

    move p0, v0

    :cond_1
    return p0
.end method

.method public static q(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "weights",
            "v",
            "k"
        }
    .end annotation

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p1, p2

    const/4 p2, 0x0

    if-nez p0, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    if-lt p1, v0, :cond_1

    return p2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result p0

    cmpl-float p1, p0, p2

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    move p2, p0

    :goto_0
    return p2
.end method


# virtual methods
.method public final e()V
    .locals 21

    move-object/from16 v13, p0

    invoke-virtual/range {p0 .. p0}, LJb/c;->l()I

    move-result v0

    iget-object v1, v13, LJb/c;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v1

    move v11, v1

    goto :goto_0

    :cond_0
    move v11, v7

    :goto_0
    div-int/lit8 v1, v11, 0x3

    if-eqz v0, :cond_b

    if-nez v1, :cond_1

    goto/16 :goto_b

    :cond_1
    iget-object v14, v13, LJb/c;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v13, v0}, LJb/c;->i(I)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v15, :cond_2

    move-object v9, v15

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v1, v13, LJb/c;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-object v9, v1

    :goto_1
    iget-object v1, v13, LJb/c;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v3, v13, LJb/c;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v4, v13, LJb/c;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v5, v13, LJb/c;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-object v2, v9

    move v6, v0

    invoke-static/range {v1 .. v6}, LJb/c;->c(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;I)Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    invoke-virtual {v13, v0}, LJb/c;->m(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v1, v13, LJb/c;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v2, v13, LJb/c;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v1, v2, v0}, LJb/c;->d(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v17, v1

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object/from16 v17, v8

    :goto_2
    move-object/from16 v18, v17

    :goto_3
    move-object/from16 v19, v18

    :goto_4
    move-object v8, v15

    goto/16 :goto_8

    :cond_3
    move-object/from16 v17, v8

    :goto_5
    :try_start_3
    iget-object v1, v13, LJb/c;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->findMaxValue()I

    move-result v1

    const v2, 0xffff

    if-gt v1, v2, :cond_4

    const/4 v1, 0x1

    move v10, v1

    goto :goto_6

    :cond_4
    move v10, v7

    :goto_6
    if-eqz v10, :cond_5

    iget-object v1, v13, LJb/c;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-static {v1}, LJb/c;->f(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v18, v1

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v18, v8

    goto :goto_3

    :cond_5
    move-object/from16 v18, v8

    :goto_7
    :try_start_4
    iget-object v1, v13, LJb/c;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v1, v0}, LJb/c;->b(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    new-instance v20, LJb/b;

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move v3, v0

    move-object v5, v9

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v19

    move-object v9, v15

    move-object/from16 v12, v18

    invoke-direct/range {v1 .. v12}, LJb/b;-><init>(LJb/c;IZLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;ZILcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V

    invoke-static/range {v20 .. v20}, LK8/a;->I(Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iput-object v14, v13, LJb/c;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-void

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v19, v8

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v17, v16

    goto :goto_2

    :catchall_5
    move-exception v0

    move-object/from16 v16, v8

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    :goto_8
    if-eqz v8, :cond_6

    :try_start_6
    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    goto :goto_9

    :catchall_6
    move-exception v0

    goto :goto_a

    :cond_6
    :goto_9
    if-eqz v19, :cond_7

    invoke-virtual/range {v19 .. v19}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_7
    if-eqz v16, :cond_8

    invoke-virtual/range {v16 .. v16}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->destroyImmediate()V

    :cond_8
    if-eqz v17, :cond_9

    invoke-virtual/range {v17 .. v17}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->destroyImmediate()V

    :cond_9
    if-eqz v18, :cond_a

    invoke-virtual/range {v18 .. v18}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->destroyImmediate()V

    :cond_a
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :goto_a
    iput-object v14, v13, LJb/c;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    throw v0

    :cond_b
    :goto_b
    return-void
.end method

.method public final i(I)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertexCount"
        }
    .end annotation

    iget-object v0, p0, LJb/c;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v1, p1, 0x2

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v1, p1, 0x2

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    iget-object v1, p0, LJb/c;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v3, p0, LJb/c;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v3, :cond_2

    if-lez v1, :cond_2

    mul-int/lit8 v4, v1, 0x2

    invoke-virtual {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V

    :cond_2
    :goto_1
    if-ge v1, p1, :cond_3

    iget-object v3, p0, LJb/c;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v4, v1, 0x3

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v3

    iget-object v5, p0, LJb/c;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v5, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v4

    mul-int/lit8 v5, v1, 0x2

    invoke-virtual {v0, v5, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    return-object v0
.end method

.method public j()LRb/d;
    .locals 1

    iget-object v0, p0, LJb/c;->i:LRb/d;

    return-object v0
.end method

.method public k()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;
    .locals 1

    iget-object v0, p0, LJb/c;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    return-object v0
.end method

.method public final l()I
    .locals 1

    iget-object v0, p0, LJb/c;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public final m(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vcount"
        }
    .end annotation

    iget-object v0, p0, LJb/c;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, LJb/c;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v2, p1, 0x4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, LJb/c;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/lit8 p1, p1, 0x3

    if-lt v0, p1, :cond_1

    if-lt v2, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public final synthetic o(IZLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;ZILcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v7, p10

    new-instance v0, Lcom/google/android/filament/VertexBuffer$b;

    invoke-direct {v0}, Lcom/google/android/filament/VertexBuffer$b;-><init>()V

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/VertexBuffer$b;->h(I)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v0

    const/4 v1, 0x4

    if-eqz p2, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/google/android/filament/VertexBuffer$b;->c(I)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v8

    sget-object v9, Lcom/google/android/filament/VertexBuffer$c;->POSITION:Lcom/google/android/filament/VertexBuffer$c;

    sget-object v0, Lcom/google/android/filament/VertexBuffer$a;->FLOAT3:Lcom/google/android/filament/VertexBuffer$a;

    const/4 v12, 0x0

    const/16 v13, 0xc

    const/4 v10, 0x0

    move-object v11, v0

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v14

    sget-object v15, Lcom/google/android/filament/VertexBuffer$c;->UV0:Lcom/google/android/filament/VertexBuffer$c;

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPrecision()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    move-result-object v2

    sget-object v3, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->FLOAT16:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/google/android/filament/VertexBuffer$a;->HALF2:Lcom/google/android/filament/VertexBuffer$a;

    :goto_1
    move-object/from16 v17, v2

    goto :goto_2

    :cond_1
    sget-object v2, Lcom/google/android/filament/VertexBuffer$a;->FLOAT2:Lcom/google/android/filament/VertexBuffer$a;

    goto :goto_1

    :goto_2
    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getPrecision()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    move-result-object v2

    if-ne v2, v3, :cond_2

    move/from16 v19, v1

    goto :goto_3

    :cond_2
    const/16 v2, 0x8

    move/from16 v19, v2

    :goto_3
    const/16 v16, 0x1

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v19}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v8

    sget-object v2, Lcom/google/android/filament/VertexBuffer$c;->TANGENTS:Lcom/google/android/filament/VertexBuffer$c;

    sget-object v11, Lcom/google/android/filament/VertexBuffer$a;->SHORT4:Lcom/google/android/filament/VertexBuffer$a;

    const/4 v12, 0x0

    const/16 v13, 0x8

    const/4 v10, 0x2

    move-object v9, v2

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/filament/VertexBuffer$b;->f(Lcom/google/android/filament/VertexBuffer$c;)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v10

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Vertex/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/a$a;

    iget-object v11, v2, Lcom/itsmagic/engine/Engines/Engine/Vertex/a$a;->b:Lcom/google/android/filament/VertexBuffer$c;

    const/4 v2, 0x3

    if-eqz p2, :cond_3

    move v12, v1

    goto :goto_4

    :cond_3
    move v12, v2

    :goto_4
    const/4 v14, 0x0

    const/16 v15, 0x18

    move-object v13, v0

    invoke-virtual/range {v10 .. v15}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v10

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Vertex/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/a$a;

    iget-object v11, v3, Lcom/itsmagic/engine/Engines/Engine/Vertex/a$a;->b:Lcom/google/android/filament/VertexBuffer$c;

    if-eqz p2, :cond_4

    move v12, v1

    goto :goto_5

    :cond_4
    move v12, v2

    :goto_5
    const/16 v14, 0xc

    const/16 v15, 0x18

    move-object v13, v0

    invoke-virtual/range {v10 .. v15}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v0

    if-eqz p2, :cond_5

    sget-object v17, Lcom/google/android/filament/VertexBuffer$c;->BONE_INDICES:Lcom/google/android/filament/VertexBuffer$c;

    sget-object v3, Lcom/google/android/filament/VertexBuffer$a;->UBYTE4:Lcom/google/android/filament/VertexBuffer$a;

    const/16 v20, 0x0

    const/16 v21, 0x8

    const/16 v18, 0x3

    move-object/from16 v16, v0

    move-object/from16 v19, v3

    invoke-virtual/range {v16 .. v21}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    sget-object v4, Lcom/google/android/filament/VertexBuffer$c;->BONE_WEIGHTS:Lcom/google/android/filament/VertexBuffer$c;

    const/16 v20, 0x4

    move-object/from16 v17, v4

    invoke-virtual/range {v16 .. v21}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/google/android/filament/VertexBuffer$b;->f(Lcom/google/android/filament/VertexBuffer$c;)Lcom/google/android/filament/VertexBuffer$b;

    :cond_5
    new-instance v8, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    invoke-direct {v8, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;-><init>(Lcom/google/android/filament/VertexBuffer$b;)V

    const/4 v0, 0x0

    iget-object v3, v6, LJb/c;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v8, v0, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->m(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    const/4 v0, 0x1

    move-object/from16 v3, p3

    invoke-virtual {v8, v0, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->m(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    const/4 v0, 0x2

    move-object/from16 v3, p4

    invoke-virtual {v8, v0, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->o(ILcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V

    move-object/from16 v4, p5

    if-eqz p2, :cond_6

    invoke-virtual {v8, v2, v4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->k(ILcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)V

    :cond_6
    if-eqz p2, :cond_7

    move v9, v1

    goto :goto_6

    :cond_7
    move v9, v2

    :goto_6
    new-instance v10, LJb/c$a;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, LJb/c$a;-><init>(LJb/c;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    move-object/from16 v0, p6

    invoke-virtual {v8, v9, v0, v10}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->n(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Ljava/lang/Runnable;)V

    if-eqz p8, :cond_8

    sget-object v0, Lcom/google/android/filament/IndexBuffer$a$b;->USHORT:Lcom/google/android/filament/IndexBuffer$a$b;

    goto :goto_7

    :cond_8
    sget-object v0, Lcom/google/android/filament/IndexBuffer$a$b;->UINT:Lcom/google/android/filament/IndexBuffer$a$b;

    :goto_7
    new-instance v1, LRb/d;

    new-instance v2, Lcom/google/android/filament/IndexBuffer$a;

    invoke-direct {v2}, Lcom/google/android/filament/IndexBuffer$a;-><init>()V

    move/from16 v3, p9

    invoke-virtual {v2, v3}, Lcom/google/android/filament/IndexBuffer$a;->c(I)Lcom/google/android/filament/IndexBuffer$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/filament/IndexBuffer$a;->a(Lcom/google/android/filament/IndexBuffer$a$b;)Lcom/google/android/filament/IndexBuffer$a;

    move-result-object v0

    invoke-direct {v1, v0}, LRb/d;-><init>(Lcom/google/android/filament/IndexBuffer$a;)V

    if-eqz p8, :cond_9

    new-instance v0, LJb/c$b;

    invoke-direct {v0, v6, v7}, LJb/c$b;-><init>(LJb/c;Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V

    invoke-virtual {v1, v7, v0}, LRb/d;->q(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;Ljava/lang/Runnable;)V

    goto :goto_8

    :cond_9
    iget-object v0, v6, LJb/c;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v1, v0}, LRb/d;->n(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    :goto_8
    iput-object v8, v6, LJb/c;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    iput-object v1, v6, LJb/c;->i:LRb/d;

    iget-object v0, v6, LJb/c;->j:LJb/c$c;

    if-eqz v0, :cond_a

    invoke-interface {v0, v8, v1}, LJb/c$c;->a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;)V

    :cond_a
    return-void
.end method

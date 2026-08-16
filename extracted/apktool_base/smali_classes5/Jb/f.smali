.class public LJb/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJb/f$a;
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

.field public final h:LJb/f$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;LJb/f$a;)V
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

    iput-object p1, p0, LJb/f;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p2, p0, LJb/f;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p3, p0, LJb/f;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    iput-object p4, p0, LJb/f;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p5, p0, LJb/f;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p6, p0, LJb/f;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p7, p0, LJb/f;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p8, p0, LJb/f;->h:LJb/f$a;

    invoke-virtual {p0}, LJb/f;->a()V

    return-void
.end method

.method public static b(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;I)Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;
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

    invoke-static {p0, p2, p3, p5}, LJb/f;->e(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)Z

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

.method public static c(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;
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

    invoke-static {v0, v5, v4}, LJb/f;->j(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v0, v5, v7}, LJb/f;->j(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)I

    move-result v8

    const/4 v9, 0x2

    invoke-static {v0, v5, v9}, LJb/f;->j(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)I

    move-result v10

    const/4 v11, 0x3

    invoke-static {v0, v5, v11}, LJb/f;->j(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)I

    move-result v12

    invoke-static {v1, v5, v4}, LJb/f;->l(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)F

    move-result v13

    invoke-static {v1, v5, v7}, LJb/f;->l(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)F

    move-result v7

    invoke-static {v1, v5, v9}, LJb/f;->l(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)F

    move-result v9

    invoke-static {v1, v5, v11}, LJb/f;->l(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)F

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
    invoke-static {v7}, LJb/f;->k(F)I

    move-result v7

    invoke-static {v11}, LJb/f;->k(F)I

    move-result v11

    invoke-static {v9}, LJb/f;->k(F)I

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
    invoke-static {v6}, LJb/f;->f(I)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v3, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->put(B)V

    invoke-static {v8}, LJb/f;->f(I)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v3, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->put(B)V

    invoke-static {v10}, LJb/f;->f(I)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v3, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->put(B)V

    invoke-static {v12}, LJb/f;->f(I)I

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

.method public static d(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;
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

.method public static e(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)Z
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

.method public static f(I)I
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

.method public static j(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)I
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

    invoke-static {p0}, LJb/f;->f(I)I

    move-result p0

    return p0
.end method

.method public static k(F)I
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

.method public static l(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)F
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
.method public final a()V
    .locals 11

    invoke-virtual {p0}, LJb/f;->h()I

    move-result v6

    iget-object v0, p0, LJb/f;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    div-int/lit8 v0, v0, 0x3

    if-eqz v6, :cond_a

    if-nez v0, :cond_1

    goto/16 :goto_7

    :cond_1
    iget-object v7, p0, LJb/f;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p0, v6}, LJb/f;->g(I)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v9, :cond_2

    move-object v1, v9

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v0, p0, LJb/f;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-object v1, v0

    :goto_1
    iget-object v0, p0, LJb/f;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v2, p0, LJb/f;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v3, p0, LJb/f;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v4, p0, LJb/f;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move v5, v6

    invoke-static/range {v0 .. v5}, LJb/f;->b(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;I)Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {p0, v6}, LJb/f;->i(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, LJb/f;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v2, p0, LJb/f;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v1, v2, v6}, LJb/f;->c(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v2, v8

    move-object v8, v0

    move-object v0, v2

    goto :goto_4

    :cond_3
    move-object v1, v8

    :goto_2
    :try_start_3
    iget-object v2, p0, LJb/f;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->findMaxValue()I

    move-result v2

    const v3, 0xffff

    if-gt v2, v3, :cond_4

    iget-object v2, p0, LJb/f;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-static {v2}, LJb/f;->d(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object v8

    goto :goto_3

    :catchall_1
    move-exception v2

    move-object v10, v8

    move-object v8, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v10

    goto :goto_4

    :cond_4
    :goto_3
    iget-object v2, p0, LJb/f;->h:LJb/f$a;

    invoke-interface {v2, v0, v8, v1}, LJb/f$a;->a(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iput-object v7, p0, LJb/f;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_5
    return-void

    :catchall_2
    move-exception v1

    move-object v0, v8

    move-object v2, v0

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v0, v8

    move-object v2, v0

    move-object v9, v2

    :goto_4
    if-eqz v8, :cond_6

    :try_start_4
    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->destroyImmediate()V

    goto :goto_5

    :catchall_4
    move-exception v0

    goto :goto_6

    :cond_6
    :goto_5
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->destroyImmediate()V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->destroyImmediate()V

    :cond_8
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :goto_6
    iput-object v7, p0, LJb/f;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_9
    throw v0

    :cond_a
    :goto_7
    return-void
.end method

.method public final g(I)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertexCount"
        }
    .end annotation

    iget-object v0, p0, LJb/f;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

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

    iget-object v1, p0, LJb/f;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

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
    iget-object v3, p0, LJb/f;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v3, :cond_2

    if-lez v1, :cond_2

    mul-int/lit8 v4, v1, 0x2

    invoke-virtual {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V

    :cond_2
    :goto_1
    if-ge v1, p1, :cond_3

    iget-object v3, p0, LJb/f;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v4, v1, 0x3

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v3

    iget-object v5, p0, LJb/f;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

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

.method public final h()I
    .locals 1

    iget-object v0, p0, LJb/f;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public final i(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vcount"
        }
    .end annotation

    iget-object v0, p0, LJb/f;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, LJb/f;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v2, p1, 0x4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, LJb/f;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

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

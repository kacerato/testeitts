.class public final Lz9/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz9/i$c;,
        Lz9/i$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lz9/i$c;",
            "Lz9/i$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lz9/i;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lz9/i;->b:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lz9/i;Lz9/i$c;Lz9/i$b;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lz9/i;->i(Lz9/i$c;Lz9/i$b;)V

    return-void
.end method

.method public static synthetic b(IZLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lz9/i;->f(IZLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    return-void
.end method

.method public static synthetic c(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Z)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-static {p0, p1}, Lz9/i;->e(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Z)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Z)Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tris",
            "useUshort"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    mul-int/lit8 p1, v0, 0x2

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    int-to-short v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object p1

    :cond_1
    mul-int/lit8 p1, v0, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object p1
.end method

.method public static f(IZLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "resolution",
            "bordersEnabled",
            "uvs",
            "triangles"
        }
    .end annotation

    move/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    mul-int v3, v0, v0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    if-le v0, v5, :cond_0

    add-int/lit8 v6, v0, -0x1

    int-to-float v6, v6

    div-float v6, v4, v6

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    :goto_1
    if-ge v8, v0, :cond_2

    int-to-float v10, v8

    mul-float/2addr v10, v6

    move v11, v7

    :goto_2
    if-ge v11, v0, :cond_1

    int-to-float v12, v11

    mul-float/2addr v12, v6

    mul-int/lit8 v13, v9, 0x2

    invoke-virtual {v1, v13, v10}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    add-int/2addr v13, v5

    invoke-virtual {v1, v13, v12}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    move v6, v7

    move v8, v6

    :goto_3
    add-int/lit8 v9, v0, -0x1

    if-ge v6, v9, :cond_4

    move v10, v7

    :goto_4
    if-ge v10, v9, :cond_3

    invoke-static {v6, v10, v0}, Lz9/i;->h(III)I

    move-result v11

    add-int/lit8 v12, v10, 0x1

    invoke-static {v6, v12, v0}, Lz9/i;->h(III)I

    move-result v13

    add-int/lit8 v14, v6, 0x1

    invoke-static {v14, v10, v0}, Lz9/i;->h(III)I

    move-result v10

    invoke-static {v14, v12, v0}, Lz9/i;->h(III)I

    move-result v14

    add-int/lit8 v15, v8, 0x1

    invoke-virtual {v2, v8, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    add-int/lit8 v4, v8, 0x2

    invoke-virtual {v2, v15, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    add-int/lit8 v13, v8, 0x3

    invoke-virtual {v2, v4, v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    add-int/lit8 v4, v8, 0x4

    invoke-virtual {v2, v13, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    add-int/lit8 v11, v8, 0x5

    invoke-virtual {v2, v4, v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    add-int/lit8 v8, v8, 0x6

    invoke-virtual {v2, v11, v10}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    move v10, v12

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_3
    add-int/lit8 v6, v6, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_4
    if-nez p1, :cond_5

    return-void

    :cond_5
    mul-int/lit8 v4, v0, 0x2

    add-int v6, v3, v4

    add-int v10, v6, v4

    add-int/2addr v4, v10

    move v11, v7

    :goto_5
    const/4 v12, 0x0

    if-ge v11, v0, :cond_7

    if-le v0, v5, :cond_6

    int-to-float v13, v11

    int-to-float v14, v9

    div-float/2addr v13, v14

    goto :goto_6

    :cond_6
    move v13, v12

    :goto_6
    add-int v14, v3, v11

    mul-int/lit8 v14, v14, 0x2

    invoke-virtual {v1, v14, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    add-int/2addr v14, v5

    invoke-virtual {v1, v14, v12}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    add-int v14, v3, v0

    add-int/2addr v14, v11

    mul-int/lit8 v14, v14, 0x2

    invoke-virtual {v1, v14, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    add-int/2addr v14, v5

    invoke-virtual {v1, v14, v12}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_7
    invoke-static {v2, v8, v3, v0, v7}, Lz9/i;->g(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;IIIZ)I

    move-result v3

    move v8, v7

    :goto_7
    if-ge v8, v0, :cond_9

    if-le v0, v5, :cond_8

    int-to-float v11, v8

    int-to-float v13, v9

    div-float/2addr v11, v13

    goto :goto_8

    :cond_8
    move v11, v12

    :goto_8
    add-int v13, v6, v8

    mul-int/lit8 v13, v13, 0x2

    invoke-virtual {v1, v13, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    add-int/2addr v13, v5

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v1, v13, v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    add-int v13, v6, v0

    add-int/2addr v13, v8

    mul-int/lit8 v13, v13, 0x2

    invoke-virtual {v1, v13, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    add-int/2addr v13, v5

    invoke-virtual {v1, v13, v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_9
    invoke-static {v2, v3, v6, v0, v5}, Lz9/i;->g(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;IIIZ)I

    move-result v3

    move v6, v7

    :goto_9
    if-ge v6, v0, :cond_b

    if-le v0, v5, :cond_a

    int-to-float v8, v6

    int-to-float v11, v9

    div-float/2addr v8, v11

    goto :goto_a

    :cond_a
    move v8, v12

    :goto_a
    add-int v11, v10, v6

    mul-int/lit8 v11, v11, 0x2

    invoke-virtual {v1, v11, v12}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    add-int/2addr v11, v5

    invoke-virtual {v1, v11, v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    add-int v11, v10, v0

    add-int/2addr v11, v6

    mul-int/lit8 v11, v11, 0x2

    invoke-virtual {v1, v11, v12}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    add-int/2addr v11, v5

    invoke-virtual {v1, v11, v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_b
    invoke-static {v2, v3, v10, v0, v5}, Lz9/i;->g(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;IIIZ)I

    move-result v3

    move v6, v7

    :goto_b
    if-ge v6, v0, :cond_d

    if-le v0, v5, :cond_c

    int-to-float v8, v6

    int-to-float v10, v9

    div-float/2addr v8, v10

    goto :goto_c

    :cond_c
    move v8, v12

    :goto_c
    add-int v10, v4, v6

    mul-int/lit8 v10, v10, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v1, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    add-int/2addr v10, v5

    invoke-virtual {v1, v10, v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    add-int v10, v4, v0

    add-int/2addr v10, v6

    mul-int/lit8 v10, v10, 0x2

    invoke-virtual {v1, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    add-int/2addr v10, v5

    invoke-virtual {v1, v10, v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_d
    invoke-static {v2, v3, v4, v0, v7}, Lz9/i;->g(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;IIIZ)I

    return-void
.end method

.method public static g(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;IIIZ)I
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
            "triangles",
            "ti",
            "base",
            "resolution",
            "invert"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, p3, -0x1

    if-ge v0, v1, :cond_1

    add-int v1, p2, v0

    add-int/lit8 v2, v1, 0x1

    add-int v3, v1, p3

    add-int/lit8 v4, v3, 0x1

    if-nez p4, :cond_0

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v5, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    add-int/lit8 v5, p1, 0x3

    invoke-virtual {p0, v1, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v5, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    add-int/lit8 v2, p1, 0x5

    invoke-virtual {p0, v1, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    add-int/lit8 p1, p1, 0x6

    invoke-virtual {p0, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    goto :goto_1

    :cond_0
    add-int/lit8 v5, p1, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    add-int/lit8 v6, p1, 0x2

    invoke-virtual {p0, v5, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    add-int/lit8 v5, p1, 0x3

    invoke-virtual {p0, v6, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v5, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    add-int/lit8 v3, p1, 0x5

    invoke-virtual {p0, v1, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    add-int/lit8 p1, p1, 0x6

    invoke-virtual {p0, v3, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public static h(III)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "resolution"
        }
    .end annotation

    mul-int/2addr p0, p2

    add-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public d(IZ)Lz9/i$b;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resolution",
            "bordersEnabled"
        }
    .end annotation

    const/4 v0, 0x2

    if-lt p1, v0, :cond_2

    new-instance v0, Lz9/i$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lz9/i$c;-><init>(IZLz9/i$a;)V

    iget-object p1, p0, Lz9/i;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lz9/i;->b:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lz9/i$b;

    if-eqz p2, :cond_0

    invoke-static {p2}, Lz9/i$b;->b(Lz9/i$b;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p2, Lz9/i$b;

    invoke-direct {p2, p0, v0, v1}, Lz9/i$b;-><init>(Lz9/i;Lz9/i$c;Lz9/i$a;)V

    iget-object v1, p0, Lz9/i;->b:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {p2}, Lz9/i$b;->j(Lz9/i$b;)V

    monitor-exit p1

    return-object p2

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "resolution can\'t be < 2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i(Lz9/i$c;Lz9/i$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "entry"
        }
    .end annotation

    iget-object v0, p0, Lz9/i;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz9/i;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p2, :cond_0

    iget-object p2, p0, Lz9/i;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

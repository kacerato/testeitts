.class public LN6/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LN6/v$f;,
        LN6/v$g;,
        LN6/v$e;,
        LN6/v$b;,
        LN6/v$d;,
        LN6/v$c;
    }
.end annotation


# static fields
.field public static final B:I = 0x40


# instance fields
.field public A:LN6/p;

.field public final a:LN6/H;

.field public final b:Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;

.field public c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

.field public d:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

.field public final e:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "LN6/p;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LN6/v$e;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LN6/v$f;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LN6/v$b;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LN6/v$d;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "LN6/v$c;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/concurrent/ExecutorService;

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field public p:J

.field public q:I

.field public r:[I

.field public final s:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public t:Z

.field public u:Z

.field public v:LN6/v$g;

.field public w:LRb/c;

.field public x:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

.field public y:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public z:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;


# direct methods
.method public constructor <init>(LN6/H;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphView"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, LN6/v;->e:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LN6/v;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LN6/v;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LN6/v;->h:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LN6/v;->i:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, LN6/v;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, LN6/u;

    invoke-direct {v0}, LN6/u;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, LN6/v;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, LN6/v;->s:Ljava/util/ArrayDeque;

    iput-object p1, p0, LN6/v;->a:LN6/H;

    new-instance p1, LN6/v$a;

    invoke-direct {p1, p0}, LN6/v$a;-><init>(LN6/v;)V

    iput-object p1, p0, LN6/v;->b:Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;

    return-void
.end method

.method public static synthetic a(LN6/p;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1}, LN6/v;->y(LN6/p;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic b(LN6/v;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;Ljava/lang/String;J)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, LN6/v;->A(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic c(LN6/v;Ljava/nio/ByteBuffer;Ljava/lang/String;LN6/p;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, LN6/v;->z(Ljava/nio/ByteBuffer;Ljava/lang/String;LN6/p;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic d(Ldc/d;)V
    .locals 0

    invoke-static {p0}, LN6/v;->w(Ldc/d;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, LN6/v;->x(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(LN6/v;)V
    .locals 0

    invoke-virtual {p0}, LN6/v;->E()V

    return-void
.end method

.method public static synthetic g(LN6/v;)V
    .locals 0

    invoke-virtual {p0}, LN6/v;->D()V

    return-void
.end method

.method public static u(Landroid/graphics/Bitmap;)Z
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    sget-object v0, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-lez v8, :cond_4

    if-gtz v9, :cond_2

    goto :goto_1

    :cond_2
    mul-int v10, v8, v9

    new-array v11, v10, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, v11

    move v5, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move p0, v1

    :goto_0
    if-ge p0, v10, :cond_4

    aget v2, v11, p0

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    if-eqz v2, :cond_3

    return v1

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v0
.end method

.method public static synthetic w(Ldc/d;)V
    .locals 0

    invoke-virtual {p0}, Ldc/d;->a()V

    return-void
.end method

.method public static synthetic x(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "ShaderGraphPreviewCompile"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    return-object v0
.end method

.method public static synthetic y(LN6/p;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1}, LN6/p;->setPreviewBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public final synthetic A(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;Ljava/lang/String;J)V
    .locals 2

    :try_start_0
    iget-object v0, p0, LN6/v;->c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;->e(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;->h()V

    iget-object v0, p0, LN6/v;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, LN6/v$c;

    invoke-direct {v1, p2, p3, p4, p1}, LN6/v$c;-><init>(Ljava/lang/String;JLcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    iget-object p1, p0, LN6/v;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, LN6/v$c;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, p4, v1}, LN6/v$c;-><init>(Ljava/lang/String;JLcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final B(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "center",
            "distance"
        }
    .end annotation

    move-object/from16 v0, p0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float v1, v1, p2

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    move v1, v2

    :cond_0
    const/16 v2, 0x10

    new-array v9, v2, [F

    new-array v10, v2, [D

    new-array v15, v2, [F

    new-array v14, v2, [F

    const/high16 v3, 0x40800000    # 4.0f

    mul-float v11, v1, v3

    const/4 v4, 0x0

    const/high16 v5, 0x42b40000    # 90.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3dcccccd    # 0.1f

    move-object v3, v9

    move v8, v11

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, v9, v4

    float-to-double v5, v5

    aput-wide v5, v10, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, v0, LN6/v;->v:LN6/v$g;

    iget-object v4, v4, LN6/v$g;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    const v5, 0x3dcccccd    # 0.1f

    invoke-virtual {v4, v10, v5, v11}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->j([DFF)V

    neg-float v1, v1

    const/4 v4, 0x0

    move-object/from16 v5, p1

    invoke-virtual {v5, v4, v4, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->add(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v6, 0x42340000    # 45.0f

    invoke-virtual {v1, v5, v6, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->rotateLocal(FFF)V

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v7}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    invoke-virtual {v7, v5, v6, v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->v(FFF)V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->forward()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->p0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v13

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v5

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v6

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v7

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v8

    add-float v16, v7, v8

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v7

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v8

    add-float v17, v7, v8

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    add-float v18, v1, v4

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    const/4 v12, 0x0

    const/16 v19, 0x0

    move-object v11, v15

    move-object v1, v14

    move v14, v5

    move-object v4, v15

    move v15, v6

    invoke-static/range {v11 .. v21}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    invoke-static {v1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-static {v1, v3, v4, v3}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    :goto_1
    if-ge v3, v2, :cond_2

    aget v4, v1, v3

    float-to-double v4, v4

    aput-wide v4, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, v0, LN6/v;->v:LN6/v$g;

    iget-object v1, v1, LN6/v$g;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    invoke-virtual {v1, v10}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->k([D)V

    return-void
.end method

.method public C()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LN6/v;->m:J

    return-void
.end method

.method public final D()V
    .locals 9

    invoke-virtual {p0}, LN6/v;->v()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LN6/v;->A:LN6/p;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, LN6/v;->t:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, LN6/v;->v:LN6/v$g;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, LN6/v;->t:Z

    iget-object v2, v0, LN6/v$g;->d:LTb/a;

    iget-object v0, v0, LN6/v$g;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {v2, v0}, LTb/a;->a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)V

    invoke-static {v1, v1}, LQb/a;->b(ZZ)V

    iget-object v0, p0, LN6/v;->v:LN6/v$g;

    iget-object v0, v0, LN6/v$g;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-static {v0}, LQb/a;->o(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)V

    iget-object v0, p0, LN6/v;->v:LN6/v$g;

    iget-object v0, v0, LN6/v$g;->d:LTb/a;

    invoke-virtual {v0}, LTb/a;->z()V

    iget-object v0, p0, LN6/v;->A:LN6/p;

    invoke-virtual {v0}, LN6/p;->getNode()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {p0, v1}, LN6/v;->s(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_4
    move-object v5, v2

    iget-object v2, p0, LN6/v;->r:[I

    const/16 v3, 0x1000

    if-eqz v2, :cond_5

    array-length v2, v2

    if-eq v2, v3, :cond_6

    :cond_5
    new-array v2, v3, [I

    iput-object v2, p0, LN6/v;->r:[I

    :cond_6
    const/16 v2, 0x4000

    invoke-virtual {p0, v2}, LN6/v;->h(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iget-object v2, p0, LN6/v;->v:LN6/v$g;

    iget-object v2, v2, LN6/v$g;->d:LTb/a;

    invoke-virtual {v2}, LTb/a;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object v3

    iget-object v2, p0, LN6/v;->v:LN6/v$g;

    iget-object v2, v2, LN6/v$g;->d:LTb/a;

    invoke-virtual {v2}, LTb/a;->r()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    move-result-object v4

    iget-object v6, p0, LN6/v;->r:[I

    new-instance v8, LN6/s;

    invoke-direct {v8, p0, v7, v1, v0}, LN6/s;-><init>(LN6/v;Ljava/nio/ByteBuffer;Ljava/lang/String;LN6/p;)V

    invoke-virtual/range {v3 .. v8}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->R0(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;Landroid/graphics/Bitmap;[ILjava/nio/ByteBuffer;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public final E()V
    .locals 10

    invoke-virtual {p0}, LN6/v;->v()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LN6/v;->M()V

    return-void

    :cond_0
    iget-object v0, p0, LN6/v;->c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, LN6/v;->a:LN6/H;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-boolean v0, p0, LN6/v;->t:Z

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, LN6/v;->d:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->J()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget v0, p0, LN6/v;->q:I

    const/4 v1, 0x1

    if-lez v0, :cond_5

    sub-int/2addr v0, v1

    iput v0, p0, LN6/v;->q:I

    return-void

    :cond_5
    invoke-virtual {p0}, LN6/v;->n()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, LN6/v;->c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iget-wide v4, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->c:J

    iget-wide v6, p0, LN6/v;->o:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_6

    iput-wide v4, p0, LN6/v;->o:J

    iget-object v0, p0, LN6/v;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {p0}, LN6/v;->k()V

    invoke-virtual {p0}, LN6/v;->j()V

    iget-object v0, p0, LN6/v;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, LN6/v;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iput-boolean v1, p0, LN6/v;->u:Z

    :cond_6
    iget-object v0, p0, LN6/v;->c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iget-wide v4, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->c:J

    iget-wide v6, p0, LN6/v;->n:J

    cmp-long v0, v4, v6

    const/4 v4, 0x0

    if-gtz v0, :cond_8

    iget-wide v8, p0, LN6/v;->m:J

    cmp-long v0, v8, v6

    if-lez v0, :cond_7

    goto :goto_0

    :cond_7
    move v0, v4

    goto :goto_1

    :cond_8
    :goto_0
    move v0, v1

    :goto_1
    iget-wide v5, p0, LN6/v;->l:J

    sub-long v5, v2, v5

    const-wide/16 v7, 0x3e8

    cmp-long v5, v5, v7

    if-ltz v5, :cond_9

    move v5, v1

    goto :goto_2

    :cond_9
    move v5, v4

    :goto_2
    iget-wide v6, p0, LN6/v;->m:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x1c2

    cmp-long v6, v6, v8

    if-ltz v6, :cond_a

    goto :goto_3

    :cond_a
    move v1, v4

    :goto_3
    if-nez v0, :cond_b

    if-nez v5, :cond_b

    iget-boolean v0, p0, LN6/v;->u:Z

    if-eqz v0, :cond_c

    :cond_b
    iget-object v0, p0, LN6/v;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, LN6/v;->a:LN6/H;

    invoke-virtual {v0}, LN6/H;->getNodeViews()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, LN6/v;->G(Ljava/util/List;)V

    iput-wide v2, p0, LN6/v;->n:J

    iput-boolean v4, p0, LN6/v;->u:Z

    :cond_c
    iget-object v0, p0, LN6/v;->A:LN6/p;

    if-nez v0, :cond_e

    iget-object v0, p0, LN6/v;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    if-eqz v1, :cond_e

    iget-wide v0, p0, LN6/v;->p:J

    sub-long v0, v2, v0

    const-wide/16 v4, 0xfa

    cmp-long v0, v0, v4

    if-ltz v0, :cond_e

    invoke-static {}, Llb/e;->c()Llb/e;

    move-result-object v0

    iget-object v1, p0, LN6/v;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN6/p;

    iput-object v1, p0, LN6/v;->A:LN6/p;

    iput-wide v2, p0, LN6/v;->p:J

    if-eqz v1, :cond_d

    invoke-virtual {v1}, LN6/p;->getNode()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object v1

    goto :goto_4

    :cond_d
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {p0, v1}, LN6/v;->F(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)V

    const-string v1, "CREATING PREVIEW MATERIAL"

    invoke-virtual {v0, v1}, Llb/e;->h(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public final F(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    if-eqz p1, :cond_8

    iget-object v0, p0, LN6/v;->c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->y()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, LN6/v;->q()V

    iget-object v0, p0, LN6/v;->v:LN6/v$g;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, LN6/v;->r(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)LN6/v$f;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v3, v2, LN6/v$f;->b:Ldc/d;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ldc/d;->b()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, v2, LN6/v$f;->b:Ldc/d;

    invoke-virtual {v2}, Ldc/d;->b()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, LN6/v;->o(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)V

    iget-object p1, p0, LN6/v;->x:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-nez p1, :cond_5

    iget-object p1, p0, LN6/v;->A:LN6/p;

    if-eqz p1, :cond_4

    iget-object v2, p0, LN6/v;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_4
    :goto_0
    iput-object v1, p0, LN6/v;->A:LN6/p;

    iput-boolean v0, p0, LN6/v;->t:Z

    return-void

    :cond_5
    invoke-virtual {p0}, LN6/v;->L()V

    goto :goto_3

    :cond_6
    :goto_1
    iget-object p1, p0, LN6/v;->A:LN6/p;

    if-eqz p1, :cond_7

    iget-object v2, p0, LN6/v;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :cond_7
    iput-object v1, p0, LN6/v;->A:LN6/p;

    iput-boolean v0, p0, LN6/v;->t:Z

    const/4 p1, 0x2

    iput p1, p0, LN6/v;->q:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iput-boolean v0, p0, LN6/v;->t:Z

    iput-object v1, p0, LN6/v;->A:LN6/p;

    :cond_8
    :goto_3
    return-void
.end method

.method public final G(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LN6/p;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LN6/v;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN6/p;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, LN6/p;->getNode()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->z()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->y()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v3, p0, LN6/v;->g:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN6/v$f;

    goto :goto_1

    :cond_5
    move-object v3, v2

    :goto_1
    if-eqz v1, :cond_6

    if-eqz v3, :cond_6

    iget-wide v3, v3, LN6/v$f;->c:J

    iget-wide v5, p0, LN6/v;->o:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    invoke-virtual {p0, v1}, LN6/v;->t(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    iget-object v2, p0, LN6/v;->h:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, LN6/v$b;

    :cond_7
    if-eqz v2, :cond_8

    iget-wide v3, v2, LN6/v$b;->a:J

    iget-wide v5, p0, LN6/v;->o:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_8

    iget-object v1, v2, LN6/v$b;->b:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    iget-object v1, p0, LN6/v;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_9
    return-void
.end method

.method public final H(Ldc/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builded"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ldc/d;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    instance-of v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ldc/d;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;

    iget-object v0, p0, LN6/v;->c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->d1(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->V0()V

    :cond_1
    return-void
.end method

.method public final I(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, LN6/v;->s:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, LN6/v;->s:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public final J(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    if-eqz p1, :cond_3

    iget-object v0, p0, LN6/v;->c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-wide v7, p0, LN6/v;->o:J

    iget-object v1, p0, LN6/v;->h:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN6/v$b;

    if-eqz v1, :cond_2

    iget-wide v2, v1, LN6/v$b;->a:J

    cmp-long v2, v2, v7

    if-nez v2, :cond_2

    iget-object v1, v1, LN6/v$b;->b:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v9, p0, LN6/v;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v10, LN6/t;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-wide v5, v7

    invoke-direct/range {v1 .. v6}, LN6/t;-><init>(LN6/v;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;Ljava/lang/String;J)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iget-object v1, p0, LN6/v;->h:Ljava/util/Map;

    new-instance v2, LN6/v$b;

    invoke-direct {v2, v7, v8, p1}, LN6/v$b;-><init>(JLjava/util/concurrent/Future;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method public final K()V
    .locals 5

    iget-object v0, p0, LN6/v;->c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v3, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->c:J

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    iput-wide v3, p0, LN6/v;->o:J

    iget-object v0, p0, LN6/v;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    invoke-virtual {p0}, LN6/v;->j()V

    iget-object v0, p0, LN6/v;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, LN6/v;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {p0}, LN6/v;->k()V

    const/4 v0, 0x0

    iput-object v0, p0, LN6/v;->r:[I

    iget-object v3, p0, LN6/v;->s:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V

    iput-object v0, p0, LN6/v;->A:LN6/p;

    const/4 v3, 0x0

    iput-boolean v3, p0, LN6/v;->t:Z

    iput-object v0, p0, LN6/v;->z:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    iput-wide v1, p0, LN6/v;->l:J

    iput-wide v1, p0, LN6/v;->p:J

    return-void
.end method

.method public final L()V
    .locals 3

    iget-object v0, p0, LN6/v;->v:LN6/v$g;

    if-eqz v0, :cond_2

    iget-object v0, p0, LN6/v;->y:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->d0()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->m()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    iget-object v1, p0, LN6/v;->y:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->d0()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->getRadius()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_1

    const/high16 v1, 0x3f000000    # 0.5f

    :cond_1
    invoke-virtual {p0, v0, v1}, LN6/v;->B(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public M()V
    .locals 1

    iget-object v0, p0, LN6/v;->b:Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;->b()V

    invoke-virtual {p0}, LN6/v;->m()V

    iget-object v0, p0, LN6/v;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    invoke-virtual {p0}, LN6/v;->j()V

    iget-object v0, p0, LN6/v;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, LN6/v;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {p0}, LN6/v;->k()V

    const/4 v0, 0x0

    iput-object v0, p0, LN6/v;->A:LN6/p;

    const/4 v0, 0x0

    iput-boolean v0, p0, LN6/v;->t:Z

    return-void
.end method

.method public final N(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nodeId",
            "bitmap"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LN6/v;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN6/v$e;

    if-nez v0, :cond_1

    new-instance v0, LN6/v$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LN6/v$e;-><init>(LN6/v$a;)V

    iget-object v1, p0, LN6/v;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p1, v0, LN6/v$e;->a:Landroid/graphics/Bitmap;

    iput-object p2, v0, LN6/v$e;->a:Landroid/graphics/Bitmap;

    iput-object p1, v0, LN6/v$e;->b:Landroid/graphics/Bitmap;

    :cond_2
    :goto_0
    return-void
.end method

.method public O(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LN6/p;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, LN6/v;->v()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LN6/v;->c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, LN6/v;->u:Z

    invoke-virtual {p0}, LN6/v;->p()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final h(I)Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    iget-object v0, p0, LN6/v;->s:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    if-lt v1, p1, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "material",
            "graphData"
        }
    .end annotation

    iput-object p1, p0, LN6/v;->d:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iput-object p2, p0, LN6/v;->c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {p0}, LN6/v;->v()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, LN6/v;->M()V

    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, LN6/v;->M()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LN6/v;->K()V

    invoke-virtual {p0}, LN6/v;->p()V

    :goto_0
    return-void
.end method

.method public final j()V
    .locals 3

    iget-object v0, p0, LN6/v;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LN6/v;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN6/v$b;

    if-eqz v1, :cond_0

    iget-object v1, v1, LN6/v$b;->b:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, LN6/v;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_2
    iget-object v0, p0, LN6/v;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method public final k()V
    .locals 3

    iget-object v0, p0, LN6/v;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LN6/v;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN6/v$f;

    if-eqz v1, :cond_1

    iget-object v2, v1, LN6/v$f;->b:Ldc/d;

    if-eqz v2, :cond_1

    invoke-static {}, LK8/a;->r()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v1, LN6/v$f;->b:Ldc/d;

    invoke-virtual {v1}, Ldc/d;->a()V

    goto :goto_0

    :cond_2
    iget-object v1, v1, LN6/v$f;->b:Ldc/d;

    new-instance v2, LN6/r;

    invoke-direct {v2, v1}, LN6/r;-><init>(Ldc/d;)V

    invoke-static {v2}, LK8/a;->I(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, LN6/v;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, LN6/v;->v:LN6/v$g;

    if-eqz v0, :cond_0

    iget-object v1, p0, LN6/v;->w:LRb/c;

    if-eqz v1, :cond_0

    iget-object v0, v0, LN6/v$g;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V

    :cond_0
    iget-object v0, p0, LN6/v;->x:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyImmediate()V

    iput-object v1, p0, LN6/v;->x:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    :cond_1
    iget-object v0, p0, LN6/v;->w:LRb/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LRb/c;->destroyImmediate()V

    iput-object v1, p0, LN6/v;->w:LRb/c;

    :cond_2
    iput-object v1, p0, LN6/v;->y:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-void
.end method

.method public final m()V
    .locals 2

    invoke-virtual {p0}, LN6/v;->l()V

    iget-object v0, p0, LN6/v;->v:LN6/v$g;

    if-eqz v0, :cond_0

    iget-object v1, p0, LN6/v;->w:LRb/c;

    if-eqz v1, :cond_0

    iget-object v0, v0, LN6/v$g;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V

    :cond_0
    iget-object v0, p0, LN6/v;->w:LRb/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LRb/c;->destroyImmediate()V

    iput-object v1, p0, LN6/v;->w:LRb/c;

    :cond_1
    iput-object v1, p0, LN6/v;->y:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iput-object v1, p0, LN6/v;->z:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    iget-object v0, p0, LN6/v;->v:LN6/v$g;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LN6/v$g;->a()V

    iput-object v1, p0, LN6/v;->v:LN6/v$g;

    :cond_2
    return-void
.end method

.method public final n()V
    .locals 7

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-object v1, p0, LN6/v;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN6/v$c;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v3, p0, LN6/v;->h:Ljava/util/Map;

    iget-object v4, v1, LN6/v$c;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN6/v$b;

    if-eqz v3, :cond_1

    iget-wide v3, v3, LN6/v$b;->a:J

    iget-wide v5, v1, LN6/v$c;->b:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    iget-object v3, p0, LN6/v;->h:Ljava/util/Map;

    iget-object v4, v1, LN6/v$c;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-wide v3, v1, LN6/v$c;->b:J

    iget-wide v5, p0, LN6/v;->o:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_0

    iget-object v5, v1, LN6/v$c;->c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;

    if-eqz v5, :cond_0

    iget-object v0, p0, LN6/v;->i:Ljava/util/Map;

    iget-object v1, v1, LN6/v$c;->a:Ljava/lang/String;

    new-instance v6, LN6/v$d;

    invoke-direct {v6, v5, v3, v4}, LN6/v$d;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;J)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iput-boolean v2, p0, LN6/v;->u:Z

    :cond_3
    return-void
.end method

.method public final o(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filamentMaterial",
            "node"
        }
    .end annotation

    iget-object v0, p0, LN6/v;->v:LN6/v$g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    if-nez p2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->s()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    move-result-object p2

    if-nez p2, :cond_3

    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->SPHERE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    :cond_3
    iget-object v0, p0, LN6/v;->x:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v2, p0, LN6/v;->w:LRb/c;

    if-eqz v2, :cond_5

    iget-object v2, p0, LN6/v;->y:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v2, :cond_5

    iget-object v2, p0, LN6/v;->z:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    if-eq v2, p2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setMaterialInstanceAt(ILcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)V

    goto/16 :goto_1

    :cond_5
    :goto_0
    invoke-virtual {p0}, LN6/v;->l()V

    iput-object p2, p0, LN6/v;->z:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->C1(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p2

    iput-object p2, p0, LN6/v;->y:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x1()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, LN6/v;->y:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->u1()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, LN6/v;->y:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->apply()V

    :cond_6
    iget-object p2, p0, LN6/v;->y:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x1()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, LN6/v;->y:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->u1()Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_1

    :cond_7
    new-instance p2, LRb/c;

    invoke-direct {p2}, LRb/c;-><init>()V

    iput-object p2, p0, LN6/v;->w:LRb/c;

    new-instance p2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    new-instance v0, Lcom/google/android/filament/RenderableManager$a;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/google/android/filament/RenderableManager$a;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/filament/RenderableManager$a;->f(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/filament/RenderableManager$a;->d(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/filament/RenderableManager$a;->y(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v3

    iget-object v5, p0, LN6/v;->w:LRb/c;

    iget-object v0, p0, LN6/v;->y:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f1()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v6

    iget-object v0, p0, LN6/v;->y:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->l0()LRb/d;

    move-result-object v7

    sget-object v8, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    iget-object v0, p0, LN6/v;->y:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->k0()Lcom/google/android/filament/Box;

    move-result-object v9

    move-object v2, p2

    move-object v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/Box;)V

    iput-object p2, p0, LN6/v;->x:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-static {}, LQb/a;->i()Lcom/google/android/filament/TransformManager;

    move-result-object p1

    iget-object p2, p0, LN6/v;->w:LRb/c;

    invoke-virtual {p2}, LRb/c;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/filament/TransformManager;->b(I)I

    iget-object p2, p0, LN6/v;->w:LRb/c;

    invoke-virtual {p2}, LRb/c;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/filament/TransformManager;->h(I)I

    move-result p2

    const/16 v0, 0x10

    new-array v0, v0, [F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-virtual {p1, p2, v0}, Lcom/google/android/filament/TransformManager;->u(I[F)V

    iget-object p1, p0, LN6/v;->v:LN6/v$g;

    iget-object p1, p1, LN6/v$g;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    iget-object p2, p0, LN6/v;->w:LRb/c;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->j(LRb/c;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public final p()V
    .locals 1

    iget-object v0, p0, LN6/v;->b:Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LN6/v;->b:Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;->a()V

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, LN6/v;->v:LN6/v$g;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, LN6/v$g;

    invoke-direct {v0}, LN6/v$g;-><init>()V

    iput-object v0, p0, LN6/v;->v:LN6/v$g;

    return-void
.end method

.method public final r(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)LN6/v$f;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object v2, p0, LN6/v;->g:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LN6/v$f;

    if-eqz v2, :cond_2

    iget-wide v3, v2, LN6/v$f;->c:J

    iget-wide v5, p0, LN6/v;->o:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, v2, LN6/v$f;->b:Ldc/d;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ldc/d;->b()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object p1, v2, LN6/v$f;->b:Ldc/d;

    invoke-virtual {p0, p1}, LN6/v;->H(Ldc/d;)V

    return-object v2

    :cond_2
    if-eqz v2, :cond_3

    iget-object v3, v2, LN6/v$f;->b:Ldc/d;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ldc/d;->a()V

    :cond_3
    iget-object v3, p0, LN6/v;->i:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN6/v$d;

    if-eqz v3, :cond_8

    iget-wide v4, v3, LN6/v$d;->b:J

    iget-wide v6, p0, LN6/v;->o:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_8

    iget-object v3, v3, LN6/v$d;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    iget-object p1, v2, LN6/v$f;->a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;-><init>()V

    :goto_0
    const-string v2, "Node graph"

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->g0(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_EDITOR/ShaderGraphPreview/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->e:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/n;->c(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Ldc/j;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ldc/d;->b()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    iput-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->d:Ldc/k;

    invoke-virtual {p0, v2}, LN6/v;->H(Ldc/d;)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->P()V

    new-instance v0, LN6/v$f;

    iget-wide v3, p0, LN6/v;->o:J

    invoke-direct {v0, p1, v2, v3, v4}, LN6/v$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Ldc/d;J)V

    iget-object p1, p0, LN6/v;->g:Ljava/util/Map;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_1
    return-object v0

    :cond_8
    :goto_2
    invoke-virtual {p0, p1}, LN6/v;->J(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)V

    return-object v0
.end method

.method public s(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeId"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, LN6/v;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LN6/v$e;

    if-eqz p1, :cond_1

    iget-object v0, p1, LN6/v$e;->a:Landroid/graphics/Bitmap;

    :cond_1
    return-object v0
.end method

.method public t(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeId"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LN6/v;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LN6/v$e;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p1, LN6/v$e;->a:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final v()Z
    .locals 1

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->materialGraphPreviewsEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final synthetic z(Ljava/nio/ByteBuffer;Ljava/lang/String;LN6/p;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1}, LN6/v;->I(Ljava/nio/ByteBuffer;)V

    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2, p4}, LN6/v;->N(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p2}, LN6/v;->s(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, LN6/q;

    invoke-direct {p2, p3, p1}, LN6/q;-><init>(LN6/p;Landroid/graphics/Bitmap;)V

    invoke-static {p2}, LN7/c;->j0(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-nez p4, :cond_1

    if-eqz p2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ShaderGraph preview bitmap is null for node: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LJ4/d;->b2(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, LN6/v;->l:J

    const/4 p1, 0x0

    iput-boolean p1, p0, LN6/v;->t:Z

    const/4 p1, 0x0

    iput-object p1, p0, LN6/v;->A:LN6/p;

    const/16 p1, 0xa

    iput p1, p0, LN6/v;->q:I

    return-void
.end method

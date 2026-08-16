.class public Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;
.super Lub/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;
    }
.end annotation


# instance fields
.field private extractingRT:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private keepAliveExtractionTexture:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public final m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

.field public final n:Lcom/google/android/filament/TextureSampler;

.field public final o:Ljava/lang/Object;

.field public p:Z

.field private pbd:Lcom/google/android/filament/Texture$g;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public q:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;

.field private rgba:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/filament/TextureSampler$f;->CLAMP_TO_EDGE:Lcom/google/android/filament/TextureSampler$f;

    invoke-direct {p0, p1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;-><init>(IILcom/google/android/filament/TextureSampler$f;)V

    return-void
.end method

.method public constructor <init>(IILcom/google/android/filament/TextureSampler$f;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "wrapMode"
        }
    .end annotation

    .line 2
    sget-object v4, Lcom/google/android/filament/Texture$e;->RGBA:Lcom/google/android/filament/Texture$e;

    sget-object v5, Lcom/google/android/filament/Texture$f;->RGBA8:Lcom/google/android/filament/Texture$f;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;-><init>(IILcom/google/android/filament/TextureSampler$f;Lcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$f;)V

    return-void
.end method

.method public constructor <init>(IILcom/google/android/filament/TextureSampler$f;Lcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$f;)V
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
            "width",
            "height",
            "wrapMode",
            "format",
            "internalFormat"
        }
    .end annotation

    .line 3
    sget-object v6, Lcom/google/android/filament/Texture$k;->UBYTE:Lcom/google/android/filament/Texture$k;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;-><init>(IILcom/google/android/filament/TextureSampler$f;Lcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$f;Lcom/google/android/filament/Texture$k;)V

    return-void
.end method

.method public constructor <init>(IILcom/google/android/filament/TextureSampler$f;Lcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$f;Lcom/google/android/filament/Texture$k;)V
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
            "width",
            "height",
            "wrapMode",
            "format",
            "internalFormat",
            "textureType"
        }
    .end annotation

    move-object v0, p0

    .line 4
    invoke-direct {p0}, Lub/p;-><init>()V

    .line 5
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->o:Ljava/lang/Object;

    .line 6
    invoke-static {}, LQb/a;->d()V

    .line 7
    invoke-static {p1}, LNc/b;->J0(I)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, p1, -0x1

    goto :goto_0

    :cond_0
    move v1, p1

    .line 8
    :goto_0
    invoke-static/range {p2 .. p2}, LNc/b;->J0(I)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v2, p2, -0x1

    move v12, v2

    goto :goto_1

    :cond_1
    move/from16 v12, p2

    :goto_1
    if-lez v1, :cond_2

    if-lez v12, :cond_2

    .line 9
    new-instance v9, Lcom/google/android/filament/TextureSampler;

    sget-object v2, Lcom/google/android/filament/TextureSampler$e;->LINEAR:Lcom/google/android/filament/TextureSampler$e;

    sget-object v3, Lcom/google/android/filament/TextureSampler$d;->LINEAR:Lcom/google/android/filament/TextureSampler$d;

    move-object/from16 v4, p3

    invoke-direct {v9, v2, v3, v4}, Lcom/google/android/filament/TextureSampler;-><init>(Lcom/google/android/filament/TextureSampler$e;Lcom/google/android/filament/TextureSampler$d;Lcom/google/android/filament/TextureSampler$f;)V

    iput-object v9, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->n:Lcom/google/android/filament/TextureSampler;

    .line 10
    new-instance v13, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    new-instance v2, Lcom/google/android/filament/Texture$a;

    invoke-direct {v2}, Lcom/google/android/filament/Texture$a;-><init>()V

    move-object/from16 v7, p5

    .line 11
    invoke-virtual {v2, v7}, Lcom/google/android/filament/Texture$a;->d(Lcom/google/android/filament/Texture$f;)Lcom/google/android/filament/Texture$a;

    move-result-object v8

    const/4 v10, 0x0

    const/16 v11, 0x41

    move-object v2, v13

    move v3, v1

    move v4, v12

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    invoke-direct/range {v2 .. v11}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;-><init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$f;Lcom/google/android/filament/Texture$a;Lcom/google/android/filament/TextureSampler;II)V

    iput-object v13, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    .line 12
    invoke-virtual {v13}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->A()J

    move-result-wide v2

    const/4 v4, 0x0

    move-object p1, p0

    move/from16 p2, v1

    move/from16 p3, v12

    move-wide/from16 p4, v2

    move/from16 p6, v4

    invoke-virtual/range {p1 .. p6}, Lub/p;->A(IIJZ)V

    return-void

    .line 13
    :cond_2
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/InvalidTextureSizeException;

    const-string v2, "Width and height can\'t be <= 0"

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/InvalidTextureSizeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic B0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->F0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)V

    return-void
.end method

.method public static C0(Lcom/google/android/filament/Texture$e;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$c;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported texture format for bitmap extraction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v1
.end method

.method public static synthetic q0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->E0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)V

    return-void
.end method

.method public static synthetic r0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->o:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic s0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->extractingRT:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    return-object p0
.end method

.method public static synthetic t0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->extractingRT:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    return-object p1
.end method

.method public static synthetic u0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->keepAliveExtractionTexture:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    return-object p1
.end method

.method public static synthetic v0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Lcom/google/android/filament/Texture$g;)Lcom/google/android/filament/Texture$g;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->pbd:Lcom/google/android/filament/Texture$g;

    return-object p1
.end method

.method public static synthetic w0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->rgba:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public static synthetic x0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->p:Z

    return p1
.end method

.method public static synthetic y0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;)Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->q:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;

    return-object p0
.end method

.method public static synthetic z0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->q:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;

    return-object p1
.end method


# virtual methods
.method public C()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public D0()Lcom/google/android/filament/Texture;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->C()Lcom/google/android/filament/Texture;

    move-result-object v0

    return-object v0
.end method

.method public final E0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final F0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    move-object/from16 v11, p0

    invoke-static/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->c(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)I

    move-result v0

    invoke-static/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->d(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)I

    move-result v12

    invoke-static/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->e(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->f(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)[I

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->g(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->a(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)Z

    move-result v1

    iget-object v2, v11, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->z()Lcom/google/android/filament/Texture$e;

    move-result-object v7

    invoke-static {v7}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->C0(Lcom/google/android/filament/Texture$e;)I

    move-result v2

    iget-object v3, v11, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->o:Ljava/lang/Object;

    monitor-enter v3

    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, v11, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->p:Z

    invoke-static/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->b(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->h(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)Ljava/nio/ByteBuffer;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->h(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->h(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/Buffer;->capacity()I

    move-result v6

    mul-int v9, v0, v12

    mul-int/2addr v9, v2

    if-lt v6, v9, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->h(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)Ljava/nio/ByteBuffer;

    move-result-object v2

    :goto_0
    move-object v6, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    mul-int v6, v0, v12

    mul-int/2addr v6, v2

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    goto :goto_0

    :goto_1
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    iput-object v14, v11, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->extractingRT:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    :cond_1
    iget-object v1, v11, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iput-object v1, v11, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->keepAliveExtractionTexture:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iput-object v6, v11, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->rgba:Ljava/nio/ByteBuffer;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v15, Lcom/google/android/filament/Texture$g;

    sget-object v1, Lcom/google/android/filament/Texture$k;->UBYTE:Lcom/google/android/filament/Texture$k;

    invoke-direct {v15, v6, v7, v1, v5}, Lcom/google/android/filament/Texture$g;-><init>(Ljava/nio/Buffer;Lcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;I)V

    iget-object v1, v11, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iput-object v15, v11, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->pbd:Lcom/google/android/filament/Texture$g;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, LQb/e;->a()Landroid/os/Handler;

    move-result-object v10

    new-instance v9, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object v3, v6

    move v5, v0

    move v6, v12

    move-object v11, v9

    move-object v9, v13

    move-object/from16 v16, v13

    move-object v13, v10

    move-object/from16 v10, p1

    invoke-direct/range {v1 .. v10}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Ljava/nio/ByteBuffer;[IIILcom/google/android/filament/Texture$e;Landroid/graphics/Bitmap;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)V

    invoke-virtual {v15, v13, v11}, Lcom/google/android/filament/Texture$g;->b(Ljava/lang/Object;Ljava/lang/Runnable;)V

    :try_start_2
    invoke-static {}, LQb/a;->g()Lcom/google/android/filament/Renderer;

    move-result-object v1

    invoke-virtual {v14}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->f()Lcom/google/android/filament/RenderTarget;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->i(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)I

    move-result v3

    invoke-static/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;->j(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)I

    move-result v4

    move v5, v0

    move v6, v12

    move-object v7, v15

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/filament/Renderer;->n(Lcom/google/android/filament/RenderTarget;IIIILcom/google/android/filament/Texture$g;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual/range {p0 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->E0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)V

    const/4 v0, 0x0

    move-object/from16 v1, v16

    invoke-interface {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;->on(Landroid/graphics/Bitmap;)V

    :goto_2
    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :goto_3
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public G0(IIIILandroid/graphics/Bitmap;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V
    .locals 10
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
            "ofx",
            "ofy",
            "w",
            "h",
            "reuse",
            "extractCallback"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->O0(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;IIIILandroid/graphics/Bitmap;[ILjava/nio/ByteBuffer;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V

    return-void
.end method

.method public H0(IIIILandroid/graphics/Bitmap;[ILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V
    .locals 10
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
            "ofx",
            "ofy",
            "w",
            "h",
            "reuse",
            "argbReuse",
            "extractCallback"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->O0(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;IIIILandroid/graphics/Bitmap;[ILjava/nio/ByteBuffer;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V

    return-void
.end method

.method public I0(IIIILandroid/graphics/Bitmap;[ILjava/nio/ByteBuffer;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V
    .locals 10
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
            "ofx",
            "ofy",
            "w",
            "h",
            "reuse",
            "argbReuse",
            "rgbaReuse",
            "extractCallback"
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->O0(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;IIIILandroid/graphics/Bitmap;[ILjava/nio/ByteBuffer;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V

    return-void
.end method

.method public J()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public J0(IIIILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V
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
            "ofx",
            "ofy",
            "w",
            "h",
            "extractCallback"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v9, p5

    invoke-virtual/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->O0(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;IIIILandroid/graphics/Bitmap;[ILjava/nio/ByteBuffer;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V

    return-void
.end method

.method public K0(Landroid/graphics/Bitmap;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reuse",
            "extractCallback"
        }
    .end annotation

    invoke-virtual {p0}, Lub/p;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lub/p;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v6, p1

    move-object v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->O0(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;IIIILandroid/graphics/Bitmap;[ILjava/nio/ByteBuffer;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V

    return-void
.end method

.method public L0(Landroid/graphics/Bitmap;[ILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "reuse",
            "argbReuse",
            "extractCallback"
        }
    .end annotation

    invoke-virtual {p0}, Lub/p;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lub/p;->getHeight()I

    move-result v5

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v6, p1

    move-object v7, p2

    move-object v9, p3

    invoke-virtual/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->O0(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;IIIILandroid/graphics/Bitmap;[ILjava/nio/ByteBuffer;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V

    return-void
.end method

.method public M0(Landroid/graphics/Bitmap;[ILjava/nio/ByteBuffer;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "reuse",
            "argbReuse",
            "rgbaReuse",
            "extractCallback"
        }
    .end annotation

    invoke-virtual {p0}, Lub/p;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lub/p;->getHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-virtual/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->O0(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;IIIILandroid/graphics/Bitmap;[ILjava/nio/ByteBuffer;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V

    return-void
.end method

.method public N()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public N0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extractCallback"
        }
    .end annotation

    invoke-virtual {p0}, Lub/p;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lub/p;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v9, p1

    invoke-virtual/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->O0(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;IIIILandroid/graphics/Bitmap;[ILjava/nio/ByteBuffer;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V

    return-void
.end method

.method public O0(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;IIIILandroid/graphics/Bitmap;[ILjava/nio/ByteBuffer;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V
    .locals 14
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
            "renderTarget",
            "ofx",
            "ofy",
            "w",
            "h",
            "reuse",
            "argbReuse",
            "rgbaReuse",
            "extractCallback"
        }
    .end annotation

    move-object v1, p0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v12, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    if-eqz v12, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    new-instance v2, Lcom/google/android/filament/RenderTarget$b;

    invoke-direct {v2}, Lcom/google/android/filament/RenderTarget$b;-><init>()V

    sget-object v3, Lcom/google/android/filament/RenderTarget$a;->COLOR:Lcom/google/android/filament/RenderTarget$a;

    iget-object v4, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->C()Lcom/google/android/filament/Texture;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/filament/RenderTarget$b;->f(Lcom/google/android/filament/RenderTarget$a;Lcom/google/android/filament/Texture;)Lcom/google/android/filament/RenderTarget$b;

    move-result-object v2

    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;-><init>(Lcom/google/android/filament/RenderTarget$b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)V

    move-object v3, v0

    goto :goto_2

    :cond_1
    move-object v3, p1

    :goto_2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;

    const/4 v13, 0x0

    move-object v2, v0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v2 .. v13}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;-><init>(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;IIIILandroid/graphics/Bitmap;[ILjava/nio/ByteBuffer;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;ZLcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$a;)V

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->o:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->p:Z

    if-eqz v3, :cond_2

    iput-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->q:Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->F0(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture$d;)V

    return-void

    :goto_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public P0(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;Landroid/graphics/Bitmap;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "renderTarget",
            "reuse",
            "extractCallback"
        }
    .end annotation

    invoke-virtual {p0}, Lub/p;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lub/p;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    move-object v9, p3

    invoke-virtual/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->O0(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;IIIILandroid/graphics/Bitmap;[ILjava/nio/ByteBuffer;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V

    return-void
.end method

.method public Q0(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;Landroid/graphics/Bitmap;[ILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "renderTarget",
            "reuse",
            "argbReuse",
            "extractCallback"
        }
    .end annotation

    invoke-virtual {p0}, Lub/p;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lub/p;->getHeight()I

    move-result v5

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    move-object v7, p3

    move-object v9, p4

    invoke-virtual/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->O0(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;IIIILandroid/graphics/Bitmap;[ILjava/nio/ByteBuffer;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V

    return-void
.end method

.method public R0(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;Landroid/graphics/Bitmap;[ILjava/nio/ByteBuffer;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V
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
            "renderTarget",
            "reuse",
            "argbReuse",
            "rgbaReuse",
            "extractCallback"
        }
    .end annotation

    invoke-virtual {p0}, Lub/p;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lub/p;->getHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-virtual/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->O0(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;IIIILandroid/graphics/Bitmap;[ILjava/nio/ByteBuffer;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V

    return-void
.end method

.method public U0(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "renderTarget",
            "extractCallback"
        }
    .end annotation

    invoke-virtual {p0}, Lub/p;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lub/p;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->O0(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;IIIILandroid/graphics/Bitmap;[ILjava/nio/ByteBuffer;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V

    return-void
.end method

.method public V0()V
    .locals 0

    return-void
.end method

.method public destroyImmediate()V
    .locals 1

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->destroyImmediate()V

    return-void
.end method

.method public f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "attributeName"
        }
    .end annotation

    invoke-virtual {p0}, Lub/p;->isGarbage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->n:Lcom/google/android/filament/TextureSampler;

    invoke-virtual {p1, p2, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->q(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;Lcom/google/android/filament/TextureSampler;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public k()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    return-object v0
.end method

.method public q()J
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->A()J

    move-result-wide v0

    return-wide v0
.end method

.method public w()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;->Color:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    return-object v0
.end method

.method public z(IIIILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ofx",
            "ofy",
            "w",
            "h",
            "extractCallback"
        }
    .end annotation

    invoke-virtual/range {p0 .. p5}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->J0(IIIILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V

    return-void
.end method

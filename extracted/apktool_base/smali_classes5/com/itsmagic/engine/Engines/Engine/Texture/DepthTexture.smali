.class public Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;
.super Lub/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$d;
    }
.end annotation


# instance fields
.field private byteBuffer:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

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

.field public final o:Lcom/google/android/filament/Texture$f;

.field private pbd:Lcom/google/android/filament/Texture$g;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILcom/google/android/filament/TextureSampler$f;)V
    .locals 10
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

    invoke-direct {p0}, Lub/p;-><init>()V

    invoke-static {}, LQb/a;->d()V

    invoke-static {p1}, LNc/b;->J0(I)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    invoke-static {p2}, LNc/b;->J0(I)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 p2, p2, -0x1

    :cond_1
    if-lez p1, :cond_2

    if-lez p2, :cond_2

    new-instance v6, Lcom/google/android/filament/TextureSampler;

    sget-object v0, Lcom/google/android/filament/TextureSampler$e;->NEAREST:Lcom/google/android/filament/TextureSampler$e;

    sget-object v1, Lcom/google/android/filament/TextureSampler$d;->NEAREST:Lcom/google/android/filament/TextureSampler$d;

    invoke-direct {v6, v0, v1, p3}, Lcom/google/android/filament/TextureSampler;-><init>(Lcom/google/android/filament/TextureSampler$e;Lcom/google/android/filament/TextureSampler$d;Lcom/google/android/filament/TextureSampler$f;)V

    iput-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->n:Lcom/google/android/filament/TextureSampler;

    sget-object p3, Lcom/google/android/filament/Texture$f;->DEPTH16:Lcom/google/android/filament/Texture$f;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->o:Lcom/google/android/filament/Texture$f;

    new-instance v9, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    sget-object v3, Lcom/google/android/filament/Texture$e;->DEPTH_COMPONENT:Lcom/google/android/filament/Texture$e;

    sget-object v4, Lcom/google/android/filament/Texture$k;->USHORT:Lcom/google/android/filament/Texture$k;

    new-instance v0, Lcom/google/android/filament/Texture$a;

    invoke-direct {v0}, Lcom/google/android/filament/Texture$a;-><init>()V

    invoke-virtual {v0, p3}, Lcom/google/android/filament/Texture$a;->d(Lcom/google/android/filament/Texture$f;)Lcom/google/android/filament/Texture$a;

    move-result-object v5

    const/4 v7, 0x0

    const/16 v8, 0x43

    move-object v0, v9

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;-><init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$a;Lcom/google/android/filament/TextureSampler;II)V

    iput-object v9, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->A()J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lub/p;->A(IIJZ)V

    return-void

    :cond_2
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/InvalidTextureSizeException;

    const-string p2, "Width and height can\'t be <= 0"

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/InvalidTextureSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic q0(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$d;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->E0(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$d;)V

    return-void
.end method

.method public static synthetic r0(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;IILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->G0(IILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V

    return-void
.end method

.method public static synthetic s0(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;IILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->H0(IILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V

    return-void
.end method

.method public static synthetic t0(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;Ljava/nio/ByteBuffer;Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$d;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->F0(Ljava/nio/ByteBuffer;Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$d;)V

    return-void
.end method

.method public static synthetic u0(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->extractingRT:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    return-object p0
.end method

.method public static synthetic v0(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->extractingRT:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    return-object p1
.end method

.method public static synthetic w0(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->keepAliveExtractionTexture:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    return-object p1
.end method

.method public static synthetic x0(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;Lcom/google/android/filament/Texture$g;)Lcom/google/android/filament/Texture$g;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->pbd:Lcom/google/android/filament/Texture$g;

    return-object p1
.end method

.method public static synthetic y0(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static synthetic z0(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object p1
.end method


# virtual methods
.method public B0()Lcom/google/android/filament/Texture;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->C()Lcom/google/android/filament/Texture;

    move-result-object v0

    return-object v0
.end method

.method public C()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public C0(IILcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$d;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "extractCallback"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->extractingRT:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    new-instance v1, Lcom/google/android/filament/RenderTarget$b;

    invoke-direct {v1}, Lcom/google/android/filament/RenderTarget$b;-><init>()V

    sget-object v2, Lcom/google/android/filament/RenderTarget$a;->COLOR:Lcom/google/android/filament/RenderTarget$a;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->C()Lcom/google/android/filament/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/filament/RenderTarget$b;->f(Lcom/google/android/filament/RenderTarget$a;Lcom/google/android/filament/Texture;)Lcom/google/android/filament/RenderTarget$b;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-direct {v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;-><init>(Lcom/google/android/filament/RenderTarget$b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->extractingRT:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->keepAliveExtractionTexture:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->byteBuffer:Ljava/nio/ByteBuffer;

    new-instance v1, Lcom/google/android/filament/Texture$g;

    sget-object v2, Lcom/google/android/filament/Texture$e;->RG:Lcom/google/android/filament/Texture$e;

    sget-object v3, Lcom/google/android/filament/Texture$k;->USHORT:Lcom/google/android/filament/Texture$k;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/filament/Texture$g;-><init>(Ljava/nio/Buffer;Lcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->pbd:Lcom/google/android/filament/Texture$g;

    invoke-static {}, LQb/e;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lub/b;

    invoke-direct {v2, p0, p3}, Lub/b;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$d;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/filament/Texture$g;->b(Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-static {}, LQb/a;->g()Lcom/google/android/filament/Renderer;

    move-result-object v3

    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->extractingRT:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->f()Lcom/google/android/filament/RenderTarget;

    move-result-object v4

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->pbd:Lcom/google/android/filament/Texture$g;

    const/4 v7, 0x1

    move v5, p1

    move v6, p2

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/filament/Renderer;->n(Lcom/google/android/filament/RenderTarget;IIIILcom/google/android/filament/Texture$g;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Data extraction already running"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public D0(IILjava/nio/ByteBuffer;Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$d;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "buffer",
            "extractCallback"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->extractingRT:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    new-instance v1, Lcom/google/android/filament/RenderTarget$b;

    invoke-direct {v1}, Lcom/google/android/filament/RenderTarget$b;-><init>()V

    sget-object v2, Lcom/google/android/filament/RenderTarget$a;->COLOR:Lcom/google/android/filament/RenderTarget$a;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->C()Lcom/google/android/filament/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/filament/RenderTarget$b;->f(Lcom/google/android/filament/RenderTarget$a;Lcom/google/android/filament/Texture;)Lcom/google/android/filament/RenderTarget$b;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-direct {v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;-><init>(Lcom/google/android/filament/RenderTarget$b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->extractingRT:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->keepAliveExtractionTexture:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    new-instance v0, Lcom/google/android/filament/Texture$g;

    sget-object v1, Lcom/google/android/filament/Texture$e;->RG:Lcom/google/android/filament/Texture$e;

    sget-object v2, Lcom/google/android/filament/Texture$k;->USHORT:Lcom/google/android/filament/Texture$k;

    invoke-direct {v0, p3, v1, v2}, Lcom/google/android/filament/Texture$g;-><init>(Ljava/nio/Buffer;Lcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->pbd:Lcom/google/android/filament/Texture$g;

    invoke-static {}, LQb/e;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lub/a;

    invoke-direct {v2, p0, p3, p4}, Lub/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;Ljava/nio/ByteBuffer;Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$d;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/filament/Texture$g;->b(Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-static {}, LQb/a;->g()Lcom/google/android/filament/Renderer;

    move-result-object v3

    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->extractingRT:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->f()Lcom/google/android/filament/RenderTarget;

    move-result-object v4

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->pbd:Lcom/google/android/filament/Texture$g;

    const/4 v7, 0x1

    move v5, p1

    move v6, p2

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/filament/Renderer;->n(Lcom/google/android/filament/RenderTarget;IIIILcom/google/android/filament/Texture$g;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Data extraction already running"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic E0(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$d;)V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$b;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$d;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic F0(Ljava/nio/ByteBuffer;Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$d;)V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;Ljava/nio/ByteBuffer;Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$d;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic G0(IILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    mul-int v0, p1, p2

    new-array v2, v0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    const v4, 0xffff

    and-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x8

    shl-int/lit8 v4, v3, 0x10

    const/high16 v5, -0x1000000

    or-int/2addr v4, v5

    shl-int/lit8 v5, v3, 0x8

    or-int/2addr v4, v5

    or-int/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    move v4, p1

    move v7, p1

    move v8, p2

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    invoke-interface {p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;->on(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$a;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;)V

    invoke-static {p1}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void

    :goto_1
    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$a;

    invoke-direct {p2, p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;)V

    invoke-static {p2}, LK8/a;->I(Ljava/lang/Runnable;)V

    throw p1
.end method

.method public final synthetic H0(IILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V
    .locals 1

    new-instance v0, Lub/c;

    invoke-direct {v0, p0, p1, p2, p3}, Lub/c;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;IILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public I0(IIIILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V
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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->extractingRT:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    new-instance v1, Lcom/google/android/filament/RenderTarget$b;

    invoke-direct {v1}, Lcom/google/android/filament/RenderTarget$b;-><init>()V

    sget-object v2, Lcom/google/android/filament/RenderTarget$a;->COLOR:Lcom/google/android/filament/RenderTarget$a;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->C()Lcom/google/android/filament/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/filament/RenderTarget$b;->f(Lcom/google/android/filament/RenderTarget$a;Lcom/google/android/filament/Texture;)Lcom/google/android/filament/RenderTarget$b;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-direct {v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;-><init>(Lcom/google/android/filament/RenderTarget$b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->extractingRT:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->keepAliveExtractionTexture:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    mul-int v0, p3, p4

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->byteBuffer:Ljava/nio/ByteBuffer;

    new-instance v1, Lcom/google/android/filament/Texture$g;

    sget-object v2, Lcom/google/android/filament/Texture$e;->RG:Lcom/google/android/filament/Texture$e;

    sget-object v3, Lcom/google/android/filament/Texture$k;->USHORT:Lcom/google/android/filament/Texture$k;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/filament/Texture$g;-><init>(Ljava/nio/Buffer;Lcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->pbd:Lcom/google/android/filament/Texture$g;

    invoke-static {}, LQb/e;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lub/d;

    invoke-direct {v2, p0, p3, p4, p5}, Lub/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;IILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/filament/Texture$g;->b(Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-static {}, LQb/a;->g()Lcom/google/android/filament/Renderer;

    move-result-object v3

    iget-object p5, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->extractingRT:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->f()Lcom/google/android/filament/RenderTarget;

    move-result-object v4

    iget-object v9, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->pbd:Lcom/google/android/filament/Texture$g;

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/filament/Renderer;->n(Lcom/google/android/filament/RenderTarget;IIIILcom/google/android/filament/Texture$g;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Data extraction already running"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public J()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public J0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extractCallback"
        }
    .end annotation

    invoke-virtual {p0}, Lub/p;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lub/p;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->I0(IIIILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V

    return-void
.end method

.method public N()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public destroyImmediate()V
    .locals 1

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->n:Lcom/google/android/filament/TextureSampler;

    invoke-virtual {p1, p2, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->q(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;Lcom/google/android/filament/TextureSampler;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public k()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    return-object v0
.end method

.method public q()J
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->m:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->A()J

    move-result-wide v0

    return-wide v0
.end method

.method public w()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;->Depth:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

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

    invoke-virtual/range {p0 .. p5}, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;->I0(IIIILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V

    return-void
.end method

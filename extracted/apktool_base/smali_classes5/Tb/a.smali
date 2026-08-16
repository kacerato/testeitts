.class public LTb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;

.field public b:[Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

.field public c:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

.field public d:Lub/p;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z

.field public m:Lcom/google/android/filament/TextureSampler$f;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:[I

.field public r:Z

.field public s:LJAVARuntime/FrameBuffer;


# direct methods
.method public constructor <init>(II)V
    .locals 2
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

    const/16 v0, 0x64

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, LTb/a;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "cameraPercentage"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, LTb/a;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "cameraPercentage",
            "colorAttachments"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 3
    invoke-direct/range {v0 .. v5}, LTb/a;-><init>(IIIILcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;)V

    return-void
.end method

.method public constructor <init>(IIIILcom/google/android/filament/TextureSampler$f;)V
    .locals 9
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
            "cameraPercentage",
            "colorAttachments",
            "colorClampMode"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v8, p5

    .line 4
    invoke-direct/range {v0 .. v8}, LTb/a;-><init>(IIIILcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;ZZLcom/google/android/filament/TextureSampler$f;)V

    return-void
.end method

.method public constructor <init>(IIIILcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;)V
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
            "cameraPercentage",
            "colorAttachments",
            "depthAttach"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 6
    invoke-direct/range {v0 .. v6}, LTb/a;-><init>(IIIILcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;Z)V

    return-void
.end method

.method public constructor <init>(IIIILcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;Z)V
    .locals 8
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
            "cameraPercentage",
            "colorAttachments",
            "depthAttach",
            "createDepth"
        }
    .end annotation

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    .line 7
    invoke-direct/range {v0 .. v7}, LTb/a;-><init>(IIIILcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;ZZ)V

    return-void
.end method

.method public constructor <init>(IIIILcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;ZZ)V
    .locals 9
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
            "width",
            "height",
            "cameraPercentage",
            "colorAttachments",
            "depthAttach",
            "createDepth",
            "useLinearDepth"
        }
    .end annotation

    .line 8
    sget-object v8, Lcom/google/android/filament/TextureSampler$f;->CLAMP_TO_EDGE:Lcom/google/android/filament/TextureSampler$f;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, LTb/a;-><init>(IIIILcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;ZZLcom/google/android/filament/TextureSampler$f;)V

    return-void
.end method

.method public constructor <init>(IIIILcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;ZZLcom/google/android/filament/TextureSampler$f;)V
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
            "width",
            "height",
            "cameraPercentage",
            "colorAttachments",
            "depthAttach",
            "createDepth",
            "useLinearDepth",
            "colorClampMode"
        }
    .end annotation

    const/4 v9, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 9
    invoke-direct/range {v0 .. v9}, LTb/a;-><init>(IIIILcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;ZZLcom/google/android/filament/TextureSampler$f;Z)V

    return-void
.end method

.method public constructor <init>(IIIILcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;ZZLcom/google/android/filament/TextureSampler$f;Z)V
    .locals 3
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
            "width",
            "height",
            "cameraPercentage",
            "colorAttachments",
            "depthAttach",
            "createDepth",
            "useLinearDepth",
            "colorClampMode",
            "autoClampResolution"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p7, 0x64

    .line 11
    iput p7, p0, LTb/a;->i:I

    const/4 p7, 0x1

    .line 12
    iput p7, p0, LTb/a;->j:I

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, LTb/a;->o:Z

    .line 14
    invoke-static {}, LQb/a;->d()V

    if-ltz p4, :cond_b

    if-eq p4, p7, :cond_1

    .line 15
    sget-object p7, LW7/b;->f:LC8/a;

    iget-object p7, p7, LC8/a;->b:LE8/a;

    invoke-virtual {p7}, LE8/a;->a()F

    move-result p7

    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float p7, p7, v1

    if-ltz p7, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Multi target render frame buffer on requires OpenGL 3 or upper."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_1
    :goto_0
    iput-object p8, p0, LTb/a;->m:Lcom/google/android/filament/TextureSampler$f;

    .line 18
    iput p4, p0, LTb/a;->j:I

    .line 19
    iput-boolean p6, p0, LTb/a;->k:Z

    int-to-float p7, p1

    int-to-float v1, p3

    const v2, 0x3c23d70a    # 0.01f

    mul-float/2addr v1, v2

    mul-float/2addr p7, v1

    float-to-int p7, p7

    int-to-float v2, p2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 20
    invoke-static {p7}, LNc/b;->J0(I)Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 p7, p7, 0x1

    .line 21
    :cond_2
    invoke-static {v1}, LNc/b;->J0(I)Z

    move-result v2

    if-nez v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    if-lez p7, :cond_a

    if-lez v1, :cond_a

    const/16 v2, 0x1000

    if-nez p9, :cond_5

    if-gt p7, v2, :cond_4

    if-gt v1, v2, :cond_4

    goto :goto_1

    .line 22
    :cond_4
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/InvalidTextureSizeException;

    const-string p2, "Resultant width and height from the width*resolution and height*resolution can\'t be > 4096"

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/InvalidTextureSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_5
    invoke-static {p7, v2}, LNc/b;->K(II)I

    move-result p7

    .line 24
    invoke-static {v1, v2}, LNc/b;->K(II)I

    move-result v1

    .line 25
    :goto_1
    iput-boolean p9, p0, LTb/a;->n:Z

    .line 26
    iput p7, p0, LTb/a;->e:I

    .line 27
    iput v1, p0, LTb/a;->f:I

    .line 28
    iput p1, p0, LTb/a;->g:I

    .line 29
    iput p2, p0, LTb/a;->h:I

    .line 30
    iput p3, p0, LTb/a;->i:I

    const/4 p1, 0x0

    if-lez p4, :cond_6

    .line 31
    new-array p2, p4, [Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    iput-object p2, p0, LTb/a;->b:[Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    :goto_2
    if-ge v0, p4, :cond_7

    .line 32
    iget-object p2, p0, LTb/a;->b:[Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    iget p7, p0, LTb/a;->e:I

    iget p9, p0, LTb/a;->f:I

    invoke-direct {p3, p7, p9, p8}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;-><init>(IILcom/google/android/filament/TextureSampler$f;)V

    aput-object p3, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 33
    :cond_6
    iput-object p1, p0, LTb/a;->b:[Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    :cond_7
    if-eqz p6, :cond_9

    if-nez p5, :cond_8

    .line 34
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    iget p2, p0, LTb/a;->e:I

    iget p3, p0, LTb/a;->f:I

    invoke-direct {p1, p2, p3, p8}, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;-><init>(IILcom/google/android/filament/TextureSampler$f;)V

    iput-object p1, p0, LTb/a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    goto :goto_3

    .line 35
    :cond_8
    iput-object p5, p0, LTb/a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    goto :goto_3

    .line 36
    :cond_9
    iput-object p1, p0, LTb/a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    .line 37
    :goto_3
    new-instance p1, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;

    iget p2, p0, LTb/a;->e:I

    iget p3, p0, LTb/a;->f:I

    iget-object p4, p0, LTb/a;->b:[Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    iget-object p5, p0, LTb/a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    invoke-direct {p1, p2, p3, p4, p5}, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;-><init>(II[Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;)V

    iput-object p1, p0, LTb/a;->a:Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;

    return-void

    .line 38
    :cond_a
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/InvalidTextureSizeException;

    const-string p2, "Resultant width and height from the width*resolution and height*resolution can\'t be <= 0"

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/InvalidTextureSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Framebuffer can\'t have more less than 0 color attachments"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(IIIIZ)V
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
            "cameraPercentage",
            "colorAttachments",
            "createDepth"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    .line 5
    invoke-direct/range {v0 .. v6}, LTb/a;-><init>(IIIILcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "colorAttachment",
            "depthAttach"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 41
    iput v0, p0, LTb/a;->i:I

    const/4 v1, 0x1

    .line 42
    iput v1, p0, LTb/a;->j:I

    const/4 v2, 0x0

    .line 43
    iput-boolean v2, p0, LTb/a;->o:Z

    .line 44
    invoke-static {}, LQb/a;->d()V

    if-eqz p1, :cond_0

    .line 45
    iput v1, p0, LTb/a;->j:I

    .line 46
    iput-boolean v1, p0, LTb/a;->p:Z

    .line 47
    invoke-virtual {p1}, Lub/p;->getWidth()I

    move-result v1

    .line 48
    invoke-virtual {p1}, Lub/p;->getHeight()I

    move-result v3

    .line 49
    iput-boolean v2, p0, LTb/a;->n:Z

    .line 50
    iput v1, p0, LTb/a;->e:I

    .line 51
    iput v3, p0, LTb/a;->f:I

    .line 52
    invoke-virtual {p1}, Lub/p;->getWidth()I

    move-result v1

    iput v1, p0, LTb/a;->g:I

    .line 53
    invoke-virtual {p1}, Lub/p;->getHeight()I

    move-result v1

    iput v1, p0, LTb/a;->h:I

    .line 54
    iput v0, p0, LTb/a;->i:I

    .line 55
    filled-new-array {p1}, [Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object p1

    iput-object p1, p0, LTb/a;->b:[Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    .line 56
    iput-object p2, p0, LTb/a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    .line 57
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;

    iget v1, p0, LTb/a;->e:I

    iget v2, p0, LTb/a;->f:I

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;-><init>(II[Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;)V

    iput-object v0, p0, LTb/a;->a:Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;

    return-void

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Framebuffer needs colorAttachment"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-boolean v0, p0, LTb/a;->r:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, LTb/a;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LTb/a;->o:Z

    invoke-static {}, LQb/a;->e()V

    iget-object v0, p0, LTb/a;->a:Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;->b(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "FBO already binded"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, LTb/a;->b:[Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    array-length v0, v0

    return v0
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, LTb/a;->r:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LTb/a;->r:Z

    invoke-static {}, LQb/a;->d()V

    iget-object v0, p0, LTb/a;->a:Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;->c()V

    invoke-virtual {p0}, LTb/a;->e()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public d(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textures"
        }
    .end annotation

    iget-boolean v0, p0, LTb/a;->r:Z

    if-nez v0, :cond_1

    invoke-static {}, LQb/a;->d()V

    iget-object v0, p0, LTb/a;->a:Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;->c()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LTb/a;->e()V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, LTb/a;->r:Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public final e()V
    .locals 5

    iget-object v0, p0, LTb/a;->b:[Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v3, p0, LTb/a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    new-array v2, v2, [Lub/p;

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iget-object v3, p0, LTb/a;->b:[Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    array-length v4, v3

    if-ge v1, v4, :cond_3

    aget-object v3, v3, v1

    if-eqz v3, :cond_2

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v0

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, LTb/a;->b:[Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    iget-object v3, p0, LTb/a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    if-eqz v3, :cond_5

    aput-object v3, v2, v1

    :cond_5
    iput-object v0, p0, LTb/a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    new-instance v0, LTb/a$b;

    invoke-direct {v0, p0, v2}, LTb/a$b;-><init>(LTb/a;[Lub/p;)V

    const/4 v1, 0x2

    invoke-static {v1, v0}, LK8/a;->h(ILjava/lang/Runnable;)V

    return-void
.end method

.method public f(Ljava/io/File;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "outputFile",
            "q"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, LTb/a;->g(Ljava/io/File;ILjava/lang/Runnable;)V

    return-void
.end method

.method public g(Ljava/io/File;ILjava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "outputFile",
            "q",
            "doneRunnable"
        }
    .end annotation

    invoke-static {}, LQb/a;->d()V

    invoke-virtual {p0}, LTb/a;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object v0

    new-instance v1, LTb/a$a;

    invoke-direct {v1, p0, p1, p2, p3}, LTb/a$a;-><init>(LTb/a;Ljava/io/File;ILjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->N0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V

    return-void
.end method

.method public h()I
    .locals 1

    iget v0, p0, LTb/a;->f:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, LTb/a;->e:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, LTb/a;->j:I

    return v0
.end method

.method public k()Lub/p;
    .locals 1

    iget-object v0, p0, LTb/a;->d:Lub/p;

    return-object v0
.end method

.method public l()Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LTb/a;->m(I)Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object v0

    return-object v0
.end method

.method public m(I)Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    iget-object v0, p0, LTb/a;->b:[Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public n()Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;
    .locals 1

    iget-object v0, p0, LTb/a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    return-object v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, LTb/a;->h:I

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, LTb/a;->g:I

    return v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, LTb/a;->i:I

    return v0
.end method

.method public r()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;
    .locals 1

    iget-object v0, p0, LTb/a;->a:Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;->d()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    move-result-object v0

    return-object v0
.end method

.method public s()Z
    .locals 3

    iget-object v0, p0, LTb/a;->b:[Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public t()Z
    .locals 1

    iget-object v0, p0, LTb/a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u(II)Z
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

    const/16 v0, 0x64

    invoke-virtual {p0, p1, p2, v0}, LTb/a;->v(III)Z

    move-result p1

    return p1
.end method

.method public v(III)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "cameraPercentage"
        }
    .end annotation

    iget-boolean v0, p0, LTb/a;->p:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, LTb/a;->r:Z

    if-nez v0, :cond_c

    iget v0, p0, LTb/a;->g:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iget v0, p0, LTb/a;->h:I

    if-ne v0, p2, :cond_0

    iget v0, p0, LTb/a;->i:I

    if-ne v0, p3, :cond_0

    return v1

    :cond_0
    invoke-static {}, LQb/a;->d()V

    iput p1, p0, LTb/a;->g:I

    iput p2, p0, LTb/a;->h:I

    const/4 v0, 0x1

    invoke-static {v0, p3}, LNc/b;->N(II)I

    move-result p3

    iput p3, p0, LTb/a;->i:I

    int-to-float p1, p1

    int-to-float v2, p3

    const v3, 0x3c23d70a    # 0.01f

    mul-float/2addr v2, v3

    mul-float/2addr p1, v2

    float-to-int p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    mul-float/2addr p3, v3

    mul-float/2addr p2, p3

    float-to-int p2, p2

    invoke-static {p1}, LNc/b;->J0(I)Z

    move-result p3

    if-nez p3, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    invoke-static {p2}, LNc/b;->J0(I)Z

    move-result p3

    if-nez p3, :cond_2

    add-int/lit8 p2, p2, -0x1

    :cond_2
    const/4 p3, 0x2

    invoke-static {p3, p1}, LNc/b;->N(II)I

    move-result p1

    invoke-static {p3, p2}, LNc/b;->N(II)I

    move-result p2

    if-lez p1, :cond_b

    if-lez p2, :cond_b

    iget-boolean p3, p0, LTb/a;->n:Z

    const/16 v2, 0x1000

    if-nez p3, :cond_4

    if-gt p1, v2, :cond_3

    if-gt p2, v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/InvalidTextureSizeException;

    const-string p2, "Resultant width and height from the width*resolution and height*resolution can\'t be > 4096"

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/InvalidTextureSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-static {p1, v2}, LNc/b;->K(II)I

    move-result p1

    invoke-static {p2, v2}, LNc/b;->K(II)I

    move-result p2

    :goto_0
    iget p3, p0, LTb/a;->e:I

    if-ne p3, p1, :cond_6

    iget p3, p0, LTb/a;->f:I

    if-eq p3, p2, :cond_5

    goto :goto_1

    :cond_5
    return v1

    :cond_6
    :goto_1
    iput p1, p0, LTb/a;->e:I

    iput p2, p0, LTb/a;->f:I

    iget-object p1, p0, LTb/a;->a:Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;->c()V

    :cond_7
    invoke-virtual {p0}, LTb/a;->e()V

    iget p1, p0, LTb/a;->j:I

    const/4 p2, 0x0

    if-lez p1, :cond_8

    new-array p1, p1, [Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    iput-object p1, p0, LTb/a;->b:[Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    :goto_2
    iget p1, p0, LTb/a;->j:I

    if-ge v1, p1, :cond_9

    iget-object p1, p0, LTb/a;->b:[Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    iget v2, p0, LTb/a;->e:I

    iget v3, p0, LTb/a;->f:I

    iget-object v4, p0, LTb/a;->m:Lcom/google/android/filament/TextureSampler$f;

    invoke-direct {p3, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;-><init>(IILcom/google/android/filament/TextureSampler$f;)V

    aput-object p3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    iput-object p2, p0, LTb/a;->b:[Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    :cond_9
    iget-boolean p1, p0, LTb/a;->k:Z

    if-eqz p1, :cond_a

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    iget p2, p0, LTb/a;->e:I

    iget p3, p0, LTb/a;->f:I

    iget-object v1, p0, LTb/a;->m:Lcom/google/android/filament/TextureSampler$f;

    invoke-direct {p1, p2, p3, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;-><init>(IILcom/google/android/filament/TextureSampler$f;)V

    iput-object p1, p0, LTb/a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    goto :goto_3

    :cond_a
    iput-object p2, p0, LTb/a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    :goto_3
    new-instance p1, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;

    iget p2, p0, LTb/a;->e:I

    iget p3, p0, LTb/a;->f:I

    iget-object v1, p0, LTb/a;->b:[Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    iget-object v2, p0, LTb/a;->c:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;

    invoke-direct {p1, p2, p3, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;-><init>(II[Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture;)V

    iput-object p1, p0, LTb/a;->a:Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;

    return v0

    :cond_b
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/InvalidTextureSizeException;

    const-string p2, "Resultant width and height from the width*resolution and height*resolution can\'t be <= 0"

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/InvalidTextureSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :cond_d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Can`t resize a static frame buffer"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public w(Lub/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorBindOverride"
        }
    .end annotation

    iput-object p1, p0, LTb/a;->d:Lub/p;

    return-void
.end method

.method public x(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderPercentage"
        }
    .end annotation

    iput p1, p0, LTb/a;->i:I

    return-void
.end method

.method public y()LJAVARuntime/FrameBuffer;
    .locals 1

    iget-object v0, p0, LTb/a;->s:LJAVARuntime/FrameBuffer;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/FrameBuffer;

    invoke-direct {v0, p0}, LJAVARuntime/FrameBuffer;-><init>(LTb/a;)V

    iput-object v0, p0, LTb/a;->s:LJAVARuntime/FrameBuffer;

    :cond_0
    return-object v0
.end method

.method public z()V
    .locals 1

    iget-boolean v0, p0, LTb/a;->r:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, LTb/a;->o:Z

    invoke-static {}, LQb/a;->e()V

    iget-object v0, p0, LTb/a;->a:Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/FrameBuffer/FBO;->e()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

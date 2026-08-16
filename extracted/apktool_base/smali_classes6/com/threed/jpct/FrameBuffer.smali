.class public Lcom/threed/jpct/FrameBuffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final OPAQUE_BLITTING:Z = false

.field public static final TRANSPARENT_BLITTING:Z = true

.field private static final serialVersionUID:J = 0x1L

.field private static sid:J

.field static versionHint:I


# instance fields
.field transient displayCycle:J

.field transient glRend:Lcom/threed/jpct/GLRenderer;

.field transient hasRenderTarget:Z

.field height:I

.field private id:Ljava/lang/Long;

.field initialized:Z

.field length:I

.field middleX:F

.field middleY:F

.field private openGlVersion:I

.field private transient postProcessors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/threed/jpct/IPostProcessor;",
            ">;"
        }
    .end annotation
.end field

.field transient renderTarget:Lcom/threed/jpct/Texture;

.field private transient usedBy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/threed/jpct/VisListManager;",
            ">;"
        }
    .end annotation
.end field

.field virtualHeight:I

.field virtualWidth:I

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, v0, p1, p2}, Lcom/threed/jpct/FrameBuffer;-><init>(Ljavax/microedition/khronos/opengles/GL10;II)V

    return-void
.end method

.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/threed/jpct/FrameBuffer;->hasRenderTarget:Z

    .line 4
    iput-object v0, p0, Lcom/threed/jpct/FrameBuffer;->renderTarget:Lcom/threed/jpct/Texture;

    const-wide/16 v2, 0x0

    .line 5
    iput-wide v2, p0, Lcom/threed/jpct/FrameBuffer;->displayCycle:J

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/threed/jpct/FrameBuffer;->usedBy:Ljava/util/ArrayList;

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/threed/jpct/FrameBuffer;->postProcessors:Ljava/util/ArrayList;

    .line 8
    iput-object v0, p0, Lcom/threed/jpct/FrameBuffer;->id:Ljava/lang/Long;

    .line 9
    iput v1, p0, Lcom/threed/jpct/FrameBuffer;->openGlVersion:I

    .line 10
    iput-boolean v1, p0, Lcom/threed/jpct/FrameBuffer;->initialized:Z

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/threed/jpct/FrameBuffer;->virtualHeight:I

    .line 12
    iput v0, p0, Lcom/threed/jpct/FrameBuffer;->virtualWidth:I

    .line 13
    sget-wide v5, Lcom/threed/jpct/FrameBuffer;->sid:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/threed/jpct/FrameBuffer;->id:Ljava/lang/Long;

    .line 14
    sget-wide v5, Lcom/threed/jpct/FrameBuffer;->sid:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    sput-wide v5, Lcom/threed/jpct/FrameBuffer;->sid:J

    .line 15
    iput-boolean v4, p0, Lcom/threed/jpct/FrameBuffer;->initialized:Z

    mul-int v0, p2, p3

    .line 16
    iput v0, p0, Lcom/threed/jpct/FrameBuffer;->length:I

    .line 17
    iput p2, p0, Lcom/threed/jpct/FrameBuffer;->width:I

    .line 18
    iput p3, p0, Lcom/threed/jpct/FrameBuffer;->height:I

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    .line 19
    iput p2, p0, Lcom/threed/jpct/FrameBuffer;->middleX:F

    int-to-float p2, p3

    div-float/2addr p2, v0

    .line 20
    iput p2, p0, Lcom/threed/jpct/FrameBuffer;->middleY:F

    .line 21
    :try_start_0
    sput v1, Lcom/threed/jpct/FrameBuffer;->versionHint:I

    .line 22
    iput v1, p0, Lcom/threed/jpct/FrameBuffer;->openGlVersion:I

    .line 23
    new-instance p2, Lcom/threed/jpct/GLRenderer;

    invoke-direct {p2}, Lcom/threed/jpct/GLRenderer;-><init>()V

    iput-object p2, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    .line 24
    iget p3, p0, Lcom/threed/jpct/FrameBuffer;->width:I

    iget v0, p0, Lcom/threed/jpct/FrameBuffer;->height:I

    invoke-virtual {p2, p1, p3, v0}, Lcom/threed/jpct/GLRenderer;->init(Ljavax/microedition/khronos/opengles/GL10;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 25
    invoke-static {p2, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/Throwable;I)V

    :goto_0
    if-eqz p1, :cond_0

    .line 26
    iput v4, p0, Lcom/threed/jpct/FrameBuffer;->openGlVersion:I

    .line 27
    sput v4, Lcom/threed/jpct/FrameBuffer;->versionHint:I

    goto :goto_1

    .line 28
    :cond_0
    iput v3, p0, Lcom/threed/jpct/FrameBuffer;->openGlVersion:I

    .line 29
    sput v3, Lcom/threed/jpct/FrameBuffer;->versionHint:I

    :goto_1
    return-void
.end method

.method private checkListeners()V
    .locals 5

    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->usedBy:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/threed/jpct/FrameBuffer;->usedBy:Ljava/util/ArrayList;

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/threed/jpct/FrameBuffer;->usedBy:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_3

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/threed/jpct/FrameBuffer;->usedBy:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/threed/jpct/FrameBuffer;->usedBy:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/threed/jpct/VisListManager;

    iget-boolean v4, v3, Lcom/threed/jpct/VisListManager;->isDisposed:Z

    if-eqz v4, :cond_5

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private incCounter()V
    .locals 4

    iget-boolean v0, p0, Lcom/threed/jpct/FrameBuffer;->hasRenderTarget:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/threed/jpct/FrameBuffer;->displayCycle:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/threed/jpct/FrameBuffer;->displayCycle:J

    :cond_0
    return-void
.end method

.method private removeListeners()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/threed/jpct/FrameBuffer;->usedBy:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/FrameBuffer;->usedBy:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/threed/jpct/VisListManager;

    invoke-virtual {v1, p0}, Lcom/threed/jpct/VisListManager;->remove(Lcom/threed/jpct/FrameBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    const-string v0, "Couldn\'t unregister visibility list!"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public addPostProcessor(Lcom/threed/jpct/IPostProcessor;)V
    .locals 1

    invoke-interface {p1}, Lcom/threed/jpct/IPostProcessor;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Post processor has already been initialized!"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->postProcessors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public blit(Lcom/threed/jpct/Texture;IIIIIIIIIZ)V
    .locals 13

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    .line 6
    invoke-virtual/range {v0 .. v12}, Lcom/threed/jpct/FrameBuffer;->blit(Lcom/threed/jpct/Texture;IIIIIIIIIZLcom/threed/jpct/RGBColor;)V

    return-void
.end method

.method public blit(Lcom/threed/jpct/Texture;IIIIIIIIIZLcom/threed/jpct/RGBColor;)V
    .locals 18

    if-eqz p12, :cond_0

    .line 2
    invoke-virtual/range {p12 .. p12}, Lcom/threed/jpct/RGBColor;->getRed()I

    move-result v0

    .line 3
    invoke-virtual/range {p12 .. p12}, Lcom/threed/jpct/RGBColor;->getGreen()I

    move-result v1

    .line 4
    invoke-virtual/range {p12 .. p12}, Lcom/threed/jpct/RGBColor;->getBlue()I

    move-result v2

    move v15, v0

    move/from16 v16, v1

    move/from16 v17, v2

    :goto_0
    move-object/from16 v0, p0

    goto :goto_1

    :cond_0
    const/16 v0, 0xff

    move v15, v0

    move/from16 v16, v15

    move/from16 v17, v16

    goto :goto_0

    .line 5
    :goto_1
    iget-object v1, v0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    if-eqz p12, :cond_1

    const/4 v2, 0x1

    :goto_2
    move v11, v2

    goto :goto_3

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :goto_3
    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p11

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    invoke-virtual/range {v1 .. v17}, Lcom/threed/jpct/GLRenderer;->blitTexture(Lcom/threed/jpct/Texture;Lcom/threed/jpct/FrameBuffer;IIIIIIZZIIIIII)V

    return-void
.end method

.method public blit(Lcom/threed/jpct/Texture;IIIIIIZ)V
    .locals 11

    move-object v10, p0

    .line 1
    iget-object v0, v10, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    move-object v1, p1

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/threed/jpct/GLRenderer;->blitTexture(Lcom/threed/jpct/Texture;Lcom/threed/jpct/FrameBuffer;IIIIIIZ)V

    return-void
.end method

.method public blit([IIIIIIIIIZ)V
    .locals 13

    move v10, p2

    move/from16 v11, p3

    move/from16 v3, p4

    move/from16 v4, p5

    if-ltz v3, :cond_0

    if-ge v3, v10, :cond_0

    if-ltz v4, :cond_0

    if-ge v4, v11, :cond_0

    add-int v0, v3, p8

    if-gt v0, v10, :cond_0

    add-int v0, v4, p9

    if-gt v0, v11, :cond_0

    move-object v12, p0

    .line 7
    iget-object v0, v12, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    move-object v1, p1

    move-object v2, p0

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move v7, p2

    move/from16 v8, p3

    move/from16 v9, p10

    move v10, p2

    move/from16 v11, p3

    invoke-virtual/range {v0 .. v11}, Lcom/threed/jpct/GLRenderer;->blitIntArray([ILcom/threed/jpct/FrameBuffer;IIIIIIZII)V

    goto :goto_0

    :cond_0
    move-object v12, p0

    .line 8
    const-string v0, "Blitting region out of bounds"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/threed/jpct/FrameBuffer;->clear(Lcom/threed/jpct/RGBColor;)V

    return-void
.end method

.method public clear(Lcom/threed/jpct/RGBColor;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/GLRenderer;->clear(Lcom/threed/jpct/RGBColor;)V

    return-void
.end method

.method public clearColorBufferOnly(Lcom/threed/jpct/RGBColor;)V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/GLRenderer;->clearColorBufferOnly(Lcom/threed/jpct/RGBColor;)V

    return-void
.end method

.method public clearZBufferOnly()V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    invoke-virtual {v0}, Lcom/threed/jpct/GLRenderer;->clearZBufferOnly()V

    return-void
.end method

.method public display()V
    .locals 1

    invoke-direct {p0}, Lcom/threed/jpct/FrameBuffer;->incCounter()V

    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    invoke-virtual {v0}, Lcom/threed/jpct/GLRenderer;->swapBuffers()V

    return-void
.end method

.method public dispose()V
    .locals 1

    invoke-direct {p0}, Lcom/threed/jpct/FrameBuffer;->checkListeners()V

    invoke-direct {p0}, Lcom/threed/jpct/FrameBuffer;->removeListeners()V

    invoke-virtual {p0}, Lcom/threed/jpct/FrameBuffer;->removeAllPostProcessors()V

    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/threed/jpct/GLRenderer;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 0

    invoke-direct {p0}, Lcom/threed/jpct/FrameBuffer;->checkListeners()V

    invoke-direct {p0}, Lcom/threed/jpct/FrameBuffer;->removeListeners()V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    invoke-virtual {v0}, Lcom/threed/jpct/GLRenderer;->flush()V

    return-void
.end method

.method public freeMemory()V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/threed/jpct/GLRenderer;->unloadKnownTextures()V

    :cond_0
    return-void
.end method

.method public getCenterX()F
    .locals 1

    iget v0, p0, Lcom/threed/jpct/FrameBuffer;->middleX:F

    return v0
.end method

.method public getCenterY()F
    .locals 1

    iget v0, p0, Lcom/threed/jpct/FrameBuffer;->middleY:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/FrameBuffer;->height:I

    return v0
.end method

.method public getID()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getOpenGLMajorVersion()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/FrameBuffer;->openGlVersion:I

    return v0
.end method

.method public getPixels()[I
    .locals 2

    .line 1
    iget v0, p0, Lcom/threed/jpct/FrameBuffer;->width:I

    iget v1, p0, Lcom/threed/jpct/FrameBuffer;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lcom/threed/jpct/FrameBuffer;->getPixels([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getPixels([I)[I
    .locals 3

    if-eqz p1, :cond_1

    .line 2
    array-length v0, p1

    iget v1, p0, Lcom/threed/jpct/FrameBuffer;->width:I

    iget v2, p0, Lcom/threed/jpct/FrameBuffer;->height:I

    mul-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    invoke-virtual {v0, p0, p1}, Lcom/threed/jpct/GLRenderer;->grabScreen(Lcom/threed/jpct/FrameBuffer;[I)V

    return-object p1

    .line 4
    :cond_1
    :goto_0
    const-string p1, "The int[]-array has to have a size of width*height!"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/FrameBuffer;->width:I

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    invoke-virtual {v0}, Lcom/threed/jpct/GLRenderer;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public final register(Lcom/threed/jpct/VisListManager;)V
    .locals 1

    invoke-direct {p0}, Lcom/threed/jpct/FrameBuffer;->checkListeners()V

    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->usedBy:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->usedBy:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeAllPostProcessors()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/threed/jpct/FrameBuffer;->postProcessors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/FrameBuffer;->postProcessors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/threed/jpct/IPostProcessor;

    invoke-virtual {p0, v1}, Lcom/threed/jpct/FrameBuffer;->removePostProcessor(Lcom/threed/jpct/IPostProcessor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removePostProcessor(Lcom/threed/jpct/IPostProcessor;)V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->postProcessors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/GLRenderer;->disposeProcessor(Lcom/threed/jpct/IPostProcessor;)V

    return-void
.end method

.method public removeRenderTarget()V
    .locals 1

    iget-boolean v0, p0, Lcom/threed/jpct/FrameBuffer;->hasRenderTarget:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/threed/jpct/FrameBuffer;->setRenderTarget(Lcom/threed/jpct/Texture;)V

    :cond_0
    return-void
.end method

.method public runPostProcessors()V
    .locals 3

    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->postProcessors:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/threed/jpct/FrameBuffer;->postProcessors:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->postProcessors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/threed/jpct/FrameBuffer;->postProcessors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/threed/jpct/FrameBuffer;->postProcessors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/threed/jpct/IPostProcessor;

    iget-object v2, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    invoke-virtual {v2, p0, v1}, Lcom/threed/jpct/GLRenderer;->postProcess(Lcom/threed/jpct/FrameBuffer;Lcom/threed/jpct/IPostProcessor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public setPaintListener(Lcom/threed/jpct/IPaintListener;)V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/GLRenderer;->setPaintListener(Lcom/threed/jpct/IPaintListener;)V

    return-void
.end method

.method public setRenderTarget(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lcom/threed/jpct/FrameBuffer;->setRenderTarget(Lcom/threed/jpct/Texture;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/threed/jpct/TextureManager;->getTextureByID(I)Lcom/threed/jpct/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/threed/jpct/FrameBuffer;->setRenderTarget(Lcom/threed/jpct/Texture;)V

    :goto_0
    return-void
.end method

.method public setRenderTarget(IIIIIZ)V
    .locals 8

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/threed/jpct/FrameBuffer;->setRenderTarget(Lcom/threed/jpct/Texture;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/threed/jpct/TextureManager;->getTextureByID(I)Lcom/threed/jpct/Texture;

    move-result-object v2

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/threed/jpct/FrameBuffer;->setRenderTarget(Lcom/threed/jpct/Texture;IIIIZ)V

    :goto_0
    return-void
.end method

.method public setRenderTarget(Lcom/threed/jpct/Texture;)V
    .locals 7

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    .line 5
    invoke-virtual/range {v0 .. v6}, Lcom/threed/jpct/FrameBuffer;->setRenderTarget(Lcom/threed/jpct/Texture;IIIIZ)V

    return-void
.end method

.method public setRenderTarget(Lcom/threed/jpct/Texture;IIIIZ)V
    .locals 11

    move-object v8, p0

    move-object v9, p1

    const/4 v10, 0x0

    if-eqz v9, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/threed/jpct/Texture;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/threed/jpct/FrameBuffer;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/threed/jpct/Texture;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/threed/jpct/FrameBuffer;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_2

    :cond_0
    sget-boolean v0, Lcom/threed/jpct/Config;->useFBO:Z

    if-eqz v0, :cond_1

    iget-object v0, v8, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    iget-boolean v0, v0, Lcom/threed/jpct/GLRenderer;->gl20:Z

    if-nez v0, :cond_2

    .line 7
    :cond_1
    const-string v0, "Can\'t render into a texture larger than the current framebuffer!"

    invoke-static {v0, v10}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-void

    .line 8
    :cond_2
    iget-object v0, v8, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    if-eqz v0, :cond_4

    if-eqz v9, :cond_3

    .line 9
    iget-boolean v0, v9, Lcom/threed/jpct/Texture;->mipmap:Z

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p1, v10}, Lcom/threed/jpct/Texture;->setMipmap(Z)V

    .line 11
    :cond_3
    iget-object v0, v8, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    move-object v1, p1

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/threed/jpct/GLRenderer;->setRenderTarget(Lcom/threed/jpct/Texture;Lcom/threed/jpct/FrameBuffer;IIIIZ)V

    :cond_4
    if-nez v9, :cond_5

    .line 12
    iput-boolean v10, v8, Lcom/threed/jpct/FrameBuffer;->hasRenderTarget:Z

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, v8, Lcom/threed/jpct/FrameBuffer;->hasRenderTarget:Z

    .line 14
    :goto_0
    iput-object v9, v8, Lcom/threed/jpct/FrameBuffer;->renderTarget:Lcom/threed/jpct/Texture;

    return-void
.end method

.method public setVirtualDimensions(II)V
    .locals 0

    iput p2, p0, Lcom/threed/jpct/FrameBuffer;->virtualHeight:I

    iput p1, p0, Lcom/threed/jpct/FrameBuffer;->virtualWidth:I

    return-void
.end method

.method public sync()V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/FrameBuffer;->glRend:Lcom/threed/jpct/GLRenderer;

    invoke-virtual {v0}, Lcom/threed/jpct/GLRenderer;->sync()V

    return-void
.end method

.class public Ljpct/ae/wrapper/JFrameBuffer;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctFrameBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Lcom/threed/jpct/FrameBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method

.method public static final OPAQUE_BLITTING()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final TRANSPARENT_BLITTING()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public Initialize1(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    new-instance v0, Lcom/threed/jpct/FrameBuffer;

    invoke-direct {v0, p1, p2, p3}, Lcom/threed/jpct/FrameBuffer;-><init>(Ljavax/microedition/khronos/opengles/GL10;II)V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JFrameBuffer;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public Initialize2(II)V
    .locals 1

    new-instance v0, Lcom/threed/jpct/FrameBuffer;

    invoke-direct {v0, p1, p2}, Lcom/threed/jpct/FrameBuffer;-><init>(II)V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JFrameBuffer;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public addPostProcessor(Lcom/threed/jpct/IPostProcessor;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JFrameBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/FrameBuffer;->addPostProcessor(Lcom/threed/jpct/IPostProcessor;)V

    return-void
.end method

.method public blit(Lcom/threed/jpct/Texture;IIIIIIZ)V
    .locals 10

    invoke-virtual {p0}, Ljpct/ae/wrapper/JFrameBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/threed/jpct/FrameBuffer;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/threed/jpct/FrameBuffer;->blit(Lcom/threed/jpct/Texture;IIIIIIZ)V

    return-void
.end method

.method public blit2(Lcom/threed/jpct/Texture;IIIIIIIIIZLcom/threed/jpct/RGBColor;)V
    .locals 14

    invoke-virtual {p0}, Ljpct/ae/wrapper/JFrameBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/threed/jpct/FrameBuffer;

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v1 .. v13}, Lcom/threed/jpct/FrameBuffer;->blit(Lcom/threed/jpct/Texture;IIIIIIIIIZLcom/threed/jpct/RGBColor;)V

    return-void
.end method

.method public blit3(Lcom/threed/jpct/Texture;IIIIIIIIIZ)V
    .locals 13

    invoke-virtual {p0}, Ljpct/ae/wrapper/JFrameBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/threed/jpct/FrameBuffer;

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v1 .. v12}, Lcom/threed/jpct/FrameBuffer;->blit(Lcom/threed/jpct/Texture;IIIIIIIIIZ)V

    return-void
.end method

.method public blit4([IIIIIIIIIZ)V
    .locals 12

    invoke-virtual {p0}, Ljpct/ae/wrapper/JFrameBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/threed/jpct/FrameBuffer;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lcom/threed/jpct/FrameBuffer;->blit([IIIIIIIIIZ)V

    return-void
.end method

.method public clear()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JFrameBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v0}, Lcom/threed/jpct/FrameBuffer;->clear()V

    return-void
.end method

.method public clear2(Lcom/threed/jpct/RGBColor;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JFrameBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/FrameBuffer;->clear(Lcom/threed/jpct/RGBColor;)V

    return-void
.end method

.method public clearColorBufferOnly(Lcom/threed/jpct/RGBColor;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JFrameBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/FrameBuffer;->clearColorBufferOnly(Lcom/threed/jpct/RGBColor;)V

    return-void
.end method

.method public clearZBufferOnly()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JFrameBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v0}, Lcom/threed/jpct/FrameBuffer;->clearZBufferOnly()V

    return-void
.end method

.method public display()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JFrameBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v0}, Lcom/threed/jpct/FrameBuffer;->display()V

    return-void
.end method

.method public dispose()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JFrameBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v0}, Lcom/threed/jpct/FrameBuffer;->dispose()V

    return-void
.end method

.method public flush()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JFrameBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v0}, Lcom/threed/jpct/FrameBuffer;->flush()V

    return-void
.end method

.method public freeMemory()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JFrameBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v0}, Lcom/threed/jpct/FrameBuffer;->freeMemory()V

    return-void
.end method

.method public getCenterX()F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JFrameBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v0}, Lcom/threed/jpct/FrameBuffer;->getCenterX()F

    move-result v0

    return v0
.end method

.method public getCenterY()F
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JFrameBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v0}, Lcom/threed/jpct/FrameBuffer;->getCenterY()F

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JFrameBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v0}, Lcom/threed/jpct/FrameBuffer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getID()Ljava/lang/Long;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JFrameBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v0}, Lcom/threed/jpct/FrameBuffer;->getID()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getOpenGLMajorVersion()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JFrameBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v0}, Lcom/threed/jpct/FrameBuffer;->getOpenGLMajorVersion()I

    move-result v0

    return v0
.end method

.method public getPixels()[I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JFrameBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v0}, Lcom/threed/jpct/FrameBuffer;->getPixels()[I

    move-result-object v0

    return-object v0
.end method

.method public getPixels2([I)[I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JFrameBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/FrameBuffer;->getPixels([I)[I

    move-result-object p1

    return-object p1
.end method

.method public getWidth()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JFrameBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v0}, Lcom/threed/jpct/FrameBuffer;->getWidth()I

    move-result v0

    return v0
.end method

.method public isInit()Z
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JFrameBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v0}, Lcom/threed/jpct/FrameBuffer;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public removeAllPostProcessors()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JFrameBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v0}, Lcom/threed/jpct/FrameBuffer;->removeAllPostProcessors()V

    return-void
.end method

.method public removePostProcessor(Lcom/threed/jpct/IPostProcessor;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JFrameBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/FrameBuffer;->removePostProcessor(Lcom/threed/jpct/IPostProcessor;)V

    return-void
.end method

.method public removeRenderTarget()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JFrameBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v0}, Lcom/threed/jpct/FrameBuffer;->removeRenderTarget()V

    return-void
.end method

.method public runPostProcessors()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JFrameBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v0}, Lcom/threed/jpct/FrameBuffer;->runPostProcessors()V

    return-void
.end method

.method public setPaintListener(Lcom/threed/jpct/IPaintListener;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JFrameBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/FrameBuffer;->setPaintListener(Lcom/threed/jpct/IPaintListener;)V

    return-void
.end method

.method public setRenderTarget1(I)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JFrameBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/FrameBuffer;->setRenderTarget(I)V

    return-void
.end method

.method public setRenderTarget2(IIIIIZ)V
    .locals 8

    invoke-virtual {p0}, Ljpct/ae/wrapper/JFrameBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/threed/jpct/FrameBuffer;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/threed/jpct/FrameBuffer;->setRenderTarget(IIIIIZ)V

    return-void
.end method

.method public setRenderTarget3(Lcom/threed/jpct/Texture;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JFrameBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/FrameBuffer;->setRenderTarget(Lcom/threed/jpct/Texture;)V

    return-void
.end method

.method public setRenderTarget4(Lcom/threed/jpct/Texture;IIIIZ)V
    .locals 8

    invoke-virtual {p0}, Ljpct/ae/wrapper/JFrameBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/threed/jpct/FrameBuffer;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/threed/jpct/FrameBuffer;->setRenderTarget(Lcom/threed/jpct/Texture;IIIIZ)V

    return-void
.end method

.method public setVirtualDimensions(II)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JFrameBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/FrameBuffer;->setVirtualDimensions(II)V

    return-void
.end method

.method public sync()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JFrameBuffer;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/FrameBuffer;

    invoke-virtual {v0}, Lcom/threed/jpct/FrameBuffer;->sync()V

    return-void
.end method

.class public Ljpct/ae/wrapper/JGLSurfaceView;
.super Lanywheresoftware/b4a/objects/ViewWrapper;
.source "SourceFile"


# annotations
.annotation build Lanywheresoftware/b4a/BA$ActivityObject;
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctSurface"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/objects/ViewWrapper<",
        "Landroid/opengl/GLSurfaceView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lanywheresoftware/b4a/objects/ViewWrapper;-><init>()V

    return-void
.end method

.method public static final DEBUG_CHECK_GL_ERROR()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final DEBUG_LOG_GL_CALLS()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static final OPAQUE()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public static final RENDER_CONTINUOUSLY()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final RENDER_WHEN_DIRTY()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final RGBA_4444()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public static final RGBA_5551()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public static final RGBA_8888()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final RGBX_8888()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static final RGB_332()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public static final RGB_565()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static final RGB_888()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public static final TRANSLUCENT()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public static final TRANSPARENT()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method


# virtual methods
.method public BufferHeight()I
    .locals 1

    sget v0, Ljpct/ae/wrapper/JRenderer;->glHeight:I

    return v0
.end method

.method public BufferWidth()I
    .locals 1

    sget v0, Ljpct/ae/wrapper/JRenderer;->glWidth:I

    return v0
.end method

.method public Initialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->Initialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Z)V

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p3}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    :cond_0
    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/opengl/GLSurfaceView;

    new-instance v0, Ljpct/ae/wrapper/JRenderer;

    invoke-direct {v0, p1, p2}, Ljpct/ae/wrapper/JRenderer;-><init>(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/opengl/GLSurfaceView;

    invoke-virtual {p1, p4}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public Initialize1(Lanywheresoftware/b4a/BA;Ljava/lang/String;IZIZI)V
    .locals 8

    invoke-super {p0, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->Initialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/opengl/GLSurfaceView;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    invoke-virtual/range {v1 .. v7}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p3}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/opengl/GLSurfaceView;

    new-instance p4, Lcom/threed/jpct/util/AAConfigChooser;

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-direct {p4, v0}, Lcom/threed/jpct/util/AAConfigChooser;-><init>(Landroid/opengl/GLSurfaceView;)V

    invoke-virtual {p3, p4}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    :cond_0
    if-eqz p6, :cond_1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/opengl/GLSurfaceView;

    const/4 p4, 0x3

    invoke-virtual {p3, p4}, Landroid/opengl/GLSurfaceView;->setDebugFlags(I)V

    :cond_1
    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/opengl/GLSurfaceView;

    new-instance p4, Ljpct/ae/wrapper/JRenderer;

    invoke-direct {p4, p1, p2}, Ljpct/ae/wrapper/JRenderer;-><init>(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/opengl/GLSurfaceView;

    invoke-virtual {p1, p5}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/opengl/GLSurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p7}, Landroid/view/SurfaceHolder;->setFormat(I)V

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/opengl/GLSurfaceView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    return-void
.end method

.method public Initialize2(Lanywheresoftware/b4a/BA;Ljava/lang/String;IIZ)V
    .locals 1

    invoke-super {p0, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->Initialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/opengl/GLSurfaceView;

    const/4 v0, 0x3

    invoke-virtual {p5, v0}, Landroid/opengl/GLSurfaceView;->setDebugFlags(I)V

    :cond_0
    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/opengl/GLSurfaceView;

    new-instance v0, Ljpct/ae/wrapper/JGLSurfaceView$1;

    invoke-direct {v0, p0}, Ljpct/ae/wrapper/JGLSurfaceView$1;-><init>(Ljpct/ae/wrapper/JGLSurfaceView;)V

    invoke-virtual {p5, v0}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    const/4 p5, 0x2

    if-ne p3, p5, :cond_1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/opengl/GLSurfaceView;

    invoke-virtual {p5, p3}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    :cond_1
    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/opengl/GLSurfaceView;

    new-instance p5, Ljpct/ae/wrapper/JRenderer;

    invoke-direct {p5, p1, p2}, Ljpct/ae/wrapper/JRenderer;-><init>(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    invoke-virtual {p3, p5}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/opengl/GLSurfaceView;

    invoke-virtual {p1, p4}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public Initialize3(Lanywheresoftware/b4a/BA;Ljava/lang/String;IIIIIIIZIZI)V
    .locals 8

    move v0, p3

    invoke-super {p0, p1, p2}, Lanywheresoftware/b4a/objects/ViewWrapper;->Initialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    if-eqz p12, :cond_0

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/opengl/GLSurfaceView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->setDebugFlags(I)V

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1, p3}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    if-eqz p10, :cond_1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/threed/jpct/util/AAConfigChooser;

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/opengl/GLSurfaceView;

    invoke-direct {v1, v2}, Lcom/threed/jpct/util/AAConfigChooser;-><init>(Landroid/opengl/GLSurfaceView;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    :cond_1
    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/opengl/GLSurfaceView;

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-virtual/range {v1 .. v7}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    new-instance v1, Ljpct/ae/wrapper/JRenderer;

    move-object v2, p1

    move-object v3, p2

    invoke-direct {v1, p1, p2}, Ljpct/ae/wrapper/JRenderer;-><init>(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    move/from16 v1, p11

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    move/from16 v1, p13

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    return-void
.end method

.method public RequestRender()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method public SendArrayDataTo(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Ljpct/ae/wrapper/JGLSurfaceView;->ba:Lanywheresoftware/b4a/BA;

    sget-object v1, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lanywheresoftware/b4a/BA;->raiseEventFromDifferentThread(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public SendDataTo(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Ljpct/ae/wrapper/JGLSurfaceView;->ba:Lanywheresoftware/b4a/BA;

    sget-object v1, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lanywheresoftware/b4a/BA;->raiseEventFromDifferentThread(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/String;Z[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public destroyDrawingCache()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    return-void
.end method

.method public getDebugFlags()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getDebugFlags()I

    move-result v0

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getRenderMode()I

    move-result v0

    return v0
.end method

.method public glContext()Ljavax/microedition/khronos/opengles/GL10;
    .locals 1

    sget-object v0, Ljpct/ae/wrapper/JRenderer;->gl:Ljavax/microedition/khronos/opengles/GL10;

    return-object v0
.end method

.method public innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
    .locals 1
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    if-nez p3, :cond_0

    new-instance p3, Landroid/opengl/GLSurfaceView;

    iget-object v0, p1, Lanywheresoftware/b4a/BA;->context:Landroid/content/Context;

    invoke-direct {p3, v0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p3}, Ljpct/ae/wrapper/JGLSurfaceView;->setObject(Ljava/lang/Object;)V

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "_SurfaceTouch"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/opengl/GLSurfaceView;

    new-instance v0, Ljpct/ae/wrapper/JMultiTouch;

    invoke-direct {v0, p1, p2, p0}, Ljpct/ae/wrapper/JMultiTouch;-><init>(Lanywheresoftware/b4a/BA;Ljava/lang/String;Ljpct/ae/wrapper/JGLSurfaceView;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Sub "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_SurfaceTouch - Doesn\'t exist!"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "JPCT"

    invoke-static {v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p3, 0x1

    invoke-super {p0, p1, p2, p3}, Lanywheresoftware/b4a/objects/ViewWrapper;->innerInitialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    return-void
.end method

.method public setDebugFlags(I)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->setDebugFlags(I)V

    return-void
.end method

.method public setGLWrapper(Landroid/opengl/GLSurfaceView$GLWrapper;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSurfaceView;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->setGLWrapper(Landroid/opengl/GLSurfaceView$GLWrapper;)V

    return-void
.end method

.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;
.super Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;
.source "SourceFile"


# static fields
.field public static final S:Ljava/lang/String; = "UIWebView"

.field public static final T:Ljava/lang/Class;

.field public static final U:I = 0x18

.field public static final V:I = 0x1


# instance fields
.field public P:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

.field public Q:J

.field public R:LJAVARuntime/Component;

.field private allowHibernate:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private enableVirtualKeyboard:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private fps:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->T:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "UIWebView"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;-><init>(Ljava/lang/String;)V

    const-string v0, "https://google.com"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->url:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->enableVirtualKeyboard:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->allowHibernate:Z

    const/16 v0, 0x18

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->fps:I

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->url:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->fps:I

    return p0
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->enableVirtualKeyboard:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->allowHibernate:Z

    return p0
.end method

.method private ensureWebView(II)V
    .locals 3
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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->P:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->url:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->P:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->allowHibernate:Z

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->C(Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->P:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->getSafeFps()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->D(I)V

    return-void
.end method

.method private getSafeFps()I
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->fps:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private internalizePosition(Ltc/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIControllerComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v3, p1, LV9/r;

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2}, Ltc/h;->h(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getTouchPos(Ltc/h;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v2, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    :goto_0
    iget p1, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iput p1, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget p1, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    :cond_2
    :goto_1
    return-object v2
.end method

.method private requestDirtyAtWebViewFps()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->getSafeFps()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v4, v2

    iget-wide v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->Q:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->Q:J

    :cond_0
    return-void
.end method

.method private updateKeyboardRequest()V
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->enableVirtualKeyboard:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->P:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lrc/a;->e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lrc/a;->H(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    :goto_0
    return-void
.end method

.method private updateKeyboardToWebView()V
    .locals 7

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->enableVirtualKeyboard:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->P:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->w()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lrc/a;->t:Lrc/a$f;

    invoke-virtual {v0}, Lrc/a$f;->e()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v4, v0, v3

    sget-object v5, Lrc/a;->t:Lrc/a$f;

    invoke-virtual {v5, v4}, Lrc/a$f;->f(Ljava/lang/String;)Ltc/e;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ltc/e;->e()I

    move-result v5

    iget-boolean v6, v4, Ltc/e;->j:Z

    if-eqz v6, :cond_2

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->P:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->A(II)V

    goto :goto_1

    :cond_2
    iget-boolean v6, v4, Ltc/e;->d:Z

    if-nez v6, :cond_3

    iget-boolean v4, v4, Ltc/e;->e:Z

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->P:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    invoke-virtual {v4, v2, v5}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->A(II)V

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method private updateTouchToWebView()V
    .locals 4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;->getTouchTrigger()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->getSelectedTouch()Ltc/h;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->internalizePosition(Ltc/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v1

    invoke-virtual {v0}, Ltc/h;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->P:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->B(IFF)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ltc/h;->q()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->P:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->B(IFF)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ltc/h;->t()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->P:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2, v1}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->B(IFF)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public afterTouchUpdate()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->afterTouchUpdate()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->updateTouchToWebView()V

    return-void
.end method

.method public calculateInternalSizeEnd(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    return-void
.end method

.method public calculateInternalSizeStart(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v0

    int-to-float v0, v0

    float-to-int v6, p1

    float-to-int v7, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move v4, v6

    move v5, v7

    invoke-virtual/range {v1 .. v7}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->setInternalWidgetRect(IIIIII)V

    return-void
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->url:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->url:Ljava/lang/String;

    .line 4
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->enableVirtualKeyboard:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->enableVirtualKeyboard:Z

    .line 5
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->allowHibernate:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->allowHibernate:Z

    .line 6
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->fps:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->fps:I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getDependencyFiles(LIc/h;)LIc/k;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dependencyRequest"
        }
    .end annotation

    new-instance p1, LIc/k;

    invoke-direct {p1}, LIc/k;-><init>()V

    return-object p1
.end method

.method public getFps()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->fps:I

    return v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f07022d

    return v0
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    :cond_0
    if-nez p1, :cond_1

    return-object v0

    :cond_1
    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;)V

    const-string v2, "URL"

    sget-object v3, LC5/b$a;->SLString:LC5/b$a;

    invoke-direct {p1, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;)V

    const-string v2, "FPS"

    sget-object v3, LC5/b$a;->SLInt:LC5/b$a;

    invoke-direct {p1, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView$d;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;)V

    sget-object v2, LC5/b$a;->SLBoolean:LC5/b$a;

    const-string v3, "Enable android keyboard"

    invoke-direct {p1, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView$e;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;)V

    const-string v3, "Allow hibernate"

    invoke-direct {p1, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->P:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->u()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p1, LC5/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->P:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    invoke-direct {p1, v1, v2}, LC5/b;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public getLoadedUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->P:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTexture()Lub/p;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->P:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->t()Lub/l;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "WebView"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->url:Ljava/lang/String;

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isAllowHibernate()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->allowHibernate:Z

    return v0
.end method

.method public isEnableVirtualKeyboard()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->enableVirtualKeyboard:Z

    return v0
.end method

.method public onDetach()V
    .locals 1

    invoke-static {p0}, Lrc/a;->H(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->P:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->m()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->P:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    :cond_0
    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->onDetach()V

    return-void
.end method

.method public onGuiEnd(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    return-void
.end method

.method public onGuiStart(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativeSetCursorPos(FF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->getTexture()Lub/p;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lub/p;->J()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, LP9/a;->j()LV9/q;

    move-result-object p1

    invoke-virtual {p1}, LV9/q;->i()Lub/g;

    move-result-object p1

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->h0()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v2

    invoke-static {p1, v2, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->k(Lub/p;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FF)V

    return-void
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result p2

    const/4 v0, 0x1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->ensureWebView(II)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->P:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p2, p1}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->z(II)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->P:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->getSafeFps()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->D(I)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->P:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    iget-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->allowHibernate:Z

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->C(Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->P:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->F()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->updateKeyboardToWebView()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->updateKeyboardRequest()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->requestDirtyAtWebViewFps()V

    return-void
.end method

.method public reloadFilesPaths(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dictionary"
        }
    .end annotation

    return-void
.end method

.method public setAllowHibernate(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowHibernate"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->allowHibernate:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->allowHibernate:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->P:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->C(Z)V

    :cond_1
    return-void
.end method

.method public setEnableVirtualKeyboard(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableVirtualKeyboard"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->enableVirtualKeyboard:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->enableVirtualKeyboard:Z

    if-nez p1, :cond_1

    invoke-static {p0}, Lrc/a;->H(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    :cond_1
    return-void
.end method

.method public setFps(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fps"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->fps:I

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->P:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->D(I)V

    :cond_0
    return-void
.end method

.method public setRuntime(LJAVARuntime/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->R:LJAVARuntime/Component;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->url:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->url:Ljava/lang/String;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->P:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->x(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    return-void
.end method

.method public shouldTintIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->R:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/UIWebView;

    invoke-direct {v0, p0}, LJAVARuntime/UIWebView;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIWebView;->R:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

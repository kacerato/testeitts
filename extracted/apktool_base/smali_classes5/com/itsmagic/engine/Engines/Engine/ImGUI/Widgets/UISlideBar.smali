.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;
.super Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/UIPBarComponent;
.source "SourceFile"


# static fields
.field public static final Q:Ljava/lang/String; = "UISlideBar"

.field public static final R:Ljava/lang/Class;


# instance fields
.field public P:LJAVARuntime/Component;

.field private backgroundColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private backgroundH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private border:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private handlerColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private handlerH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private orientation:LR9/a;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private value:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->R:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-string v0, "UISlideBar"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/UIPBarComponent;-><init>(Ljava/lang/String;)V

    sget-object v0, LR9/a;->Horizontal:LR9/a;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->orientation:LR9/a;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->backgroundColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0xc5

    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->handlerColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->backgroundH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->handlerH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->border:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->value:F

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    return-void
.end method

.method public static synthetic access$002(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;LR9/a;)LR9/a;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->orientation:LR9/a;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->value:F

    return p0
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->backgroundColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->backgroundH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->handlerColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->handlerH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->border:F

    return p0
.end method

.method public static synthetic access$700(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    return-object p0
.end method


# virtual methods
.method public afterTouchUpdate()V
    .locals 8

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->afterTouchUpdate()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;->getTouchTrigger()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIControllerComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;->getTouchTrigger()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->getSelectedTouch()Ltc/h;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;->getTouchTrigger()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->isPressed()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;->getTouchTrigger()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->isDown()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;->getTouchTrigger()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->getSelectedTouch()Ltc/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getTouchPos(Ltc/h;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v5

    int-to-float v5, v5

    sget-object v6, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar$h;->a:[I

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->orientation:LR9/a;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_5

    const/4 v1, 0x2

    if-eq v6, v1, :cond_4

    goto :goto_0

    :cond_4
    int-to-float v0, v0

    sub-float/2addr v0, v3

    div-float/2addr v0, v5

    invoke-static {v0}, LNc/b;->I(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->setValue(F)V

    goto :goto_0

    :cond_5
    int-to-float v0, v1

    sub-float/2addr v0, v2

    div-float/2addr v0, v4

    invoke-static {v0}, LNc/b;->I(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->setValue(F)V

    :cond_6
    :goto_0
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
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;-><init>()V

    .line 3
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->border:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->border:F

    .line 4
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->value:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->value:F

    .line 5
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->backgroundColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->k(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->backgroundColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 6
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->backgroundH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->e()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->backgroundH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    .line 7
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->handlerColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->k(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->handlerColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 8
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->handlerH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->e()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->handlerH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    .line 9
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->a()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public countAsync()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getBackgroundColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->backgroundColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public getBackgroundSpriteIndex()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->backgroundH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->l()I

    move-result v0

    return v0
.end method

.method public getBackgroundTexture()Lub/p;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->backgroundH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->n()Lub/p;

    move-result-object v0

    return-object v0
.end method

.method public getBorder()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->border:F

    return v0
.end method

.method public getDependencyFiles(LIc/h;)LIc/k;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dependencyRequest"
        }
    .end annotation

    new-instance v0, LIc/k;

    invoke-direct {v0}, LIc/k;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->backgroundH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->g(LIc/h;)LIc/k;

    move-result-object p1

    iget-object v1, v0, LIc/k;->a:Ljava/util/List;

    iget-object p1, p1, LIc/k;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getHandlerColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->handlerColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public getHandlerSpriteIndex()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->handlerH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->l()I

    move-result v0

    return v0
.end method

.method public getHandlerTexture()Lub/p;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->handlerH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->n()Lub/p;

    move-result-object v0

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f07022d

    return v0
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 5
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
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->orientation:LR9/a;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar$b;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;)V

    const-string v3, "Orientation"

    const-class v4, LR9/a;

    invoke-static {v3, v4, v1, v2}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar$c;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;)V

    const-string v3, "Value"

    sget-object v4, LC5/b$a;->SLFloat01:LC5/b$a;

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    const-string v4, "value"

    invoke-virtual {v1, v2, p0, v4, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar$d;

    invoke-direct {v2, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;Landroid/content/Context;)V

    const-string v4, "Background"

    invoke-static {v1, v4, v2}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar$e;

    invoke-direct {v2, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;Landroid/content/Context;)V

    const-string p1, "Handler"

    invoke-static {v1, p1, v2}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar$f;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;)V

    const-string v2, "Border"

    sget-object v4, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {p1, v1, v2, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v2, "border"

    invoke-virtual {p1, v1, p0, v2, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object p1

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar$g;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;)V

    const-string v2, "Padding"

    invoke-static {p1, v2, v1}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getJRPaddingBottom()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->b()I

    move-result v0

    return v0
.end method

.method public getJRPaddingLeft()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->i()I

    move-result v0

    return v0
.end method

.method public getJRPaddingRight()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->j()I

    move-result v0

    return v0
.end method

.method public getJRPaddingTop()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->k()I

    move-result v0

    return v0
.end method

.method public getOrientation()LR9/a;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->orientation:LR9/a;

    return-object v0
.end method

.method public getProgressValue()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->value:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "SlideBar"

    return-object v0
.end method

.method public getValue()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->value:F

    return v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public loadAsync(LLb/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "),(DynamicJoystick),(Loading),(background)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, LLb/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->backgroundH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->q()V

    invoke-interface {p1}, LLb/a;->e()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "),(DynamicJoystick),(Loading),(handler)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, LLb/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->handlerH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->q()V

    invoke-interface {p1}, LLb/a;->e()V

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
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativeSetCursorPos(FF)V

    iget-object v8, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->backgroundColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->backgroundH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->n()Lub/p;

    move-result-object v1

    invoke-static {}, LP9/a;->j()LV9/q;

    move-result-object v2

    invoke-virtual {v2}, LV9/q;->j()Lub/g;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->or(Lub/p;Lub/p;)Lub/p;

    move-result-object v4

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->backgroundH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-static {}, LP9/a;->j()LV9/q;

    move-result-object v2

    invoke-virtual {v2}, LV9/q;->j()Lub/g;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->or9p(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;Lub/p;)Z

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v2

    int-to-float v11, v2

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v2

    int-to-float v12, v2

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->border:F

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(F)F

    move-result v5

    if-eqz v1, :cond_1

    const/4 v15, 0x1

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->backgroundH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    const-string v3, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    move-object/from16 v16, v1

    invoke-static/range {v3 .. v16}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->J(Ljava/lang/String;Lub/p;FFFLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFFJZLcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;)Z

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->backgroundH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-static {v4, v8, v11, v12, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->l(Lub/p;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFLcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;)V

    :goto_0
    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v1

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->g()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v2

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->d()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v3

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->h()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v1, v5

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v2, v5

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativeSetCursorPos(FF)V

    iget-object v10, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->handlerColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->handlerH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->n()Lub/p;

    move-result-object v1

    invoke-static {}, LP9/a;->j()LV9/q;

    move-result-object v2

    invoke-virtual {v2}, LV9/q;->k()Lub/g;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->or(Lub/p;Lub/p;)Lub/p;

    move-result-object v6

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->handlerH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-static {}, LP9/a;->j()LV9/q;

    move-result-object v2

    invoke-virtual {v2}, LV9/q;->k()Lub/g;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->or9p(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;Lub/p;)Z

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v3

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar$h;->a:[I

    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->orientation:LR9/a;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    :goto_1
    move v13, v2

    move v14, v3

    goto :goto_2

    :cond_2
    iget v4, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->value:F

    mul-float/2addr v3, v4

    goto :goto_1

    :cond_3
    iget v4, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->value:F

    mul-float/2addr v2, v4

    goto :goto_1

    :goto_2
    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->border:F

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(F)F

    move-result v7

    if-eqz v1, :cond_4

    const/16 v17, 0x1

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->handlerH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    const-string v5, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 v18, v1

    invoke-static/range {v5 .. v18}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->J(Ljava/lang/String;Lub/p;FFFLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFFJZLcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;)Z

    goto :goto_3

    :cond_4
    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->handlerH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-static {v6, v10, v13, v14, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->l(Lub/p;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FFLcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;)V

    :goto_3
    return-void
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 0
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

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->backgroundH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getRequestUIDirtyRunnable()Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->f(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->handlerH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getRequestUIDirtyRunnable()Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reloadFilesPaths(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dictionary"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->backgroundH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->s(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V

    return-void
.end method

.method public setBackgroundColor(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backgroundColor"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->backgroundColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    if-ne v0, v1, :cond_2

    :cond_1
    return-void

    :cond_2
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->backgroundColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    return-void
.end method

.method public setBackgroundSpriteIndex(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spriteIndex"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->backgroundH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->l()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->backgroundH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->w(I)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    return-void
.end method

.method public setBackgroundTexture(Lub/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texture"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->backgroundH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->n()Lub/p;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->backgroundH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->x(Lub/p;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    return-void
.end method

.method public setBorder(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "border"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->border:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->border:F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    return-void
.end method

.method public setHandlerColor(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handlerColor"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->handlerColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    if-ne v0, v1, :cond_2

    :cond_1
    return-void

    :cond_2
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->handlerColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    return-void
.end method

.method public setHandlerSpriteIndex(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spriteIndex"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->handlerH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->l()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->handlerH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->w(I)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    return-void
.end method

.method public setHandlerTexture(Lub/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texture"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->handlerH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->n()Lub/p;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->handlerH:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/UIImageHandler;->x(Lub/p;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    return-void
.end method

.method public setJRPaddingBottom(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->b()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->o(I)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    return-void
.end method

.method public setJRPaddingLeft(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->i()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->p(I)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    return-void
.end method

.method public setJRPaddingRight(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->j()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->q(I)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    return-void
.end method

.method public setJRPaddingTop(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->k()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->r(I)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    return-void
.end method

.method public setOrientation(LR9/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->orientation:LR9/a;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->orientation:LR9/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->P:LJAVARuntime/Component;

    return-void
.end method

.method public setValue(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    invoke-static {p1}, LNc/b;->I(F)F

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->value:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->value:F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->requestUIDirty()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    return-void
.end method

.method public shouldTintIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->P:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/UISlideBar;

    invoke-direct {v0, p0}, LJAVARuntime/UISlideBar;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UISlideBar;->P:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;
.super Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;
.source "SourceFile"


# static fields
.field public static final X:Ljava/lang/String; = "UIFlexLayout"

.field public static final Y:Ljava/lang/Class;


# instance fields
.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:LJAVARuntime/Component;

.field private spacing:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->Y:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "UIFlexLayout"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x8

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->spacing:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->P:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->Q:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->R:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->S:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->T:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->U:I

    const v0, 0x3fffffff    # 1.9999999f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->V:I

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->spacing:I

    return p0
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;-><init>()V

    .line 3
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->spacing:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->spacing:I

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f070231

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

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    :cond_0
    if-nez p1, :cond_1

    return-object v0

    :cond_1
    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;)V

    sget-object v2, LC5/b$a;->SLInt:LC5/b$a;

    const-string v3, "spacing"

    invoke-direct {p1, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->INT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {p1, v1, p0, v3, v2}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getSpacing()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->spacing:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "FlexLayout"

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIFlexLayout:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public onChildInfluence(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "controller",
            "child"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;->onChildInfluence(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->P:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->V:I

    if-lez v1, :cond_0

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->R:I

    add-int v4, v3, p1

    if-le v4, v1, :cond_0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->spacing:I

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->U:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->U:I

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->R:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->S:I

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->T:I

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->spacing:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->S:I

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->T:I

    :cond_0
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v1

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->R:I

    add-int/2addr v1, v3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v3

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->S:I

    add-int/2addr v3, v4

    invoke-virtual {p2, v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setGlobalPosition(IIZ)Z

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->R:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->spacing:I

    add-int/2addr p1, v1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->R:I

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->T:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->T:I

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->P:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->P:I

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->Q:I

    if-lt p1, p2, :cond_2

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->R:I

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->spacing:I

    sub-int/2addr p1, p2

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->U:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->U:I

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->S:I

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->T:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->isAutoSW()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getPadding()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->U:I

    add-int/2addr v1, v0

    invoke-virtual {p2, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setGlobalWidth(I)Z

    :cond_1
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->isAutoSH()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getPadding()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setGlobalHeight(I)Z

    :cond_2
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->W:LJAVARuntime/Component;

    return-void
.end method

.method public setSpacing(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spacing"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->spacing:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->spacing:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    return-void
.end method

.method public shouldTintIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public startChildInfluence(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    const/4 p1, 0x0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->P:I

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->Q:I

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->R:I

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->S:I

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->T:I

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->U:I

    const v0, 0x3fffffff    # 1.9999999f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->V:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_5

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    move v1, p1

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIRect:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->Q:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->Q:I

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->isAutoSW()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getPadding()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->d()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->V:I

    if-gez v0, :cond_5

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->V:I

    :cond_5
    :goto_2
    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->W:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/UIFlexLayout;

    invoke-direct {v0, p0}, LJAVARuntime/UIFlexLayout;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIFlexLayout;->W:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

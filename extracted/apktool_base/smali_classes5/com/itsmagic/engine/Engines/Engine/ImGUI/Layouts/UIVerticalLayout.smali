.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;
.super Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;
.source "SourceFile"


# static fields
.field public static final W:Ljava/lang/String; = "UIVerticalLayout"

.field public static final X:Ljava/lang/Class;


# instance fields
.field public P:I

.field public Q:I

.field public R:I

.field public S:F

.field public T:I

.field public U:I

.field public V:LJAVARuntime/Component;

.field private spacing:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->X:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "UIVerticalLayout"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x8

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->spacing:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->P:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->Q:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->R:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->S:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->T:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->U:I

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->spacing:I

    return p0
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;-><init>()V

    .line 3
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->spacing:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->spacing:I

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

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

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;)V

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

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->spacing:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "VerticalLayout"

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIVerticalLayout:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public measureChildInfluence(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V
    .locals 4
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

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;->measureChildInfluence(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v0

    iget-object v1, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIWeight:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIWeight;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIWeight;->getWeight()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->S:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->R:I

    if-lez v2, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIWeight;->getWeight()F

    move-result v1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->R:I

    int-to-float v2, v2

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->S:F

    div-float v3, v1, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->R:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->R:I

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->S:F

    sub-float/2addr v3, v1

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->S:F

    if-eqz v2, :cond_1

    add-int/2addr p1, v2

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setGlobalHeight(I)Z

    :cond_1
    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->Q:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->spacing:I

    add-int/2addr p1, v1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->Q:I

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->T:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->T:I

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->U:I

    if-le v0, p1, :cond_2

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->U:I

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->isAutoSH()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getPadding()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->h()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result p1

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->Q:I

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->T:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->spacing:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    sub-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v0

    add-int/2addr p2, p1

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setGlobalHeight(I)Z

    :cond_4
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->isAutoSW()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getPadding()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->U:I

    add-int/2addr v0, p1

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setGlobalWidth(I)Z

    :cond_5
    return-void
.end method

.method public onChildInfluence(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V
    .locals 4
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

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v0

    iget-object v1, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIWeight:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIWeight;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIWeight;->getWeight()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->S:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->R:I

    if-lez v2, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIWeight;->getWeight()F

    move-result v1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->R:I

    int-to-float v2, v2

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->S:F

    div-float v3, v1, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->R:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->R:I

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->S:F

    sub-float/2addr v3, v1

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->S:F

    if-eqz v2, :cond_1

    add-int/2addr p1, v2

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setGlobalHeight(I)Z

    :cond_1
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v2

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->P:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setGlobalPosition(IIZ)Z

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->P:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->spacing:I

    add-int v2, p1, v1

    add-int/2addr p2, v2

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->P:I

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->Q:I

    add-int/2addr p1, v1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->Q:I

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->T:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->T:I

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->U:I

    if-le v0, p1, :cond_2

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->U:I

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->isAutoSH()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getPadding()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->h()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result p1

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->Q:I

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->T:I

    if-lez v0, :cond_3

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->spacing:I

    :cond_3
    sub-int/2addr p2, v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v0

    add-int/2addr p2, p1

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setGlobalHeight(I)Z

    :cond_4
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->isAutoSW()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getPadding()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->U:I

    add-int/2addr v0, p1

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setGlobalWidth(I)Z

    :cond_5
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->V:LJAVARuntime/Component;

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

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->spacing:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->spacing:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    return-void
.end method

.method public shouldTintIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public startChildInfluence(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    const/4 p1, 0x0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->P:I

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->Q:I

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->R:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->S:F

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->U:I

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->T:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->isAutoSH()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    move v2, p1

    move v3, v2

    move v4, v0

    :goto_0
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v5

    if-ge p1, v5, :cond_5

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v5, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_3

    :cond_1
    sget-object v6, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIRect:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v5, v6}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    if-nez v6, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->isAutoSH()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v6

    :goto_1
    add-int/2addr v3, v6

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getLocalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v6

    goto :goto_1

    :goto_2
    sget-object v6, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIWeight:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v5, v6}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIWeight;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIWeight;->getWeight()F

    move-result v6

    cmpl-float v6, v6, v0

    if-lez v6, :cond_4

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIWeight;->getWeight()F

    move-result v5

    add-float/2addr v4, v5

    :cond_4
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_7

    cmpg-float p1, v4, v0

    if-gtz p1, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getPadding()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->h()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result p1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v0

    sub-int/2addr v0, p1

    sub-int/2addr v0, v3

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->spacing:I

    mul-int/2addr v2, p1

    sub-int/2addr v0, v2

    if-lez v0, :cond_7

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->R:I

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->S:F

    :cond_7
    :goto_4
    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->V:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/UIVerticalLayout;

    invoke-direct {v0, p0}, LJAVARuntime/UIVerticalLayout;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIVerticalLayout;->V:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

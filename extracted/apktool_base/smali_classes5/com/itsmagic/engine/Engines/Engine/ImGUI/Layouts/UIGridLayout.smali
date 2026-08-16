.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;
.super Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;
.source "SourceFile"


# static fields
.field public static final W:Ljava/lang/String; = "UIGridLayout"

.field public static final X:Ljava/lang/Class;


# instance fields
.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:LJAVARuntime/Component;

.field private autoColumns:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private columns:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private spacing:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->X:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "UIGridLayout"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x8

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->spacing:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->columns:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->autoColumns:Z

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->P:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->Q:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->R:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->S:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->T:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->U:I

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->spacing:I

    return p0
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->columns:I

    return p0
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->autoColumns:Z

    return p0
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;-><init>()V

    .line 3
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->spacing:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->spacing:I

    .line 4
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->columns:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->columns:I

    .line 5
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->autoColumns:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->autoColumns:Z

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getColumns()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->columns:I

    return v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f070231

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

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;)V

    sget-object v2, LC5/b$a;->SLInt:LC5/b$a;

    const-string v3, "spacing"

    invoke-direct {p1, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->INT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {p1, v1, p0, v3, v4}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;)V

    const-string v3, "columns"

    invoke-direct {p1, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1, v1, p0, v3, v4}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout$d;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;)V

    const-string v2, "auto columns"

    sget-object v3, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {p1, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getRows()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->U:I

    return v0
.end method

.method public getSpacing()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->spacing:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "GridLayout"

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIGridLayout:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public isAutoColumns()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->autoColumns:Z

    return v0
.end method

.method public onChildInfluence(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V
    .locals 3
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

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->P:I

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->T:I

    rem-int v1, p1, v0

    div-int/2addr p1, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->R:I

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->spacing:I

    add-int/2addr v0, v2

    mul-int/2addr v1, v0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->S:I

    add-int/2addr v0, v2

    mul-int/2addr p1, v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v1

    add-int/2addr v1, p1

    const/4 p1, 0x0

    invoke-virtual {p2, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setGlobalPosition(IIZ)Z

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->P:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->P:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->isAutoSW()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getPadding()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->d()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result p2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->T:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->R:I

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->spacing:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setGlobalWidth(I)Z

    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->isAutoSH()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getPadding()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->h()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result p2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->U:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->S:I

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->spacing:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setGlobalHeight(I)Z

    :cond_2
    return-void
.end method

.method public setAutoColumns(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoColumns"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->autoColumns:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->autoColumns:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    return-void
.end method

.method public setColumns(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "columns"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->columns:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->columns:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->V:LJAVARuntime/Component;

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

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->spacing:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->spacing:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    return-void
.end method

.method public shouldTintIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public startChildInfluence(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    const/4 p1, 0x0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->P:I

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->Q:I

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->R:I

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->S:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->T:I

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->U:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    move v2, p1

    :goto_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIRect:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->Q:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->Q:I

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->R:I

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->R:I

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->S:I

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->S:I

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->columns:I

    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->autoColumns:Z

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->isAutoSW()Z

    move-result v3

    if-nez v3, :cond_5

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->R:I

    if-lez v3, :cond_5

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getPadding()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->d()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v1

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->R:I

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->spacing:I

    add-int/2addr v2, v3

    if-lez v1, :cond_6

    if-lez v2, :cond_6

    add-int/2addr v1, v3

    div-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v2, v1

    goto :goto_2

    :cond_5
    if-gtz v2, :cond_7

    :cond_6
    move v2, v0

    :cond_7
    :goto_2
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->T:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->Q:I

    if-lez v1, :cond_8

    int-to-double v1, v1

    int-to-double v3, v0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->U:I

    goto :goto_3

    :cond_8
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->U:I

    :cond_9
    :goto_3
    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->V:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/UIGridLayout;

    invoke-direct {v0, p0}, LJAVARuntime/UIGridLayout;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIGridLayout;->V:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

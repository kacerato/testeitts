.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;
.super Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;
.source "SourceFile"


# static fields
.field public static final Q:Ljava/lang/String; = "UIFitParent"

.field public static final R:Ljava/lang/Class;


# instance fields
.field public P:LJAVARuntime/Component;

.field private h:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private w:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;->R:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "UIFitParent"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;->w:Z

    .line 3
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;->h:Z

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "w",
            "h"
        }
    .end annotation

    .line 4
    const-string v0, "UIFitParent"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;-><init>(Ljava/lang/String;)V

    .line 5
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;->w:Z

    .line 6
    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;->h:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;->w:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;->h:Z

    return p0
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;-><init>()V

    .line 3
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;->w:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;->w:Z

    .line 4
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;->h:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;->h:Z

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f070060

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

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;)V

    sget-object v2, LC5/b$a;->SLBoolean:LC5/b$a;

    const-string v3, "Fit width"

    invoke-direct {p1, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;)V

    const-string v3, "Fit height"

    invoke-direct {p1, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "FitParent"

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIFitParent:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isFitHeight()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;->h:Z

    return v0
.end method

.method public isFitWidth()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;->w:Z

    return v0
.end method

.method public onLayout(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 16
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
    invoke-super/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v1

    invoke-super/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIControllerScreenRect()LW9/c;

    move-result-object v2

    invoke-super/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getParent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getParentPadding()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    invoke-virtual {v2}, LW9/c;->c()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2}, LW9/c;->b()I

    move-result v2

    int-to-float v2, v2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v2

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v5

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v3

    int-to-float v3, v3

    goto :goto_0

    :cond_2
    move v3, v2

    move v7, v5

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->e()I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v10

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->f()I

    move-result v11

    invoke-virtual {v0, v11}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v11

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->g()I

    move-result v12

    invoke-virtual {v0, v12}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v12

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->c()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v4

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getMargin()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->e()I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v13

    add-int/2addr v13, v10

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getMargin()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->f()I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v10

    add-int/2addr v10, v11

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getMargin()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->g()I

    move-result v11

    invoke-virtual {v0, v11}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v11

    add-int/2addr v11, v12

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getMargin()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->c()I

    move-result v12

    invoke-virtual {v0, v12}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v12

    add-int/2addr v12, v4

    int-to-float v4, v2

    int-to-float v14, v5

    iget-boolean v15, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;->w:Z

    const/4 v6, 0x0

    if-eqz v15, :cond_3

    if-eqz v15, :cond_3

    add-int/2addr v2, v13

    int-to-float v2, v2

    int-to-float v4, v13

    sub-float/2addr v7, v4

    int-to-float v4, v10

    sub-float/2addr v7, v4

    float-to-int v4, v7

    invoke-virtual {v1, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setGlobalWidth(I)Z

    goto :goto_1

    :cond_3
    if-eqz v15, :cond_5

    :cond_4
    add-int/2addr v2, v13

    int-to-float v2, v2

    goto :goto_1

    :cond_5
    if-eqz v15, :cond_4

    sub-float/2addr v7, v8

    invoke-static {v6, v7}, LNc/b;->M(FF)F

    move-result v2

    add-float/2addr v4, v2

    int-to-float v2, v10

    sub-float v2, v4, v2

    :goto_1
    iget-boolean v4, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;->h:Z

    if-eqz v4, :cond_6

    if-eqz v4, :cond_6

    add-int/2addr v5, v11

    int-to-float v4, v5

    int-to-float v5, v11

    sub-float/2addr v3, v5

    int-to-float v5, v12

    sub-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setGlobalHeight(I)Z

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_8

    :cond_7
    add-int/2addr v5, v11

    int-to-float v4, v5

    goto :goto_2

    :cond_8
    if-eqz v4, :cond_7

    sub-float/2addr v3, v9

    invoke-static {v6, v3}, LNc/b;->M(FF)F

    move-result v3

    add-float/2addr v14, v3

    int-to-float v3, v12

    sub-float v4, v14, v3

    :goto_2
    invoke-static {v2}, LNc/b;->j1(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v4}, LNc/b;->j1(F)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setGlobalPosition(IIZ)Z

    return-void
.end method

.method public setFitHeight(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "h"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;->h:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;->h:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    return-void
.end method

.method public setFitWidth(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "w"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;->w:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;->w:Z

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;->P:LJAVARuntime/Component;

    return-void
.end method

.method public shouldTintIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;->P:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/UIFitParent;

    invoke-direct {v0, p0}, LJAVARuntime/UIFitParent;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIFitParent;->P:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

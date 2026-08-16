.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;
.super Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;
.source "SourceFile"


# static fields
.field public static final Q:Ljava/lang/String; = "UIAlignment"

.field public static final R:Ljava/lang/Class;


# instance fields
.field public P:LJAVARuntime/Component;

.field private anchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->R:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "UIAlignment"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->anchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;

    return-void
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->anchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->a()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->anchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f070060

    return v0
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->getInspectorEntries(Landroid/content/Context;LT9/a;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getInspectorEntries(Landroid/content/Context;LT9/a;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "LT9/a;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    :cond_0
    if-nez p1, :cond_1

    return-object v0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->anchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment$b;

    invoke-direct {v2, p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;LT9/a;)V

    invoke-virtual {v1, p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->b(Landroid/content/Context;LT9/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getLayoutLayer()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "Alignment"

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIAlignment:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isBottomCenterEnabled()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->anchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->bc:Z

    return v0
.end method

.method public isBottomLeftEnabled()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->anchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->bl:Z

    return v0
.end method

.method public isBottomRightEnabled()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->anchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->br:Z

    return v0
.end method

.method public isCenterEnabled()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->anchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cc:Z

    return v0
.end method

.method public isCenterLeftEnabled()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->anchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cl:Z

    return v0
.end method

.method public isCenterRightEnabled()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->anchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cr:Z

    return v0
.end method

.method public isTopCenterEnabled()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->anchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tc:Z

    return v0
.end method

.method public isTopLeftEnabled()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->anchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tl:Z

    return v0
.end method

.method public isTopRightEnabled()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->anchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tr:Z

    return v0
.end method

.method public onLayout(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
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

    move-result-object v8

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->isAutoSW()Z

    move-result v9

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->isAutoSH()Z

    move-result v3

    goto :goto_0

    :cond_2
    move v8, v2

    move v7, v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->e()I

    move-result v12

    invoke-virtual {v0, v12}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v12

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->f()I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v13

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->g()I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v14

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->c()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v4

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getMargin()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object v15

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->e()I

    move-result v15

    invoke-virtual {v0, v15}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v15

    add-int/2addr v15, v12

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getMargin()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->f()I

    move-result v12

    invoke-virtual {v0, v12}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v12

    add-int/2addr v12, v13

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getMargin()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->g()I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v13

    add-int/2addr v13, v14

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getMargin()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object v14

    invoke-virtual {v14}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->c()I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v14

    add-int/2addr v14, v4

    int-to-float v4, v2

    int-to-float v6, v5

    move/from16 v16, v11

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->anchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;

    move/from16 v17, v6

    iget-boolean v6, v11, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tl:Z

    const/16 v18, 0x1

    if-nez v6, :cond_4

    iget-boolean v6, v11, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cl:Z

    if-nez v6, :cond_4

    iget-boolean v6, v11, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->bl:Z

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    move/from16 v19, v14

    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move/from16 v19, v14

    move/from16 v6, v18

    :goto_2
    iget-boolean v14, v11, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tr:Z

    if-nez v14, :cond_6

    iget-boolean v14, v11, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cr:Z

    if-nez v14, :cond_6

    iget-boolean v14, v11, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->br:Z

    if-eqz v14, :cond_5

    goto :goto_3

    :cond_5
    move/from16 v20, v8

    const/4 v14, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    move/from16 v20, v8

    move/from16 v14, v18

    :goto_4
    iget-boolean v8, v11, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tc:Z

    if-nez v8, :cond_8

    iget-boolean v8, v11, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cc:Z

    if-nez v8, :cond_8

    iget-boolean v8, v11, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->bc:Z

    if-eqz v8, :cond_7

    goto :goto_5

    :cond_7
    const/4 v8, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    move/from16 v8, v18

    :goto_6
    const/4 v11, 0x0

    const/high16 v21, 0x40000000    # 2.0f

    if-eqz v6, :cond_9

    if-eqz v14, :cond_9

    if-nez v9, :cond_e

    add-int/2addr v2, v15

    int-to-float v4, v2

    int-to-float v2, v15

    sub-float/2addr v7, v2

    int-to-float v2, v12

    sub-float/2addr v7, v2

    float-to-int v2, v7

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setGlobalWidth(I)Z

    goto :goto_7

    :cond_9
    if-eqz v6, :cond_a

    if-eqz v8, :cond_a

    add-int/2addr v2, v15

    int-to-float v4, v2

    div-float v7, v7, v21

    int-to-float v2, v15

    sub-float/2addr v7, v2

    int-to-float v2, v12

    sub-float/2addr v7, v2

    float-to-int v2, v7

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setGlobalWidth(I)Z

    goto :goto_7

    :cond_a
    if-eqz v14, :cond_b

    if-eqz v8, :cond_b

    div-float v7, v7, v21

    add-float/2addr v4, v7

    int-to-float v2, v15

    add-float/2addr v4, v2

    sub-float/2addr v7, v2

    int-to-float v2, v12

    sub-float/2addr v7, v2

    float-to-int v2, v7

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setGlobalWidth(I)Z

    goto :goto_7

    :cond_b
    if-eqz v6, :cond_c

    add-int/2addr v2, v15

    int-to-float v4, v2

    goto :goto_7

    :cond_c
    if-eqz v14, :cond_d

    sub-float/2addr v7, v10

    invoke-static {v11, v7}, LNc/b;->M(FF)F

    move-result v2

    add-float/2addr v4, v2

    int-to-float v2, v12

    sub-float/2addr v4, v2

    goto :goto_7

    :cond_d
    if-eqz v8, :cond_e

    sub-float/2addr v7, v10

    invoke-static {v11, v7}, LNc/b;->M(FF)F

    move-result v2

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v2, v6

    add-float/2addr v4, v2

    :cond_e
    :goto_7
    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->anchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;

    iget-boolean v6, v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tl:Z

    if-nez v6, :cond_10

    iget-boolean v6, v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tc:Z

    if-nez v6, :cond_10

    iget-boolean v6, v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tr:Z

    if-eqz v6, :cond_f

    goto :goto_8

    :cond_f
    const/4 v6, 0x0

    goto :goto_9

    :cond_10
    :goto_8
    move/from16 v6, v18

    :goto_9
    iget-boolean v7, v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->bl:Z

    if-nez v7, :cond_12

    iget-boolean v7, v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->bc:Z

    if-nez v7, :cond_12

    iget-boolean v7, v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->br:Z

    if-eqz v7, :cond_11

    goto :goto_a

    :cond_11
    const/4 v7, 0x0

    goto :goto_b

    :cond_12
    :goto_a
    move/from16 v7, v18

    :goto_b
    iget-boolean v8, v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cl:Z

    if-nez v8, :cond_14

    iget-boolean v8, v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cc:Z

    if-nez v8, :cond_14

    iget-boolean v2, v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cr:Z

    if-eqz v2, :cond_13

    goto :goto_c

    :cond_13
    const/16 v18, 0x0

    :cond_14
    :goto_c
    if-eqz v6, :cond_15

    if-eqz v7, :cond_15

    if-nez v3, :cond_1a

    add-int/2addr v5, v13

    int-to-float v6, v5

    int-to-float v2, v13

    sub-float v8, v20, v2

    move/from16 v14, v19

    int-to-float v2, v14

    sub-float/2addr v8, v2

    float-to-int v2, v8

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setGlobalHeight(I)Z

    goto :goto_d

    :cond_15
    move/from16 v14, v19

    if-eqz v6, :cond_16

    if-eqz v18, :cond_16

    add-int/2addr v5, v13

    int-to-float v6, v5

    div-float v8, v20, v21

    int-to-float v2, v13

    sub-float/2addr v8, v2

    int-to-float v2, v14

    sub-float/2addr v8, v2

    float-to-int v2, v8

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setGlobalHeight(I)Z

    goto :goto_d

    :cond_16
    if-eqz v7, :cond_17

    if-eqz v18, :cond_17

    div-float v8, v20, v21

    add-float v6, v17, v8

    int-to-float v2, v13

    add-float/2addr v6, v2

    sub-float/2addr v8, v2

    int-to-float v2, v14

    sub-float/2addr v8, v2

    float-to-int v2, v8

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setGlobalHeight(I)Z

    goto :goto_d

    :cond_17
    if-eqz v6, :cond_18

    add-int/2addr v5, v13

    int-to-float v6, v5

    goto :goto_d

    :cond_18
    if-eqz v7, :cond_19

    sub-float v8, v20, v16

    invoke-static {v11, v8}, LNc/b;->M(FF)F

    move-result v2

    add-float v6, v17, v2

    int-to-float v2, v14

    sub-float/2addr v6, v2

    goto :goto_d

    :cond_19
    if-eqz v18, :cond_1a

    sub-float v8, v20, v16

    invoke-static {v11, v8}, LNc/b;->M(FF)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    add-float v6, v17, v2

    goto :goto_d

    :cond_1a
    move/from16 v6, v17

    :goto_d
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getLocalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v4, v2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getLocalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v6, v2

    invoke-static {v4}, LNc/b;->j1(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v6}, LNc/b;->j1(F)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setGlobalPosition(IIZ)Z

    return-void
.end method

.method public setBottomCenterEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bottomCenter"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->anchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->bc:Z

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->bc:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    return-void
.end method

.method public setBottomLeftEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bottomLeft"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->anchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->bl:Z

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->bl:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    return-void
.end method

.method public setBottomRightEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bottomRight"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->anchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->br:Z

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->br:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    return-void
.end method

.method public setCenterEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "center"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->anchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cc:Z

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cc:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    return-void
.end method

.method public setCenterLeftEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "centerLeft"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->anchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cl:Z

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cl:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    return-void
.end method

.method public setCenterRightEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "centerRight"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->anchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cr:Z

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->cr:Z

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->P:LJAVARuntime/Component;

    return-void
.end method

.method public setTopCenterEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "topCenter"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->anchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tc:Z

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tc:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    return-void
.end method

.method public setTopLeftEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "topLeft"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->anchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tl:Z

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tl:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    return-void
.end method

.method public setTopRightEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "topRight"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->anchor:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tr:Z

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/Anchor;->tr:Z

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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->P:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/UIAlignment;

    invoke-direct {v0, p0}, LJAVARuntime/UIAlignment;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAlignment;->P:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

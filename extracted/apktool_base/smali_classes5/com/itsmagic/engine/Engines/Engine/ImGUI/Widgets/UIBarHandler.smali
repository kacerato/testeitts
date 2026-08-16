.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler;
.super Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler$d;
    }
.end annotation


# static fields
.field public static final Q:Ljava/lang/String; = "UIBarHandler"

.field public static final R:Ljava/lang/Class;


# instance fields
.field public P:LJAVARuntime/Component;

.field private align:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler$d;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler;->R:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "UIBarHandler"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler$d;->End:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler$d;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler;->align:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler$d;

    return-void
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler;->align:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler$d;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler;->align:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler$d;

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getAlign()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler$d;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler;->align:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler$d;

    return-object v0
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

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    :cond_0
    if-nez p1, :cond_1

    return-object v0

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler;->align:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler$d;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler;)V

    const-string v2, "Align"

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler$d;

    invoke-static {v2, v3, p1, v1}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "BarHandler"

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onLayout(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 17
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

    invoke-super/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getParent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v2

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/UIPBarComponent;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/UIPBarComponent;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/UIPBarComponent;->getProgressValue()F

    move-result v3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/UIPBarComponent;->getOrientation()LR9/a;

    move-result-object v4

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v2

    int-to-float v2, v2

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

    const/high16 v10, 0x40000000    # 2.0f

    div-float v11, v7, v10

    div-float v12, v2, v10

    iget-object v13, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler;->align:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler$d;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eqz v13, :cond_3

    if-eq v13, v15, :cond_1

    goto :goto_0

    :cond_1
    sget-object v13, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler$c;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aget v13, v13, v16

    if-eq v13, v15, :cond_6

    if-eq v13, v14, :cond_2

    goto :goto_0

    :cond_2
    mul-float/2addr v3, v2

    sub-float v12, v3, v9

    goto :goto_0

    :cond_3
    sget-object v13, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler$c;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aget v13, v13, v16

    const/high16 v16, 0x3f000000    # 0.5f

    if-eq v13, v15, :cond_5

    if-eq v13, v14, :cond_4

    goto :goto_0

    :cond_4
    mul-float v3, v3, v16

    mul-float v12, v2, v3

    goto :goto_0

    :cond_5
    mul-float v3, v3, v16

    :cond_6
    mul-float v11, v7, v3

    :goto_0
    add-float/2addr v11, v5

    div-float v3, v8, v10

    sub-float/2addr v11, v3

    add-float/2addr v12, v6

    div-float v3, v9, v10

    sub-float/2addr v12, v3

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler;->align:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler$d;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eq v3, v15, :cond_7

    goto :goto_1

    :cond_7
    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler$c;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v15, :cond_a

    if-eq v3, v14, :cond_8

    goto :goto_1

    :cond_8
    cmpg-float v3, v12, v6

    if-gez v3, :cond_9

    move v12, v6

    :cond_9
    add-float/2addr v6, v2

    sub-float v2, v6, v9

    cmpl-float v3, v12, v2

    if-lez v3, :cond_c

    move v12, v2

    goto :goto_1

    :cond_a
    cmpg-float v2, v11, v5

    if-gez v2, :cond_b

    move v11, v5

    :cond_b
    add-float/2addr v5, v7

    sub-float v2, v5, v8

    cmpl-float v3, v11, v2

    if-lez v3, :cond_c

    move v11, v2

    :cond_c
    :goto_1
    invoke-static {v11}, LNc/b;->j1(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v12}, LNc/b;->j1(F)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setGlobalPosition(IIZ)Z

    :cond_d
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

    return-void
.end method

.method public setAlign(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler$d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "align"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler;->align:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler$d;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler;->align:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler$d;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "align can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler;->P:LJAVARuntime/Component;

    return-void
.end method

.method public shouldTintIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler;->P:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/UIBarHandler;

    invoke-direct {v0, p0}, LJAVARuntime/UIBarHandler;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIBarHandler;->P:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

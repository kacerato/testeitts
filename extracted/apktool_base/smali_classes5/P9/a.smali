.class public LP9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LP9/a$c;,
        LP9/a$d;,
        LP9/a$b;
    }
.end annotation


# static fields
.field public static final a:I = 0x32

.field public static final b:I = 0x1

.field public static final c:Z = false

.field public static final d:Z = false

.field public static final e:I = 0x10

.field public static f:Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;

.field public static final g:LV9/q;

.field public static final h:LS9/h;

.field public static i:I

.field public static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LP9/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public static k:J

.field public static l:I

.field public static m:I

.field public static n:I

.field public static final o:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:Ltb/b;

.field public static q:Z

.field public static r:Z

.field public static s:I

.field public static final t:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LV9/q;

    invoke-direct {v0}, LV9/q;-><init>()V

    sput-object v0, LP9/a;->g:LV9/q;

    new-instance v0, LS9/h;

    invoke-direct {v0}, LS9/h;-><init>()V

    sput-object v0, LP9/a;->h:LS9/h;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, LP9/a;->j:Ljava/util/List;

    const-wide/16 v0, -0x1

    sput-wide v0, LP9/a;->k:J

    const/4 v0, -0x1

    sput v0, LP9/a;->l:I

    sput v0, LP9/a;->m:I

    new-instance v0, LP9/a$a;

    invoke-direct {v0}, LP9/a$a;-><init>()V

    sput-object v0, LP9/a;->o:Ljava/util/Comparator;

    new-instance v0, Ltb/b;

    invoke-direct {v0}, Ltb/b;-><init>()V

    sput-object v0, LP9/a;->p:Ltb/b;

    const/4 v0, 0x0

    sput-boolean v0, LP9/a;->q:Z

    sput-boolean v0, LP9/a;->r:Z

    sput v0, LP9/a;->s:I

    const/4 v1, 0x1

    new-array v2, v1, [Z

    aput-boolean v1, v2, v0

    sput-object v2, LP9/a;->t:[Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FQS Choreographer"

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->isDrawToScreen()Z

    move-result v1

    sget-object v2, Lz5/a;->m0:Lz5/g;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lz5/g;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->allowScreenDraw()Z

    move-result v4

    if-nez v2, :cond_2

    move v1, v3

    :cond_2
    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getImageToScreen()Lfc/b;

    move-result-object p0

    invoke-static {p0}, Lfc/a;->a(Lfc/b;)V

    :cond_3
    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    return-void
.end method

.method public static B()V
    .locals 4

    invoke-static {}, LK8/a;->k()I

    move-result v0

    int-to-long v0, v0

    sget-wide v2, LP9/a;->k:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    sget-object v2, LP9/a;->p:Ltb/b;

    invoke-virtual {v2}, Ltb/b;->e()V

    sput-wide v0, LP9/a;->k:J

    :cond_0
    return-void
.end method

.method public static a()V
    .locals 5

    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UI after render"

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-class v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-static {v1}, LR8/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v4}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->isRenderOutputRequested()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->afterFrame(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    return-void
.end method

.method public static b(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "Extract frame"

    const-string v3, "Native output frame"

    const-string v4, "Native render"

    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UI build"

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v6, LP9/a;->f:Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->u()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, LP9/a;->B()V

    :cond_1
    invoke-static {}, Lp6/d;->E1()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "Imgui start"

    invoke-static {v6}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    sget-object v7, LP9/a;->f:Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->u()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferW()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferH()I

    move-result v10

    sget v11, LP9/a;->l:I

    if-ne v11, v7, :cond_3

    sget v11, LP9/a;->m:I

    if-eq v11, v10, :cond_4

    :cond_3
    sget-object v11, LP9/a;->f:Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;

    invoke-virtual {v11, v7, v10}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->y(II)V

    sput v7, LP9/a;->l:I

    sput v10, LP9/a;->m:I

    :cond_4
    sget-object v7, LP9/a;->f:Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getPxSize()F

    move-result v10

    invoke-virtual {v7, v10}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->P(F)V

    move v7, v8

    goto :goto_2

    :cond_5
    move v7, v9

    :goto_2
    invoke-static {v6}, Lp6/d;->J1(Lp6/g;)V

    if-eqz v7, :cond_1d

    :try_start_0
    invoke-static {}, Lp6/d;->E1()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "UIController start"

    invoke-static {v6}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v6

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_14

    :cond_6
    const/4 v6, 0x0

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->onGuiStart()V

    invoke-static {v6}, Lp6/d;->J1(Lp6/g;)V

    invoke-static {}, Lp6/d;->E1()Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "On layout"

    invoke-static {v6}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v6

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :goto_4
    iget-object v7, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getLayoutCacheContext()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$q;

    move-result-object v10

    sget-object v11, LP9/a;->t:[Z

    aput-boolean v8, v11, v9

    sput-boolean v8, LP9/a;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v11, v9

    move v13, v11

    const/4 v12, 0x0

    :goto_5
    :try_start_1
    sget-object v14, LP9/a;->t:[Z

    aget-boolean v15, v14, v9

    if-eqz v15, :cond_10

    const/16 v5, 0x32

    if-ge v11, v5, :cond_10

    aput-boolean v9, v14, v9

    sput-boolean v9, LP9/a;->r:Z

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$q;->a()V

    add-int/lit8 v11, v11, 0x1

    sput v11, LP9/a;->s:I

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v14, v9

    :goto_6
    if-ge v14, v5, :cond_9

    :try_start_2
    invoke-virtual {v7, v14}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v15

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isHierarchyActive()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-static {v15, v1}, LP9/a;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    goto :goto_7

    :catchall_1
    move-exception v0

    move v5, v9

    goto/16 :goto_13

    :cond_8
    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_9
    move v14, v9

    :goto_8
    if-ge v14, v5, :cond_b

    invoke-virtual {v7, v14}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v15

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isHierarchyActive()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-static {v15, v1}, LP9/a;->l(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_b
    move v14, v9

    :goto_9
    if-ge v14, v5, :cond_d

    :try_start_3
    invoke-virtual {v7, v14}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v15

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isHierarchyActive()Z

    move-result v16

    if-eqz v16, :cond_c

    sget-object v9, LP9/a;->t:[Z

    invoke-static {v15, v1, v9, v7, v10}, LP9/a;->e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;[ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$q;)Ljava/util/List;

    move-result-object v9

    invoke-static {v9}, LP9/a;->r(Ljava/util/List;)V

    goto :goto_a

    :catchall_2
    move-exception v0

    const/4 v5, 0x0

    goto/16 :goto_13

    :cond_c
    :goto_a
    add-int/lit8 v14, v14, 0x1

    const/4 v9, 0x0

    goto :goto_9

    :cond_d
    invoke-static {v7}, LP9/a;->f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)LP9/a$c;

    move-result-object v5

    if-eqz v12, :cond_e

    invoke-virtual {v12, v5}, LP9/a$c;->b(LP9/a$c;)Z

    move-result v9

    if-eqz v9, :cond_e

    add-int/2addr v13, v8

    goto :goto_b

    :cond_e
    const/4 v13, 0x0

    :goto_b
    sget-object v9, LP9/a;->t:[Z

    if-ge v13, v8, :cond_f

    move/from16 v16, v8

    const/4 v12, 0x0

    goto :goto_c

    :cond_f
    const/4 v12, 0x0

    const/16 v16, 0x0

    :goto_c
    aput-boolean v16, v9, v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v12, v5

    const/4 v9, 0x0

    goto/16 :goto_5

    :cond_10
    move v5, v9

    :try_start_4
    sput-boolean v5, LP9/a;->q:Z

    sput-boolean v5, LP9/a;->r:Z

    sput v11, LP9/a;->n:I

    if-eqz v15, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->markUIDirty()V

    :cond_11
    invoke-static {v6}, Lp6/d;->J1(Lp6/g;)V

    invoke-static {}, Lp6/d;->E1()Z

    move-result v5

    if-eqz v5, :cond_12

    const-string v5, "Render"

    invoke-static {v5}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v5

    goto :goto_d

    :cond_12
    const/4 v5, 0x0

    :goto_d
    iget-object v6, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v7

    const/4 v8, 0x0

    :goto_e
    if-ge v8, v7, :cond_14

    invoke-virtual {v6, v8}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isHierarchyActive()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-static {v9, v1}, LP9/a;->u(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    :cond_13
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_14
    invoke-static {v5}, Lp6/d;->J1(Lp6/g;)V

    invoke-static/range {p0 .. p0}, LP9/a;->h(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    invoke-static {}, Lp6/d;->E1()Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v5, "UIController end"

    invoke-static {v5}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v5

    goto :goto_f

    :cond_15
    const/4 v5, 0x0

    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->onGuiEnd()V

    invoke-static {v5}, Lp6/d;->J1(Lp6/g;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lp6/d;->E1()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-static {v4}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v4

    goto :goto_10

    :cond_16
    const/4 v4, 0x0

    :goto_10
    sget-object v5, LP9/a;->f:Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->E()V

    invoke-static {v4}, Lp6/d;->J1(Lp6/g;)V

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->isRenderOutputRequested()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-static {}, Lp6/d;->E1()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-static {v3}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v3

    goto :goto_11

    :cond_17
    const/4 v3, 0x0

    :goto_11
    sget-object v4, LP9/a;->f:Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->A(Z)V

    invoke-static {v3}, Lp6/d;->J1(Lp6/g;)V

    invoke-static {}, Lp6/d;->E1()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-static {v2}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v5

    goto :goto_12

    :cond_18
    const/4 v5, 0x0

    :goto_12
    invoke-static/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->extractTo(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    invoke-static {v5}, Lp6/d;->J1(Lp6/g;)V

    goto :goto_18

    :goto_13
    :try_start_5
    sput-boolean v5, LP9/a;->q:Z

    sput-boolean v5, LP9/a;->r:Z

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_14
    invoke-static {}, Lp6/d;->E1()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {v4}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v4

    goto :goto_15

    :cond_19
    const/4 v4, 0x0

    :goto_15
    sget-object v5, LP9/a;->f:Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->E()V

    invoke-static {v4}, Lp6/d;->J1(Lp6/g;)V

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->isRenderOutputRequested()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-static {}, Lp6/d;->E1()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-static {v3}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v3

    goto :goto_16

    :cond_1a
    const/4 v3, 0x0

    :goto_16
    sget-object v4, LP9/a;->f:Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->A(Z)V

    invoke-static {v3}, Lp6/d;->J1(Lp6/g;)V

    invoke-static {}, Lp6/d;->E1()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-static {v2}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v5

    goto :goto_17

    :cond_1b
    const/4 v5, 0x0

    :goto_17
    invoke-static/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->extractTo(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    invoke-static {v5}, Lp6/d;->J1(Lp6/g;)V

    :cond_1c
    throw v0

    :cond_1d
    :goto_18
    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    return-void
.end method

.method public static c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$r;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$r;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$r;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v3

    instance-of v4, v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$r;->a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move-object v5, v3

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$r;->c:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    if-nez v4, :cond_1

    instance-of v4, v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    iput-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$r;->c:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$r;->a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    iget-object p0, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$r;->b:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$r;->a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$r;->b:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result p0

    const/4 v1, 0x1

    if-le p0, v1, :cond_3

    iget-object p0, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$r;->b:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    sget-object v1, LP9/a;->o:Ljava/util/Comparator;

    invoke-static {p0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    return-object v0
.end method

.method public static d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "controller"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;

    if-eqz v3, :cond_1

    :try_start_0
    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;->calculateInternalSizeStart(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2, p1}, LP9/a;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_4

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_5
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v1

    if-ge v0, v1, :cond_7

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    instance-of v2, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;

    if-eqz v2, :cond_6

    :try_start_2
    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_6

    :cond_5
    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;->calculateInternalSizeEnd(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    return-void
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;[ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$q;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "controller",
            "repeat",
            "parent",
            "cacheContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;",
            "[Z",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$q;",
            ")",
            "Ljava/util/List<",
            "LW9/b;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP;->acquire(I)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move-result-object v0

    iget-object v1, p4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$q;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$r;

    if-nez v1, :cond_2

    iget-object v1, p4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$q;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$r;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->B0()I

    move-result v2

    if-eqz v1, :cond_0

    iget v3, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$r;->d:I

    if-eq v3, v2, :cond_1

    :cond_0
    invoke-static {p0}, LP9/a;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$r;

    move-result-object v1

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$r;->d:I

    iget-object v2, p4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$q;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v2, p4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$q;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$r;->c:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v2, 0x0

    :cond_3
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getParent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getLayoutStamp()I

    move-result v5

    goto :goto_0

    :cond_4
    move v5, v4

    :goto_0
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getLayoutDependencyStamp()I

    move-result v6

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getLayoutStampSnapshot()I

    move-result v7

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getLayoutStamp()I

    move-result v8

    if-ne v7, v8, :cond_6

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getParentLayoutStampSnapshot()I

    move-result v7

    if-ne v7, v5, :cond_6

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getLayoutDependencyStampSnapshot()I

    move-result v5

    if-ne v5, v6, :cond_6

    const-class p0, LW9/b;

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LW9/b;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getBoundRect()LW9/c;

    move-result-object p1

    invoke-virtual {p1}, LW9/c;->d()I

    move-result p2

    invoke-virtual {p0, p2}, LW9/b;->h(I)V

    invoke-virtual {p1}, LW9/c;->e()I

    move-result p2

    invoke-virtual {p0, p2}, LW9/b;->i(I)V

    invoke-virtual {p1}, LW9/c;->f()I

    move-result p2

    invoke-virtual {p0, p2}, LW9/b;->f(I)V

    invoke-virtual {p1}, LW9/c;->g()I

    move-result p1

    invoke-virtual {p0, p1}, LW9/b;->g(I)V

    iput-boolean v3, p0, LW9/b;->e:Z

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_5
    move v6, v4

    :cond_6
    if-eqz v2, :cond_7

    :try_start_0
    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->alignToParentLeft(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_1
    iget-object v5, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$r;->a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move v7, v4

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_9

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_3

    :cond_8
    :try_start_1
    invoke-virtual {v8, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;->startChildInfluence(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_9
    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$r;->b:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move v5, v4

    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_b

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_5

    :cond_a
    :try_start_2
    invoke-virtual {v7, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;->internalOnLayout(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    invoke-virtual {v7, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;->onLayout(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_b
    if-eqz v2, :cond_10

    move v1, v4

    :goto_6
    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v5

    if-ge v1, v5, :cond_d

    invoke-virtual {p3, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_c

    instance-of v7, v5, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;

    if-eqz v7, :cond_c

    :try_start_3
    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;

    invoke-virtual {v5, p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;->onChildInfluence(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    move p3, v4

    :goto_8
    :try_start_4
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v1

    if-ge p3, v1, :cond_f

    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-static {v1, p1, p2, p0, p4}, LP9/a;->e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;[ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$q;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, LP9/a;->s(Ljava/util/List;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_9

    :catch_4
    move-exception p0

    goto :goto_a

    :cond_e
    :goto_9
    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :goto_a
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    :try_start_5
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->calculateInnerBounds()LW9/b;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, p1, v0, p0, v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->applyBounds(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;Ljava/util/List;LW9/b;I)Z

    move-result p0

    if-eqz p0, :cond_10

    aput-boolean v3, p2, v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_b

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_10
    :goto_b
    return-object v0
.end method

.method public static f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)LP9/a$c;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "root"
        }
    .end annotation

    new-instance v0, LP9/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LP9/a$c;-><init>(LP9/a$a;)V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isHierarchyActive()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2, v0}, LP9/a;->g(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LP9/a$c;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static g(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LP9/a$c;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "snapshot"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {p1, v2}, LP9/a$c;->a(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1, p1}, LP9/a;->g(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LP9/a$c;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static h(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Touch handler"

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    sput v1, LP9/a;->i:I

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isHierarchyActive()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4, p0}, LP9/a;->y(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    return-void
.end method

.method public static i()LS9/h;
    .locals 1

    sget-object v0, LP9/a;->h:LS9/h;

    return-object v0
.end method

.method public static j()LV9/q;
    .locals 1

    sget-object v0, LP9/a;->g:LV9/q;

    return-object v0
.end method

.method public static k()Z
    .locals 1

    sget-boolean v0, LP9/a;->q:Z

    return v0
.end method

.method public static l(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "controller"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isHierarchyActive()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2, p1}, LP9/a;->l(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-class v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_8

    :cond_3
    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    move v3, v0

    :goto_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    instance-of v5, v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;

    if-eqz v5, :cond_4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    move v3, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;

    :try_start_0
    invoke-virtual {v4, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;->startChildInfluence(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    move v3, v0

    :goto_4
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v4

    if-ge v3, v4, :cond_a

    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v4, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_7

    :cond_8
    move v5, v0

    :goto_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_9

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;

    :try_start_1
    invoke-virtual {v6, p1, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;->measureChildInfluence(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    :goto_8
    return-void
.end method

.method public static m(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    invoke-static {p0}, LP9/a;->h(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    invoke-static {p0}, LP9/a;->w(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    return-void
.end method

.method public static n(ILandroid/view/KeyEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public static o(ILandroid/view/KeyEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public static p()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;-><init>()V

    sput-object v0, LP9/a;->f:Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->O()Z

    sget-object v0, LP9/a;->g:LV9/q;

    invoke-virtual {v0}, LV9/q;->n()V

    const/4 v0, -0x1

    sput v0, LP9/a;->l:I

    sput v0, LP9/a;->m:I

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->initialize()V

    return-void
.end method

.method public static q(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public static r(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LW9/b;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP;->release(Ljava/util/List;)V

    return-void
.end method

.method public static s(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LW9/b;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP;->release(Ljava/util/List;)V

    return-void
.end method

.method public static t()V
    .locals 7

    sget-boolean v0, Lcom/itsmagic/engine/Activities/Editor/Utils/E;->a0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "UI render"

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    sget-object v2, LP9/a;->f:Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->u()Z

    move-result v2

    if-eqz v2, :cond_5

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-static {v2}, LR8/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    iget-object v6, v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v6}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->isRenderOutputRequested()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->renderTo(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Lp6/d;->E1()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v1, "Input system"

    invoke-static {v1}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v1

    :cond_4
    sget-object v4, LP9/a;->h:LS9/h;

    invoke-virtual {v4}, LS9/h;->k()V

    invoke-static {v1}, Lp6/d;->J1(Lp6/g;)V

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-static {v1}, LP9/a;->w(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    return-void
.end method

.method public static u(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "controller"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;

    if-eqz v3, :cond_1

    :try_start_0
    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;->onGuiStart(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2, p1}, LP9/a;->u(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_4

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_5
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v1

    if-ge v0, v1, :cond_8

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    instance-of v2, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;

    if-eqz v2, :cond_6

    :try_start_2
    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_6

    :cond_5
    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;->onGuiEnd(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :cond_6
    instance-of v2, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;

    if-eqz v2, :cond_7

    :try_start_3
    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;->postRender(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    return-void
.end method

.method public static v()V
    .locals 1

    sget-boolean v0, LP9/a;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, LP9/a;->r:Z

    :cond_0
    return-void
.end method

.method public static w(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isHierarchyActive()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3, p0}, LP9/a;->x(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static x(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "controller"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;

    if-eqz v3, :cond_0

    :try_start_0
    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->afterTouchUpdate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1, p1}, LP9/a;->x(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_4

    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public static y(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "controller"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    if-eqz v3, :cond_0

    :try_start_0
    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    sget v3, LP9/a;->i:I

    invoke-virtual {v2, p1, v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->updateTouch(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;I)V

    sget v2, LP9/a;->i:I

    add-int/lit8 v2, v2, 0x1

    sput v2, LP9/a;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1, p1}, LP9/a;->y(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_4

    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public static z(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    return-object v0

    :catch_0
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

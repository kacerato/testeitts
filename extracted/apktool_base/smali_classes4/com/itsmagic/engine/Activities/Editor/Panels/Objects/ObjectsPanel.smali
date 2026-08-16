.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final d0:Ljava/lang/String; = "Objects"

.field public static final e0:Ljava/lang/Class;

.field public static f0:Z = true

.field public static final g0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg6/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public X:LF7/l;

.field public Y:Landroidx/recyclerview/widget/RecyclerView;

.field public Z:Lcom/itsmagic/engine/Engines/Engine/World/World;

.field public a0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public b0:Z

.field public final c0:Lg6/d;

.field private showEnableToggle:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private showTouchButtonV2:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private showVisionBtn:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->e0:Ljava/lang/Class;

    sget-object v0, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->f0:Z

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$k;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->g0:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 8
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OBJECTS:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Objects"

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->showEnableToggle:Z

    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->showVisionBtn:Z

    .line 11
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->showTouchButtonV2:Z

    .line 12
    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    .line 13
    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->a0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 14
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->c0:Lg6/d;

    return-void
.end method

.method public constructor <init>(LK8/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(LK8/a;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->showEnableToggle:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->showVisionBtn:Z

    .line 4
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->showTouchButtonV2:Z

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    .line 6
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->a0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 7
    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$b;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->c0:Lg6/d;

    return-void
.end method

.method public static synthetic A1(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->showTouchButtonV2:Z

    return p1
.end method

.method public static B1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->g0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg6/d;

    if-eqz v3, :cond_0

    invoke-interface {v3, p0}, Lg6/d;->f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    :goto_2
    move p0, v0

    :goto_3
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->g0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_3

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg6/d;

    if-nez v2, :cond_2

    invoke-interface {v1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public static C1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "index"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->g0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg6/d;

    if-eqz v3, :cond_0

    invoke-interface {v3, p0, p1}, Lg6/d;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;I)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    :goto_2
    move p0, v0

    :goto_3
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->g0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg6/d;

    if-nez v1, :cond_2

    invoke-interface {p1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private H1()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg6/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    if-eqz v1, :cond_5

    :try_start_0
    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->Z:Lcom/itsmagic/engine/Engines/Engine/World/World;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/World/World;->q()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v4}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->a0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v6, 0x1

    if-nez v5, :cond_1

    :cond_0
    :goto_1
    move v5, v6

    goto :goto_2

    :cond_1
    if-eq v5, v4, :cond_0

    invoke-virtual {v5, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->a0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v5, v2

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_3

    :goto_2
    if-eqz v5, :cond_3

    const-class v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Utils/HideObjectFromPanel;

    invoke-virtual {v4, v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v7

    if-eqz v7, :cond_3

    sget-boolean v7, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->f0:Z

    if-nez v7, :cond_3

    move v5, v2

    :cond_3
    if-eqz v5, :cond_4

    new-instance v5, Lg6/a;

    iget-boolean v7, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->showEnableToggle:Z

    iget-boolean v8, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->showVisionBtn:Z

    iget-boolean v9, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->showTouchButtonV2:Z

    invoke-direct {v5, v4, v7, v8, v9}, Lg6/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZZZ)V

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    xor-int/2addr v6, v7

    invoke-virtual {v5, v6}, LF7/i;->r(Z)V

    iget-object v6, v5, LF7/i;->f:LF7/h;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->e()Z

    move-result v4

    iput-boolean v4, v6, LF7/h;->c:Z

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, LN7/c;->l(FLjava/lang/Runnable;)V

    :cond_5
    return-object v0
.end method

.method public static I1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->g0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg6/d;

    if-eqz v3, :cond_0

    invoke-interface {v3, p0}, Lg6/d;->e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    :goto_2
    move p0, v0

    :goto_3
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->g0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_3

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg6/d;

    if-nez v2, :cond_2

    invoke-interface {v1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public static N1()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->g0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg6/d;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lg6/d;->b()V

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    :goto_2
    move v1, v0

    :goto_3
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->g0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg6/d;

    if-nez v3, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public static O1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->g0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg6/d;

    if-eqz v3, :cond_0

    invoke-interface {v3, p0}, Lg6/d;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    :goto_2
    move p0, v0

    :goto_3
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->g0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_3

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg6/d;

    if-nez v2, :cond_2

    invoke-interface {v1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public static S1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->g0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg6/d;

    if-eqz v3, :cond_0

    invoke-interface {v3, p0}, Lg6/d;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    :goto_2
    move p0, v0

    :goto_3
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->g0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_3

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg6/d;

    if-nez v2, :cond_2

    invoke-interface {v1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public static X1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "fromParent",
            "toParent"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->g0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg6/d;

    if-eqz v3, :cond_0

    invoke-interface {v3, p0, p1, p2}, Lg6/d;->g(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    :goto_2
    move p0, v0

    :goto_3
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->g0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge p0, p2, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg6/d;

    if-nez p2, :cond_2

    invoke-interface {p1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public static Z1()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->I1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public static synthetic p1(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->J1()V

    return-void
.end method

.method public static synthetic q1(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->M1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public static synthetic r1(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;Lg6/a;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->L1(Lg6/a;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s1(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->H1()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t1(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;)LF7/l;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    return-object p0
.end method

.method public static synthetic u1(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->Q1()V

    return-void
.end method

.method public static synthetic v1(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->showEnableToggle:Z

    return p0
.end method

.method public static synthetic w1(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->showEnableToggle:Z

    return p1
.end method

.method public static synthetic x1(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->showVisionBtn:Z

    return p0
.end method

.method public static synthetic y1(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->showVisionBtn:Z

    return p1
.end method

.method public static synthetic z1(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->showTouchButtonV2:Z

    return p0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c01c4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0903e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->Y:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->g0:Ljava/util/List;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->c0:Lg6/d;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LF7/l;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->Y:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$d;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;)V

    invoke-direct {v1, v2, v3}, LF7/l;-><init>(Landroidx/recyclerview/widget/RecyclerView;LF7/k;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->Q1()V

    return-object v0
.end method

.method public D1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->F1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :cond_0
    return-void
.end method

.method public E1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "index"
        }
    .end annotation

    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0, p1, v0, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->G1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;I)V

    :cond_0
    return-void
.end method

.method public F1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "parent"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    if-eqz v0, :cond_3

    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->V1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Lg6/a;

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->showEnableToggle:Z

    iget-boolean v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->showVisionBtn:Z

    iget-boolean v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->showTouchButtonV2:Z

    invoke-direct {p2, p1, v0, v2, v3}, Lg6/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZZZ)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p2, v0}, LF7/i;->r(Z)V

    iget-object v0, p2, LF7/i;->f:LF7/h;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->e()Z

    move-result p1

    iput-boolean p1, v0, LF7/h;->c:Z

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    invoke-virtual {p1, p2}, LF7/l;->d(LF7/i;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    invoke-virtual {v0}, LF7/l;->k()I

    move-result v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    invoke-virtual {v0, p1}, LF7/l;->j(I)LF7/i;

    move-result-object v0

    check-cast v0, Lg6/a;

    invoke-virtual {v0}, Lg6/a;->v()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    if-eqz v2, :cond_2

    if-ne v2, p2, :cond_2

    iget-object p1, v0, LF7/i;->f:LF7/h;

    iget-boolean p1, p1, LF7/h;->c:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    invoke-virtual {p1, v0, v1}, LF7/l;->A(LF7/i;Z)V

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public G0()V
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->g0:Ljava/util/List;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->c0:Lg6/d;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public G1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "parent",
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    if-eqz v0, :cond_3

    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->V1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Lg6/a;

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->showEnableToggle:Z

    iget-boolean v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->showVisionBtn:Z

    iget-boolean v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->showTouchButtonV2:Z

    invoke-direct {p2, p1, v0, v2, v3}, Lg6/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZZZ)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p2, v0}, LF7/i;->r(Z)V

    iget-object v0, p2, LF7/i;->f:LF7/h;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->e()Z

    move-result v1

    iput-boolean v1, v0, LF7/h;->c:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    invoke-virtual {p0, p1, p3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->W1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;I)I

    move-result p1

    invoke-virtual {v0, p2, p1}, LF7/l;->e(LF7/i;I)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    invoke-virtual {p3}, LF7/l;->k()I

    move-result p3

    if-ge p1, p3, :cond_3

    iget-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    invoke-virtual {p3, p1}, LF7/l;->j(I)LF7/i;

    move-result-object p3

    check-cast p3, Lg6/a;

    invoke-virtual {p3}, Lg6/a;->v()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-eqz v0, :cond_2

    if-ne v0, p2, :cond_2

    iget-object p1, p3, LF7/i;->f:LF7/h;

    iget-boolean p1, p1, LF7/h;->c:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    invoke-virtual {p1, p3, v1}, LF7/l;->A(LF7/i;Z)V

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final J1()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->H1()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LF7/l;->C(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->Q1()V

    :cond_0
    return-void
.end method

.method public final K1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Ljava/util/List<",
            "Lg6/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v2}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->a0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    :cond_0
    :goto_1
    move v3, v4

    goto :goto_2

    :cond_1
    if-eq v3, v2, :cond_0

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->a0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_2
    if-eqz v3, :cond_3

    const-class v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Utils/HideObjectFromPanel;

    invoke-virtual {v2, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v5

    if-eqz v5, :cond_3

    sget-boolean v5, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->f0:Z

    if-nez v5, :cond_3

    move v3, v0

    :cond_3
    if-eqz v3, :cond_4

    new-instance v3, Lg6/a;

    iget-boolean v5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->showEnableToggle:Z

    iget-boolean v6, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->showVisionBtn:Z

    iget-boolean v7, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->showTouchButtonV2:Z

    invoke-direct {v3, v2, v5, v6, v7}, Lg6/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZZZ)V

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    xor-int/2addr v4, v5

    invoke-virtual {v3, v4}, LF7/i;->r(Z)V

    iget-object v4, v3, LF7/i;->f:LF7/h;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->e()Z

    move-result v2

    iput-boolean v2, v4, LF7/h;->c:Z

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final L1(Lg6/a;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg6/a;",
            ")",
            "Ljava/util/List<",
            "Lg6/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lg6/a;->v()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->K1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/List;)V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LF7/i;

    invoke-virtual {p1}, LF7/i;->e()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, LF7/i;->q(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public M0()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M0()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->J1()V

    return-void
.end method

.method public final M1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->b0:Z

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->a0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->J1()V

    return-void
.end method

.method public N()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldd/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$e;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;)V

    return-object v0
.end method

.method public P1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    invoke-virtual {v1}, LF7/l;->k()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    invoke-virtual {v1, v0}, LF7/l;->j(I)LF7/i;

    move-result-object v1

    check-cast v1, Lg6/a;

    invoke-virtual {v1}, Lg6/a;->v()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    if-eqz v2, :cond_0

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    invoke-virtual {p1, v1}, LF7/l;->t(LF7/i;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final Q1()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    if-eqz v0, :cond_2

    sget-object v1, LW7/b;->i:La8/a;

    iget-object v1, v1, La8/a;->a:La8/b;

    iget-object v1, v1, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LF7/l;->D(LF7/i;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    invoke-virtual {v1}, LF7/l;->k()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    invoke-virtual {v1, v0}, LF7/l;->j(I)LF7/i;

    move-result-object v1

    check-cast v1, Lg6/a;

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->R1(Lg6/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final R1(Lg6/a;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    invoke-virtual {p1}, Lg6/a;->v()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v2, LW7/b;->i:La8/a;

    iget-object v2, v2, La8/a;->a:La8/b;

    iget-object v2, v2, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    invoke-virtual {v0, p1}, LF7/l;->D(LF7/i;)V

    return v1

    :cond_0
    iget-boolean v0, p1, LF7/i;->d:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p1, LF7/i;->f:LF7/h;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v3, p1, LF7/i;->f:LF7/h;

    iget-object v3, v3, LF7/h;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object p1, p1, LF7/i;->f:LF7/h;

    iget-object p1, p1, LF7/h;->b:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p1, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_3

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg6/a;

    if-eqz v3, :cond_2

    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->R1(Lg6/a;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :goto_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    return v2
.end method

.method public T1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->U1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public U1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "fromParent"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    invoke-virtual {v2}, LF7/l;->k()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    invoke-virtual {v2, v1}, LF7/l;->j(I)LF7/i;

    move-result-object v2

    check-cast v2, Lg6/a;

    invoke-virtual {v2}, Lg6/a;->v()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v3

    if-eqz v3, :cond_0

    if-ne v3, p2, :cond_0

    iget-object p2, v2, LF7/i;->f:LF7/h;

    iget-boolean p2, p2, LF7/h;->c:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    const/4 v1, 0x1

    invoke-virtual {p2, v2, v1}, LF7/l;->A(LF7/i;Z)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move p2, v0

    :goto_2
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    invoke-virtual {v1}, LF7/l;->k()I

    move-result v1

    if-ge p2, v1, :cond_4

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    invoke-virtual {v1, p2}, LF7/l;->j(I)LF7/i;

    move-result-object v1

    check-cast v1, Lg6/a;

    invoke-virtual {v1}, Lg6/a;->v()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eq v2, p1, :cond_2

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->h1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    invoke-virtual {p2, v1}, LF7/l;->w(LF7/i;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    return-void
.end method

.method public final V1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-static {p1}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->a0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    :cond_1
    if-eq v1, p1, :cond_2

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->a0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    move v0, v2

    :cond_3
    :goto_0
    return v0
.end method

.method public final W1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "worldIndex"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->q()Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    move v2, v1

    :goto_0
    if-ge v1, p2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eq v3, p1, :cond_1

    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->V1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public Y1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "fromParent",
            "toParent"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->U1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-virtual {p0, p1, p3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->F1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;-><init>()V

    return-object v0
.end method

.method public n1()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    invoke-virtual {v0}, LF7/l;->g()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->Z:Lcom/itsmagic/engine/Engines/Engine/World/World;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    if-eq v0, v1, :cond_1

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->Z:Lcom/itsmagic/engine/Engines/Engine/World/World;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->J1()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    invoke-virtual {v0}, LF7/l;->o()LF7/i;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, LW7/b;->i:La8/a;

    iget-object v1, v0, La8/a;->a:La8/b;

    iget-object v1, v1, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->Q1()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    invoke-virtual {v1}, LF7/l;->o()LF7/i;

    move-result-object v1

    instance-of v1, v1, Lg6/a;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    invoke-virtual {v1}, LF7/l;->o()LF7/i;

    move-result-object v1

    check-cast v1, Lg6/a;

    invoke-virtual {v1}, Lg6/a;->v()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    iget-object v0, v0, La8/a;->a:La8/b;

    iget-object v0, v0, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eq v1, v0, :cond_4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->Q1()V

    goto :goto_0

    :cond_3
    sget-object v0, LW7/b;->i:La8/a;

    iget-object v0, v0, La8/a;->a:La8/b;

    iget-object v0, v0, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->Q1()V

    :cond_4
    :goto_0
    invoke-static {}, LJ3/a;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->a0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {}, LJ3/a;->b()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-eq v0, v1, :cond_9

    invoke-static {}, LJ3/a;->b()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->a0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->b0:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->J1()V

    goto :goto_2

    :cond_5
    sget-object v0, Lu4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->a0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v3, Lu4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eq v0, v3, :cond_8

    iput-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->a0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-boolean v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->b0:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->J1()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->a0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_8

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->a0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-boolean v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->b0:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->H1()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, LF7/l;->C(Ljava/util/List;)V

    goto :goto_1

    :cond_7
    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->b0:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->a0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_8

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->a0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->J1()V

    :cond_8
    :goto_1
    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->b0:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->a0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_9

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->a0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-boolean v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->b0:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->J1()V

    :cond_9
    :goto_2
    return-void
.end method

.method public o1()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    invoke-virtual {v2}, LF7/l;->k()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    invoke-virtual {v2, v1}, LF7/l;->j(I)LF7/i;

    move-result-object v2

    instance-of v3, v2, Lg6/a;

    if-eqz v3, :cond_4

    move-object v3, v2

    check-cast v3, Lg6/a;

    invoke-virtual {v3}, Lg6/a;->v()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v3

    invoke-static {v3}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, LF7/i;->l()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, LF7/i;->r(Z)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    invoke-virtual {v0, v2}, LF7/l;->z(LF7/i;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v0}, LF7/i;->r(Z)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    invoke-virtual {v0, v2}, LF7/l;->x(LF7/i;)V

    goto :goto_1

    :cond_1
    iget-object v4, v2, LF7/i;->f:LF7/h;

    iget-boolean v4, v4, LF7/h;->c:Z

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->e()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    invoke-virtual {v0, v2}, LF7/l;->z(LF7/i;)V

    goto :goto_1

    :cond_2
    iget-object v4, v2, LF7/i;->f:LF7/h;

    iget-boolean v4, v4, LF7/h;->c:Z

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->e()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    invoke-virtual {v0, v2}, LF7/l;->x(LF7/i;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->X:LF7/l;

    invoke-virtual {v0}, LF7/l;->v()V

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    :goto_1
    return-void
.end method

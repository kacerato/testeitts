.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;
.super Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;
.source "SourceFile"

# interfaces
.implements LS9/f;


# static fields
.field public static final U:Ljava/lang/String; = "UITouchTrigger"

.field public static final V:Ljava/lang/Class;


# instance fields
.field public L:Z

.field public final M:LW9/c;

.field public N:I

.field public O:I

.field public P:LS9/c;

.field public final Q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltc/h;",
            ">;"
        }
    .end annotation
.end field

.field public final R:LV9/k;

.field public final S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public T:LJAVARuntime/Component;

.field private clickable:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private dispatchTouchWhenOutsideRect:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private eventEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private eventEntry:Lcom/itsmagic/engine/Engines/Engine/ImGUI/InputSystem/UIEventEntry;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private exclusiveMode:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private multiTouch:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private objectReference:LV9/p;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private onlyDownInside:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private rectObject:LS9/b;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->V:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "UITouchTrigger"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->clickable:Z

    .line 3
    sget-object v1, LS9/b;->MySelf:LS9/b;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->rectObject:LS9/b;

    .line 4
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->onlyDownInside:Z

    .line 5
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->exclusiveMode:Z

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->dispatchTouchWhenOutsideRect:Z

    .line 7
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->multiTouch:Z

    .line 8
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->L:Z

    .line 9
    new-instance v0, LW9/c;

    invoke-direct {v0}, LW9/c;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->M:LW9/c;

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->O:I

    .line 11
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->Q:Ljava/util/List;

    .line 12
    new-instance v0, LV9/k;

    invoke-direct {v0}, LV9/k;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->R:LV9/k;

    .line 13
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    .line 14
    new-instance v0, LV9/p;

    invoke-direct {v0}, LV9/p;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->objectReference:LV9/p;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "onlyDownInside",
            "dispatchTouchWhenOutsideRect"
        }
    .end annotation

    .line 15
    const-string v0, "UITouchTrigger"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->clickable:Z

    .line 17
    sget-object v1, LS9/b;->MySelf:LS9/b;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->rectObject:LS9/b;

    .line 18
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->onlyDownInside:Z

    .line 19
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->exclusiveMode:Z

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->dispatchTouchWhenOutsideRect:Z

    .line 21
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->multiTouch:Z

    .line 22
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->L:Z

    .line 23
    new-instance v0, LW9/c;

    invoke-direct {v0}, LW9/c;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->M:LW9/c;

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->O:I

    .line 25
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->Q:Ljava/util/List;

    .line 26
    new-instance v0, LV9/k;

    invoke-direct {v0}, LV9/k;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->R:LV9/k;

    .line 27
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    .line 28
    new-instance v0, LV9/p;

    invoke-direct {v0}, LV9/p;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->objectReference:LV9/p;

    .line 29
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->onlyDownInside:Z

    .line 30
    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->dispatchTouchWhenOutsideRect:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->clickable:Z

    return p0
.end method

.method public static synthetic access$002(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->clickable:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->onlyDownInside:Z

    return p0
.end method

.method public static synthetic access$102(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->onlyDownInside:Z

    return p1
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->dispatchTouchWhenOutsideRect:Z

    return p0
.end method

.method public static synthetic access$202(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->dispatchTouchWhenOutsideRect:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->exclusiveMode:Z

    return p0
.end method

.method public static synthetic access$302(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->exclusiveMode:Z

    return p1
.end method

.method public static synthetic access$400(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->multiTouch:Z

    return p0
.end method

.method public static synthetic access$402(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->multiTouch:Z

    return p1
.end method

.method public static synthetic access$502(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;LS9/b;)LS9/b;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->rectObject:LS9/b;

    return-object p1
.end method

.method private addSelectedTouch(Ltc/h;ILS9/c;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "touch",
            "idx",
            "callbacks"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->clickable:Z

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->multiTouch:Z

    const/4 v2, 0x1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->Q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->Q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->O:I

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->P:LS9/c;

    return v0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->Q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->Q:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->Q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->O:I

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->P:LS9/c;

    :cond_5
    :goto_2
    return v0
.end method

.method private clearSelectedTouches()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->O:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->P:LS9/c;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->updateListeners()V

    return-void
.end method

.method private processLocalTouch(Ltc/h;ILcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "touch",
            "idx",
            "controller",
            "allowPressedInside"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-eqz p3, :cond_6

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->clickable:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ltc/h;->k()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ltc/h;->q()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ltc/h;->t()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Ltc/h;->t()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->removeSelectedTouch(Ltc/h;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p2, -0x1

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->O:I

    :cond_2
    return p1

    :cond_3
    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->W(Ltc/h;)Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Ltc/h;->k()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->onlyDownInside:Z

    if-eqz v1, :cond_4

    if-nez p4, :cond_4

    move v2, v0

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getControllerScreenRect()LW9/c;

    move-result-object p3

    iget-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->M:LW9/c;

    invoke-static {p1, p3, p4}, LV9/m;->d(Ltc/h;LW9/c;LW9/c;)Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->P:LS9/c;

    invoke-direct {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->addSelectedTouch(Ltc/h;ILS9/c;)Z

    move-result v0

    goto :goto_0

    :cond_5
    iget-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->dispatchTouchWhenOutsideRect:Z

    if-eqz p2, :cond_6

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->isSelectedTouch(Ltc/h;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->removeSelectedTouch(Ltc/h;)Z

    move-result v0

    :cond_6
    :goto_0
    return v0
.end method

.method private removeSelectedTouch(Ltc/h;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->Q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->O:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->P:LS9/c;

    :cond_1
    return p1
.end method

.method private updateListeners()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->getFirstTouch()Ltc/h;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    if-eq v2, p0, :cond_1

    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;->onSelectedTouchChanged(Ltc/h;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public acceptsMultiTouch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->multiTouch:Z

    return v0
.end method

.method public afterTouchUpdate()V
    .locals 5

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->afterTouchUpdate()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->Q:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltc/h;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ltc/h;->k()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ltc/h;->q()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ltc/h;->t()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->removeSelectedTouch(Ltc/h;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->updateListeners()V

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->R:LV9/k;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->isOver()Z

    move-result v1

    invoke-virtual {v0, v1}, LV9/k;->d(Z)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->R:LV9/k;

    invoke-virtual {v0}, LV9/k;->e()Z

    return-void
.end method

.method public allowCaptureNewTouchs()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->clickable:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->acceptsMultiTouch()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public allowOncePerObject()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;-><init>()V

    .line 3
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->clickable:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->clickable:Z

    .line 4
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->rectObject:LS9/b;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->rectObject:LS9/b;

    .line 5
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->objectReference:LV9/p;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LV9/p;->k()LV9/p;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, LV9/p;

    invoke-direct {v1}, LV9/p;-><init>()V

    :goto_0
    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->objectReference:LV9/p;

    .line 6
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->onlyDownInside:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->onlyDownInside:Z

    .line 7
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->exclusiveMode:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->exclusiveMode:Z

    .line 8
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->dispatchTouchWhenOutsideRect:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->dispatchTouchWhenOutsideRect:Z

    .line 9
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->multiTouch:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->multiTouch:Z

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public createRectRef(Landroid/content/Context;Ljava/lang/String;)LC5/b;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "varName"
        }
    .end annotation

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->rectObject:LS9/b;

    sget-object v0, LS9/b;->MySelf:LS9/b;

    if-eq p2, v0, :cond_1

    sget-object v0, LS9/b;->Parent:LS9/b;

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, LC5/b;

    sget-object v0, LC5/b$a;->Vector:LC5/b$a;

    const/4 v1, 0x2

    new-array v1, v1, [LC5/b;

    const/4 v2, 0x0

    invoke-direct {p2, v2, v0, v1}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;[LC5/b;)V

    iget-object v0, p2, LC5/b;->p:[LC5/b;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TARGET:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, LC5/b$a;->SLDropdownWrap:LC5/b$a;

    invoke-virtual {p0, v1, p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->createRectType(Ljava/lang/String;Landroid/content/Context;LC5/b$a;)LC5/b;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p2, LC5/b;->p:[LC5/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->objectReference:LV9/p;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->RECT:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger$g;

    invoke-direct {v3, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->d(Ljava/lang/String;LR8/e;)LC5/b;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-object p2

    :cond_1
    :goto_0
    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TARGET:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, LC5/b$a;->SLDropdown:LC5/b$a;

    invoke-virtual {p0, p2, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->createRectType(Ljava/lang/String;Landroid/content/Context;LC5/b$a;)LC5/b;

    move-result-object p1

    return-object p1
.end method

.method public createRectType(Ljava/lang/String;Landroid/content/Context;LC5/b$a;)LC5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "context",
            "type"
        }
    .end annotation

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->rectObject:LS9/b;

    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger$h;

    invoke-direct {p3, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;)V

    const-class v0, LS9/b;

    invoke-static {p1, v0, p2, p3}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object p1

    return-object p1
.end method

.method public dispatchTouchWhenOutSideRect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->dispatchTouchWhenOutsideRect:Z

    return v0
.end method

.method public getController()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIControllerComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    move-result-object v0

    return-object v0
.end method

.method public getControllerRect()LW9/c;
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIControllerComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getControllerScreenRect()LW9/c;

    move-result-object v0

    return-object v0
.end method

.method public getFirstTouch()Ltc/h;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->Q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->Q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltc/h;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f070247

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
    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger$b;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CLICKABLE:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger$c;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->IGNORE_SLIDE_FROM_OUTSIDE_TO_INSIDE:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v4, p1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger$d;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->DISPATCH_TOUCH_WHEN_OUTSIDE_RECT:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v4, p1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger$e;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;)V

    const-string v3, "Exclusive mode"

    invoke-direct {v1, v2, v3, v4, p1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger$f;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;)V

    const-string v3, "Multi touch"

    invoke-direct {v1, v2, v3, v4, p1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TARGET_RECT:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->createRectRef(Landroid/content/Context;Ljava/lang/String;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getLayer()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->N:I

    return v0
.end method

.method public getObjectReference()LV9/p;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->objectReference:LV9/p;

    return-object v0
.end method

.method public getRectObject()LS9/b;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->rectObject:LS9/b;

    return-object v0
.end method

.method public getScreenRect()LW9/c;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->M:LW9/c;

    return-object v0
.end method

.method public getSelectedTouch()Ltc/h;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->getFirstTouch()Ltc/h;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedTouchAt(I)Ltc/h;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->Q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltc/h;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSelectedTouchCount()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->Q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->Q:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "TouchTrigger"

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UITouchTrigger:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isClickable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->clickable:Z

    return v0
.end method

.method public isDispatchTouchWhenOutsideRect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->dispatchTouchWhenOutsideRect:Z

    return v0
.end method

.method public isDown()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->R:LV9/k;

    invoke-virtual {v0}, LV9/k;->a()Z

    move-result v0

    return v0
.end method

.method public isExclusiveMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->exclusiveMode:Z

    return v0
.end method

.method public isMultiTouch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->multiTouch:Z

    return v0
.end method

.method public isOver()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->Q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->Q:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltc/h;

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isPressed()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->R:LV9/k;

    invoke-virtual {v0}, LV9/k;->b()Z

    move-result v0

    return v0
.end method

.method public isSelectedTouch(Ltc/h;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->Q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isUp()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->R:LV9/k;

    invoke-virtual {v0}, LV9/k;->c()Z

    move-result v0

    return v0
.end method

.method public onDeserialized()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDeserialized()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->eventEntry:Lcom/itsmagic/engine/Engines/Engine/ImGUI/InputSystem/UIEventEntry;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/InputSystem/UIEventEntry;->clickable:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->clickable:Z

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/InputSystem/UIEventEntry;->rectObject:LS9/b;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->rectObject:LS9/b;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/InputSystem/UIEventEntry;->objectReference:LV9/p;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->objectReference:LV9/p;

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/InputSystem/UIEventEntry;->onlyDownInside:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->onlyDownInside:Z

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/InputSystem/UIEventEntry;->exclusiveMode:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->exclusiveMode:Z

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/InputSystem/UIEventEntry;->dispatchTouchWhenOutsideRect:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->dispatchTouchWhenOutsideRect:Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->eventEntry:Lcom/itsmagic/engine/Engines/Engine/ImGUI/InputSystem/UIEventEntry;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->eventEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->objectReference:LV9/p;

    if-nez v0, :cond_1

    new-instance v0, LV9/p;

    invoke-direct {v0}, LV9/p;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->objectReference:LV9/p;

    :cond_1
    return-void
.end method

.method public onDetach()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->onDetach()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->clearSelectedTouches()V

    return-void
.end method

.method public onHierarchyActiveChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->onHierarchyActiveChanged(Z)V

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->L:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->clearSelectedTouches()V

    :cond_0
    return-void
.end method

.method public onTouchEnter(Ltc/h;ILS9/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "touch",
            "idx",
            "callbacks"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->clickable:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->addSelectedTouch(Ltc/h;ILS9/c;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->updateListeners()V

    :cond_1
    return p1
.end method

.method public onTouchExit(Ltc/h;ILS9/c;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "touch",
            "idx",
            "callbacks"
        }
    .end annotation

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->Q:Ljava/util/List;

    if-eqz p2, :cond_2

    iget-boolean p3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->multiTouch:Z

    if-eqz p3, :cond_0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->removeSelectedTouch(Ltc/h;)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->Q:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    :goto_0
    if-eqz p1, :cond_1

    const/4 p2, -0x1

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->O:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->P:LS9/c;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->updateListeners()V

    :cond_1
    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onlyDownInside()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->onlyDownInside:Z

    return v0
.end method

.method public setClickable(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickable"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->clickable:Z

    return-void
.end method

.method public setDispatchTouchWhenOutsideRect(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dispatchTouchWhenOutsideRect"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->dispatchTouchWhenOutsideRect:Z

    return-void
.end method

.method public setExclusiveMode(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exclusiveMode"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->exclusiveMode:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->exclusiveMode:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->clearSelectedTouches()V

    :cond_1
    return-void
.end method

.method public setMultiTouch(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "multiTouch"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->multiTouch:Z

    return-void
.end method

.method public setRectObject(LS9/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rectObject"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->rectObject:LS9/b;

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->T:LJAVARuntime/Component;

    return-void
.end method

.method public shouldTintIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->T:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/UITouchTrigger;

    invoke-direct {v0, p0}, LJAVARuntime/UITouchTrigger;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->T:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

.method public updateTouch(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "controller",
            "order"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIControllerComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->L:Z

    if-eqz v2, :cond_10

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getUIRectComponent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->rectObject:LS9/b;

    sget-object v3, LS9/b;->MySelf:LS9/b;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->M:LW9/c;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v0

    invoke-virtual {v2, v0}, LW9/c;->i(LW9/c;)V

    goto :goto_0

    :cond_2
    sget-object v3, LS9/b;->Parent:LS9/b;

    if-ne v2, v3, :cond_4

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v2, :cond_7

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIRect:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->M:LW9/c;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v2

    invoke-virtual {v0, v2}, LW9/c;->i(LW9/c;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->M:LW9/c;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v0

    invoke-virtual {v2, v0}, LW9/c;->i(LW9/c;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->objectReference:LV9/p;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->j()V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->objectReference:LV9/p;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->e()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->M:LW9/c;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v0

    invoke-virtual {v2, v0}, LW9/c;->i(LW9/c;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->objectReference:LV9/p;

    invoke-virtual {v2}, LV9/p;->l()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->M:LW9/c;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v2

    invoke-virtual {v0, v2}, LW9/c;->i(LW9/c;)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->M:LW9/c;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v0

    invoke-virtual {v2, v0}, LW9/c;->i(LW9/c;)V

    :cond_7
    :goto_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->exclusiveMode:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->R:LV9/k;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->isOver()Z

    move-result v0

    invoke-virtual {p1, v0}, LV9/k;->d(Z)V

    goto :goto_3

    :cond_8
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->clickable:Z

    if-eqz v0, :cond_d

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->isAllowScreenTouch()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    move v3, v0

    :goto_1
    invoke-static {}, Lrc/a;->L()I

    move-result v4

    if-ge v0, v4, :cond_a

    invoke-static {v0}, Lrc/a;->n(I)Ltc/h;

    move-result-object v4

    invoke-direct {p0, v4, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->processLocalTouch(Ltc/h;ILcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;Z)Z

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_9
    move v3, v2

    :cond_a
    move v0, v2

    :goto_2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->virtualTouchsCount()I

    move-result v4

    if-ge v0, v4, :cond_c

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getVirtualToucheAt(I)Ltc/h;

    move-result-object v4

    invoke-direct {p0, v4, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->processLocalTouch(Ltc/h;ILcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;Z)Z

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_b
    move v3, v2

    :cond_c
    if-eqz v3, :cond_d

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->updateListeners()V

    :cond_d
    :goto_3
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->dispatchTouchWhenOutsideRect:Z

    if-eqz p1, :cond_f

    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->Q:Ljava/util/List;

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_f

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltc/h;

    if-eqz v0, :cond_e

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getControllerScreenRect()LW9/c;

    move-result-object v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->M:LW9/c;

    invoke-static {v0, v3, v4}, LV9/m;->d(Ltc/h;LW9/c;LW9/c;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->removeSelectedTouch(Ltc/h;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->updateListeners()V

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_f
    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->N:I

    :cond_10
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->updateListeners()V

    return-void
.end method

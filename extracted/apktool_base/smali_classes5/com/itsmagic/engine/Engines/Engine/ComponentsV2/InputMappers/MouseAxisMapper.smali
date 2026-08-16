.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# static fields
.field public static final H:Ljava/lang/String; = "MouseAxisMapper"

.field public static final I:Ljava/lang/Class;


# instance fields
.field public E:Lcom/itsmagic/engine/Engines/Input/Axis;

.field public F:Z

.field public G:LJAVARuntime/Component;

.field private outputAxis:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->I:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "MouseAxisMapper"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const-string v0, "axisName"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->outputAxis:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->F:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->outputAxis:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->outputAxis:Ljava/lang/String;

    return-object p1
.end method

.method private releaseAxis()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->E:Lcom/itsmagic/engine/Engines/Input/Axis;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Input/Axis;->e(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->E:Lcom/itsmagic/engine/Engines/Input/Axis;

    :cond_0
    return-void
.end method

.method private setAxisValue(FF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->E:Lcom/itsmagic/engine/Engines/Input/Axis;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    invoke-virtual {v0, p0, v1}, Lcom/itsmagic/engine/Engines/Input/Axis;->a(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->outputAxis:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->outputAxis:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
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

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;)V

    const-string v2, "Output axis"

    sget-object v3, LC5/b$a;->SLString:LC5/b$a;

    invoke-direct {v0, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getOutputAxis()Ljava/lang/String;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->outputAxis:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "MouseAxisMapper"

    return-object v0
.end method

.method public onDetach()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->releaseAxis()V

    return-void
.end method

.method public parallelDisabledUpdate()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->parallelDisabledUpdate()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->F:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->releaseAxis()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->F:Z

    :cond_0
    return-void
.end method

.method public parallelUpdate()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->parallelUpdate()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->outputAxis:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->releaseAxis()V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->E:Lcom/itsmagic/engine/Engines/Input/Axis;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->outputAxis:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->E:Lcom/itsmagic/engine/Engines/Input/Axis;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->outputAxis:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Input/Axis;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->releaseAxis()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->releaseAxis()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->releaseAxis()V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->E:Lcom/itsmagic/engine/Engines/Input/Axis;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->outputAxis:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->outputAxis:Ljava/lang/String;

    invoke-static {v0}, Lrc/a;->D(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Input/Axis;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->E:Lcom/itsmagic/engine/Engines/Input/Axis;

    :cond_4
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->E:Lcom/itsmagic/engine/Engines/Input/Axis;

    if-eqz v0, :cond_6

    sget-object v0, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {v0}, Lrc/a$g;->r()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lrc/a$g;->f()F

    move-result v1

    invoke-virtual {v0}, Lrc/a$g;->g()F

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->setAxisValue(FF)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->setAxisValue(FF)V

    :cond_6
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->F:Z

    return-void
.end method

.method public setOutputAxis(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputAxis"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->outputAxis:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->G:LJAVARuntime/Component;

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->G:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/MouseAxisMapper;

    invoke-direct {v0, p0}, LJAVARuntime/MouseAxisMapper;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseAxisMapper;->G:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

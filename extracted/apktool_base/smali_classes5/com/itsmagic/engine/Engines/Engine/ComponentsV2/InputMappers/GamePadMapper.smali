.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper$d;
    }
.end annotation


# static fields
.field public static final H:Ljava/lang/String; = "GamePadMapper"

.field public static final I:Ljava/lang/Class;


# instance fields
.field public E:Lcom/itsmagic/engine/Engines/Input/Key;

.field public F:Z

.field public G:LJAVARuntime/Component;

.field private gamepadButton:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper$d;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private outputKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->I:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "GamePadMapper"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper$d;->A:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper$d;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->gamepadButton:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper$d;

    const-string v0, "throttle"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->outputKey:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->F:Z

    return-void
.end method

.method public static synthetic access$002(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper$d;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper$d;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->gamepadButton:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper$d;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->outputKey:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->outputKey:Ljava/lang/String;

    return-object p1
.end method

.method private isGamepadButtonPressed()Z
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->gamepadButton:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper$d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v2, Lrc/a;->s:Lrc/a$e;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lrc/a$e;->d(Ljava/lang/String;)Ltc/c;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ltc/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->gamepadButton:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper$d;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->gamepadButton:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper$d;

    .line 4
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->outputKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->outputKey:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getGamepadButton()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper$d;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->gamepadButton:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper$d;

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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->gamepadButton:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper$d;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;)V

    const-string v2, "Gamepad button"

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper$d;

    invoke-static {v2, v3, v0, v1}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;)V

    const-string v2, "Output key"

    sget-object v3, LC5/b$a;->SLString:LC5/b$a;

    invoke-direct {v0, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getOutputKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->outputKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "GamePadMapper"

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->E:Lcom/itsmagic/engine/Engines/Input/Key;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Input/Key;->i(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->E:Lcom/itsmagic/engine/Engines/Input/Key;

    :cond_0
    return-void
.end method

.method public parallelDisabledUpdate()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->parallelDisabledUpdate()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->F:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->E:Lcom/itsmagic/engine/Engines/Input/Key;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Input/Key;->i(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->F:Z

    :cond_1
    return-void
.end method

.method public parallelUpdate()V
    .locals 3

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->parallelUpdate()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->outputKey:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->E:Lcom/itsmagic/engine/Engines/Input/Key;

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->E:Lcom/itsmagic/engine/Engines/Input/Key;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->outputKey:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->E:Lcom/itsmagic/engine/Engines/Input/Key;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->outputKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Input/Key;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->E:Lcom/itsmagic/engine/Engines/Input/Key;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->E:Lcom/itsmagic/engine/Engines/Input/Key;

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->E:Lcom/itsmagic/engine/Engines/Input/Key;

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->E:Lcom/itsmagic/engine/Engines/Input/Key;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->outputKey:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->outputKey:Ljava/lang/String;

    invoke-static {v0}, Lrc/a;->G(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Input/Key;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->E:Lcom/itsmagic/engine/Engines/Input/Key;

    :cond_4
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->E:Lcom/itsmagic/engine/Engines/Input/Key;

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->isGamepadButtonPressed()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->E:Lcom/itsmagic/engine/Engines/Input/Key;

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Input/Key;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->E:Lcom/itsmagic/engine/Engines/Input/Key;

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Input/Key;->i(Ljava/lang/Object;)V

    :cond_6
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->F:Z

    return-void
.end method

.method public setGamepadButton(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gamepadButton"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->gamepadButton:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper$d;

    return-void
.end method

.method public setOutputKey(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputKey"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->outputKey:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->G:LJAVARuntime/Component;

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->G:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/GamePadMapper;

    invoke-direct {v0, p0}, LJAVARuntime/GamePadMapper;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadMapper;->G:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

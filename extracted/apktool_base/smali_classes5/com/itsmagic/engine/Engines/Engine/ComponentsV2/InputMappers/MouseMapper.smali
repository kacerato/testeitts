.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;
    }
.end annotation


# static fields
.field public static final H:Ljava/lang/String; = "MouseMapper"

.field public static final I:Ljava/lang/Class;


# instance fields
.field public E:Lcom/itsmagic/engine/Engines/Input/Key;

.field public F:Z

.field public G:LJAVARuntime/Component;

.field private mouseButton:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;
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

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->I:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "MouseMapper"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;->LEFT:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->mouseButton:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

    const-string v0, "throttle"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->outputKey:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->F:Z

    return-void
.end method

.method public static synthetic access$002(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->mouseButton:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->outputKey:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->outputKey:Ljava/lang/String;

    return-object p1
.end method

.method private isMouseButtonPressed()Z
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->mouseButton:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    sget-object v0, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {v0}, Lrc/a$g;->v()Z

    move-result v0

    return v0

    :cond_2
    sget-object v0, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {v0}, Lrc/a$g;->o()Z

    move-result v0

    return v0

    :cond_3
    sget-object v0, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {v0}, Lrc/a$g;->F()Z

    move-result v0

    return v0

    :cond_4
    sget-object v0, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {v0}, Lrc/a$g;->K()Z

    move-result v0

    return v0

    :cond_5
    sget-object v0, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {v0}, Lrc/a$g;->A()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->mouseButton:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->mouseButton:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

    .line 4
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->outputKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->outputKey:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->mouseButton:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;)V

    const-string v2, "Mouse button"

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

    invoke-static {v2, v3, v0, v1}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;)V

    const-string v2, "Output key"

    sget-object v3, LC5/b$a;->SLString:LC5/b$a;

    invoke-direct {v0, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getMouseButton()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->mouseButton:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

    return-object v0
.end method

.method public getOutputKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->outputKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "MouseMapper"

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->E:Lcom/itsmagic/engine/Engines/Input/Key;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Input/Key;->i(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->E:Lcom/itsmagic/engine/Engines/Input/Key;

    :cond_0
    return-void
.end method

.method public parallelDisabledUpdate()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->parallelDisabledUpdate()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->F:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->E:Lcom/itsmagic/engine/Engines/Input/Key;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Input/Key;->i(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->F:Z

    :cond_1
    return-void
.end method

.method public parallelUpdate()V
    .locals 3

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->parallelUpdate()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->outputKey:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->E:Lcom/itsmagic/engine/Engines/Input/Key;

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->E:Lcom/itsmagic/engine/Engines/Input/Key;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->outputKey:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->E:Lcom/itsmagic/engine/Engines/Input/Key;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->outputKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Input/Key;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->E:Lcom/itsmagic/engine/Engines/Input/Key;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->E:Lcom/itsmagic/engine/Engines/Input/Key;

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->E:Lcom/itsmagic/engine/Engines/Input/Key;

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->E:Lcom/itsmagic/engine/Engines/Input/Key;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->outputKey:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->outputKey:Ljava/lang/String;

    invoke-static {v0}, Lrc/a;->G(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Input/Key;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->E:Lcom/itsmagic/engine/Engines/Input/Key;

    :cond_4
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->E:Lcom/itsmagic/engine/Engines/Input/Key;

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->isMouseButtonPressed()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->E:Lcom/itsmagic/engine/Engines/Input/Key;

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Input/Key;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->E:Lcom/itsmagic/engine/Engines/Input/Key;

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Input/Key;->i(Ljava/lang/Object;)V

    :cond_6
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->F:Z

    return-void
.end method

.method public setMouseButton(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mouseButton"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->mouseButton:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper$d;

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->outputKey:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->G:LJAVARuntime/Component;

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->G:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/MouseMapper;

    invoke-direct {v0, p0}, LJAVARuntime/MouseMapper;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/MouseMapper;->G:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

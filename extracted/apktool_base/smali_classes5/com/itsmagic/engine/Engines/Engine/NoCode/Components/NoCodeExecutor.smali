.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final F:Ljava/lang/String; = "NoCodeExecutor"

.field public static final G:Ljava/lang/Class;


# instance fields
.field public transient E:Z

.field private noCodeData:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->G:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "NoCodeExecutor"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lga/E;->c()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->noCodeData:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    return-void
.end method

.method private dispatchStartEventIfNeeded(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->E:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-wide v0, LK8/a;->t:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lc8/b;->k()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->E:Z

    const-class v0, LLa/a;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->E(Ljava/lang/Class;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public varargs callFunction(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "functionName",
            "args"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->callFunction(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->getNoCodeData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->Y0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->C(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 4

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->noCodeData:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->e1()V

    .line 5
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v1

    .line 6
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->noCodeData:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v2

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    .line 7
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->noCodeData:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->I()V

    :cond_0
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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public countAsync()I
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->noCodeData:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->getNoCodeData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->r()I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    return v1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->getNoCodeData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->Z(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getAttributeById(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->getNoCodeData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->a0(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getDependencyFiles(LIc/h;)LIc/k;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dependencyRequest"
        }
    .end annotation

    new-instance v0, LIc/k;

    invoke-direct {v0}, LIc/k;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->noCodeData:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v1, :cond_0

    iget-object v2, v0, LIc/k;->a:Ljava/util/List;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->d0(LIc/h;)LIc/k;

    move-result-object p1

    iget-object p1, p1, LIc/k;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "NoCode"

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f0701b7

    return v0
.end method

.method public getInspectorColor(Landroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const p1, 0x7f05009d

    return p1
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->getNoCodeData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor$b;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;)V

    invoke-virtual {v1, p1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->f0(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getInspectorExtras()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LC5/m;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor$d;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;)V

    return-object v0
.end method

.method public getLongTapMenu()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldd/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor$c;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;)V

    return-object v0
.end method

.method public getNoCodeData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->noCodeData:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-nez v0, :cond_0

    invoke-static {}, Lga/E;->c()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->noCodeData:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->noCodeData:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->Y0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->noCodeData:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->I()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->noCodeData:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "NoCode"

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public loadAsync(LLb/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->noCodeData:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->x0(LLb/a;)V

    :cond_0
    invoke-interface {p1}, LLb/a;->e()V

    return-void
.end method

.method public lowTaskUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
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

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->lowTaskUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->getNoCodeData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->Y0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->i1()V

    return-void
.end method

.method public onAttach()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onAttach()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->E:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->getNoCodeData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->Y0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->D0()V

    return-void
.end method

.method public onCollision(Lj9/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collision"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onCollision(Lj9/a;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->getNoCodeData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->Y0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    const-class v1, LPa/c;

    invoke-virtual {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->B(Ljava/lang/Class;Lj9/a;)V

    :cond_0
    return-void
.end method

.method public onCollisionEnter(Lj9/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collision"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onCollisionEnter(Lj9/a;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->getNoCodeData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->Y0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    const-class v1, LPa/b;

    invoke-virtual {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->y(Ljava/lang/Class;Lj9/a;)V

    :cond_0
    return-void
.end method

.method public onCollisionStop(Lj9/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collision"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onCollisionStop(Lj9/a;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->getNoCodeData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->Y0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    const-class v1, LPa/d;

    invoke-virtual {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->D(Ljava/lang/Class;Lj9/a;)V

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->E:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->noCodeData:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->E0()V

    :cond_0
    return-void
.end method

.method public onGameStateChanged(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "running",
            "paused"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onGameStateChanged(ZZ)V

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->E:Z

    :cond_0
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

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->getNoCodeData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->Y0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-direct {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->dispatchStartEventIfNeeded(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h1()V

    return-void
.end method

.method public reloadFilesPaths(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dictionary"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->noCodeData:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->M0(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V

    :cond_0
    return-void
.end method

.method public serialize(Landroid/content/Context;)Lcom/google/gson/JsonElement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->noCodeData:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->e1()V

    :cond_0
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->serialize(Landroid/content/Context;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->getNoCodeData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->V0(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    :cond_1
    return p1
.end method

.method public setAttributeById(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "value"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->getNoCodeData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->W0(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    :cond_1
    return p1
.end method

.method public setNoCodeData(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "noCodeData"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->noCodeData:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-ne v0, p1, :cond_0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, p1, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->Y0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->E:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->E0()V

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lga/E;->c()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->noCodeData:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1, v0, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->Y0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->noCodeData:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->D0()V

    :cond_3
    return-void
.end method

.method public shouldTintIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public varargs willCallFunction(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "functionName",
            "args"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

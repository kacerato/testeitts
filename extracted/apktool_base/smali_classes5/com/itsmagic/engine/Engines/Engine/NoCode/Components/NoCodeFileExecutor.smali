.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final H:Ljava/lang/String; = "NoCodeFileExecutor"

.field public static final I:Ljava/lang/Class;


# instance fields
.field public E:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;

.field public F:Ljava/lang/String;

.field public transient G:Z

.field private file:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private runtimeAttributeStates:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttributeState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->I:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "NoCodeFileExecutor"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->runtimeAttributeStates:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 3
    const-string v0, "NoCodeFileExecutor"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->runtimeAttributeStates:Ljava/util/List;

    .line 5
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->file:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->file:Ljava/lang/String;

    return-object p0
.end method

.method private applyStoredRuntimeAttributeValues(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->runtimeAttributeStates:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->H()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->runtimeAttributeStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttributeState;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttributeState;->attributeId:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttributeState;->attributeId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->T(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->i0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->w(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->i0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->f(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    goto :goto_0

    :cond_3
    :goto_1
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

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->G:Z

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

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->G:Z

    const-class v0, LLa/a;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->E(Ljava/lang/Class;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private getNoCodeData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->E:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;->data:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->Y0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->E:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;->data:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private updateFile()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->file:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->F:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->F:Ljava/lang/String;

    if-eqz v0, :cond_4

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->G:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->file:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;->e(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->E:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->E:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;

    :goto_1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->getNoCodeData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->I()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->Y0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->applyStoredRuntimeAttributeValues(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->file:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->F:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    :cond_4
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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->getNoCodeData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->Y0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->C(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 5

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->file:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->file:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->runtimeAttributeStates:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->runtimeAttributeStates:Ljava/util/List;

    .line 6
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->runtimeAttributeStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttributeState;

    if-eqz v2, :cond_0

    .line 7
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttributeState;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttributeState;-><init>()V

    .line 8
    iget-object v4, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttributeState;->attributeId:Ljava/lang/String;

    iput-object v4, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttributeState;->attributeId:Ljava/lang/String;

    .line 9
    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->c(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;)V

    .line 10
    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->runtimeAttributeStates:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public countAsync()I
    .locals 1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->updateFile()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->getNoCodeData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->r()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    return v0
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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->getNoCodeData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->getNoCodeData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

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
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dependencyRequest"
        }
    .end annotation

    new-instance p1, LIc/k;

    invoke-direct {p1}, LIc/k;-><init>()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->file:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p1, LIc/k;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "NoCode"

    return-object v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->file:Ljava/lang/String;

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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->getNoCodeData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor$b;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;)V

    invoke-virtual {v1, p1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->f0(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData$q;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
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

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor$d;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;)V

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

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor$c;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;)V

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->file:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v1}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->updateFile()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->getNoCodeData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->getNoCodeData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

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

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->E:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;->data:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->Y0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->E:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;->data:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->i1()V

    :cond_0
    return-void
.end method

.method public onAttach()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onAttach()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->G:Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->updateFile()V

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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->getNoCodeData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->getNoCodeData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->getNoCodeData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

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

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->G:Z

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

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->G:Z

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

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->E:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;->data:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->Y0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->E:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;->data:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->dispatchStartEventIfNeeded(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->E:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;->data:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h1()V

    :cond_0
    return-void
.end method

.method public receiveEvent(LLb/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->receiveEvent(LLb/c;)V

    instance-of p1, p1, Lha/a;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->E:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeGraph;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->F:Ljava/lang/String;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->updateFile()V

    :cond_0
    return-void
.end method

.method public reloadFilesPaths(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dictionary"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->file:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->file:Ljava/lang/String;

    const-string v1, "@@ASSET@@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->file:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->f(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NoCodeFileExecutor: REPLACING "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->file:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " TO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->file:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public serialize(Landroid/content/Context;)Lcom/google/gson/JsonElement;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->storeRuntimeAttributeValues()V

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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->getNoCodeData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

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

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->storeRuntimeAttributeValues()V

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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->getNoCodeData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

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

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->storeRuntimeAttributeValues()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    :cond_1
    return p1
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->file:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->file:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->updateFile()V

    :cond_0
    return-void
.end method

.method public shouldTintIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public storeRuntimeAttributeValues()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->runtimeAttributeStates:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->runtimeAttributeStates:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->getNoCodeData()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->H()V

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttributeState;->x(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttributeState;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->runtimeAttributeStates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
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

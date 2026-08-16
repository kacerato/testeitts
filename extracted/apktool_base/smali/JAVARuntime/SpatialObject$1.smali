.class LJAVARuntime/SpatialObject$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP8/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/SpatialObject;->inspectorController()LP8/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$thisClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$thisClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/SpatialObject$1;->val$thisClass:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addParent(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ")V"
        }
    .end annotation

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->j()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {p0, p1, p2}, LJAVARuntime/SpatialObject$1;->addParent(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getInspector(Landroid/content/Context;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/String;LP8/n;LP8/q;)LC5/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "field",
            "classInstance",
            "tittle",
            "getSetterListener",
            "userPointer"
        }
    .end annotation

    new-instance p1, LC5/b;

    new-instance p6, LJAVARuntime/SpatialObject$1$1;

    invoke-direct {p6, p0, p2, p3, p5}, LJAVARuntime/SpatialObject$1$1;-><init>(LJAVARuntime/SpatialObject$1;Ljava/lang/reflect/Field;Ljava/lang/Object;LP8/n;)V

    invoke-direct {p1, p6, p4}, LC5/b;-><init>(LD5/k;Ljava/lang/String;)V

    return-object p1
.end method

.method public getInspectorForArray(Landroid/content/Context;[Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/String;LP8/n;LP8/q;)LC5/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "array",
            "position",
            "classInstance",
            "tittle",
            "getSetterListener",
            "userPointer"
        }
    .end annotation

    new-instance p1, LC5/b;

    new-instance p4, LJAVARuntime/SpatialObject$1$2;

    invoke-direct {p4, p0, p2, p3, p6}, LJAVARuntime/SpatialObject$1$2;-><init>(LJAVARuntime/SpatialObject$1;[Ljava/lang/Object;ILP8/n;)V

    invoke-direct {p1, p4, p5}, LC5/b;-><init>(LD5/k;Ljava/lang/String;)V

    return-object p1
.end method

.method public getInspectorForList(Landroid/content/Context;Ld8/h;ILjava/lang/Object;Ljava/lang/String;LP8/n;LP8/q;)LC5/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "list",
            "position",
            "classInstance",
            "tittle",
            "getSetterListener",
            "userPointer"
        }
    .end annotation

    new-instance p1, LC5/b;

    new-instance p4, LJAVARuntime/SpatialObject$1$3;

    invoke-direct {p4, p0, p2, p3, p6}, LJAVARuntime/SpatialObject$1$3;-><init>(LJAVARuntime/SpatialObject$1;Ld8/h;ILP8/n;)V

    invoke-direct {p1, p4, p5}, LC5/b;-><init>(LD5/k;Ljava/lang/String;)V

    return-object p1
.end method

.method public getSimpleName(LP8/q;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userPointer"
        }
    .end annotation

    iget-object p1, p0, LJAVARuntime/SpatialObject$1;->val$thisClass:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isRestorable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    return-void
.end method

.method public match(Ljava/lang/String;LP8/q;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "className",
            "userPointer"
        }
    .end annotation

    iget-object p2, p0, LJAVARuntime/SpatialObject$1;->val$thisClass:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ld8/j;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ld8/j;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public newInstance(LP8/q;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userPointer"
        }
    .end annotation

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->W1()LJAVARuntime/SpatialObject;

    move-result-object p1

    return-object p1
.end method

.method public restore(Lcom/itsmagic/engine/Engines/Utils/Variable;LP8/q;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "variable",
            "userPointer"
        }
    .end annotation

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    sget-object v1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->String:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v0, v1, :cond_7

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/SpatialInspectorSave;->a(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/SpatialInspectorSave;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "inspectorSave == null, using the unique guid technique"

    invoke-virtual {p0, v1}, LJAVARuntime/SpatialObject$1;->log(Ljava/lang/String;)V

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    invoke-static {v0, v1}, LLb/k;->h(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/World/World;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->W1()LJAVARuntime/SpatialObject;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p2, LP8/q;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->F0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/SpatialInspectorSave;->masterParentDuplicableID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p1, "Master parent duplicable match"

    invoke-virtual {p0, p1}, LJAVARuntime/SpatialObject$1;->log(Ljava/lang/String;)V

    iget-object p1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/SpatialInspectorSave;->objectsDuplicableIDs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_4

    :goto_1
    iget-object p1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/SpatialInspectorSave;->objectsDuplicableIDs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p2, p1, :cond_3

    iget-object p1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/SpatialInspectorSave;->objectsDuplicableIDs:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lgb/e;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Child found "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LJAVARuntime/SpatialObject$1;->log(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    const-string p1, "Using last found has the object"

    invoke-virtual {p0, p1}, LJAVARuntime/SpatialObject$1;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->W1()LJAVARuntime/SpatialObject;

    move-result-object p1

    return-object p1

    :cond_4
    const-string p1, "inspectorSave.objectsInstanciableIDs.size() <= 1, using the actualMasterParent has the object"

    invoke-virtual {p0, p1}, LJAVARuntime/SpatialObject$1;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->W1()LJAVARuntime/SpatialObject;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v0, "Master parent differs, searching for unique GUID"

    invoke-virtual {p0, v0}, LJAVARuntime/SpatialObject$1;->log(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/SpatialInspectorSave;->objectUniqueID:Ljava/lang/String;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    invoke-static {v0, v1}, LLb/k;->h(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/World/World;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->W1()LJAVARuntime/SpatialObject;

    move-result-object p1

    return-object p1

    :cond_6
    const-string v0, "userPointer.gameObject == null, searching object using the inspectorSave.objectUniqueID"

    invoke-virtual {p0, v0}, LJAVARuntime/SpatialObject$1;->log(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/SpatialInspectorSave;->objectUniqueID:Ljava/lang/String;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    invoke-static {v0, v1}, LLb/k;->h(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/World/World;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->W1()LJAVARuntime/SpatialObject;

    move-result-object p1

    return-object p1

    :cond_7
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    sget-object v1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->ObjectReferenceJson:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v0, v1, :cond_9

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    :try_start_0
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    if-eqz p1, :cond_9

    if-eqz p2, :cond_8

    iget-object p2, p2, LP8/q;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->o(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->k()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->W1()LJAVARuntime/SpatialObject;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public save(Ljava/lang/String;Ljava/lang/Object;LP8/q;)Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "value",
            "userPointer"
        }
    .end annotation

    :try_start_0
    check-cast p2, LJAVARuntime/SpatialObject;

    if-eqz p2, :cond_1

    iget-object v0, p2, LJAVARuntime/SpatialObject;->instance:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;

    iget-object p2, p2, LJAVARuntime/SpatialObject;->instance:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {v0, p2}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    if-eqz p3, :cond_0

    iget-object p2, p3, LP8/q;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->o(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->q()V

    new-instance p2, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvObjectReference;->r()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->ObjectReferenceJson:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iput-object p3, p2, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    new-instance p2, Lcom/itsmagic/engine/Engines/Utils/Variable;

    const-string p3, ""

    sget-object v0, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->ObjectReferenceJson:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    invoke-direct {p2, p1, p3, v0}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Utils/Variable$a;)V

    return-object p2
.end method

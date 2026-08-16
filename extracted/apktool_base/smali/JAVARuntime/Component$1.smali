.class LJAVARuntime/Component$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP8/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/Component;->inspectorController()LP8/h;
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

    iput-object p1, p0, LJAVARuntime/Component$1;->val$thisClass:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInspector(Landroid/content/Context;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/String;LP8/n;LP8/q;)LC5/b;
    .locals 7
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

    new-instance v6, LJAVARuntime/Component$1$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, LJAVARuntime/Component$1$1;-><init>(LJAVARuntime/Component$1;Ljava/lang/reflect/Field;Ljava/lang/Object;LP8/q;LP8/n;)V

    invoke-direct {p1, v6, p4}, LC5/b;-><init>(LD5/d;Ljava/lang/String;)V

    return-object p1
.end method

.method public getInspectorForArray(Landroid/content/Context;[Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/String;LP8/n;LP8/q;)LC5/b;
    .locals 6
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

    new-instance p4, LJAVARuntime/Component$1$2;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p7

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, LJAVARuntime/Component$1$2;-><init>(LJAVARuntime/Component$1;[Ljava/lang/Object;ILP8/q;LP8/n;)V

    invoke-direct {p1, p4, p5}, LC5/b;-><init>(LD5/d;Ljava/lang/String;)V

    return-object p1
.end method

.method public getInspectorForList(Landroid/content/Context;Ld8/h;ILjava/lang/Object;Ljava/lang/String;LP8/n;LP8/q;)LC5/b;
    .locals 6
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

    new-instance p4, LJAVARuntime/Component$1$3;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p7

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, LJAVARuntime/Component$1$3;-><init>(LJAVARuntime/Component$1;Ld8/h;ILP8/q;LP8/n;)V

    invoke-direct {p1, p4, p5}, LC5/b;-><init>(LD5/d;Ljava/lang/String;)V

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

    iget-object p1, p0, LJAVARuntime/Component$1;->val$thisClass:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isRestorable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public match(Ljava/lang/String;LP8/q;)Z
    .locals 5
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

    const-class v0, LJAVARuntime/Component;

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1}, Ld8/j;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JAVARuntime."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object v2, p2, LP8/q;->b:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    sget-object v2, LW7/b;->j:Ld8/j;

    invoke-static {p1}, Ld8/j;->G0(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v2, p2, LP8/q;->b:Ljava/lang/Class;

    return v1

    :cond_0
    iget-object p2, p0, LJAVARuntime/Component$1;->val$thisClass:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ld8/j;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ld8/j;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
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

    new-instance p1, LJAVARuntime/Component;

    invoke-direct {p1}, LJAVARuntime/Component;-><init>()V

    return-object p1
.end method

.method public restore(Lcom/itsmagic/engine/Engines/Utils/Variable;LP8/q;)Ljava/lang/Object;
    .locals 2
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

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    invoke-static {v0, v1}, LLb/k;->c(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/World/World;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->toJAVARuntime()LJAVARuntime/Component;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    sget-object v1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->ObjectReferenceJson:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v0, v1, :cond_2

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iget-object p2, p2, LP8/q;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->i(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->g()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->toJAVARuntime()LJAVARuntime/Component;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
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
    check-cast p2, LJAVARuntime/Component;

    if-eqz p2, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;

    invoke-virtual {p2}, LJAVARuntime/Component;->getEngineComponent()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    if-eqz p3, :cond_0

    iget-object p2, p3, LP8/q;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->i(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->j()V

    new-instance p2, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/AdvComponentReference;->k()Ljava/lang/String;

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

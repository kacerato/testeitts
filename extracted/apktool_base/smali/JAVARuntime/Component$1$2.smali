.class LJAVARuntime/Component$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/Component$1;->getInspectorForArray(Landroid/content/Context;[Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/String;LP8/n;LP8/q;)LC5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/Component$1;

.field final synthetic val$array:[Ljava/lang/Object;

.field final synthetic val$getSetterListener:LP8/n;

.field final synthetic val$position:I

.field final synthetic val$userPointer:LP8/q;


# direct methods
.method public constructor <init>(LJAVARuntime/Component$1;[Ljava/lang/Object;ILP8/q;LP8/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$array",
            "val$position",
            "val$userPointer",
            "val$getSetterListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/Component$1$2;->this$0:LJAVARuntime/Component$1;

    iput-object p2, p0, LJAVARuntime/Component$1$2;->val$array:[Ljava/lang/Object;

    iput p3, p0, LJAVARuntime/Component$1$2;->val$position:I

    iput-object p4, p0, LJAVARuntime/Component$1$2;->val$userPointer:LP8/q;

    iput-object p5, p0, LJAVARuntime/Component$1$2;->val$getSetterListener:LP8/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allowSelect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public get()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    iget-object v0, p0, LJAVARuntime/Component$1$2;->val$array:[Ljava/lang/Object;

    iget v1, p0, LJAVARuntime/Component$1$2;->val$position:I

    aget-object v0, v0, v1

    check-cast v0, LJAVARuntime/Component;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LJAVARuntime/Component;->getEngineComponent()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllowObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtraTittle()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, LJAVARuntime/Component$1$2;->val$array:[Ljava/lang/Object;

    iget v1, p0, LJAVARuntime/Component$1$2;->val$position:I

    aget-object v0, v0, v1

    check-cast v0, LJAVARuntime/Component;

    if-eqz v0, :cond_1

    iget-object v1, v0, LJAVARuntime/Component;->javaComponent:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, v0, LJAVARuntime/Component;->component:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, LJAVARuntime/Component$1$2;->val$userPointer:LP8/q;

    iget-object v0, v0, LP8/q;->b:Ljava/lang/Class;

    const-string v1, " - "

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LJAVARuntime/Component$1$2;->val$userPointer:LP8/q;

    iget-object v1, v1, LP8/q;->b:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_I"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method public getTittle()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, LJAVARuntime/Component$1$2;->val$array:[Ljava/lang/Object;

    iget v1, p0, LJAVARuntime/Component$1$2;->val$position:I

    aget-object v0, v0, v1

    check-cast v0, LJAVARuntime/Component;

    if-eqz v0, :cond_1

    iget-object v1, v0, LJAVARuntime/Component;->javaComponent:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, v0, LJAVARuntime/Component;->component:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, LJAVARuntime/Component$1$2;->val$userPointer:LP8/q;

    iget-object v0, v0, LP8/q;->b:Ljava/lang/Class;

    const-string v1, ""

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "_I"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method public match(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Component$1$2;->val$array:[Ljava/lang/Object;

    iget v1, p0, LJAVARuntime/Component$1$2;->val$position:I

    aget-object v0, v0, v1

    check-cast v0, LJAVARuntime/Component;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->toJAVARuntime()LJAVARuntime/Component;

    move-result-object p1

    invoke-virtual {v0, v0, p1}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->toJAVARuntime()LJAVARuntime/Component;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LJAVARuntime/Component$1$2;->val$userPointer:LP8/q;

    iget-object v1, v1, LP8/q;->b:Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->toJAVARuntime()LJAVARuntime/Component;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    if-eqz p1, :cond_2

    :try_start_0
    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent;->F:Ljava/lang/Class;

    if-eqz p1, :cond_2

    iget-object v1, p0, LJAVARuntime/Component$1$2;->val$userPointer:LP8/q;

    iget-object v1, v1, LP8/q;->b:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    return v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :catch_1
    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public set(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/Component$1$2;->val$array:[Ljava/lang/Object;

    iget v1, p0, LJAVARuntime/Component$1$2;->val$position:I

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->toJAVARuntime()LJAVARuntime/Component;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, LJAVARuntime/Component$1$2;->val$getSetterListener:LP8/n;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->toJAVARuntime()LJAVARuntime/Component;

    move-result-object p1

    invoke-interface {v0, p1}, LP8/n;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/Component$1$2;->val$array:[Ljava/lang/Object;

    iget v0, p0, LJAVARuntime/Component$1$2;->val$position:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    iget-object p1, p0, LJAVARuntime/Component$1$2;->val$getSetterListener:LP8/n;

    if-eqz p1, :cond_1

    invoke-interface {p1, v1}, LP8/n;->a(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

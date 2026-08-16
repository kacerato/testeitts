.class Lcom/jme3/util/MaterialDebugAppState$FilterBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/MaterialDebugAppState$Binding;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/util/MaterialDebugAppState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FilterBinding"
.end annotation


# instance fields
.field filter:Lcom/jme3/post/Filter;

.field final synthetic this$0:Lcom/jme3/util/MaterialDebugAppState;

.field trigger:Lcom/jme3/input/controls/Trigger;


# direct methods
.method public constructor <init>(Lcom/jme3/util/MaterialDebugAppState;Lcom/jme3/input/controls/Trigger;Lcom/jme3/post/Filter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/util/MaterialDebugAppState$FilterBinding;->this$0:Lcom/jme3/util/MaterialDebugAppState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/jme3/util/MaterialDebugAppState$FilterBinding;->trigger:Lcom/jme3/input/controls/Trigger;

    iput-object p3, p0, Lcom/jme3/util/MaterialDebugAppState$FilterBinding;->filter:Lcom/jme3/post/Filter;

    return-void
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jme3/util/MaterialDebugAppState$FilterBinding;->filter:Lcom/jme3/post/Filter;

    invoke-virtual {v1}, Lcom/jme3/post/Filter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Reload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrigger()Lcom/jme3/input/controls/Trigger;
    .locals 1

    iget-object v0, p0, Lcom/jme3/util/MaterialDebugAppState$FilterBinding;->trigger:Lcom/jme3/input/controls/Trigger;

    return-object v0
.end method

.method public reload()V
    .locals 7

    iget-object v0, p0, Lcom/jme3/util/MaterialDebugAppState$FilterBinding;->filter:Lcom/jme3/post/Filter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/util/MaterialDebugAppState$FilterBinding;->filter:Lcom/jme3/post/Filter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/jme3/material/Material;

    invoke-direct {v0}, Lcom/jme3/material/Material;-><init>()V

    new-instance v1, Lcom/jme3/post/Filter$Pass;

    iget-object v3, p0, Lcom/jme3/util/MaterialDebugAppState$FilterBinding;->filter:Lcom/jme3/post/Filter;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v1, v3}, Lcom/jme3/post/Filter$Pass;-><init>(Lcom/jme3/post/Filter;)V

    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {v3, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object v4, p0, Lcom/jme3/util/MaterialDebugAppState$FilterBinding;->this$0:Lcom/jme3/util/MaterialDebugAppState;

    iget-object v6, p0, Lcom/jme3/util/MaterialDebugAppState$FilterBinding;->filter:Lcom/jme3/post/Filter;

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jme3/material/Material;

    invoke-virtual {v4, v6}, Lcom/jme3/util/MaterialDebugAppState;->reloadMaterial(Lcom/jme3/material/Material;)Lcom/jme3/material/Material;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    iget-object v6, p0, Lcom/jme3/util/MaterialDebugAppState$FilterBinding;->filter:Lcom/jme3/post/Filter;

    invoke-virtual {v3, v6, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_0
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object v1, p0, Lcom/jme3/util/MaterialDebugAppState$FilterBinding;->filter:Lcom/jme3/post/Filter;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/post/Filter$Pass;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/jme3/post/Filter$Pass;->getPassMaterial()Lcom/jme3/material/Material;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/jme3/util/MaterialDebugAppState$FilterBinding;->this$0:Lcom/jme3/util/MaterialDebugAppState;

    invoke-virtual {v1}, Lcom/jme3/post/Filter$Pass;->getPassMaterial()Lcom/jme3/material/Material;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/jme3/util/MaterialDebugAppState;->reloadMaterial(Lcom/jme3/material/Material;)Lcom/jme3/material/Material;

    move-result-object v4

    if-nez v4, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1, v4}, Lcom/jme3/post/Filter$Pass;->setPassMaterial(Lcom/jme3/material/Material;)V

    :cond_4
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "postRenderPasses"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/jme3/util/MaterialDebugAppState$FilterBinding;->filter:Lcom/jme3/post/Filter;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/post/Filter$Pass;

    iget-object v5, p0, Lcom/jme3/util/MaterialDebugAppState$FilterBinding;->this$0:Lcom/jme3/util/MaterialDebugAppState;

    invoke-virtual {v4}, Lcom/jme3/post/Filter$Pass;->getPassMaterial()Lcom/jme3/material/Material;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jme3/util/MaterialDebugAppState;->reloadMaterial(Lcom/jme3/material/Material;)Lcom/jme3/material/Material;

    move-result-object v5

    if-nez v5, :cond_5

    return-void

    :cond_5
    invoke-virtual {v4, v5}, Lcom/jme3/post/Filter$Pass;->setPassMaterial(Lcom/jme3/material/Material;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_2
    const-class v1, Lcom/jme3/util/MaterialDebugAppState;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    return-void
.end method

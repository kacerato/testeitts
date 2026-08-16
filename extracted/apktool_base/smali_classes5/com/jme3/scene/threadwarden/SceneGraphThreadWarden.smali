.class public Lcom/jme3/scene/threadwarden/SceneGraphThreadWarden;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static ASSERTS_ENABLED:Z

.field public static THREAD_WARDEN_ENABLED:Z

.field private static final logger:Ljava/util/logging/Logger;

.field public static final spatialsThatAreMainThreadReserved:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/jme3/scene/Spatial;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/scene/threadwarden/SceneGraphThreadWarden;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/scene/threadwarden/SceneGraphThreadWarden;->logger:Ljava/util/logging/Logger;

    const-string v0, "nothreadwarden"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/jme3/scene/threadwarden/SceneGraphThreadWarden;->THREAD_WARDEN_ENABLED:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/jme3/scene/threadwarden/SceneGraphThreadWarden;->ASSERTS_ENABLED:Z

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/jme3/scene/threadwarden/SceneGraphThreadWarden;->spatialsThatAreMainThreadReserved:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertOnCorrectThread(Lcom/jme3/scene/Spatial;)Z
    .locals 3

    invoke-static {}, Lcom/jme3/scene/threadwarden/SceneGraphThreadWarden;->checksDisabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/jme3/scene/threadwarden/SceneGraphThreadWarden;->spatialsThatAreMainThreadReserved:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v2, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The spatial "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " was mutated on a thread other than the main thread, was mutated on "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/jme3/scene/threadwarden/IllegalThreadSceneGraphMutation;

    invoke-direct {v0, p0}, Lcom/jme3/scene/threadwarden/IllegalThreadSceneGraphMutation;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/jme3/scene/threadwarden/SceneGraphThreadWarden;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_0
    return v1
.end method

.method private static checksDisabled()Z
    .locals 1

    sget-boolean v0, Lcom/jme3/scene/threadwarden/SceneGraphThreadWarden;->THREAD_WARDEN_ENABLED:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/jme3/scene/threadwarden/SceneGraphThreadWarden;->ASSERTS_ENABLED:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static disableChecks()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/jme3/scene/threadwarden/SceneGraphThreadWarden;->THREAD_WARDEN_ENABLED:Z

    return-void
.end method

.method public static getTurnOnAssertsPrompt()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/jme3/scene/threadwarden/SceneGraphThreadWarden;->ASSERTS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v0, "To get more accurate debug consider turning on asserts. This will allow JME to do additional checks which *may* find the source of the problem. To do so, add -ea to the JVM arguments."

    return-object v0
.end method

.method public static reset()Z
    .locals 2

    sget-object v0, Lcom/jme3/scene/threadwarden/SceneGraphThreadWarden;->spatialsThatAreMainThreadReserved:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v0, "nothreadwarden"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/jme3/scene/threadwarden/SceneGraphThreadWarden;->THREAD_WARDEN_ENABLED:Z

    return v1
.end method

.method private static setTreeNotRestricted(Lcom/jme3/scene/Spatial;)V
    .locals 1

    sget-object v0, Lcom/jme3/scene/threadwarden/SceneGraphThreadWarden;->spatialsThatAreMainThreadReserved:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-static {v0}, Lcom/jme3/scene/threadwarden/SceneGraphThreadWarden;->setTreeNotRestricted(Lcom/jme3/scene/Spatial;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static setTreeRestricted(Lcom/jme3/scene/Spatial;Ljava/lang/Thread;)V
    .locals 1

    sget-object v0, Lcom/jme3/scene/threadwarden/SceneGraphThreadWarden;->spatialsThatAreMainThreadReserved:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-static {v0, p1}, Lcom/jme3/scene/threadwarden/SceneGraphThreadWarden;->setTreeRestricted(Lcom/jme3/scene/Spatial;Ljava/lang/Thread;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setup(Lcom/jme3/scene/Node;)Z
    .locals 3

    invoke-static {}, Lcom/jme3/scene/threadwarden/SceneGraphThreadWarden;->checksDisabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v2, Lcom/jme3/scene/threadwarden/SceneGraphThreadWarden;->spatialsThatAreMainThreadReserved:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    if-eqz v2, :cond_2

    if-ne v2, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The node is already restricted to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but now it\'s being restricted to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-static {p0, v0}, Lcom/jme3/scene/threadwarden/SceneGraphThreadWarden;->setTreeRestricted(Lcom/jme3/scene/Spatial;Ljava/lang/Thread;)V

    return v1
.end method

.method public static updateRequirement(Lcom/jme3/scene/Spatial;Lcom/jme3/scene/Node;)Z
    .locals 2

    invoke-static {}, Lcom/jme3/scene/threadwarden/SceneGraphThreadWarden;->checksDisabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/jme3/scene/threadwarden/SceneGraphThreadWarden;->spatialsThatAreMainThreadReserved:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/jme3/scene/threadwarden/SceneGraphThreadWarden;->spatialsThatAreMainThreadReserved:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez p1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {p0}, Lcom/jme3/scene/threadwarden/SceneGraphThreadWarden;->assertOnCorrectThread(Lcom/jme3/scene/Spatial;)Z

    :cond_3
    if-ne p1, v0, :cond_4

    return v1

    :cond_4
    if-eqz p1, :cond_5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/jme3/scene/threadwarden/SceneGraphThreadWarden;->setTreeRestricted(Lcom/jme3/scene/Spatial;Ljava/lang/Thread;)V

    goto :goto_1

    :cond_5
    invoke-static {p0}, Lcom/jme3/scene/threadwarden/SceneGraphThreadWarden;->setTreeNotRestricted(Lcom/jme3/scene/Spatial;)V

    :goto_1
    return v1
.end method

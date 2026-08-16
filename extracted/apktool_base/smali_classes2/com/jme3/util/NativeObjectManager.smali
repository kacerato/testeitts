.class public Lcom/jme3/util/NativeObjectManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/util/NativeObjectManager$NativeObjectRef;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MAX_REMOVES_PER_FRAME:I = 0x64

.field public static UNSAFE:Z

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final refMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/jme3/util/NativeObjectManager$NativeObjectRef;",
            ">;"
        }
    .end annotation
.end field

.field private refQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final userDeletionQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/jme3/util/NativeObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/util/NativeObjectManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/util/NativeObjectManager;->logger:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/jme3/util/NativeObjectManager;->UNSAFE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/NativeObjectManager;->refQueue:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/NativeObjectManager;->refMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/NativeObjectManager;->userDeletionQueue:Ljava/util/ArrayDeque;

    return-void
.end method

.method private deleteNativeObject(Ljava/lang/Object;Lcom/jme3/util/NativeObject;Lcom/jme3/util/NativeObjectManager$NativeObjectRef;ZZ)V
    .locals 3

    if-eqz p3, :cond_0

    invoke-static {p3}, Lcom/jme3/util/NativeObjectManager$NativeObjectRef;->access$000(Lcom/jme3/util/NativeObjectManager$NativeObjectRef;)Ljava/lang/ref/WeakReference;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jme3/util/NativeObject;

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    if-eqz p4, :cond_4

    invoke-virtual {p2}, Lcom/jme3/util/NativeObject;->getId()I

    move-result p4

    const-string v0, "/"

    if-gtz p4, :cond_1

    sget-object p1, Lcom/jme3/util/NativeObjectManager;->logger:Ljava/util/logging/Logger;

    sget-object p4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/jme3/util/NativeObject;->getId()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Object already deleted: {0}"

    invoke-virtual {p1, p4, v0, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object p4, p0, Lcom/jme3/util/NativeObjectManager;->refMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/jme3/util/NativeObject;->getUniqueId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/jme3/util/NativeObjectManager$NativeObjectRef;

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/ref/Reference;->clear()V

    invoke-virtual {p2}, Lcom/jme3/util/NativeObject;->getId()I

    move-result p4

    invoke-virtual {p2, p1}, Lcom/jme3/util/NativeObject;->deleteObject(Ljava/lang/Object;)V

    sget-object p1, Lcom/jme3/util/NativeObjectManager;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "Deleted: {0}"

    invoke-virtual {p1, v1, p4, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/jme3/util/NativeObject;->resetObject()V

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "The "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " NativeObject is not registered in this NativeObjectManager"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    if-eqz p5, :cond_5

    sget-boolean p1, Lcom/jme3/util/NativeObjectManager;->UNSAFE:Z

    if-eqz p1, :cond_5

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lcom/jme3/util/NativeObject;->deleteNativeBuffersInternal()V

    :cond_5
    return-void
.end method


# virtual methods
.method public deleteAllObjects(Ljava/lang/Object;)V
    .locals 8

    invoke-virtual {p0, p1}, Lcom/jme3/util/NativeObjectManager;->deleteUnused(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jme3/util/NativeObjectManager;->refMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/jme3/util/NativeObjectManager$NativeObjectRef;

    invoke-static {v5}, Lcom/jme3/util/NativeObjectManager$NativeObjectRef;->access$100(Lcom/jme3/util/NativeObjectManager$NativeObjectRef;)Lcom/jme3/util/NativeObject;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/jme3/util/NativeObjectManager;->deleteNativeObject(Ljava/lang/Object;Lcom/jme3/util/NativeObject;Lcom/jme3/util/NativeObjectManager$NativeObjectRef;ZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public deleteUnused(Ljava/lang/Object;)V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/jme3/util/NativeObjectManager;->userDeletionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/jme3/util/NativeObjectManager;->userDeletionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/jme3/util/NativeObject;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/jme3/util/NativeObjectManager;->deleteNativeObject(Ljava/lang/Object;Lcom/jme3/util/NativeObject;Lcom/jme3/util/NativeObjectManager$NativeObjectRef;ZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/jme3/util/NativeObjectManager;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/jme3/util/NativeObjectManager$NativeObjectRef;

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v6}, Lcom/jme3/util/NativeObjectManager$NativeObjectRef;->access$100(Lcom/jme3/util/NativeObjectManager$NativeObjectRef;)Lcom/jme3/util/NativeObject;

    move-result-object v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/jme3/util/NativeObjectManager;->deleteNativeObject(Ljava/lang/Object;Lcom/jme3/util/NativeObject;Lcom/jme3/util/NativeObjectManager$NativeObjectRef;ZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const/4 p1, 0x1

    if-lt v0, p1, :cond_3

    sget-object p1, Lcom/jme3/util/NativeObjectManager;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "NativeObjectManager: {0} native objects were removed from native"

    invoke-virtual {p1, v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public enqueueUnusedObject(Lcom/jme3/util/NativeObject;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/util/NativeObjectManager;->userDeletionQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public registerObject(Lcom/jme3/util/NativeObject;)V
    .locals 4

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getId()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lcom/jme3/util/NativeObjectManager$NativeObjectRef;

    iget-object v1, p0, Lcom/jme3/util/NativeObjectManager;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p1}, Lcom/jme3/util/NativeObjectManager$NativeObjectRef;-><init>(Ljava/lang/ref/ReferenceQueue;Lcom/jme3/util/NativeObject;)V

    iget-object v1, p0, Lcom/jme3/util/NativeObjectManager;->refMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->getUniqueId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lcom/jme3/util/NativeObject;->setNativeObjectManager(Lcom/jme3/util/NativeObjectManager;)V

    sget-object v0, Lcom/jme3/util/NativeObjectManager;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v2, "Registered: {0}"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "object id must be greater than zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resetObjects()V
    .locals 5

    iget-object v0, p0, Lcom/jme3/util/NativeObjectManager;->refMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/util/NativeObjectManager$NativeObjectRef;

    invoke-static {v1}, Lcom/jme3/util/NativeObjectManager$NativeObjectRef;->access$000(Lcom/jme3/util/NativeObjectManager$NativeObjectRef;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/util/NativeObject;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/jme3/util/NativeObject;->resetObject()V

    sget-object v2, Lcom/jme3/util/NativeObjectManager;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v4, "Reset: {0}"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/util/NativeObjectManager;->refMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/NativeObjectManager;->refQueue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.class public Lcom/jme3/opencl/OpenCLObjectManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/opencl/OpenCLObjectManager$OpenCLObjectRef;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/jme3/opencl/OpenCLObjectManager;

.field private static final LOG:Ljava/util/logging/Logger;

.field private static final LOG_LEVEL1:Ljava/util/logging/Level;

.field private static final LOG_LEVEL2:Ljava/util/logging/Level;


# instance fields
.field private final activeObjects:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/jme3/opencl/OpenCLObjectManager$OpenCLObjectRef;",
            ">;"
        }
    .end annotation
.end field

.field private final refQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/opencl/OpenCLObjectManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/opencl/OpenCLObjectManager;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    sput-object v0, Lcom/jme3/opencl/OpenCLObjectManager;->LOG_LEVEL1:Ljava/util/logging/Level;

    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    sput-object v0, Lcom/jme3/opencl/OpenCLObjectManager;->LOG_LEVEL2:Ljava/util/logging/Level;

    new-instance v0, Lcom/jme3/opencl/OpenCLObjectManager;

    invoke-direct {v0}, Lcom/jme3/opencl/OpenCLObjectManager;-><init>()V

    sput-object v0, Lcom/jme3/opencl/OpenCLObjectManager;->INSTANCE:Lcom/jme3/opencl/OpenCLObjectManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/jme3/opencl/OpenCLObjectManager;->refQueue:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jme3/opencl/OpenCLObjectManager;->activeObjects:Ljava/util/HashSet;

    return-void
.end method

.method private deleteObject(Lcom/jme3/opencl/OpenCLObjectManager$OpenCLObjectRef;)V
    .locals 4

    sget-object v0, Lcom/jme3/opencl/OpenCLObjectManager;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Lcom/jme3/opencl/OpenCLObjectManager;->LOG_LEVEL1:Ljava/util/logging/Level;

    const-string v2, "deleting OpenCL object by: {0}"

    invoke-static {p1}, Lcom/jme3/opencl/OpenCLObjectManager$OpenCLObjectRef;->access$000(Lcom/jme3/opencl/OpenCLObjectManager$OpenCLObjectRef;)Lcom/jme3/opencl/OpenCLObject$ObjectReleaser;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/jme3/opencl/OpenCLObjectManager$OpenCLObjectRef;->access$000(Lcom/jme3/opencl/OpenCLObjectManager$OpenCLObjectRef;)Lcom/jme3/opencl/OpenCLObject$ObjectReleaser;

    move-result-object v0

    invoke-interface {v0}, Lcom/jme3/opencl/OpenCLObject$ObjectReleaser;->release()V

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    iget-object v0, p0, Lcom/jme3/opencl/OpenCLObjectManager;->activeObjects:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getInstance()Lcom/jme3/opencl/OpenCLObjectManager;
    .locals 1

    sget-object v0, Lcom/jme3/opencl/OpenCLObjectManager;->INSTANCE:Lcom/jme3/opencl/OpenCLObjectManager;

    return-object v0
.end method


# virtual methods
.method public deleteAllObjects()V
    .locals 6

    iget-object v0, p0, Lcom/jme3/opencl/OpenCLObjectManager;->activeObjects:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/opencl/OpenCLObjectManager$OpenCLObjectRef;

    sget-object v2, Lcom/jme3/opencl/OpenCLObjectManager;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Lcom/jme3/opencl/OpenCLObjectManager;->LOG_LEVEL1:Ljava/util/logging/Level;

    const-string v4, "deleting OpenCL object by: {0}"

    invoke-static {v1}, Lcom/jme3/opencl/OpenCLObjectManager$OpenCLObjectRef;->access$000(Lcom/jme3/opencl/OpenCLObjectManager$OpenCLObjectRef;)Lcom/jme3/opencl/OpenCLObject$ObjectReleaser;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/jme3/opencl/OpenCLObjectManager$OpenCLObjectRef;->access$000(Lcom/jme3/opencl/OpenCLObjectManager$OpenCLObjectRef;)Lcom/jme3/opencl/OpenCLObject$ObjectReleaser;

    move-result-object v2

    invoke-interface {v2}, Lcom/jme3/opencl/OpenCLObject$ObjectReleaser;->release()V

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/opencl/OpenCLObjectManager;->activeObjects:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public deleteUnusedObjects()V
    .locals 4

    iget-object v0, p0, Lcom/jme3/opencl/OpenCLObjectManager;->activeObjects:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jme3/opencl/OpenCLObjectManager;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Lcom/jme3/opencl/OpenCLObjectManager;->LOG_LEVEL2:Ljava/util/logging/Level;

    const-string v2, "no active natives"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jme3/opencl/OpenCLObjectManager;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Lcom/jme3/opencl/OpenCLObjectManager$OpenCLObjectRef;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    sget-object v1, Lcom/jme3/opencl/OpenCLObjectManager;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Lcom/jme3/opencl/OpenCLObjectManager;->LOG_LEVEL2:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "{0} native objects were removed from native"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0, v1}, Lcom/jme3/opencl/OpenCLObjectManager;->deleteObject(Lcom/jme3/opencl/OpenCLObjectManager$OpenCLObjectRef;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public registerObject(Lcom/jme3/opencl/OpenCLObject;)V
    .locals 3

    new-instance v0, Lcom/jme3/opencl/OpenCLObjectManager$OpenCLObjectRef;

    iget-object v1, p0, Lcom/jme3/opencl/OpenCLObjectManager;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p1}, Lcom/jme3/opencl/OpenCLObjectManager$OpenCLObjectRef;-><init>(Ljava/lang/ref/ReferenceQueue;Lcom/jme3/opencl/OpenCLObject;)V

    iget-object v1, p0, Lcom/jme3/opencl/OpenCLObjectManager;->activeObjects:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/jme3/opencl/OpenCLObjectManager;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Lcom/jme3/opencl/OpenCLObjectManager;->LOG_LEVEL1:Ljava/util/logging/Level;

    const-string v2, "registered OpenCL object: {0}"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

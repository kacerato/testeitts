.class public abstract Lcom/jme3/bullet/NativePhysicsObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/jme3/bullet/NativePhysicsObject;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final loggerN:Ljava/util/logging/Logger;

.field private static final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/jme3/bullet/NpoTracker;",
            ">;"
        }
    .end annotation
.end field

.field static final weakReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/jme3/bullet/NativePhysicsObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/jme3/bullet/NativePhysicsObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/NativePhysicsObject;->loggerN:Ljava/util/logging/Logger;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x3e7

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/jme3/bullet/NativePhysicsObject;->map:Ljava/util/Map;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lcom/jme3/bullet/NativePhysicsObject;->weakReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jme3/bullet/NativePhysicsObject;->id:J

    return-void
.end method

.method public static final countTrackers()I
    .locals 1

    sget-object v0, Lcom/jme3/bullet/NativePhysicsObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public static final dumpTrackers()V
    .locals 5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Active trackers:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/jme3/bullet/NativePhysicsObject;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/NpoTracker;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    return-void
.end method

.method public static final freeUnusedObjects()V
    .locals 1

    :goto_0
    :try_start_0
    sget-object v0, Lcom/jme3/bullet/NativePhysicsObject;->weakReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/NpoTracker;

    invoke-virtual {v0}, Lcom/jme3/bullet/NpoTracker;->freeTrackedObject()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-void
.end method

.method public static removeTracker(J)V
    .locals 1

    sget-object v0, Lcom/jme3/bullet/NativePhysicsObject;->map:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jme3/bullet/NpoTracker;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/jme3/bullet/NativePhysicsObject;)I
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    .line 4
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/jme3/bullet/NativePhysicsObject;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/NativePhysicsObject;->compareTo(Lcom/jme3/bullet/NativePhysicsObject;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_1

    check-cast p1, Lcom/jme3/bullet/NativePhysicsObject;

    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/jme3/bullet/NativePhysicsObject;->id:J

    cmp-long p1, v4, v2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method public final hasAssignedNativeObject()Z
    .locals 4

    iget-wide v0, p0, Lcom/jme3/bullet/NativePhysicsObject;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/jme3/bullet/NativePhysicsObject;->id:J

    const/4 v2, 0x4

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public nativeId()J
    .locals 2

    iget-wide v0, p0, Lcom/jme3/bullet/NativePhysicsObject;->id:J

    return-wide v0
.end method

.method public final reassignNativeId(J)V
    .locals 2

    const-string v0, "nativeId"

    invoke-static {p1, p2, v0}, Lif/E;->x(JLjava/lang/String;)Z

    iget-wide v0, p0, Lcom/jme3/bullet/NativePhysicsObject;->id:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/jme3/bullet/NativePhysicsObject;->id:J

    new-instance v0, Lcom/jme3/bullet/NpoTracker;

    invoke-direct {v0, p0}, Lcom/jme3/bullet/NpoTracker;-><init>(Lcom/jme3/bullet/NativePhysicsObject;)V

    sget-object v1, Lcom/jme3/bullet/NativePhysicsObject;->map:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/NpoTracker;

    :cond_0
    return-void
.end method

.method public setNativeId(J)V
    .locals 2

    const-string v0, "nativeId"

    invoke-static {p1, p2, v0}, Lif/E;->x(JLjava/lang/String;)Z

    iput-wide p1, p0, Lcom/jme3/bullet/NativePhysicsObject;->id:J

    new-instance v0, Lcom/jme3/bullet/NpoTracker;

    invoke-direct {v0, p0}, Lcom/jme3/bullet/NpoTracker;-><init>(Lcom/jme3/bullet/NativePhysicsObject;)V

    sget-object v1, Lcom/jme3/bullet/NativePhysicsObject;->map:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/NpoTracker;

    return-void
.end method

.method public final setNativeIdNotTracked(J)V
    .locals 1

    const-string v0, "nativeId"

    invoke-static {p1, p2, v0}, Lif/E;->x(JLjava/lang/String;)Z

    iput-wide p1, p0, Lcom/jme3/bullet/NativePhysicsObject;->id:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/jme3/bullet/NativePhysicsObject;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unassignNativeObject()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jme3/bullet/NativePhysicsObject;->id:J

    return-void
.end method

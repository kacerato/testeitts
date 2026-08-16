.class public final Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;
.super Ljava/util/concurrent/locks/ReentrantReadWriteLock;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/CycleDetectingLockFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final b:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;

.field public final c:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$f;

.field public final d:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    .line 3
    new-instance p3, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;

    invoke-direct {p3, p1, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;)V

    iput-object p3, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->b:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;

    .line 4
    new-instance p3, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$f;

    invoke-direct {p3, p1, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$f;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;)V

    iput-object p3, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->c:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$f;

    .line 5
    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;

    iput-object p1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->d:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;ZLcom/google/common/util/concurrent/CycleDetectingLockFactory$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;Z)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->d:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;

    return-object v0
.end method

.method public b()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v0

    if-lez v0, :cond_0

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

.method public bridge synthetic readLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    return-object v0
.end method

.method public readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->b:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;

    return-object v0
.end method

.method public bridge synthetic writeLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    return-object v0
.end method

.method public writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->c:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$f;

    return-object v0
.end method

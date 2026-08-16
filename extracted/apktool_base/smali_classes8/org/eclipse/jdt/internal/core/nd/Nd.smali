.class public final Lorg/eclipse/jdt/internal/core/nd/Nd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BLOCKED_WRITE_LOCK_OUTPUT_INTERVAL:I = 0x7530

.field private static final CANCELLATION_CHECK_INTERVAL:I = 0x1f4

.field public static DEBUG_DUPLICATE_DELETIONS:Z = false

.field private static final LONG_READ_LOCK_WAIT_REPORT_THRESHOLD:I = 0x3e8

.field private static final LONG_WRITE_LOCK_REPORT_THRESHOLD:I = 0x3e8

.field private static final MAX_DIRTY_CACHE_RATIO:D = 0.25

.field public static sDEBUG_LOCKS:Z = false


# instance fields
.field private final cookies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final currentVersion:I

.field protected db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

.field private fLockDebugging:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final fNodeTypeRegistry:Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry<",
            "Lorg/eclipse/jdt/internal/core/nd/NdNode;",
            ">;"
        }
    .end annotation
.end field

.field private fPath:Ljava/io/File;

.field private fReader:Lorg/eclipse/jdt/internal/core/nd/IReader;

.field private final fResultCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private fWriteNumber:J

.field private lastWriteAccess:J

.field private lockCount:I

.field private final maxVersion:I

.field private final minVersion:I

.field private final mutex:Ljava/lang/Object;

.field private pendingDeletions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private timeWriteLockAcquired:J

.field private waitingReaders:I

.field private writeLockOwner:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;III)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry<",
            "Lorg/eclipse/jdt/internal/core/nd/NdNode;",
            ">;III)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->getSharedInstance()Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/nd/Nd;-><init>(Ljava/io/File;Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;III)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;",
            "Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry<",
            "Lorg/eclipse/jdt/internal/core/nd/NdNode;",
            ">;III)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->cookies:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fResultCache:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->pendingDeletions:Ljava/util/HashMap;

    .line 6
    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/Nd$1;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/nd/Nd$1;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fReader:Lorg/eclipse/jdt/internal/core/nd/IReader;

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->mutex:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->lastWriteAccess:J

    .line 9
    iput p6, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->currentVersion:I

    .line 10
    iput p5, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->maxVersion:I

    .line 11
    iput p4, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->minVersion:I

    .line 12
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fNodeTypeRegistry:Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;

    .line 13
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/Nd;->loadDatabase(Ljava/io/File;Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;)V

    .line 14
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/nd/Nd;->sDEBUG_LOCKS:Z

    if-eqz p1, :cond_0

    .line 15
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fLockDebugging:Ljava/util/Map;

    .line 16
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "Debugging database Locks"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private clearCaches()V
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->clearResultCache()V

    return-void
.end method

.method public static decReadLock(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/AssertionError;
        }
    .end annotation

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getLockInfo(Ljava/util/Map;)Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;

    move-result-object v0

    iget v1, v0, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;->fReadLocks:I

    if-lez v1, :cond_2

    iget v2, v0, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;->fWriteLocks:I

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;->fReadLocks:I

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;->addTrace()I

    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->outputReadLocks(Ljava/util/Map;)V

    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Releasing readlock while holding write lock"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_2
    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->outputReadLocks(Ljava/util/Map;)V

    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Superfluous releaseReadLock"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method private decWriteLock(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/AssertionError;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fLockDebugging:Ljava/util/Map;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getLockInfo(Ljava/util/Map;)Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;

    move-result-object v0

    iget v1, v0, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;->fReadLocks:I

    if-ne v1, p1, :cond_2

    iget p1, v0, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;->fWriteLocks:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const/4 p1, 0x0

    iput p1, v0, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;->fWriteLocks:I

    if-nez v1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fLockDebugging:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Wrong release write lock"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "release write lock with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " readlocks, expected "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;->fReadLocks:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private deleteIfUnreferenced(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/NdNode;->NODE_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    invoke-virtual {v0, p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getTypeFactory(S)Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;->isReadyForDeletion(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1, p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;->destruct(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v1

    add-int/lit16 v0, v0, 0x100

    int-to-short v0, v0

    invoke-virtual {v1, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->free(JS)V

    :cond_1
    return-void
.end method

.method private static getLockInfo(Ljava/util/Map;)Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;",
            ">;)",
            "Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;

    if-nez v1, :cond_0

    new-instance v1, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;-><init>()V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public static incReadLock(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getLockInfo(Ljava/util/Map;)Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;

    move-result-object v0

    iget v1, v0, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;->fReadLocks:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;->fReadLocks:I

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;->addTrace()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->outputReadLocks(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private incWriteLock(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/AssertionError;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fLockDebugging:Ljava/util/Map;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getLockInfo(Ljava/util/Map;)Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;

    move-result-object v0

    iget v1, v0, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;->fReadLocks:I

    if-ne v1, p1, :cond_1

    iget p1, v0, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;->fWriteLocks:I

    if-nez p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;->fWriteLocks:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Duplicate write lock"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fLockDebugging:Ljava/util/Map;

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->outputReadLocks(Ljava/util/Map;)V

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "write lock with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " readlocks, expected "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;->fReadLocks:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private loadDatabase(Ljava/io/File;Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fPath:Ljava/io/File;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->clearCaches()V

    new-instance p1, Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fPath:Ljava/io/File;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDefaultVersion()I

    move-result v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->isPermanentlyReadOnly()Z

    move-result v2

    invoke-direct {p1, v0, p2, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;-><init>(Ljava/io/File;Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;IZ)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->setExclusiveLock()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->isSupportedVersion()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Index database uses the unsupported version "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". Deleting and recreating."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/Package;->logInfo(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->close()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fPath:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    new-instance p1, Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fPath:Ljava/io/File;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDefaultVersion()I

    move-result v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->isPermanentlyReadOnly()Z

    move-result v2

    invoke-direct {p1, v0, p2, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;-><init>(Ljava/io/File;Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;IZ)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->setExclusiveLock()V

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->giveUpExclusiveLock()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    const-wide/16 v0, 0x804

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getLong(J)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fWriteNumber:J

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget p2, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->lockCount:I

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->setLocked(Z)V

    return-void
.end method

.method private static outputReadLocks(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "---------------------  Lock Debugging -------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "---------------------------------------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private releaseWriteLockAndFlush(IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/AssertionError;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getDirtyChunkCount()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getCache()Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/db/ChunkCache;->getMaxSize()J

    move-result-wide v1

    const-wide/16 v3, 0x1000

    div-long/2addr v1, v3

    long-to-int v1, v1

    int-to-double v2, v0

    int-to-double v0, v1

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v0, v4

    cmpl-double v0, v2, v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move p2, v1

    :cond_0
    if-eqz p2, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v2, Lorg/eclipse/jdt/internal/core/nd/Nd;->sDEBUG_LOCKS:Z

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->lastWriteAccess:J

    iget-wide v4, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->timeWriteLockAcquired:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v4, v2, v4

    if-ltz v4, :cond_2

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Index write lock held for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->decWriteLock(I)V

    :cond_3
    iget v2, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->lockCount:I

    if-gez v2, :cond_4

    iput p1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->lockCount:I

    :cond_4
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->mutex:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->setLocked(Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_6

    :try_start_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->flush()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseReadLock()V

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseReadLock()V

    throw p1

    :cond_6
    :goto_2
    return-void

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private reportBlockedWriteLock(JI)J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    add-long/2addr v2, p1

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    const-string p2, "Blocked writeLock"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "  lockcount= "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->lockCount:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", giveupReadLocks="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", waitingReaders="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->waitingReaders:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fLockDebugging:Ljava/util/Map;

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->outputReadLocks(Ljava/util/Map;)V

    move-wide p1, v0

    :cond_0
    return-wide p1
.end method

.method public static version(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x10

    add-int/2addr p0, p1

    return p0
.end method

.method public static versionString(I)Ljava/lang/String;
    .locals 2

    shr-int/lit8 v0, p0, 0x10

    const v1, 0xffff

    and-int/2addr p0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public acquireReadLock()Lorg/eclipse/jdt/internal/core/nd/IReader;
    .locals 6

    :try_start_0
    sget-boolean v0, Lorg/eclipse/jdt/internal/core/nd/Nd;->sDEBUG_LOCKS:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->mutex:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v3, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->waitingReaders:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->waitingReaders:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    iget v3, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->lockCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ltz v3, :cond_3

    :try_start_3
    iget v5, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->waitingReaders:I

    sub-int/2addr v5, v4

    iput v5, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->waitingReaders:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->lockCount:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->setLocked(Z)V

    sget-boolean v3, Lorg/eclipse/jdt/internal/core/nd/Nd;->sDEBUG_LOCKS:Z

    if-eqz v3, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr v3, v0

    const-wide/16 v0, 0x3e8

    cmp-long v0, v3, v0

    if-ltz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Acquired index read lock after "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms wait."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fLockDebugging:Ljava/util/Map;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->incReadLock(Ljava/util/Map;)V

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fReader:Lorg/eclipse/jdt/internal/core/nd/IReader;

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v0

    :cond_3
    :try_start_4
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->mutex:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_5
    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->waitingReaders:I

    sub-int/2addr v1, v4

    iput v1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->waitingReaders:I

    throw v0

    :goto_3
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    new-instance v0, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {v0}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw v0
.end method

.method public acquireWriteLock(ILorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/nd/Nd;->sDEBUG_LOCKS:Z

    if-eqz v1, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->incWriteLock(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    :goto_0
    if-lez p1, :cond_1

    .line 6
    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->lockCount:I

    if-ge v1, p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 7
    :cond_2
    :goto_1
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/nd/Nd;->sDEBUG_LOCKS:Z

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    goto :goto_2

    :cond_3
    const-wide/16 v1, 0x0

    .line 8
    :cond_4
    :goto_2
    iget v3, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->lockCount:I

    if-gt v3, p1, :cond_8

    iget v4, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->waitingReaders:I

    if-gtz v4, :cond_8

    if-ltz v3, :cond_8

    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->lockCount:I

    .line 10
    sget-boolean p1, Lorg/eclipse/jdt/internal/core/nd/Nd;->sDEBUG_LOCKS:Z

    if-eqz p1, :cond_5

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->timeWriteLockAcquired:J

    .line 12
    :cond_5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->setExclusiveLock()V

    .line 13
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->writeLockOwner:Ljava/lang/Thread;

    if-eqz p1, :cond_7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    if-ne p1, p2, :cond_6

    goto :goto_3

    .line 14
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "We somehow managed to acquire a write lock while another thread already holds it."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_7
    :goto_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->writeLockOwner:Ljava/lang/Thread;

    .line 16
    monitor-exit v0

    return-void

    .line 17
    :cond_8
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->mutex:Ljava/lang/Object;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    if-eqz p2, :cond_a

    .line 18
    invoke-interface {p2}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_4

    .line 19
    :cond_9
    new-instance p1, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {p1}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw p1

    .line 20
    :cond_a
    :goto_4
    sget-boolean v3, Lorg/eclipse/jdt/internal/core/nd/Nd;->sDEBUG_LOCKS:Z

    if-eqz v3, :cond_4

    .line 21
    invoke-direct {p0, v1, v2, p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->reportBlockedWriteLock(JI)J

    move-result-wide v1

    goto :goto_2

    .line 22
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public acquireWriteLock(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->acquireWriteLock(ILorg/eclipse/core/runtime/IProgressMonitor;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2
    :catch_0
    new-instance p1, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {p1}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    throw p1
.end method

.method public adjustThreadForReadLock(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;

    iget v3, v2, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;->fReadLocks:I

    if-lez v3, :cond_0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fLockDebugging:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;

    if-nez v3, :cond_2

    new-instance v3, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;

    invoke-direct {v3}, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;-><init>()V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fLockDebugging:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;->inc(Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;)V

    const/4 v1, 0x0

    :goto_1
    iget v3, v2, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;->fReadLocks:I

    if-lt v1, v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fLockDebugging:Ljava/util/Map;

    invoke-static {v3}, Lorg/eclipse/jdt/internal/core/nd/Nd;->decReadLock(Ljava/util/Map;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public clear(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->pendingDeletions:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDefaultVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->clear(I)Z

    return-void
.end method

.method public clearResultCache()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fResultCache:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fResultCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->close()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->clearCaches()V

    return-void
.end method

.method public delete(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/NdNode;->NODE_TYPE:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    invoke-virtual {v0, p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getTypeFactory(S)Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;->destruct(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v1

    add-int/lit16 v0, v0, 0x100

    int-to-short v0, v0

    invoke-virtual {v1, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->free(JS)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->pendingDeletions:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/Nd;->logDoubleDeletion(J)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->pendingDeletions:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public describeProblem()Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->describeProblem()Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getCachedResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fResultCache:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fResultCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    return-object v0
.end method

.method public getData(Ljava/lang/Class;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->cookies:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->cookies:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->cookies:Ljava/util/Map;

    monitor-enter p2

    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->cookies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->cookies:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_0
    monitor-exit p2

    goto :goto_2

    :goto_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_2
    return-object v1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getDefaultVersion()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->currentVersion:I

    return v0
.end method

.method public getLastWriteAccess()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->lastWriteAccess:J

    return-wide v0
.end method

.method public getMaxSupportedVersion()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->maxVersion:I

    return v0
.end method

.method public getMinSupportedVersion()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->minVersion:I

    return v0
.end method

.method public getNode(JS)Lorg/eclipse/jdt/internal/core/nd/NdNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fNodeTypeRegistry:Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;->createNode(Lorg/eclipse/jdt/internal/core/nd/Nd;JS)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/nd/NdNode;

    return-object p1
.end method

.method public getNodeType(Ljava/lang/Class;)S
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)S"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fNodeTypeRegistry:Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;->getTypeForClass(Ljava/lang/Class;)S

    move-result p1

    return p1
.end method

.method public getPath()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fPath:Ljava/io/File;

    return-object v0
.end method

.method public getTypeFactory(S)Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/eclipse/jdt/internal/core/nd/NdNode;",
            ">(S)",
            "Lorg/eclipse/jdt/internal/core/nd/ITypeFactory<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fNodeTypeRegistry:Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;->getTypeFactory(S)Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object p1

    return-object p1
.end method

.method public getTypeRegistry()Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry<",
            "Lorg/eclipse/jdt/internal/core/nd/NdNode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fNodeTypeRegistry:Lorg/eclipse/jdt/internal/core/nd/NdNodeTypeRegistry;

    return-object v0
.end method

.method public getWriteNumber()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fWriteNumber:J

    return-wide v0
.end method

.method public hasWaitingReaders()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->waitingReaders:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isPermanentlyReadOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedVersion()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getVersion()I

    move-result v0

    .line 3
    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->minVersion:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->maxVersion:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedVersion(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->minVersion:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->maxVersion:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isValidAddress(J)Z
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunkCount()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x1000

    mul-long/2addr v0, v2

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public logDoubleDeletion(J)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    const-string v1, "Database object queued for deletion twice"

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/core/nd/Package;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->pendingDeletions:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/RuntimeException;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/RuntimeException;

    const-string p2, "Data associated with earlier deletion stack was:"

    invoke-static {p2, p1}, Lorg/eclipse/jdt/internal/core/nd/Package;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public processDeletions()V
    .locals 3

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->pendingDeletions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->pendingDeletions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/Nd;->deleteIfUnreferenced(J)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->pendingDeletions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public putCachedResult(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fResultCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fResultCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p3, :cond_0

    .line 4
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fResultCache:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 6
    :cond_0
    monitor-exit v0

    return-object p2

    .line 7
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putCachedResult(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->putCachedResult(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    return-void
.end method

.method public releaseReadLock()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lorg/eclipse/jdt/internal/core/nd/Nd;->sDEBUG_LOCKS:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fLockDebugging:Ljava/util/Map;

    invoke-static {v1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->decReadLock(Ljava/util/Map;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->lockCount:I

    const/4 v2, 0x1

    if-lez v1, :cond_1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->lockCount:I

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget v3, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->lockCount:I

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->setLocked(Z)V

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final releaseWriteLock()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLock(IZ)V

    return-void
.end method

.method public releaseWriteLock(IZ)V
    .locals 5

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->writeLockOwner:Ljava/lang/Thread;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->writeLockOwner:Ljava/lang/Thread;

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_0

    .line 7
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->clearResultCache()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    .line 8
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fWriteNumber:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fWriteNumber:J

    const-wide/16 v3, 0x804

    invoke-virtual {v0, v3, v4, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putLong(JJ)V

    .line 9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->processDeletions()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->giveUpExclusiveLock()V

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->lastWriteAccess:J

    .line 12
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLockAndFlush(IZ)V

    goto :goto_3

    .line 13
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->giveUpExclusiveLock()V

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->lastWriteAccess:J

    .line 15
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLockAndFlush(IZ)V

    .line 16
    throw v0

    .line 17
    :goto_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->giveUpExclusiveLock()V

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->lastWriteAccess:J

    .line 19
    :try_start_2
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/Nd;->releaseWriteLockAndFlush(IZ)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    return-void

    :catch_1
    move-exception p1

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 21
    throw p1

    :catchall_1
    move-exception p1

    goto :goto_4

    .line 22
    :cond_1
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Index wasn\'t locked by this thread!!!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :goto_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public removeCachedResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fResultCache:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->fResultCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public scheduleDeletion(J)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->pendingDeletions:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/Nd;->logDoubleDeletion(J)V

    return-void

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-boolean v1, Lorg/eclipse/jdt/internal/core/nd/Nd;->DEBUG_DUPLICATE_DELETIONS:Z

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->pendingDeletions:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setData(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->cookies:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd;->cookies:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

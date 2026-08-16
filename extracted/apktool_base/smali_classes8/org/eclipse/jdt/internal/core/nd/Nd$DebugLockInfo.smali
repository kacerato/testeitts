.class Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/nd/Nd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugLockInfo"
.end annotation


# instance fields
.field fReadLocks:I

.field fTraces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field fWriteLocks:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;->fTraces:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addTrace()I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;->fTraces:Ljava/util/List;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;->fTraces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public inc(Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;)V
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;->fReadLocks:I

    iget v1, p1, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;->fReadLocks:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;->fReadLocks:I

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;->fWriteLocks:I

    iget v1, p1, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;->fWriteLocks:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;->fWriteLocks:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;->fTraces:Ljava/util/List;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;->fTraces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 7

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Thread: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;->fReadLocks:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " readlocks, "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;->fWriteLocks:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " writelocks"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/Nd$DebugLockInfo;->fTraces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "  Stacktrace:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_1

    goto :goto_0

    :cond_1
    aget-object v3, v0, v2

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "    "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

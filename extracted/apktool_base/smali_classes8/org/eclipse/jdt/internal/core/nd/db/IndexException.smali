.class public Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x5b1087c33526bc81L


# instance fields
.field private relatedAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/nd/db/RelatedAddress;",
            ">;"
        }
    .end annotation
.end field

.field private status:Lorg/eclipse/core/runtime/IStatus;

.field private time:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 5
    new-instance v0, Lorg/eclipse/core/runtime/Status;

    const/4 v1, 0x4

    const-string v2, "org.eclipse.jdt.core"

    invoke-direct {v0, v1, v2, p1}, Lorg/eclipse/core/runtime/Status;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;-><init>(Lorg/eclipse/core/runtime/IStatus;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/core/runtime/IStatus;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;->relatedAddresses:Ljava/util/List;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;->time:J

    .line 4
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;->status:Lorg/eclipse/core/runtime/IStatus;

    return-void
.end method


# virtual methods
.method public addRelatedAddress(Lorg/eclipse/jdt/internal/core/nd/db/RelatedAddress;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;->relatedAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;->relatedAddresses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/nd/db/RelatedAddress;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/nd/db/RelatedAddress;->isSameAddressAs(Lorg/eclipse/jdt/internal/core/nd/db/RelatedAddress;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public declared-synchronized getCause()Ljava/lang/Throwable;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;->status:Lorg/eclipse/core/runtime/IStatus;

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IStatus;->getException()Ljava/lang/Throwable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;->time:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const-string v1, "(time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;->status:Lorg/eclipse/core/runtime/IStatus;

    invoke-interface {v1}, Lorg/eclipse/core/runtime/IStatus;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;->relatedAddresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\nRelated addresses:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;->relatedAddresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/nd/db/RelatedAddress;

    if-nez v2, :cond_2

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/nd/db/RelatedAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lorg/eclipse/core/runtime/IStatus;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;->status:Lorg/eclipse/core/runtime/IStatus;

    return-object v0
.end method

.method public setTime(J)V
    .locals 0

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;->time:J

    return-void
.end method

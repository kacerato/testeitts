.class public Lorg/openjdk/tools/javac/api/MultiTaskListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/util/TaskListener;


# static fields
.field private static final EMPTY_LISTENERS:[Lorg/openjdk/source/util/TaskListener;

.field public static final taskListenerKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/api/MultiTaskListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field ccw:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;

.field listeners:[Lorg/openjdk/source/util/TaskListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/api/MultiTaskListener;->taskListenerKey:Lorg/openjdk/tools/javac/util/Context$Key;

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/openjdk/source/util/TaskListener;

    sput-object v0, Lorg/openjdk/tools/javac/api/MultiTaskListener;->EMPTY_LISTENERS:[Lorg/openjdk/source/util/TaskListener;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/openjdk/tools/javac/api/MultiTaskListener;->EMPTY_LISTENERS:[Lorg/openjdk/source/util/TaskListener;

    iput-object v0, p0, Lorg/openjdk/tools/javac/api/MultiTaskListener;->listeners:[Lorg/openjdk/source/util/TaskListener;

    sget-object v0, Lorg/openjdk/tools/javac/api/MultiTaskListener;->taskListenerKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/api/ClientCodeWrapper;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/api/MultiTaskListener;->ccw:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;

    return-void
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/api/MultiTaskListener;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/api/MultiTaskListener;->taskListenerKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/api/MultiTaskListener;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/api/MultiTaskListener;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public add(Lorg/openjdk/source/util/TaskListener;)V
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/MultiTaskListener;->listeners:[Lorg/openjdk/source/util/TaskListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lorg/openjdk/tools/javac/api/MultiTaskListener;->ccw:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;

    invoke-virtual {v4, v3}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->unwrap(Lorg/openjdk/source/util/TaskListener;)Lorg/openjdk/source/util/TaskListener;

    move-result-object v3

    if-eq v3, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/MultiTaskListener;->listeners:[Lorg/openjdk/source/util/TaskListener;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/source/util/TaskListener;

    iput-object v0, p0, Lorg/openjdk/tools/javac/api/MultiTaskListener;->listeners:[Lorg/openjdk/source/util/TaskListener;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lorg/openjdk/tools/javac/api/MultiTaskListener;->ccw:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->wrap(Lorg/openjdk/source/util/TaskListener;)Lorg/openjdk/source/util/TaskListener;

    move-result-object p1

    aput-object p1, v0, v1

    return-void
.end method

.method public clear()V
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/api/MultiTaskListener;->EMPTY_LISTENERS:[Lorg/openjdk/source/util/TaskListener;

    iput-object v0, p0, Lorg/openjdk/tools/javac/api/MultiTaskListener;->listeners:[Lorg/openjdk/source/util/TaskListener;

    return-void
.end method

.method public finished(Lorg/openjdk/source/util/TaskEvent;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/MultiTaskListener;->listeners:[Lorg/openjdk/source/util/TaskListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1}, Lorg/openjdk/source/util/TaskListener;->finished(Lorg/openjdk/source/util/TaskEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getTaskListeners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/openjdk/source/util/TaskListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/MultiTaskListener;->listeners:[Lorg/openjdk/source/util/TaskListener;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/MultiTaskListener;->listeners:[Lorg/openjdk/source/util/TaskListener;

    sget-object v1, Lorg/openjdk/tools/javac/api/MultiTaskListener;->EMPTY_LISTENERS:[Lorg/openjdk/source/util/TaskListener;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove(Lorg/openjdk/source/util/TaskListener;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/api/MultiTaskListener;->listeners:[Lorg/openjdk/source/util/TaskListener;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lorg/openjdk/tools/javac/api/MultiTaskListener;->ccw:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;

    aget-object v2, v2, v1

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->unwrap(Lorg/openjdk/source/util/TaskListener;)Lorg/openjdk/source/util/TaskListener;

    move-result-object v2

    if-ne v2, p1, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/api/MultiTaskListener;->listeners:[Lorg/openjdk/source/util/TaskListener;

    array-length v2, p1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    sget-object p1, Lorg/openjdk/tools/javac/api/MultiTaskListener;->EMPTY_LISTENERS:[Lorg/openjdk/source/util/TaskListener;

    iput-object p1, p0, Lorg/openjdk/tools/javac/api/MultiTaskListener;->listeners:[Lorg/openjdk/source/util/TaskListener;

    goto :goto_1

    :cond_0
    array-length v2, p1

    sub-int/2addr v2, v3

    new-array v3, v2, [Lorg/openjdk/source/util/TaskListener;

    invoke-static {p1, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/api/MultiTaskListener;->listeners:[Lorg/openjdk/source/util/TaskListener;

    add-int/lit8 v0, v1, 0x1

    sub-int/2addr v2, v1

    invoke-static {p1, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lorg/openjdk/tools/javac/api/MultiTaskListener;->listeners:[Lorg/openjdk/source/util/TaskListener;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public started(Lorg/openjdk/source/util/TaskEvent;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/MultiTaskListener;->listeners:[Lorg/openjdk/source/util/TaskListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1}, Lorg/openjdk/source/util/TaskListener;->started(Lorg/openjdk/source/util/TaskEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/MultiTaskListener;->listeners:[Lorg/openjdk/source/util/TaskListener;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

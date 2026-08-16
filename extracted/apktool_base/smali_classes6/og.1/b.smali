.class public final Log/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/Thread;)Z
    .locals 0
    .param p0    # Ljava/lang/Thread;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LLf/j;
        name = "isSchedulerWorker"
    .end annotation

    instance-of p0, p0, Log/a$c;

    return p0
.end method

.method public static final b(Ljava/lang/Thread;)Z
    .locals 1
    .param p0    # Ljava/lang/Thread;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LLf/j;
        name = "mayNotBlock"
    .end annotation

    instance-of v0, p0, Log/a$c;

    if-eqz v0, :cond_0

    check-cast p0, Log/a$c;

    iget-object p0, p0, Log/a$c;->d:Log/a$d;

    sget-object v0, Log/a$d;->CPU_ACQUIRED:Log/a$d;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

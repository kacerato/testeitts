.class public Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedTaskListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/util/TaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/api/ClientCodeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WrappedTaskListener"
.end annotation


# instance fields
.field protected clientTaskListener:Lorg/openjdk/source/util/TaskListener;

.field final synthetic this$0:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/api/ClientCodeWrapper;Lorg/openjdk/source/util/TaskListener;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedTaskListener;->this$0:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lorg/openjdk/source/util/TaskListener;

    iput-object p2, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedTaskListener;->clientTaskListener:Lorg/openjdk/source/util/TaskListener;

    return-void
.end method


# virtual methods
.method public finished(Lorg/openjdk/source/util/TaskEvent;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedTaskListener;->clientTaskListener:Lorg/openjdk/source/util/TaskListener;

    invoke-interface {v0, p1}, Lorg/openjdk/source/util/TaskListener;->finished(Lorg/openjdk/source/util/TaskEvent;)V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance v0, Lorg/openjdk/tools/javac/util/ClientCodeException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    throw p1
.end method

.method public started(Lorg/openjdk/source/util/TaskEvent;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedTaskListener;->clientTaskListener:Lorg/openjdk/source/util/TaskListener;

    invoke-interface {v0, p1}, Lorg/openjdk/source/util/TaskListener;->started(Lorg/openjdk/source/util/TaskEvent;)V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance v0, Lorg/openjdk/tools/javac/util/ClientCodeException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedTaskListener;->this$0:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedTaskListener;->clientTaskListener:Lorg/openjdk/source/util/TaskListener;

    invoke-static {v0, v1, v2}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->access$000(Lorg/openjdk/tools/javac/api/ClientCodeWrapper;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

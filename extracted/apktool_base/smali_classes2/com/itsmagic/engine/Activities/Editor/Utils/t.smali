.class public final Lcom/itsmagic/engine/Activities/Editor/Utils/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "last_fatal.txt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Utils/t;->c(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Utils/s;

    invoke-direct {v1, p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/s;-><init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public static synthetic c(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    const/16 v0, 0xa

    :try_start_0
    instance-of v1, p3, Ljava/lang/OutOfMemoryError;

    if-eqz v1, :cond_0

    invoke-static {p0, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Utils/t;->d(Landroid/content/Context;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    invoke-interface {p1, p2, p3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    :catchall_0
    if-eqz p1, :cond_1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "t",
            "e"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/TextOutputActivity;->h(Ljava/lang/Throwable;)V

    return-void
.end method

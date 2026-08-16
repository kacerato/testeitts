.class public LSb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LSb/a$b;
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/String; = "FilamentLogcatListener"


# instance fields
.field public final a:LSb/a$b;

.field public volatile b:Z

.field public c:Ljava/lang/Thread;

.field public d:Ljava/lang/Process;


# direct methods
.method public constructor <init>(LSb/a$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LSb/a;->b:Z

    iput-object p1, p0, LSb/a;->a:LSb/a$b;

    return-void
.end method

.method public static synthetic a(LSb/a;)Ljava/lang/Process;
    .locals 0

    iget-object p0, p0, LSb/a;->d:Ljava/lang/Process;

    return-object p0
.end method

.method public static synthetic b(LSb/a;Ljava/lang/Process;)Ljava/lang/Process;
    .locals 0

    iput-object p1, p0, LSb/a;->d:Ljava/lang/Process;

    return-object p1
.end method

.method public static synthetic c(LSb/a;)Z
    .locals 0

    iget-boolean p0, p0, LSb/a;->b:Z

    return p0
.end method

.method public static synthetic d(LSb/a;Z)Z
    .locals 0

    iput-boolean p1, p0, LSb/a;->b:Z

    return p1
.end method

.method public static synthetic e(LSb/a;)LSb/a$b;
    .locals 0

    iget-object p0, p0, LSb/a;->a:LSb/a$b;

    return-object p0
.end method


# virtual methods
.method public f()Z
    .locals 1

    iget-boolean v0, p0, LSb/a;->b:Z

    return v0
.end method

.method public declared-synchronized g()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LSb/a;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, LSb/a;->b:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LSb/a$a;

    invoke-direct {v1, p0}, LSb/a$a;-><init>(LSb/a;)V

    const-string v2, "FilamentLogcatListenerThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, LSb/a;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized h()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LSb/a;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, LSb/a;->b:Z

    iget-object v0, p0, LSb/a;->d:Ljava/lang/Process;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    iput-object v1, p0, LSb/a;->d:Ljava/lang/Process;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, LSb/a;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iput-object v1, p0, LSb/a;->c:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

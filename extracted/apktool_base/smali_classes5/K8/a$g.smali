.class public LK8/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LK8/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Parallel-update"

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, LK8/a;->b()V

    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    invoke-static {}, LK8/a;->c()LIc/a;

    move-result-object v0

    invoke-virtual {v0}, LIc/a;->e()V

    return-void

    :catchall_1
    move-exception v0

    invoke-static {}, LK8/a;->c()LIc/a;

    move-result-object v1

    invoke-virtual {v1}, LIc/a;->e()V

    throw v0
.end method

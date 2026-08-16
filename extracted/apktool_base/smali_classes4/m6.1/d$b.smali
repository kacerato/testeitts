.class public Lm6/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm6/d;->y1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lm6/d;


# direct methods
.method public constructor <init>(Lm6/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lm6/d$b;->b:Lm6/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :goto_0
    iget-object v0, p0, Lm6/d$b;->b:Lm6/d;

    invoke-static {v0}, Lm6/d;->p1(Lm6/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lm6/d$b;->b:Lm6/d;

    invoke-static {v0}, Lm6/d;->q1(Lm6/d;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :catch_0
    :goto_1
    :try_start_0
    iget-object v1, p0, Lm6/d$b;->b:Lm6/d;

    invoke-static {v1}, Lm6/d;->p1(Lm6/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lm6/d$b;->b:Lm6/d;

    invoke-static {v1}, Lm6/d;->r1(Lm6/d;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lm6/d$b;->b:Lm6/d;

    invoke-static {v1}, Lm6/d;->q1(Lm6/d;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :try_start_2
    iget-object v1, p0, Lm6/d$b;->b:Lm6/d;

    invoke-static {v1}, Lm6/d;->p1(Lm6/d;)Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0

    goto :goto_3

    :cond_1
    iget-object v1, p0, Lm6/d$b;->b:Lm6/d;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lm6/d;->s1(Lm6/d;Z)Z

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lm6/d$b;->b:Lm6/d;

    invoke-static {v0}, Lm6/d;->t1(Lm6/d;)V

    goto :goto_0

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_2
    :goto_3
    return-void
.end method

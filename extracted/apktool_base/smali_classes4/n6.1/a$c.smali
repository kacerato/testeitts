.class public Ln6/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln6/a;->E1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ln6/a;


# direct methods
.method public constructor <init>(Ln6/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Ln6/a$c;->b:Ln6/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :goto_0
    iget-object v0, p0, Ln6/a$c;->b:Ln6/a;

    invoke-static {v0}, Ln6/a;->r1(Ln6/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ln6/a$c;->b:Ln6/a;

    invoke-static {v0}, Ln6/a;->s1(Ln6/a;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :catch_0
    :goto_1
    :try_start_0
    iget-object v1, p0, Ln6/a$c;->b:Ln6/a;

    invoke-static {v1}, Ln6/a;->r1(Ln6/a;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ln6/a$c;->b:Ln6/a;

    invoke-static {v1}, Ln6/a;->t1(Ln6/a;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Ln6/a$c;->b:Ln6/a;

    invoke-static {v1}, Ln6/a;->s1(Ln6/a;)Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    iget-object v1, p0, Ln6/a$c;->b:Ln6/a;

    invoke-static {v1, v2}, Ln6/a;->u1(Ln6/a;Z)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :try_start_2
    iget-object v1, p0, Ln6/a$c;->b:Ln6/a;

    invoke-static {v1}, Ln6/a;->r1(Ln6/a;)Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0

    goto :goto_3

    :cond_1
    iget-object v1, p0, Ln6/a$c;->b:Ln6/a;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ln6/a;->u1(Ln6/a;Z)Z

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Ln6/a$c;->b:Ln6/a;

    invoke-static {v0}, Ln6/a;->w1(Ln6/a;)Ln6/b;

    move-result-object v1

    invoke-virtual {v1}, Ln6/b;->I()Ln6/b$d;

    move-result-object v1

    invoke-static {v0, v1}, Ln6/a;->v1(Ln6/a;Ln6/b$d;)Ln6/b$d;

    iget-object v0, p0, Ln6/a$c;->b:Ln6/a;

    invoke-static {v0, v2}, Ln6/a;->x1(Ln6/a;Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :cond_2
    :goto_3
    return-void
.end method

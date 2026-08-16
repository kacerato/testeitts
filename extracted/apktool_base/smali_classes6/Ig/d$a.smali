.class public LIg/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LIg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LIg/d;


# direct methods
.method public constructor <init>(LIg/d;)V
    .locals 0

    iput-object p1, p0, LIg/d$a;->b:LIg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, LIg/d$a;->b:LIg/d;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LIg/d$a;->b:LIg/d;

    iget-boolean v2, v1, LIg/d;->o:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    iget-boolean v5, v1, LIg/d;->p:Z

    or-int/2addr v2, v5

    if-eqz v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :try_start_1
    invoke-virtual {v1}, LIg/d;->z()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iget-object v1, p0, LIg/d$a;->b:LIg/d;

    iput-boolean v4, v1, LIg/d;->q:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    iget-object v1, p0, LIg/d$a;->b:LIg/d;

    invoke-virtual {v1}, LIg/d;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LIg/d$a;->b:LIg/d;

    invoke-virtual {v1}, LIg/d;->t()V

    iget-object v1, p0, LIg/d$a;->b:LIg/d;

    iput v3, v1, LIg/d;->m:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    :try_start_4
    iget-object v1, p0, LIg/d$a;->b:LIg/d;

    iput-boolean v4, v1, LIg/d;->r:Z

    invoke-static {}, LTg/p;->b()LTg/x;

    move-result-object v2

    invoke-static {v2}, LTg/p;->c(LTg/x;)LTg/d;

    move-result-object v2

    iput-object v2, v1, LIg/d;->k:LTg/d;

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

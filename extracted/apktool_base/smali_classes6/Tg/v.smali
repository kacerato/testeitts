.class public final LTg/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J = 0x10000L

.field public static b:LTg/u;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public static c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LTg/u;)V
    .locals 9

    iget-object v0, p0, LTg/u;->f:LTg/u;

    if-nez v0, :cond_2

    iget-object v0, p0, LTg/u;->g:LTg/u;

    if-nez v0, :cond_2

    iget-boolean v0, p0, LTg/u;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-class v0, LTg/v;

    monitor-enter v0

    :try_start_0
    sget-wide v1, LTg/v;->c:J

    const-wide/16 v3, 0x2000

    add-long v5, v1, v3

    const-wide/32 v7, 0x10000

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    add-long/2addr v1, v3

    sput-wide v1, LTg/v;->c:J

    sget-object v1, LTg/v;->b:LTg/u;

    iput-object v1, p0, LTg/u;->f:LTg/u;

    const/4 v1, 0x0

    iput v1, p0, LTg/u;->c:I

    iput v1, p0, LTg/u;->b:I

    sput-object p0, LTg/v;->b:LTg/u;

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static b()LTg/u;
    .locals 6

    const-class v0, LTg/v;

    monitor-enter v0

    :try_start_0
    sget-object v1, LTg/v;->b:LTg/u;

    if-eqz v1, :cond_0

    iget-object v2, v1, LTg/u;->f:LTg/u;

    sput-object v2, LTg/v;->b:LTg/u;

    const/4 v2, 0x0

    iput-object v2, v1, LTg/u;->f:LTg/u;

    sget-wide v2, LTg/v;->c:J

    const-wide/16 v4, 0x2000

    sub-long/2addr v2, v4

    sput-wide v2, LTg/v;->c:J

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, LTg/u;

    invoke-direct {v0}, LTg/u;-><init>()V

    return-object v0

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

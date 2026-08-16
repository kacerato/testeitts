.class public LXd/y0;
.super LXd/i;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# static fields
.field public static final g:J = 0x153e0c6c865668d2L


# direct methods
.method public constructor <init>(Lbe/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LXd/i;-><init>(Lbe/a;)V

    return-void
.end method

.method public constructor <init>(Lbe/a;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, LXd/i;-><init>(Lbe/a;Ljava/lang/Object;)V

    return-void
.end method

.method private c()Ljava/lang/Object;
    .locals 2

    new-instance v0, LXd/i;

    iget-object v1, p0, LXd/i;->e:Lbe/a;

    invoke-direct {v0, v1}, LXd/i;-><init>(Lbe/a;)V

    return-object v0
.end method


# virtual methods
.method public subList(II)Lbe/a;
    .locals 3

    iget-object v0, p0, LXd/e;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, LXd/y0;

    iget-object v2, p0, LXd/i;->e:Lbe/a;

    invoke-interface {v2, p1, p2}, Lbe/a;->subList(II)Lbe/a;

    move-result-object p1

    iget-object p2, p0, LXd/e;->c:Ljava/lang/Object;

    invoke-direct {v1, p1, p2}, LXd/y0;-><init>(Lbe/a;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

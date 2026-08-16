.class public LXd/z0;
.super LXd/t;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# static fields
.field public static final g:J = 0x153e0c6c865668d2L


# direct methods
.method public constructor <init>(Lbe/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LXd/t;-><init>(Lbe/b;)V

    return-void
.end method

.method public constructor <init>(Lbe/b;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, LXd/t;-><init>(Lbe/b;Ljava/lang/Object;)V

    return-void
.end method

.method private d()Ljava/lang/Object;
    .locals 2

    new-instance v0, LXd/t;

    iget-object v1, p0, LXd/t;->e:Lbe/b;

    invoke-direct {v0, v1}, LXd/t;-><init>(Lbe/b;)V

    return-object v0
.end method


# virtual methods
.method public subList(II)Lbe/b;
    .locals 3

    iget-object v0, p0, LXd/p;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, LXd/z0;

    iget-object v2, p0, LXd/t;->e:Lbe/b;

    invoke-interface {v2, p1, p2}, Lbe/b;->subList(II)Lbe/b;

    move-result-object p1

    iget-object p2, p0, LXd/p;->c:Ljava/lang/Object;

    invoke-direct {v1, p1, p2}, LXd/z0;-><init>(Lbe/b;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

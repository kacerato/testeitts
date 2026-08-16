.class public LXd/A0;
.super LXd/E;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# static fields
.field public static final g:J = 0x153e0c6c865668d2L


# direct methods
.method public constructor <init>(Lbe/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LXd/E;-><init>(Lbe/c;)V

    return-void
.end method

.method public constructor <init>(Lbe/c;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, LXd/E;-><init>(Lbe/c;Ljava/lang/Object;)V

    return-void
.end method

.method private d()Ljava/lang/Object;
    .locals 2

    new-instance v0, LXd/E;

    iget-object v1, p0, LXd/E;->e:Lbe/c;

    invoke-direct {v0, v1}, LXd/E;-><init>(Lbe/c;)V

    return-object v0
.end method


# virtual methods
.method public subList(II)Lbe/c;
    .locals 3

    iget-object v0, p0, LXd/A;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, LXd/A0;

    iget-object v2, p0, LXd/E;->e:Lbe/c;

    invoke-interface {v2, p1, p2}, Lbe/c;->subList(II)Lbe/c;

    move-result-object p1

    iget-object p2, p0, LXd/A;->c:Ljava/lang/Object;

    invoke-direct {v1, p1, p2}, LXd/A0;-><init>(Lbe/c;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

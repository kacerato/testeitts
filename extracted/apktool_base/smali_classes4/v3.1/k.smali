.class public Lv3/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lv3/j;

.field public b:I

.field public c:Z

.field public d:LN7/c$g;

.field public final e:Ljava/lang/Object;

.field public f:Lob/b;

.field public g:Lob/b$a;


# direct methods
.method public constructor <init>(Lv3/j;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "repeatListener",
            "delay"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lv3/k;->c:Z

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lv3/k;->e:Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lv3/k;->a:Lv3/j;

    .line 5
    iput p2, p0, Lv3/k;->b:I

    return-void
.end method

.method public constructor <init>(Lv3/j;ILN7/c$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "repeatListener",
            "delay",
            "allowedPage"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lv3/k;->c:Z

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lv3/k;->e:Ljava/lang/Object;

    .line 9
    iput-object p1, p0, Lv3/k;->a:Lv3/j;

    .line 10
    iput p2, p0, Lv3/k;->b:I

    .line 11
    iput-object p3, p0, Lv3/k;->d:LN7/c$g;

    return-void
.end method

.method public static synthetic a(Lv3/k;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lv3/k;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic b(Lv3/k;)Lob/b$a;
    .locals 0

    iget-object p0, p0, Lv3/k;->g:Lob/b$a;

    return-object p0
.end method


# virtual methods
.method public c()I
    .locals 1

    iget v0, p0, Lv3/k;->b:I

    return v0
.end method

.method public d()Lv3/j;
    .locals 1

    iget-object v0, p0, Lv3/k;->a:Lv3/j;

    return-object v0
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lv3/k;->f:Lob/b;

    if-nez v0, :cond_0

    new-instance v0, Lv3/k$a;

    invoke-direct {v0, p0}, Lv3/k$a;-><init>(Lv3/k;)V

    iput-object v0, p0, Lv3/k;->g:Lob/b$a;

    new-instance v1, Lob/b;

    invoke-direct {v1, v0}, Lob/b;-><init>(Lob/b$a;)V

    iput-object v1, p0, Lv3/k;->f:Lob/b;

    invoke-static {v1}, LK8/a;->J(Lob/b;)V

    :cond_0
    return-void
.end method

.method public f(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delay"
        }
    .end annotation

    iput p1, p0, Lv3/k;->b:I

    return-void
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lv3/k;->i()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public g(Lv3/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "repeatListener"
        }
    .end annotation

    iput-object p1, p0, Lv3/k;->a:Lv3/j;

    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lv3/k;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lv3/k;->c:Z

    invoke-virtual {p0}, Lv3/k;->e()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lv3/k;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lv3/k;->f:Lob/b;

    iput-object v1, p0, Lv3/k;->g:Lob/b$a;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lv3/k;->c:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.class public final Lqd/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd/A;


# instance fields
.field public final a:Lqd/J;

.field public final b:Lqd/z;

.field public volatile c:Z

.field public d:Lqd/z;

.field public e:Lqd/E;


# direct methods
.method public constructor <init>(Lqd/E;Lqd/J;Lqd/z;[Lqd/z;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lqd/x;->c:Z

    iput-object p1, p0, Lqd/x;->e:Lqd/E;

    iput-object p2, p0, Lqd/x;->a:Lqd/J;

    iput-object p3, p0, Lqd/x;->d:Lqd/z;

    array-length p1, p4

    if-nez p1, :cond_0

    iput-object p3, p0, Lqd/x;->b:Lqd/z;

    goto :goto_0

    :cond_0
    new-instance p1, Lqd/r;

    invoke-direct {p1, p4}, Lqd/r;-><init>([Lqd/z;)V

    iput-object p1, p0, Lqd/x;->b:Lqd/z;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lmax/disruptor/AlertException;,
            Ljava/lang/InterruptedException;,
            Lcom/lmax/disruptor/TimeoutException;
        }
    .end annotation

    invoke-virtual {p0}, Lqd/x;->b()V

    iget-object v0, p0, Lqd/x;->a:Lqd/J;

    iget-object v3, p0, Lqd/x;->d:Lqd/z;

    iget-object v4, p0, Lqd/x;->b:Lqd/z;

    move-wide v1, p1

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lqd/J;->b(JLqd/z;Lqd/z;Lqd/A;)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    return-wide v0

    :cond_0
    iget-object v2, p0, Lqd/x;->e:Lqd/E;

    invoke-interface {v2, p1, p2, v0, v1}, Lqd/E;->h(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lmax/disruptor/AlertException;
        }
    .end annotation

    iget-boolean v0, p0, Lqd/x;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/lmax/disruptor/AlertException;->INSTANCE:Lcom/lmax/disruptor/AlertException;

    throw v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lqd/x;->c:Z

    return v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lqd/x;->c:Z

    iget-object v0, p0, Lqd/x;->a:Lqd/J;

    invoke-interface {v0}, Lqd/J;->a()V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lqd/x;->c:Z

    return-void
.end method

.method public getCursor()J
    .locals 2

    iget-object v0, p0, Lqd/x;->b:Lqd/z;

    invoke-virtual {v0}, Lqd/z;->c()J

    move-result-wide v0

    return-wide v0
.end method

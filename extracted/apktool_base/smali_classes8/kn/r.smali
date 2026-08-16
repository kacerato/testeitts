.class public Lkn/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkn/i;

.field public final b:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lkn/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkn/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lkn/r;->b:Ljava/util/Deque;

    iput-object p1, p0, Lkn/r;->a:Lkn/i;

    return-void
.end method


# virtual methods
.method public a(JJ[F[FLjn/L;)Lkn/q;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startRef",
            "endRef",
            "startPos",
            "endPos",
            "filter"
        }
    .end annotation

    iget-object v0, p0, Lkn/r;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget-object v1, p0, Lkn/r;->a:Lkn/i;

    iget v1, v1, Lkn/i;->b:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return-object v2

    :cond_0
    new-instance v0, Lkn/p;

    invoke-direct {v0}, Lkn/p;-><init>()V

    iget-object v1, v0, Lkn/p;->a:[F

    invoke-static {v1, p5}, Ljn/g;->w([F[F)V

    iput-wide p1, v0, Lkn/p;->c:J

    iget-object p1, v0, Lkn/p;->b:[F

    invoke-static {p1, p6}, Ljn/g;->w([F[F)V

    iput-wide p3, v0, Lkn/p;->d:J

    iget-object p1, v0, Lkn/p;->f:Lkn/q;

    iput-object v2, p1, Lkn/q;->a:Ljn/Q;

    iput-object p7, v0, Lkn/p;->e:Ljn/L;

    iget-object p1, p0, Lkn/r;->b:Ljava/util/Deque;

    invoke-interface {p1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    iget-object p1, v0, Lkn/p;->f:Lkn/q;

    return-object p1
.end method

.method public b(Ljn/v;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "navMesh"
        }
    .end annotation

    iget-object v0, p0, Lkn/r;->a:Lkn/i;

    iget v0, v0, Lkn/i;->c:I

    :cond_0
    :goto_0
    if-lez v0, :cond_5

    iget-object v1, p0, Lkn/r;->b:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkn/p;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v1, Lkn/p;->f:Lkn/q;

    iget-object v2, v2, Lkn/q;->a:Ljn/Q;

    if-nez v2, :cond_2

    new-instance v3, Ljn/A;

    invoke-direct {v3, p1}, Ljn/A;-><init>(Ljn/v;)V

    iput-object v3, v1, Lkn/p;->g:Ljn/A;

    iget-object v2, v1, Lkn/p;->f:Lkn/q;

    iget-wide v4, v1, Lkn/p;->c:J

    iget-wide v6, v1, Lkn/p;->d:J

    iget-object v8, v1, Lkn/p;->a:[F

    iget-object v9, v1, Lkn/p;->b:[F

    iget-object v10, v1, Lkn/p;->e:Ljn/L;

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Ljn/A;->E(JJ[F[FLjn/L;I)Ljn/Q;

    move-result-object v3

    iput-object v3, v2, Lkn/q;->a:Ljn/Q;

    :cond_2
    iget-object v2, v1, Lkn/p;->f:Lkn/q;

    iget-object v2, v2, Lkn/q;->a:Ljn/Q;

    invoke-virtual {v2}, Ljn/Q;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lkn/p;->g:Ljn/A;

    invoke-virtual {v2, v0}, Ljn/A;->Q(I)Ljn/O;

    move-result-object v2

    iget-object v3, v1, Lkn/p;->f:Lkn/q;

    iget-object v4, v2, Ljn/O;->b:Ljn/Q;

    iput-object v4, v3, Lkn/q;->a:Ljn/Q;

    iget-object v2, v2, Ljn/O;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v0, v2

    :cond_3
    iget-object v2, v1, Lkn/p;->f:Lkn/q;

    iget-object v2, v2, Lkn/q;->a:Ljn/Q;

    invoke-virtual {v2}, Ljn/Q;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lkn/p;->g:Ljn/A;

    invoke-virtual {v2}, Ljn/A;->f()Ljn/O;

    move-result-object v2

    iget-object v3, v1, Lkn/p;->f:Lkn/q;

    iget-object v4, v2, Ljn/O;->b:Ljn/Q;

    iput-object v4, v3, Lkn/q;->a:Ljn/Q;

    iget-object v2, v2, Ljn/O;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iput-object v2, v3, Lkn/q;->b:Ljava/util/List;

    :cond_4
    iget-object v2, v1, Lkn/p;->f:Lkn/q;

    iget-object v2, v2, Lkn/q;->a:Ljn/Q;

    invoke-virtual {v2}, Ljn/Q;->b()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lkn/p;->f:Lkn/q;

    iget-object v2, v2, Lkn/q;->a:Ljn/Q;

    invoke-virtual {v2}, Ljn/Q;->e()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lkn/r;->b:Ljava/util/Deque;

    invoke-interface {v2, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    :goto_1
    return-void
.end method

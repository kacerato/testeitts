.class public final Lqd/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd/f;
.implements Lqd/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lqd/f;",
        "Lqd/g<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final f:J = -0x1L


# instance fields
.field public final b:I

.field public final c:[Ljava/lang/Object;

.field public final d:I

.field public final e:Lqd/E;


# direct methods
.method public constructor <init>(Lqd/h;Lqd/E;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/h<",
            "TE;>;",
            "Lqd/E;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {p2}, Lqd/E;->m()I

    move-result v0

    iput v0, p0, Lqd/y;->d:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    sub-int/2addr v0, v1

    iput v0, p0, Lqd/y;->b:I

    invoke-interface {p2}, Lqd/E;->m()I

    move-result p2

    new-array p2, p2, [Ljava/lang/Object;

    iput-object p2, p0, Lqd/y;->c:[Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lqd/y;->v(Lqd/h;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bufferSize must be a power of 2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bufferSize must not be less than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static p(Lsd/g;Lqd/h;ILqd/J;)Lqd/y;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lsd/g;",
            "Lqd/h<",
            "TE;>;I",
            "Lqd/J;",
            ")",
            "Lqd/y<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lqd/y$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p1, p2, p3}, Lqd/y;->r(Lqd/h;ILqd/J;)Lqd/y;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1, p2, p3}, Lqd/y;->t(Lqd/h;ILqd/J;)Lqd/y;

    move-result-object p0

    return-object p0
.end method

.method public static q(Lqd/h;I)Lqd/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lqd/h<",
            "TE;>;I)",
            "Lqd/y<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lqd/d;

    invoke-direct {v0}, Lqd/d;-><init>()V

    invoke-static {p0, p1, v0}, Lqd/y;->r(Lqd/h;ILqd/J;)Lqd/y;

    move-result-object p0

    return-object p0
.end method

.method public static r(Lqd/h;ILqd/J;)Lqd/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lqd/h<",
            "TE;>;I",
            "Lqd/J;",
            ")",
            "Lqd/y<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lqd/u;

    invoke-direct {v0, p1, p2}, Lqd/u;-><init>(ILqd/J;)V

    new-instance p1, Lqd/y;

    invoke-direct {p1, p0, v0}, Lqd/y;-><init>(Lqd/h;Lqd/E;)V

    return-object p1
.end method

.method public static s(Lqd/h;I)Lqd/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lqd/h<",
            "TE;>;I)",
            "Lqd/y<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lqd/d;

    invoke-direct {v0}, Lqd/d;-><init>()V

    invoke-static {p0, p1, v0}, Lqd/y;->t(Lqd/h;ILqd/J;)Lqd/y;

    move-result-object p0

    return-object p0
.end method

.method public static t(Lqd/h;ILqd/J;)Lqd/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lqd/h<",
            "TE;>;I",
            "Lqd/J;",
            ")",
            "Lqd/y<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lqd/F;

    invoke-direct {v0, p1, p2}, Lqd/F;-><init>(ILqd/J;)V

    new-instance p1, Lqd/y;

    invoke-direct {p1, p0, v0}, Lqd/y;-><init>(Lqd/h;Lqd/E;)V

    return-object p1
.end method


# virtual methods
.method public A(Lqd/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/k<",
            "TE;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {v0}, Lqd/E;->next()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lqd/y;->G(Lqd/k;J)V

    return-void
.end method

.method public B(Lqd/l;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lqd/l<",
            "TE;TA;>;TA;)V"
        }
    .end annotation

    iget-object v0, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {v0}, Lqd/E;->next()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lqd/y;->H(Lqd/l;JLjava/lang/Object;)V

    return-void
.end method

.method public C(Lqd/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lqd/m<",
            "TE;TA;TB;TC;>;TA;TB;TC;)V"
        }
    .end annotation

    iget-object v0, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {v0}, Lqd/E;->next()J

    move-result-wide v3

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lqd/y;->I(Lqd/m;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public D(Lqd/n;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lqd/n<",
            "TE;TA;TB;>;TA;TB;)V"
        }
    .end annotation

    iget-object v0, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {v0}, Lqd/E;->next()J

    move-result-wide v3

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lqd/y;->J(Lqd/n;JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public varargs E(Lqd/o;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/o<",
            "TE;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {v0}, Lqd/E;->next()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lqd/y;->K(Lqd/o;J[Ljava/lang/Object;)V

    return-void
.end method

.method public F(J)V
    .locals 1

    iget-object v0, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {v0, p1, p2}, Lqd/E;->l(J)V

    iget-object v0, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {v0, p1, p2}, Lqd/E;->j(J)V

    return-void
.end method

.method public final G(Lqd/k;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/k<",
            "TE;>;J)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p2, p3}, Lqd/y;->u(J)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3}, Lqd/k;->a(Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {p1, p2, p3}, Lqd/E;->j(J)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {v0, p2, p3}, Lqd/E;->j(J)V

    throw p1
.end method

.method public final H(Lqd/l;JLjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lqd/l<",
            "TE;TA;>;JTA;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p2, p3}, Lqd/y;->u(J)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3, p4}, Lqd/l;->a(Ljava/lang/Object;JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {p1, p2, p3}, Lqd/E;->j(J)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p4, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {p4, p2, p3}, Lqd/E;->j(J)V

    throw p1
.end method

.method public final I(Lqd/m;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lqd/m<",
            "TE;TA;TB;TC;>;JTA;TB;TC;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p2, p3}, Lqd/y;->u(J)Ljava/lang/Object;

    move-result-object v1

    move-object v0, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lqd/m;->a(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {p1, p2, p3}, Lqd/E;->j(J)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p4, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {p4, p2, p3}, Lqd/E;->j(J)V

    throw p1
.end method

.method public final J(Lqd/n;JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lqd/n<",
            "TE;TA;TB;>;JTA;TB;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p2, p3}, Lqd/y;->u(J)Ljava/lang/Object;

    move-result-object v1

    move-object v0, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lqd/n;->a(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {p1, p2, p3}, Lqd/E;->j(J)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p4, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {p4, p2, p3}, Lqd/E;->j(J)V

    throw p1
.end method

.method public final varargs K(Lqd/o;J[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lqd/o<",
            "TE;>;J[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p2, p3}, Lqd/y;->u(J)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3, p4}, Lqd/o;->a(Ljava/lang/Object;J[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {p1, p2, p3}, Lqd/E;->j(J)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p4, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {p4, p2, p3}, Lqd/E;->j(J)V

    throw p1
.end method

.method public L(Lqd/k;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/k<",
            "TE;>;)Z"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {v0}, Lqd/E;->g()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lqd/y;->G(Lqd/k;J)V
    :try_end_0
    .catch Lcom/lmax/disruptor/InsufficientCapacityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public M(Lqd/l;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lqd/l<",
            "TE;TA;>;TA;)Z"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {v0}, Lqd/E;->g()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lqd/y;->H(Lqd/l;JLjava/lang/Object;)V
    :try_end_0
    .catch Lcom/lmax/disruptor/InsufficientCapacityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public N(Lqd/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lqd/m<",
            "TE;TA;TB;TC;>;TA;TB;TC;)Z"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {v0}, Lqd/E;->g()J

    move-result-wide v3

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lqd/y;->I(Lqd/m;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/lmax/disruptor/InsufficientCapacityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public O(Lqd/n;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lqd/n<",
            "TE;TA;TB;>;TA;TB;)Z"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {v0}, Lqd/E;->g()J

    move-result-wide v3

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lqd/y;->J(Lqd/n;JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/lmax/disruptor/InsufficientCapacityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public varargs P(Lqd/o;[Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/o<",
            "TE;>;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {v0}, Lqd/E;->g()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lqd/y;->K(Lqd/o;J[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/lmax/disruptor/InsufficientCapacityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lqd/z;)Z
    .locals 1

    iget-object v0, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {v0, p1}, Lqd/E;->a(Lqd/z;)Z

    move-result p1

    return p1
.end method

.method public b(I)Z
    .locals 1

    iget-object v0, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {v0, p1}, Lqd/E;->b(I)Z

    move-result p1

    return p1
.end method

.method public g()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lmax/disruptor/InsufficientCapacityException;
        }
    .end annotation

    iget-object v0, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {v0}, Lqd/E;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getCursor()J
    .locals 2

    iget-object v0, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {v0}, Lqd/f;->getCursor()J

    move-result-wide v0

    return-wide v0
.end method

.method public varargs i([Lqd/z;)Lqd/A;
    .locals 1

    iget-object v0, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {v0, p1}, Lqd/E;->i([Lqd/z;)Lqd/A;

    move-result-object p1

    return-object p1
.end method

.method public j(J)V
    .locals 1

    iget-object v0, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {v0, p1, p2}, Lqd/E;->j(J)V

    return-void
.end method

.method public varargs k([Lqd/z;)V
    .locals 1

    iget-object v0, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {v0, p1}, Lqd/E;->k([Lqd/z;)V

    return-void
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lqd/y;->d:I

    return v0
.end method

.method public next()J
    .locals 2

    iget-object v0, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {v0}, Lqd/E;->next()J

    move-result-wide v0

    return-wide v0
.end method

.method public o(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    iget-object v0, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {v0, p1, p2}, Lqd/E;->l(J)V

    invoke-virtual {p0, p1, p2}, Lqd/y;->u(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remainingCapacity()J
    .locals 2

    iget-object v0, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {v0}, Lqd/E;->remainingCapacity()J

    move-result-wide v0

    return-wide v0
.end method

.method public u(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    iget-object v0, p0, Lqd/y;->c:[Ljava/lang/Object;

    long-to-int p1, p1

    iget p2, p0, Lqd/y;->b:I

    and-int/2addr p1, p2

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final v(Lqd/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/h<",
            "TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lqd/y;->c:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-interface {p1}, Lqd/h;->a()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public w()J
    .locals 2

    iget-object v0, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {v0}, Lqd/E;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public x(J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lqd/y;->u(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public y(J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lqd/y;->u(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public z(J)Z
    .locals 1

    iget-object v0, p0, Lqd/y;->e:Lqd/E;

    invoke-interface {v0, p1, p2}, Lqd/E;->f(J)Z

    move-result p1

    return p1
.end method

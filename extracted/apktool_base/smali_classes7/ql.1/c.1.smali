.class public Lql/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final h:J = 0x1L


# instance fields
.field public b:Lql/E;

.field public final c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lql/c;->c:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lql/c;->f:Z

    iput-boolean p1, p0, Lql/c;->g:Z

    return-void
.end method


# virtual methods
.method public a()Lql/c;
    .locals 2

    new-instance v0, Lql/c;

    iget v1, p0, Lql/c;->c:I

    invoke-direct {v0, v1}, Lql/c;-><init>(I)V

    iget-object v1, p0, Lql/c;->b:Lql/E;

    iput-object v1, v0, Lql/c;->b:Lql/E;

    iget v1, p0, Lql/c;->d:I

    iput v1, v0, Lql/c;->d:I

    iget v1, p0, Lql/c;->e:I

    iput v1, v0, Lql/c;->e:I

    iget-boolean v1, p0, Lql/c;->f:Z

    iput-boolean v1, v0, Lql/c;->f:Z

    iget-boolean v1, p0, Lql/c;->g:Z

    iput-boolean v1, v0, Lql/c;->g:Z

    return-object v0
.end method

.method public b()I
    .locals 1

    iget-boolean v0, p0, Lql/c;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lql/c;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lql/c;->d:I

    return v0

    :cond_1
    :goto_0
    const v0, 0x7fffffff

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lql/c;->e:I

    return v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lql/c;->a()Lql/c;

    move-result-object v0

    return-object v0
.end method

.method public d()Lql/E;
    .locals 1

    iget-object v0, p0, Lql/c;->b:Lql/E;

    return-object v0
.end method

.method public e(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lql/c;->b:Lql/E;

    iget v0, p0, Lql/c;->c:I

    iput v0, p0, Lql/c;->d:I

    iput p1, p0, Lql/c;->e:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lql/c;->f:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lql/c;->g:Z

    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lql/c;->g:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lql/c;->f:Z

    return v0
.end method

.method public h(Lql/E;)V
    .locals 1

    iput-object p1, p0, Lql/c;->b:Lql/E;

    invoke-virtual {p1}, Lql/E;->a()I

    move-result p1

    iput p1, p0, Lql/c;->d:I

    iget v0, p0, Lql/c;->c:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lql/c;->g:Z

    :cond_0
    return-void
.end method

.method public i(Ljava/util/Stack;Lql/k;[B[BLql/j;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Lql/E;",
            ">;",
            "Lql/k;",
            "[B[B",
            "Lql/j;",
            ")V"
        }
    .end annotation

    if-eqz p5, :cond_5

    iget-boolean v0, p0, Lql/c;->g:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lql/c;->f:Z

    if-eqz v0, :cond_4

    new-instance v0, Lql/j$b;

    invoke-direct {v0}, Lql/j$b;-><init>()V

    invoke-virtual {p5}, Lql/r;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lql/r$a;->h(I)Lql/r$a;

    move-result-object v0

    check-cast v0, Lql/j$b;

    invoke-virtual {p5}, Lql/r;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lql/r$a;->i(J)Lql/r$a;

    move-result-object v0

    check-cast v0, Lql/j$b;

    iget v1, p0, Lql/c;->e:I

    invoke-virtual {v0, v1}, Lql/j$b;->p(I)Lql/j$b;

    move-result-object v0

    invoke-virtual {p5}, Lql/j;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lql/j$b;->n(I)Lql/j$b;

    move-result-object v0

    invoke-virtual {p5}, Lql/j;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lql/j$b;->o(I)Lql/j$b;

    move-result-object v0

    invoke-virtual {p5}, Lql/r;->a()I

    move-result p5

    invoke-virtual {v0, p5}, Lql/r$a;->g(I)Lql/r$a;

    move-result-object p5

    check-cast p5, Lql/j$b;

    invoke-virtual {p5}, Lql/j$b;->e()Lql/r;

    move-result-object p5

    check-cast p5, Lql/j;

    new-instance v0, Lql/i$b;

    invoke-direct {v0}, Lql/i$b;-><init>()V

    invoke-virtual {p5}, Lql/r;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lql/r$a;->h(I)Lql/r$a;

    move-result-object v0

    check-cast v0, Lql/i$b;

    invoke-virtual {p5}, Lql/r;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lql/r$a;->i(J)Lql/r$a;

    move-result-object v0

    check-cast v0, Lql/i$b;

    iget v1, p0, Lql/c;->e:I

    invoke-virtual {v0, v1}, Lql/i$b;->n(I)Lql/i$b;

    move-result-object v0

    invoke-virtual {v0}, Lql/i$b;->e()Lql/r;

    move-result-object v0

    check-cast v0, Lql/i;

    new-instance v1, Lql/g$b;

    invoke-direct {v1}, Lql/g$b;-><init>()V

    invoke-virtual {p5}, Lql/r;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lql/r$a;->h(I)Lql/r$a;

    move-result-object v1

    check-cast v1, Lql/g$b;

    invoke-virtual {p5}, Lql/r;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lql/r$a;->i(J)Lql/r$a;

    move-result-object v1

    check-cast v1, Lql/g$b;

    iget v2, p0, Lql/c;->e:I

    invoke-virtual {v1, v2}, Lql/g$b;->n(I)Lql/g$b;

    move-result-object v1

    invoke-virtual {v1}, Lql/g$b;->e()Lql/r;

    move-result-object v1

    check-cast v1, Lql/g;

    invoke-virtual {p2, p4, p5}, Lql/k;->k([BLql/j;)[B

    move-result-object p4

    invoke-virtual {p2, p4, p3}, Lql/k;->l([B[B)V

    invoke-virtual {p2, p5}, Lql/k;->g(Lql/j;)Lql/o;

    move-result-object p3

    invoke-static {p2, p3, v0}, Lql/F;->a(Lql/k;Lql/o;Lql/i;)Lql/E;

    move-result-object p3

    :goto_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p4

    const/4 p5, 0x1

    if-nez p4, :cond_0

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lql/E;

    invoke-virtual {p4}, Lql/E;->a()I

    move-result p4

    invoke-virtual {p3}, Lql/E;->a()I

    move-result v0

    if-ne p4, v0, :cond_0

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lql/E;

    invoke-virtual {p4}, Lql/E;->a()I

    move-result p4

    iget v0, p0, Lql/c;->c:I

    if-eq p4, v0, :cond_0

    new-instance p4, Lql/g$b;

    invoke-direct {p4}, Lql/g$b;-><init>()V

    invoke-virtual {v1}, Lql/r;->b()I

    move-result v0

    invoke-virtual {p4, v0}, Lql/r$a;->h(I)Lql/r$a;

    move-result-object p4

    check-cast p4, Lql/g$b;

    invoke-virtual {v1}, Lql/r;->c()J

    move-result-wide v2

    invoke-virtual {p4, v2, v3}, Lql/r$a;->i(J)Lql/r$a;

    move-result-object p4

    check-cast p4, Lql/g$b;

    invoke-virtual {v1}, Lql/g;->g()I

    move-result v0

    invoke-virtual {p4, v0}, Lql/g$b;->m(I)Lql/g$b;

    move-result-object p4

    invoke-virtual {v1}, Lql/g;->h()I

    move-result v0

    sub-int/2addr v0, p5

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p4, v0}, Lql/g$b;->n(I)Lql/g$b;

    move-result-object p4

    invoke-virtual {v1}, Lql/r;->a()I

    move-result v0

    invoke-virtual {p4, v0}, Lql/r$a;->g(I)Lql/r$a;

    move-result-object p4

    check-cast p4, Lql/g$b;

    invoke-virtual {p4}, Lql/g$b;->e()Lql/r;

    move-result-object p4

    check-cast p4, Lql/g;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lql/E;

    invoke-static {p2, v0, p3, p4}, Lql/F;->b(Lql/k;Lql/E;Lql/E;Lql/r;)Lql/E;

    move-result-object p3

    new-instance v0, Lql/E;

    invoke-virtual {p3}, Lql/E;->a()I

    move-result v1

    add-int/2addr v1, p5

    invoke-virtual {p3}, Lql/E;->b()[B

    move-result-object p3

    invoke-direct {v0, v1, p3}, Lql/E;-><init>(I[B)V

    new-instance p3, Lql/g$b;

    invoke-direct {p3}, Lql/g$b;-><init>()V

    invoke-virtual {p4}, Lql/r;->b()I

    move-result v1

    invoke-virtual {p3, v1}, Lql/r$a;->h(I)Lql/r$a;

    move-result-object p3

    check-cast p3, Lql/g$b;

    invoke-virtual {p4}, Lql/r;->c()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Lql/r$a;->i(J)Lql/r$a;

    move-result-object p3

    check-cast p3, Lql/g$b;

    invoke-virtual {p4}, Lql/g;->g()I

    move-result v1

    add-int/2addr v1, p5

    invoke-virtual {p3, v1}, Lql/g$b;->m(I)Lql/g$b;

    move-result-object p3

    invoke-virtual {p4}, Lql/g;->h()I

    move-result p5

    invoke-virtual {p3, p5}, Lql/g$b;->n(I)Lql/g$b;

    move-result-object p3

    invoke-virtual {p4}, Lql/r;->a()I

    move-result p4

    invoke-virtual {p3, p4}, Lql/r$a;->g(I)Lql/r$a;

    move-result-object p3

    check-cast p3, Lql/g$b;

    invoke-virtual {p3}, Lql/g$b;->e()Lql/r;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lql/g;

    move-object p3, v0

    goto/16 :goto_0

    :cond_0
    iget-object p4, p0, Lql/c;->b:Lql/E;

    if-nez p4, :cond_1

    iput-object p3, p0, Lql/c;->b:Lql/E;

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p4}, Lql/E;->a()I

    move-result p4

    invoke-virtual {p3}, Lql/E;->a()I

    move-result v0

    if-ne p4, v0, :cond_2

    new-instance p1, Lql/g$b;

    invoke-direct {p1}, Lql/g$b;-><init>()V

    invoke-virtual {v1}, Lql/r;->b()I

    move-result p4

    invoke-virtual {p1, p4}, Lql/r$a;->h(I)Lql/r$a;

    move-result-object p1

    check-cast p1, Lql/g$b;

    invoke-virtual {v1}, Lql/r;->c()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lql/r$a;->i(J)Lql/r$a;

    move-result-object p1

    check-cast p1, Lql/g$b;

    invoke-virtual {v1}, Lql/g;->g()I

    move-result p4

    invoke-virtual {p1, p4}, Lql/g$b;->m(I)Lql/g$b;

    move-result-object p1

    invoke-virtual {v1}, Lql/g;->h()I

    move-result p4

    sub-int/2addr p4, p5

    div-int/lit8 p4, p4, 0x2

    invoke-virtual {p1, p4}, Lql/g$b;->n(I)Lql/g$b;

    move-result-object p1

    invoke-virtual {v1}, Lql/r;->a()I

    move-result p4

    invoke-virtual {p1, p4}, Lql/r$a;->g(I)Lql/r$a;

    move-result-object p1

    check-cast p1, Lql/g$b;

    invoke-virtual {p1}, Lql/g$b;->e()Lql/r;

    move-result-object p1

    check-cast p1, Lql/g;

    iget-object p4, p0, Lql/c;->b:Lql/E;

    invoke-static {p2, p4, p3, p1}, Lql/F;->b(Lql/k;Lql/E;Lql/E;Lql/r;)Lql/E;

    move-result-object p2

    new-instance p3, Lql/E;

    iget-object p4, p0, Lql/c;->b:Lql/E;

    invoke-virtual {p4}, Lql/E;->a()I

    move-result p4

    add-int/2addr p4, p5

    invoke-virtual {p2}, Lql/E;->b()[B

    move-result-object p2

    invoke-direct {p3, p4, p2}, Lql/E;-><init>(I[B)V

    iput-object p3, p0, Lql/c;->b:Lql/E;

    new-instance p2, Lql/g$b;

    invoke-direct {p2}, Lql/g$b;-><init>()V

    invoke-virtual {p1}, Lql/r;->b()I

    move-result p4

    invoke-virtual {p2, p4}, Lql/r$a;->h(I)Lql/r$a;

    move-result-object p2

    check-cast p2, Lql/g$b;

    invoke-virtual {p1}, Lql/r;->c()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lql/r$a;->i(J)Lql/r$a;

    move-result-object p2

    check-cast p2, Lql/g$b;

    invoke-virtual {p1}, Lql/g;->g()I

    move-result p4

    add-int/2addr p4, p5

    invoke-virtual {p2, p4}, Lql/g$b;->m(I)Lql/g$b;

    move-result-object p2

    invoke-virtual {p1}, Lql/g;->h()I

    move-result p4

    invoke-virtual {p2, p4}, Lql/g$b;->n(I)Lql/g$b;

    move-result-object p2

    invoke-virtual {p1}, Lql/r;->a()I

    move-result p1

    invoke-virtual {p2, p1}, Lql/r$a;->g(I)Lql/r$a;

    move-result-object p1

    check-cast p1, Lql/g$b;

    invoke-virtual {p1}, Lql/g$b;->e()Lql/r;

    move-result-object p1

    check-cast p1, Lql/g;

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object p1, p0, Lql/c;->b:Lql/E;

    invoke-virtual {p1}, Lql/E;->a()I

    move-result p1

    iget p2, p0, Lql/c;->c:I

    if-ne p1, p2, :cond_3

    iput-boolean p5, p0, Lql/c;->g:Z

    goto :goto_2

    :cond_3
    invoke-virtual {p3}, Lql/E;->a()I

    move-result p1

    iput p1, p0, Lql/c;->d:I

    iget p1, p0, Lql/c;->e:I

    add-int/2addr p1, p5

    iput p1, p0, Lql/c;->e:I

    :goto_2
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "finished or not initialized"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "otsHashAddress == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

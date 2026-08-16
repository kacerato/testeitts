.class public Lxd/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyd/b;


# instance fields
.field public a:Lxd/d;

.field public b:Lxd/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    new-instance v0, Lxd/e;

    invoke-direct {v0, p1}, Lxd/e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lxd/f;->b:Lxd/e;

    iget-object p1, p0, Lxd/f;->a:Lxd/d;

    invoke-virtual {p1}, Lxd/d;->b()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lxd/f;->b:Lxd/e;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p0}, Lxd/f;->n()V

    iget-object v0, p0, Lxd/f;->b:Lxd/e;

    invoke-virtual {v0, p1}, Lxd/e;->t(Ljava/lang/String;)V

    return-void
.end method

.method public d(Lwd/c;Lwd/c;Lwd/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p0}, Lxd/f;->n()V

    iget-object v0, p0, Lxd/f;->b:Lxd/e;

    invoke-virtual {v0}, Lxd/e;->c()Lxd/c;

    move-result-object v0

    invoke-interface {p1}, Lwd/c;->get()F

    move-result p1

    iput p1, v0, Lxd/c;->a:F

    iget-object p1, p0, Lxd/f;->b:Lxd/e;

    invoke-virtual {p1}, Lxd/e;->c()Lxd/c;

    move-result-object p1

    invoke-interface {p2}, Lwd/c;->get()F

    move-result p2

    iput p2, p1, Lxd/c;->b:F

    iget-object p1, p0, Lxd/f;->b:Lxd/e;

    invoke-virtual {p1}, Lxd/e;->c()Lxd/c;

    move-result-object p1

    invoke-interface {p3}, Lwd/c;->get()F

    move-result p2

    iput p2, p1, Lxd/c;->c:F

    return-void
.end method

.method public e(Lwd/c;Lwd/c;Lwd/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p0}, Lxd/f;->n()V

    iget-object v0, p0, Lxd/f;->b:Lxd/e;

    invoke-virtual {v0}, Lxd/e;->l()Lxd/c;

    move-result-object v0

    invoke-interface {p1}, Lwd/c;->get()F

    move-result p1

    iput p1, v0, Lxd/c;->a:F

    iget-object p1, p0, Lxd/f;->b:Lxd/e;

    invoke-virtual {p1}, Lxd/e;->l()Lxd/c;

    move-result-object p1

    invoke-interface {p2}, Lwd/c;->get()F

    move-result p2

    iput p2, p1, Lxd/c;->b:F

    iget-object p1, p0, Lxd/f;->b:Lxd/e;

    invoke-virtual {p1}, Lxd/e;->l()Lxd/c;

    move-result-object p1

    invoke-interface {p3}, Lwd/c;->get()F

    move-result p2

    iput p2, p1, Lxd/c;->c:F

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p0}, Lxd/f;->n()V

    iget-object v0, p0, Lxd/f;->b:Lxd/e;

    invoke-virtual {v0, p1}, Lxd/e;->s(Ljava/lang/String;)V

    return-void
.end method

.method public g(Lwd/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p0}, Lxd/f;->n()V

    iget-object v0, p0, Lxd/f;->b:Lxd/e;

    invoke-interface {p1}, Lwd/c;->get()F

    move-result p1

    invoke-virtual {v0, p1}, Lxd/e;->o(F)V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p0}, Lxd/f;->n()V

    iget-object v0, p0, Lxd/f;->b:Lxd/e;

    invoke-virtual {v0, p1}, Lxd/e;->p(Ljava/lang/String;)V

    return-void
.end method

.method public i(Lwd/c;Lwd/c;Lwd/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p0}, Lxd/f;->n()V

    iget-object v0, p0, Lxd/f;->b:Lxd/e;

    invoke-virtual {v0}, Lxd/e;->a()Lxd/c;

    move-result-object v0

    invoke-interface {p1}, Lwd/c;->get()F

    move-result p1

    iput p1, v0, Lxd/c;->a:F

    iget-object p1, p0, Lxd/f;->b:Lxd/e;

    invoke-virtual {p1}, Lxd/e;->a()Lxd/c;

    move-result-object p1

    invoke-interface {p2}, Lwd/c;->get()F

    move-result p2

    iput p2, p1, Lxd/c;->b:F

    iget-object p1, p0, Lxd/f;->b:Lxd/e;

    invoke-virtual {p1}, Lxd/e;->a()Lxd/c;

    move-result-object p1

    invoke-interface {p3}, Lwd/c;->get()F

    move-result p2

    iput p2, p1, Lxd/c;->c:F

    return-void
.end method

.method public j(Lwd/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p0}, Lxd/f;->n()V

    iget-object v0, p0, Lxd/f;->b:Lxd/e;

    invoke-interface {p1}, Lwd/c;->get()F

    move-result p1

    invoke-virtual {v0, p1}, Lxd/e;->r(F)V

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p0}, Lxd/f;->n()V

    iget-object v0, p0, Lxd/f;->b:Lxd/e;

    invoke-virtual {v0, p1}, Lxd/e;->m(Ljava/lang/String;)V

    return-void
.end method

.method public l(Lwd/c;Lwd/c;Lwd/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p0}, Lxd/f;->n()V

    iget-object v0, p0, Lxd/f;->b:Lxd/e;

    invoke-virtual {v0}, Lxd/e;->h()Lxd/c;

    move-result-object v0

    invoke-interface {p1}, Lwd/c;->get()F

    move-result p1

    iput p1, v0, Lxd/c;->a:F

    iget-object p1, p0, Lxd/f;->b:Lxd/e;

    invoke-virtual {p1}, Lxd/e;->h()Lxd/c;

    move-result-object p1

    invoke-interface {p2}, Lwd/c;->get()F

    move-result p2

    iput p2, p1, Lxd/c;->b:F

    iget-object p1, p0, Lxd/f;->b:Lxd/e;

    invoke-virtual {p1}, Lxd/e;->h()Lxd/c;

    move-result-object p1

    invoke-interface {p3}, Lwd/c;->get()F

    move-result p2

    iput p2, p1, Lxd/c;->c:F

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p0}, Lxd/f;->n()V

    iget-object v0, p0, Lxd/f;->b:Lxd/e;

    invoke-virtual {v0, p1}, Lxd/e;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final n()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFCorruptException;
        }
    .end annotation

    iget-object v0, p0, Lxd/f;->b:Lxd/e;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/mokiat/data/front/error/WFCorruptException;

    const-string v1, "Material name has not been defined."

    invoke-direct {v0, v1}, Lcom/mokiat/data/front/error/WFCorruptException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o(Ljava/io/BufferedReader;Lwd/e;)Lxd/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lxd/f;->b:Lxd/e;

    new-instance v0, Lxd/d;

    invoke-direct {v0}, Lxd/d;-><init>()V

    iput-object v0, p0, Lxd/f;->a:Lxd/d;

    new-instance v0, Lyd/h;

    invoke-direct {v0}, Lyd/h;-><init>()V

    if-nez p2, :cond_0

    invoke-interface {v0, p1, p0}, Lyd/a;->a(Ljava/io/BufferedReader;Lyd/b;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lyd/e;

    invoke-direct {v1, p0, p2}, Lyd/e;-><init>(Lyd/b;Lwd/e;)V

    invoke-interface {v0, p1, v1}, Lyd/a;->a(Ljava/io/BufferedReader;Lyd/b;)V

    :goto_0
    iget-object p1, p0, Lxd/f;->a:Lxd/d;

    return-object p1
.end method

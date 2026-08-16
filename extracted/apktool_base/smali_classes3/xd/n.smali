.class public Lxd/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyd/d;


# instance fields
.field public a:Lxd/k;

.field public b:Lxd/m;

.field public c:Lxd/j;

.field public d:Lxd/i;


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

.method public b(Lwd/c;Lwd/c;Lwd/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    new-instance v0, Lxd/p;

    invoke-interface {p1}, Lwd/c;->get()F

    move-result p1

    invoke-direct {v0, p1}, Lxd/p;-><init>(F)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lwd/c;->get()F

    move-result p1

    iput p1, v0, Lxd/p;->b:F

    sget-object p1, Lxd/p$a;->TYPE_2D:Lxd/p$a;

    iput-object p1, v0, Lxd/p;->d:Lxd/p$a;

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Lwd/c;->get()F

    move-result p1

    iput p1, v0, Lxd/p;->c:F

    sget-object p1, Lxd/p$a;->TYPE_3D:Lxd/p$a;

    iput-object p1, v0, Lxd/p;->d:Lxd/p$a;

    :cond_1
    iget-object p1, p0, Lxd/n;->a:Lxd/k;

    invoke-virtual {p1}, Lxd/k;->g()Ljava/util/List;

    move-result-object p1

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

    iget-object v0, p0, Lxd/n;->a:Lxd/k;

    invoke-virtual {v0}, Lxd/k;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Lwd/d;Lwd/d;Lwd/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    new-instance v0, Lxd/h;

    invoke-direct {v0}, Lxd/h;-><init>()V

    invoke-virtual {p0, p1}, Lxd/n;->o(Lwd/d;)I

    move-result p1

    iput p1, v0, Lxd/h;->a:I

    invoke-virtual {p0, p2}, Lxd/n;->n(Lwd/d;)I

    move-result p1

    iput p1, v0, Lxd/h;->c:I

    invoke-virtual {p0, p3}, Lxd/n;->m(Lwd/d;)I

    move-result p1

    iput p1, v0, Lxd/h;->b:I

    iget-object p1, p0, Lxd/n;->d:Lxd/i;

    invoke-virtual {p1}, Lxd/i;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p0}, Lxd/n;->k()V

    new-instance v0, Lxd/i;

    invoke-direct {v0}, Lxd/i;-><init>()V

    iput-object v0, p0, Lxd/n;->d:Lxd/i;

    iget-object v0, p0, Lxd/n;->c:Lxd/j;

    invoke-virtual {v0}, Lxd/j;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lxd/n;->d:Lxd/i;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p0}, Lxd/n;->l()V

    new-instance v0, Lxd/j;

    invoke-direct {v0}, Lxd/j;-><init>()V

    iput-object v0, p0, Lxd/n;->c:Lxd/j;

    invoke-virtual {v0, p1}, Lxd/j;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lxd/n;->b:Lxd/m;

    invoke-virtual {p1}, Lxd/m;->a()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lxd/n;->c:Lxd/j;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public g(Lwd/c;Lwd/c;Lwd/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    new-instance v0, Lxd/l;

    invoke-interface {p1}, Lwd/c;->get()F

    move-result p1

    invoke-interface {p2}, Lwd/c;->get()F

    move-result p2

    invoke-interface {p3}, Lwd/c;->get()F

    move-result p3

    invoke-direct {v0, p1, p2, p3}, Lxd/l;-><init>(FFF)V

    iget-object p1, p0, Lxd/n;->a:Lxd/k;

    invoke-virtual {p1}, Lxd/k;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public h()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, Lxd/n;->d:Lxd/i;

    invoke-virtual {v0}, Lxd/i;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/mokiat/data/front/error/WFCorruptException;

    const-string v1, "Face does not have at least three vertices."

    invoke-direct {v0, v1}, Lcom/mokiat/data/front/error/WFCorruptException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lxd/n;->c:Lxd/j;

    new-instance v0, Lxd/m;

    invoke-direct {v0, p1}, Lxd/m;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lxd/n;->b:Lxd/m;

    iget-object p1, p0, Lxd/n;->a:Lxd/k;

    invoke-virtual {p1}, Lxd/k;->e()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lxd/n;->b:Lxd/m;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j(Lwd/c;Lwd/c;Lwd/c;Lwd/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    new-instance p4, Lxd/q;

    invoke-interface {p1}, Lwd/c;->get()F

    move-result p1

    invoke-interface {p2}, Lwd/c;->get()F

    move-result p2

    invoke-interface {p3}, Lwd/c;->get()F

    move-result p3

    invoke-direct {p4, p1, p2, p3}, Lxd/q;-><init>(FFF)V

    iget-object p1, p0, Lxd/n;->a:Lxd/k;

    invoke-virtual {p1}, Lxd/k;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lxd/n;->c:Lxd/j;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lxd/n;->l()V

    new-instance v0, Lxd/j;

    invoke-direct {v0}, Lxd/j;-><init>()V

    iput-object v0, p0, Lxd/n;->c:Lxd/j;

    iget-object v0, p0, Lxd/n;->b:Lxd/m;

    invoke-virtual {v0}, Lxd/m;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lxd/n;->c:Lxd/j;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lxd/n;->b:Lxd/m;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lxd/m;

    const-string v1, "Default"

    invoke-direct {v0, v1}, Lxd/m;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lxd/n;->b:Lxd/m;

    iget-object v0, p0, Lxd/n;->a:Lxd/k;

    invoke-virtual {v0}, Lxd/k;->e()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lxd/n;->b:Lxd/m;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final m(Lwd/d;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-interface {p1}, Lwd/d;->get()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Lwd/d;->get()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_1
    iget-object v0, p0, Lxd/n;->a:Lxd/k;

    invoke-virtual {v0}, Lxd/k;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Lwd/d;->get()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public final n(Lwd/d;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-interface {p1}, Lwd/d;->get()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Lwd/d;->get()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_1
    iget-object v0, p0, Lxd/n;->a:Lxd/k;

    invoke-virtual {v0}, Lxd/k;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Lwd/d;->get()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public final o(Lwd/d;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-interface {p1}, Lwd/d;->get()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Lwd/d;->get()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_1
    iget-object v0, p0, Lxd/n;->a:Lxd/k;

    invoke-virtual {v0}, Lxd/k;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Lwd/d;->get()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public p(Ljava/io/BufferedReader;Lwd/f;)Lxd/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lxd/n;->d:Lxd/i;

    iput-object v0, p0, Lxd/n;->c:Lxd/j;

    iput-object v0, p0, Lxd/n;->b:Lxd/m;

    new-instance v0, Lxd/k;

    invoke-direct {v0}, Lxd/k;-><init>()V

    iput-object v0, p0, Lxd/n;->a:Lxd/k;

    new-instance v0, Lyd/l;

    invoke-direct {v0}, Lyd/l;-><init>()V

    if-nez p2, :cond_0

    invoke-interface {v0, p1, p0}, Lyd/c;->a(Ljava/io/BufferedReader;Lyd/d;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lyd/i;

    invoke-direct {v1, p0, p2}, Lyd/i;-><init>(Lyd/d;Lwd/f;)V

    invoke-interface {v0, p1, v1}, Lyd/c;->a(Ljava/io/BufferedReader;Lyd/d;)V

    :goto_0
    iget-object p1, p0, Lxd/n;->a:Lxd/k;

    return-object p1
.end method

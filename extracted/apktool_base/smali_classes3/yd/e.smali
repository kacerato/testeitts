.class public Lyd/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyd/b;


# instance fields
.field public final a:Lyd/b;

.field public final b:Lwd/e;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Lyd/b;Lwd/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lyd/e;->c:I

    iput v0, p0, Lyd/e;->d:I

    iput-object p1, p0, Lyd/e;->a:Lyd/b;

    iput-object p2, p0, Lyd/e;->b:Lwd/e;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget v0, p0, Lyd/e;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lyd/e;->c:I

    iget-object v1, p0, Lyd/e;->b:Lwd/e;

    iget v1, v1, Lwd/e;->a:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lyd/e;->a:Lyd/b;

    invoke-interface {v0, p1}, Lyd/b;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFSizeException;

    const-string v0, "Too many comments."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget v0, p0, Lyd/e;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lyd/e;->d:I

    iget-object v1, p0, Lyd/e;->b:Lwd/e;

    iget v1, v1, Lwd/e;->b:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lyd/e;->a:Lyd/b;

    invoke-interface {v0, p1}, Lyd/b;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFSizeException;

    const-string v0, "Too many materials."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, Lyd/e;->a:Lyd/b;

    invoke-interface {v0, p1}, Lyd/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public d(Lwd/c;Lwd/c;Lwd/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, Lyd/e;->a:Lyd/b;

    invoke-interface {v0, p1, p2, p3}, Lyd/b;->d(Lwd/c;Lwd/c;Lwd/c;)V

    return-void
.end method

.method public e(Lwd/c;Lwd/c;Lwd/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, Lyd/e;->a:Lyd/b;

    invoke-interface {v0, p1, p2, p3}, Lyd/b;->e(Lwd/c;Lwd/c;Lwd/c;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, Lyd/e;->a:Lyd/b;

    invoke-interface {v0, p1}, Lyd/b;->f(Ljava/lang/String;)V

    return-void
.end method

.method public g(Lwd/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, Lyd/e;->a:Lyd/b;

    invoke-interface {v0, p1}, Lyd/b;->g(Lwd/c;)V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, Lyd/e;->a:Lyd/b;

    invoke-interface {v0, p1}, Lyd/b;->h(Ljava/lang/String;)V

    return-void
.end method

.method public i(Lwd/c;Lwd/c;Lwd/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, Lyd/e;->a:Lyd/b;

    invoke-interface {v0, p1, p2, p3}, Lyd/b;->i(Lwd/c;Lwd/c;Lwd/c;)V

    return-void
.end method

.method public j(Lwd/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, Lyd/e;->a:Lyd/b;

    invoke-interface {v0, p1}, Lyd/b;->j(Lwd/c;)V

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, Lyd/e;->a:Lyd/b;

    invoke-interface {v0, p1}, Lyd/b;->k(Ljava/lang/String;)V

    return-void
.end method

.method public l(Lwd/c;Lwd/c;Lwd/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, Lyd/e;->a:Lyd/b;

    invoke-interface {v0, p1, p2, p3}, Lyd/b;->l(Lwd/c;Lwd/c;Lwd/c;)V

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, Lyd/e;->a:Lyd/b;

    invoke-interface {v0, p1}, Lyd/b;->m(Ljava/lang/String;)V

    return-void
.end method

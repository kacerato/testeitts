.class public Lyd/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyd/d;


# instance fields
.field public final a:Lyd/d;

.field public final b:Lwd/f;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>(Lyd/d;Lwd/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lyd/i;->c:I

    iput v0, p0, Lyd/i;->d:I

    iput v0, p0, Lyd/i;->e:I

    iput v0, p0, Lyd/i;->f:I

    iput v0, p0, Lyd/i;->g:I

    iput v0, p0, Lyd/i;->h:I

    iput v0, p0, Lyd/i;->i:I

    iput v0, p0, Lyd/i;->j:I

    iput v0, p0, Lyd/i;->k:I

    iput-object p1, p0, Lyd/i;->a:Lyd/d;

    iput-object p2, p0, Lyd/i;->b:Lwd/f;

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

    iget v0, p0, Lyd/i;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lyd/i;->c:I

    iget-object v1, p0, Lyd/i;->b:Lwd/f;

    iget v1, v1, Lwd/f;->a:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lyd/i;->a:Lyd/d;

    invoke-interface {v0, p1}, Lyd/d;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFSizeException;

    const-string v0, "Too many comments."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lwd/c;Lwd/c;Lwd/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget v0, p0, Lyd/i;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lyd/i;->e:I

    iget-object v1, p0, Lyd/i;->b:Lwd/f;

    iget v1, v1, Lwd/f;->c:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lyd/i;->a:Lyd/d;

    invoke-interface {v0, p1, p2, p3}, Lyd/d;->b(Lwd/c;Lwd/c;Lwd/c;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFSizeException;

    const-string p2, "Too many texture coordinates."

    invoke-direct {p1, p2}, Lcom/mokiat/data/front/error/WFSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget v0, p0, Lyd/i;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lyd/i;->j:I

    iget-object v1, p0, Lyd/i;->b:Lwd/f;

    iget v1, v1, Lwd/f;->h:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lyd/i;->a:Lyd/d;

    invoke-interface {v0, p1}, Lyd/d;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFSizeException;

    const-string v0, "Too many material libraries."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Lwd/d;Lwd/d;Lwd/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget v0, p0, Lyd/i;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lyd/i;->i:I

    iget-object v1, p0, Lyd/i;->b:Lwd/f;

    iget v1, v1, Lwd/f;->g:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lyd/i;->a:Lyd/d;

    invoke-interface {v0, p1, p2, p3}, Lyd/d;->d(Lwd/d;Lwd/d;Lwd/d;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFSizeException;

    const-string p2, "Too many data references."

    invoke-direct {p1, p2}, Lcom/mokiat/data/front/error/WFSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget v0, p0, Lyd/i;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lyd/i;->h:I

    iget-object v1, p0, Lyd/i;->b:Lwd/f;

    iget v1, v1, Lwd/f;->f:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lyd/i;->a:Lyd/d;

    invoke-interface {v0}, Lyd/d;->e()V

    return-void

    :cond_0
    new-instance v0, Lcom/mokiat/data/front/error/WFSizeException;

    const-string v1, "Too many faces."

    invoke-direct {v0, v1}, Lcom/mokiat/data/front/error/WFSizeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget v0, p0, Lyd/i;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lyd/i;->k:I

    iget-object v1, p0, Lyd/i;->b:Lwd/f;

    iget v1, v1, Lwd/f;->i:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lyd/i;->a:Lyd/d;

    invoke-interface {v0, p1}, Lyd/d;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFSizeException;

    const-string v0, "Too many material references."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(Lwd/c;Lwd/c;Lwd/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget v0, p0, Lyd/i;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lyd/i;->f:I

    iget-object v1, p0, Lyd/i;->b:Lwd/f;

    iget v1, v1, Lwd/f;->d:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lyd/i;->a:Lyd/d;

    invoke-interface {v0, p1, p2, p3}, Lyd/d;->g(Lwd/c;Lwd/c;Lwd/c;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFSizeException;

    const-string p2, "Too many normals."

    invoke-direct {p1, p2}, Lcom/mokiat/data/front/error/WFSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, Lyd/i;->a:Lyd/d;

    invoke-interface {v0}, Lyd/d;->h()V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget v0, p0, Lyd/i;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lyd/i;->g:I

    iget-object v1, p0, Lyd/i;->b:Lwd/f;

    iget v1, v1, Lwd/f;->e:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lyd/i;->a:Lyd/d;

    invoke-interface {v0, p1}, Lyd/d;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFSizeException;

    const-string v0, "Too many objects."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(Lwd/c;Lwd/c;Lwd/c;Lwd/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget v0, p0, Lyd/i;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lyd/i;->d:I

    iget-object v1, p0, Lyd/i;->b:Lwd/f;

    iget v1, v1, Lwd/f;->b:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lyd/i;->a:Lyd/d;

    invoke-interface {v0, p1, p2, p3, p4}, Lyd/d;->j(Lwd/c;Lwd/c;Lwd/c;Lwd/c;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFSizeException;

    const-string p2, "Too many vertices."

    invoke-direct {p1, p2}, Lcom/mokiat/data/front/error/WFSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

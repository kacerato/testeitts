.class public LG/i;
.super LY/h;
.source "SourceFile"

# interfaces
.implements LG/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LY/h<",
        "LC/e;",
        "Lcom/bumptech/glide/load/engine/t<",
        "*>;>;",
        "LG/j;"
    }
.end annotation


# instance fields
.field public e:LG/j$a;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, LY/h;-><init>(J)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, LY/h;->b()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    if-ge p1, v0, :cond_1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_2

    :cond_1
    invoke-virtual {p0}, LY/h;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, LY/h;->p(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public d(LG/j$a;)V
    .locals 0
    .param p1    # LG/j$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, LG/i;->e:LG/j$a;

    return-void
.end method

.method public bridge synthetic f(LC/e;Lcom/bumptech/glide/load/engine/t;)Lcom/bumptech/glide/load/engine/t;
    .locals 0
    .param p1    # LC/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/engine/t;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0, p1, p2}, LY/h;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/engine/t;

    return-object p1
.end method

.method public bridge synthetic g(LC/e;)Lcom/bumptech/glide/load/engine/t;
    .locals 0
    .param p1    # LC/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0, p1}, LY/h;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/engine/t;

    return-object p1
.end method

.method public bridge synthetic l(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Lcom/bumptech/glide/load/engine/t;

    invoke-virtual {p0, p1}, LG/i;->q(Lcom/bumptech/glide/load/engine/t;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic m(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, LC/e;

    check-cast p2, Lcom/bumptech/glide/load/engine/t;

    invoke-virtual {p0, p1, p2}, LG/i;->r(LC/e;Lcom/bumptech/glide/load/engine/t;)V

    return-void
.end method

.method public q(Lcom/bumptech/glide/load/engine/t;)I
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/t;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t<",
            "*>;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1}, LY/h;->l(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/t;->getSize()I

    move-result p1

    return p1
.end method

.method public r(LC/e;Lcom/bumptech/glide/load/engine/t;)V
    .locals 0
    .param p1    # LC/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/engine/t;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LC/e;",
            "Lcom/bumptech/glide/load/engine/t<",
            "*>;)V"
        }
    .end annotation

    iget-object p1, p0, LG/i;->e:LG/j$a;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p1, p2}, LG/j$a;->d(Lcom/bumptech/glide/load/engine/t;)V

    :cond_0
    return-void
.end method

.class public Lcom/google/common/collect/a3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/a3;->g()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/common/collect/V1$a<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public b:Lcom/google/common/collect/a3$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a3$f<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public c:Lcom/google/common/collect/V1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/V1$a<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public final synthetic d:Lcom/google/common/collect/a3;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/a3;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/a3$b;->d:Lcom/google/common/collect/a3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/collect/a3;->k(Lcom/google/common/collect/a3;)Lcom/google/common/collect/a3$f;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/a3$b;->b:Lcom/google/common/collect/a3$f;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/V1$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/a3$b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/a3$b;->d:Lcom/google/common/collect/a3;

    iget-object v1, p0, Lcom/google/common/collect/a3$b;->b:Lcom/google/common/collect/a3$f;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/a3;->m(Lcom/google/common/collect/a3;Lcom/google/common/collect/a3$f;)Lcom/google/common/collect/V1$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/a3$b;->c:Lcom/google/common/collect/V1$a;

    iget-object v1, p0, Lcom/google/common/collect/a3$b;->b:Lcom/google/common/collect/a3$f;

    invoke-static {v1}, Lcom/google/common/collect/a3$f;->l(Lcom/google/common/collect/a3$f;)Lcom/google/common/collect/a3$f;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/a3$b;->d:Lcom/google/common/collect/a3;

    invoke-static {v2}, Lcom/google/common/collect/a3;->n(Lcom/google/common/collect/a3;)Lcom/google/common/collect/a3$f;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/a3$b;->b:Lcom/google/common/collect/a3$f;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/a3$b;->b:Lcom/google/common/collect/a3$f;

    invoke-static {v1}, Lcom/google/common/collect/a3$f;->l(Lcom/google/common/collect/a3$f;)Lcom/google/common/collect/a3$f;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/a3$b;->b:Lcom/google/common/collect/a3$f;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/a3$b;->b:Lcom/google/common/collect/a3$f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/a3$b;->d:Lcom/google/common/collect/a3;

    invoke-static {v0}, Lcom/google/common/collect/a3;->l(Lcom/google/common/collect/a3;)Lcom/google/common/collect/R0;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/a3$b;->b:Lcom/google/common/collect/a3$f;

    invoke-virtual {v2}, Lcom/google/common/collect/a3$f;->x()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/R0;->p(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/a3$b;->b:Lcom/google/common/collect/a3$f;

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/a3$b;->a()Lcom/google/common/collect/V1$a;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/a3$b;->c:Lcom/google/common/collect/V1$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "no calls to next() since the last call to remove()"

    invoke-static {v0, v2}, Lw2/H;->h0(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/a3$b;->d:Lcom/google/common/collect/a3;

    iget-object v2, p0, Lcom/google/common/collect/a3$b;->c:Lcom/google/common/collect/V1$a;

    invoke-interface {v2}, Lcom/google/common/collect/V1$a;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/a3;->P9(Ljava/lang/Object;I)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/a3$b;->c:Lcom/google/common/collect/V1$a;

    return-void
.end method

.class public Lcom/google/common/collect/n1$b;
.super Lcom/google/common/collect/c1$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/n1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/c1$b<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public b:Lcom/google/common/collect/d2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/d2<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/collect/n1$b;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/c1$b;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/common/collect/n1$b;->c:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/common/collect/n1$b;->d:Z

    .line 5
    invoke-static {p1}, Lcom/google/common/collect/d2;->d(I)Lcom/google/common/collect/d2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/n1$b;->b:Lcom/google/common/collect/d2;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/google/common/collect/c1$b;-><init>()V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/google/common/collect/n1$b;->c:Z

    .line 8
    iput-boolean p1, p0, Lcom/google/common/collect/n1$b;->d:Z

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/google/common/collect/n1$b;->b:Lcom/google/common/collect/d2;

    return-void
.end method

.method public static n(Ljava/lang/Iterable;)Lcom/google/common/collect/d2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Lcom/google/common/collect/d2<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/s2;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/collect/s2;

    iget-object p0, p0, Lcom/google/common/collect/s2;->e:Lcom/google/common/collect/d2;

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/google/common/collect/f;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/common/collect/f;

    iget-object p0, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/d2;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/c1$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/n1$b;->g(Ljava/lang/Object;)Lcom/google/common/collect/n1$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b([Ljava/lang/Object;)Lcom/google/common/collect/c1$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/n1$b;->h([Ljava/lang/Object;)Lcom/google/common/collect/n1$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/Iterable;)Lcom/google/common/collect/c1$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/n1$b;->i(Ljava/lang/Iterable;)Lcom/google/common/collect/n1$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Ljava/util/Iterator;)Lcom/google/common/collect/c1$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/n1$b;->j(Ljava/util/Iterator;)Lcom/google/common/collect/n1$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e()Lcom/google/common/collect/c1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/n1$b;->l()Lcom/google/common/collect/n1;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/Object;)Lcom/google/common/collect/n1$b;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/n1$b<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/n1$b;->k(Ljava/lang/Object;I)Lcom/google/common/collect/n1$b;

    move-result-object p1

    return-object p1
.end method

.method public varargs h([Ljava/lang/Object;)Lcom/google/common/collect/n1$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/n1$b<",
            "TE;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/c1$b;->b([Ljava/lang/Object;)Lcom/google/common/collect/c1$b;

    return-object p0
.end method

.method public i(Ljava/lang/Iterable;)Lcom/google/common/collect/n1$b;
    .locals 3
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/n1$b<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n1$b;->b:Lcom/google/common/collect/d2;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Lcom/google/common/collect/V1;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/common/collect/W1;->d(Ljava/lang/Iterable;)Lcom/google/common/collect/V1;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/n1$b;->n(Ljava/lang/Iterable;)Lcom/google/common/collect/d2;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/common/collect/n1$b;->b:Lcom/google/common/collect/d2;

    invoke-virtual {p1}, Lcom/google/common/collect/d2;->D()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/common/collect/d2;->D()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/common/collect/d2;->e(I)V

    invoke-virtual {v0}, Lcom/google/common/collect/d2;->f()I

    move-result p1

    :goto_0
    if-ltz p1, :cond_2

    invoke-virtual {v0, p1}, Lcom/google/common/collect/d2;->j(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/d2;->l(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/n1$b;->k(Ljava/lang/Object;I)Lcom/google/common/collect/n1$b;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/d2;->t(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/google/common/collect/V1;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/n1$b;->b:Lcom/google/common/collect/d2;

    invoke-virtual {v1}, Lcom/google/common/collect/d2;->D()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/d2;->e(I)V

    invoke-interface {p1}, Lcom/google/common/collect/V1;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/V1$a;

    invoke-interface {v0}, Lcom/google/common/collect/V1$a;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/V1$a;->getCount()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/n1$b;->k(Ljava/lang/Object;I)Lcom/google/common/collect/n1$b;

    goto :goto_1

    :cond_1
    invoke-super {p0, p1}, Lcom/google/common/collect/c1$b;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/c1$b;

    :cond_2
    return-object p0
.end method

.method public j(Ljava/util/Iterator;)Lcom/google/common/collect/n1$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lcom/google/common/collect/n1$b<",
            "TE;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/c1$b;->d(Ljava/util/Iterator;)Lcom/google/common/collect/c1$b;

    return-object p0
.end method

.method public k(Ljava/lang/Object;I)Lcom/google/common/collect/n1$b;
    .locals 3
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/n1$b<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n1$b;->b:Lcom/google/common/collect/d2;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/google/common/collect/n1$b;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/common/collect/d2;

    iget-object v2, p0, Lcom/google/common/collect/n1$b;->b:Lcom/google/common/collect/d2;

    invoke-direct {v0, v2}, Lcom/google/common/collect/d2;-><init>(Lcom/google/common/collect/d2;)V

    iput-object v0, p0, Lcom/google/common/collect/n1$b;->b:Lcom/google/common/collect/d2;

    iput-boolean v1, p0, Lcom/google/common/collect/n1$b;->d:Z

    :cond_1
    iput-boolean v1, p0, Lcom/google/common/collect/n1$b;->c:Z

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/n1$b;->b:Lcom/google/common/collect/d2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/d2;->g(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/d2;->v(Ljava/lang/Object;I)I

    return-object p0
.end method

.method public l()Lcom/google/common/collect/n1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/n1<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n1$b;->b:Lcom/google/common/collect/d2;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/n1$b;->b:Lcom/google/common/collect/d2;

    invoke-virtual {v0}, Lcom/google/common/collect/d2;->D()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/n1;->x()Lcom/google/common/collect/n1;

    move-result-object v0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/common/collect/n1$b;->d:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/common/collect/d2;

    iget-object v1, p0, Lcom/google/common/collect/n1$b;->b:Lcom/google/common/collect/d2;

    invoke-direct {v0, v1}, Lcom/google/common/collect/d2;-><init>(Lcom/google/common/collect/d2;)V

    iput-object v0, p0, Lcom/google/common/collect/n1$b;->b:Lcom/google/common/collect/d2;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/n1$b;->d:Z

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/n1$b;->c:Z

    new-instance v0, Lcom/google/common/collect/s2;

    iget-object v1, p0, Lcom/google/common/collect/n1$b;->b:Lcom/google/common/collect/d2;

    invoke-direct {v0, v1}, Lcom/google/common/collect/s2;-><init>(Lcom/google/common/collect/d2;)V

    return-object v0
.end method

.method public m(Ljava/lang/Object;I)Lcom/google/common/collect/n1$b;
    .locals 3
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/n1$b<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n1$b;->b:Lcom/google/common/collect/d2;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-boolean v1, p0, Lcom/google/common/collect/n1$b;->d:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/common/collect/e2;

    iget-object v2, p0, Lcom/google/common/collect/n1$b;->b:Lcom/google/common/collect/d2;

    invoke-direct {v1, v2}, Lcom/google/common/collect/e2;-><init>(Lcom/google/common/collect/d2;)V

    iput-object v1, p0, Lcom/google/common/collect/n1$b;->b:Lcom/google/common/collect/d2;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/common/collect/n1$b;->d:Z

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/google/common/collect/n1$b;->c:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/common/collect/d2;

    iget-object v2, p0, Lcom/google/common/collect/n1$b;->b:Lcom/google/common/collect/d2;

    invoke-direct {v1, v2}, Lcom/google/common/collect/d2;-><init>(Lcom/google/common/collect/d2;)V

    iput-object v1, p0, Lcom/google/common/collect/n1$b;->b:Lcom/google/common/collect/d2;

    iput-boolean v0, p0, Lcom/google/common/collect/n1$b;->d:Z

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/google/common/collect/n1$b;->c:Z

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/google/common/collect/n1$b;->b:Lcom/google/common/collect/d2;

    invoke-virtual {p2, p1}, Lcom/google/common/collect/d2;->w(Ljava/lang/Object;)I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/n1$b;->b:Lcom/google/common/collect/d2;

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/d2;->v(Ljava/lang/Object;I)I

    :goto_1
    return-object p0
.end method

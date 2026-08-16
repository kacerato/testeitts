.class public Lcom/google/common/collect/v1$a;
.super Lcom/google/common/collect/n1$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/v1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/n1$b<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field public f:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation

    .annotation build Lv2/d;
    .end annotation
.end field

.field public g:[I

.field public h:I

.field public i:Z


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/n1$b;-><init>(Z)V

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Lcom/google/common/collect/v1$a;->e:Ljava/util/Comparator;

    const/4 p1, 0x4

    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/collect/v1$a;->f:[Ljava/lang/Object;

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/common/collect/v1$a;->g:[I

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/c1$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/v1$a;->o(Ljava/lang/Object;)Lcom/google/common/collect/v1$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b([Ljava/lang/Object;)Lcom/google/common/collect/c1$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/v1$a;->p([Ljava/lang/Object;)Lcom/google/common/collect/v1$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/Iterable;)Lcom/google/common/collect/c1$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/v1$a;->q(Ljava/lang/Iterable;)Lcom/google/common/collect/v1$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Ljava/util/Iterator;)Lcom/google/common/collect/c1$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/v1$a;->r(Ljava/util/Iterator;)Lcom/google/common/collect/v1$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e()Lcom/google/common/collect/c1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/v1$a;->t()Lcom/google/common/collect/v1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g(Ljava/lang/Object;)Lcom/google/common/collect/n1$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/v1$a;->o(Ljava/lang/Object;)Lcom/google/common/collect/v1$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h([Ljava/lang/Object;)Lcom/google/common/collect/n1$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/v1$a;->p([Ljava/lang/Object;)Lcom/google/common/collect/v1$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic i(Ljava/lang/Iterable;)Lcom/google/common/collect/n1$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/v1$a;->q(Ljava/lang/Iterable;)Lcom/google/common/collect/v1$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic j(Ljava/util/Iterator;)Lcom/google/common/collect/n1$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/v1$a;->r(Ljava/util/Iterator;)Lcom/google/common/collect/v1$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic k(Ljava/lang/Object;I)Lcom/google/common/collect/n1$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/v1$a;->s(Ljava/lang/Object;I)Lcom/google/common/collect/v1$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic l()Lcom/google/common/collect/n1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/v1$a;->t()Lcom/google/common/collect/v1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m(Ljava/lang/Object;I)Lcom/google/common/collect/n1$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/v1$a;->x(Ljava/lang/Object;I)Lcom/google/common/collect/v1$a;

    move-result-object p1

    return-object p1
.end method

.method public o(Ljava/lang/Object;)Lcom/google/common/collect/v1$a;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/v1$a<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/v1$a;->s(Ljava/lang/Object;I)Lcom/google/common/collect/v1$a;

    move-result-object p1

    return-object p1
.end method

.method public varargs p([Ljava/lang/Object;)Lcom/google/common/collect/v1$a;
    .locals 3
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/v1$a<",
            "TE;>;"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/google/common/collect/v1$a;->o(Ljava/lang/Object;)Lcom/google/common/collect/v1$a;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public q(Ljava/lang/Iterable;)Lcom/google/common/collect/v1$a;
    .locals 2
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/v1$a<",
            "TE;>;"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/common/collect/V1;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/V1;

    invoke-interface {p1}, Lcom/google/common/collect/V1;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/V1$a;

    invoke-interface {v0}, Lcom/google/common/collect/V1$a;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/V1$a;->getCount()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/v1$a;->s(Ljava/lang/Object;I)Lcom/google/common/collect/v1$a;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/v1$a;->o(Ljava/lang/Object;)Lcom/google/common/collect/v1$a;

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public r(Ljava/util/Iterator;)Lcom/google/common/collect/v1$a;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lcom/google/common/collect/v1$a<",
            "TE;>;"
        }
    .end annotation

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/v1$a;->o(Ljava/lang/Object;)Lcom/google/common/collect/v1$a;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public s(Ljava/lang/Object;I)Lcom/google/common/collect/v1$a;
    .locals 2
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/v1$a<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "occurrences"

    invoke-static {p2, v0}, Lcom/google/common/collect/B;->b(ILjava/lang/String;)I

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/v1$a;->w()V

    iget-object v0, p0, Lcom/google/common/collect/v1$a;->f:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/v1$a;->h:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/google/common/collect/v1$a;->g:[I

    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/v1$a;->h:I

    return-object p0
.end method

.method public t()Lcom/google/common/collect/v1;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/v1<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/v1$a;->v()V

    iget v0, p0, Lcom/google/common/collect/v1$a;->h:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/v1$a;->e:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/v1;->V(Ljava/util/Comparator;)Lcom/google/common/collect/v1;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/v1$a;->e:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/google/common/collect/v1$a;->f:[Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/google/common/collect/x1;->Q(Ljava/util/Comparator;I[Ljava/lang/Object;)Lcom/google/common/collect/x1;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/v2;

    iget v1, p0, Lcom/google/common/collect/v1$a;->h:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [J

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget v5, p0, Lcom/google/common/collect/v1$a;->h:I

    if-ge v4, v5, :cond_1

    add-int/lit8 v5, v4, 0x1

    aget-wide v6, v1, v4

    iget-object v8, p0, Lcom/google/common/collect/v1$a;->g:[I

    aget v4, v8, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    aput-wide v6, v1, v5

    move v4, v5

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/google/common/collect/v1$a;->i:Z

    new-instance v2, Lcom/google/common/collect/u2;

    iget v4, p0, Lcom/google/common/collect/v1$a;->h:I

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/google/common/collect/u2;-><init>(Lcom/google/common/collect/v2;[JII)V

    return-object v2
.end method

.method public final u(Z)V
    .locals 7

    iget v0, p0, Lcom/google/common/collect/v1$a;->h:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/v1$a;->f:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/v1$a;->e:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v1, 0x1

    move v2, v1

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lcom/google/common/collect/v1$a;->e:Ljava/util/Comparator;

    add-int/lit8 v5, v3, -0x1

    aget-object v5, v0, v5

    aget-object v6, v0, v2

    invoke-interface {v4, v5, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    aget-object v4, v0, v2

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/google/common/collect/v1$a;->h:I

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    if-eqz p1, :cond_3

    mul-int/lit8 p1, v3, 0x4

    iget v2, p0, Lcom/google/common/collect/v1$a;->h:I

    mul-int/lit8 v4, v2, 0x3

    if-le p1, v4, :cond_3

    div-int/lit8 p1, v2, 0x2

    add-int/2addr p1, v1

    invoke-static {v2, p1}, LE2/f;->t(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :cond_3
    array-length p1, v0

    new-array p1, p1, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget v4, p0, Lcom/google/common/collect/v1$a;->h:I

    if-ge v2, v4, :cond_5

    iget-object v4, p0, Lcom/google/common/collect/v1$a;->f:[Ljava/lang/Object;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/google/common/collect/v1$a;->e:Ljava/util/Comparator;

    invoke-static {v0, v1, v3, v4, v5}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    iget-object v5, p0, Lcom/google/common/collect/v1$a;->g:[I

    aget v5, v5, v2

    if-ltz v5, :cond_4

    aget v6, p1, v4

    add-int/2addr v6, v5

    aput v6, p1, v4

    goto :goto_2

    :cond_4
    not-int v5, v5

    aput v5, p1, v4

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iput-object v0, p0, Lcom/google/common/collect/v1$a;->f:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/v1$a;->g:[I

    iput v3, p0, Lcom/google/common/collect/v1$a;->h:I

    return-void
.end method

.method public final v()V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/v1$a;->u(Z)V

    move v1, v0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/google/common/collect/v1$a;->h:I

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/google/common/collect/v1$a;->g:[I

    aget v4, v3, v1

    if-lez v4, :cond_0

    iget-object v5, p0, Lcom/google/common/collect/v1$a;->f:[Ljava/lang/Object;

    aget-object v6, v5, v1

    aput-object v6, v5, v2

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/v1$a;->f:[Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/common/collect/v1$a;->g:[I

    iget v3, p0, Lcom/google/common/collect/v1$a;->h:I

    invoke-static {v1, v2, v3, v0}, Ljava/util/Arrays;->fill([IIII)V

    iput v2, p0, Lcom/google/common/collect/v1$a;->h:I

    return-void
.end method

.method public final w()V
    .locals 3

    iget v0, p0, Lcom/google/common/collect/v1$a;->h:I

    iget-object v1, p0, Lcom/google/common/collect/v1$a;->f:[Ljava/lang/Object;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/v1$a;->u(Z)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/google/common/collect/v1$a;->i:Z

    if-eqz v0, :cond_1

    array-length v0, v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/v1$a;->f:[Ljava/lang/Object;

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/v1$a;->i:Z

    return-void
.end method

.method public x(Ljava/lang/Object;I)Lcom/google/common/collect/v1$a;
    .locals 2
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/v1$a<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "count"

    invoke-static {p2, v0}, Lcom/google/common/collect/B;->b(ILjava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/common/collect/v1$a;->w()V

    iget-object v0, p0, Lcom/google/common/collect/v1$a;->f:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/v1$a;->h:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/google/common/collect/v1$a;->g:[I

    not-int p2, p2

    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/v1$a;->h:I

    return-object p0
.end method

.class public Lcom/google/common/collect/H;
.super Lcom/google/common/collect/E;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/E<",
        "TE;>;"
    }
.end annotation

.annotation build Lv2/c;
.end annotation


# static fields
.field public static final m:I = -0x2


# instance fields
.field public transient i:[I
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient j:[I
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient k:I

.field public transient l:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/E;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/E;-><init>(I)V

    return-void
.end method

.method public static N()Lcom/google/common/collect/H;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/H<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/H;

    invoke-direct {v0}, Lcom/google/common/collect/H;-><init>()V

    return-object v0
.end method

.method public static O(Ljava/util/Collection;)Lcom/google/common/collect/H;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lcom/google/common/collect/H<",
            "TE;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/H;->Q(I)Lcom/google/common/collect/H;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static varargs P([Ljava/lang/Object;)Lcom/google/common/collect/H;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/H<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    array-length v0, p0

    invoke-static {v0}, Lcom/google/common/collect/H;->Q(I)Lcom/google/common/collect/H;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static Q(I)Lcom/google/common/collect/H;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/H<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/H;

    invoke-direct {v0, p0}, Lcom/google/common/collect/H;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public F(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/common/collect/E;->F(I)V

    invoke-virtual {p0}, Lcom/google/common/collect/H;->S()[I

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/H;->i:[I

    invoke-virtual {p0}, Lcom/google/common/collect/H;->T()[I

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/H;->j:[I

    return-void
.end method

.method public final R(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/H;->S()[I

    move-result-object v0

    aget p1, v0, p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public final S()[I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/H;->i:[I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public final T()[I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/H;->j:[I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, [I

    return-object v0
.end method

.method public final U(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/H;->S()[I

    move-result-object v0

    add-int/lit8 p2, p2, 0x1

    aput p2, v0, p1

    return-void
.end method

.method public final V(II)V
    .locals 1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    iput p2, p0, Lcom/google/common/collect/H;->k:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/H;->W(II)V

    :goto_0
    if-ne p2, v0, :cond_1

    iput p1, p0, Lcom/google/common/collect/H;->l:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/google/common/collect/H;->U(II)V

    :goto_1
    return-void
.end method

.method public final W(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/H;->T()[I

    move-result-object v0

    add-int/lit8 p2, p2, 0x1

    aput p2, v0, p1

    return-void
.end method

.method public clear()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/common/collect/E;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x2

    iput v0, p0, Lcom/google/common/collect/H;->k:I

    iput v0, p0, Lcom/google/common/collect/H;->l:I

    iget-object v0, p0, Lcom/google/common/collect/H;->i:[I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/common/collect/H;->j:[I

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/E;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, p0, Lcom/google/common/collect/H;->j:[I

    invoke-virtual {p0}, Lcom/google/common/collect/E;->size()I

    move-result v1

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    :cond_1
    invoke-super {p0}, Lcom/google/common/collect/E;->clear()V

    return-void
.end method

.method public e(II)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/E;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    move p1, p2

    :cond_0
    return p1
.end method

.method public g()I
    .locals 2

    invoke-super {p0}, Lcom/google/common/collect/E;->g()I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/common/collect/H;->i:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/common/collect/H;->j:[I

    return v0
.end method

.method public h()Ljava/util/Set;
    .locals 2
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/E;->h()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/H;->i:[I

    iput-object v1, p0, Lcom/google/common/collect/H;->j:[I

    return-object v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/H;->k:I

    return v0
.end method

.method public s(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/H;->T()[I

    move-result-object v0

    aget p1, v0, p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/common/collect/c2;->l(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, Lcom/google/common/collect/c2;->m(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public w(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/E;->w(I)V

    const/4 p1, -0x2

    iput p1, p0, Lcom/google/common/collect/H;->k:I

    iput p1, p0, Lcom/google/common/collect/H;->l:I

    return-void
.end method

.method public x(ILjava/lang/Object;II)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;II)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/common/collect/E;->x(ILjava/lang/Object;II)V

    iget p2, p0, Lcom/google/common/collect/H;->l:I

    invoke-virtual {p0, p2, p1}, Lcom/google/common/collect/H;->V(II)V

    const/4 p2, -0x2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/H;->V(II)V

    return-void
.end method

.method public z(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/E;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/E;->z(II)V

    invoke-virtual {p0, p1}, Lcom/google/common/collect/H;->R(I)I

    move-result p2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/H;->s(I)I

    move-result v1

    invoke-virtual {p0, p2, v1}, Lcom/google/common/collect/H;->V(II)V

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/H;->R(I)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/google/common/collect/H;->V(II)V

    invoke-virtual {p0, v0}, Lcom/google/common/collect/H;->s(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/H;->V(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/H;->S()[I

    move-result-object p1

    const/4 p2, 0x0

    aput p2, p1, v0

    invoke-virtual {p0}, Lcom/google/common/collect/H;->T()[I

    move-result-object p1

    aput p2, p1, v0

    return-void
.end method

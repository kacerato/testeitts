.class public final Lcom/google/common/collect/S;
.super Lcom/google/common/collect/x2;
.source "SourceFile"


# annotations
.annotation runtime LI2/j;
    containerOf = {
        "R",
        "C",
        "V"
    }
.end annotation

.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/S$c;,
        Lcom/google/common/collect/S$f;,
        Lcom/google/common/collect/S$b;,
        Lcom/google/common/collect/S$e;,
        Lcom/google/common/collect/S$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/x2<",
        "TR;TC;TV;>;"
    }
.end annotation

.annotation build Lv2/b;
.end annotation


# instance fields
.field public final d:Lcom/google/common/collect/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/i1<",
            "TR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/google/common/collect/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/i1<",
            "TC;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lcom/google/common/collect/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/i1<",
            "TR;",
            "Lcom/google/common/collect/i1<",
            "TC;TV;>;>;"
        }
    .end annotation
.end field

.field public final g:Lcom/google/common/collect/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/i1<",
            "TC;",
            "Lcom/google/common/collect/i1<",
            "TR;TV;>;>;"
        }
    .end annotation
.end field

.field public final h:[I

.field public final i:[I

.field public final j:[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TV;"
        }
    .end annotation
.end field

.field public final k:[I

.field public final l:[I


# direct methods
.method public constructor <init>(Lcom/google/common/collect/g1;Lcom/google/common/collect/r1;Lcom/google/common/collect/r1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/g1<",
            "Lcom/google/common/collect/S2$a<",
            "TR;TC;TV;>;>;",
            "Lcom/google/common/collect/r1<",
            "TR;>;",
            "Lcom/google/common/collect/r1<",
            "TC;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/x2;-><init>()V

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/collect/S;->j:[[Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/common/collect/Q1;->Q(Ljava/util/Collection;)Lcom/google/common/collect/i1;

    move-result-object p2

    iput-object p2, p0, Lcom/google/common/collect/S;->d:Lcom/google/common/collect/i1;

    invoke-static {p3}, Lcom/google/common/collect/Q1;->Q(Ljava/util/Collection;)Lcom/google/common/collect/i1;

    move-result-object p3

    iput-object p3, p0, Lcom/google/common/collect/S;->e:Lcom/google/common/collect/i1;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/common/collect/S;->h:[I

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/common/collect/S;->i:[I

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    new-array p2, p2, [I

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    new-array p3, p3, [I

    :goto_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/S2$a;

    invoke-interface {v0}, Lcom/google/common/collect/S2$a;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/S2$a;->a()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/google/common/collect/S;->d:Lcom/google/common/collect/i1;

    invoke-virtual {v5, v2}, Lcom/google/common/collect/i1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/google/common/collect/S;->e:Lcom/google/common/collect/i1;

    invoke-virtual {v6, v4}, Lcom/google/common/collect/i1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/google/common/collect/S;->j:[[Ljava/lang/Object;

    aget-object v7, v7, v5

    aget-object v7, v7, v6

    invoke-interface {v0}, Lcom/google/common/collect/S2$a;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v2, v4, v7, v8}, Lcom/google/common/collect/x2;->F(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/common/collect/S;->j:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    invoke-interface {v0}, Lcom/google/common/collect/S2$a;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v6

    iget-object v0, p0, Lcom/google/common/collect/S;->h:[I

    aget v2, v0, v5

    add-int/2addr v2, v3

    aput v2, v0, v5

    iget-object v0, p0, Lcom/google/common/collect/S;->i:[I

    aget v2, v0, v6

    add-int/2addr v2, v3

    aput v2, v0, v6

    aput v5, p2, v1

    aput v6, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/google/common/collect/S;->k:[I

    iput-object p3, p0, Lcom/google/common/collect/S;->l:[I

    new-instance p1, Lcom/google/common/collect/S$f;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/common/collect/S$f;-><init>(Lcom/google/common/collect/S;Lcom/google/common/collect/S$a;)V

    iput-object p1, p0, Lcom/google/common/collect/S;->f:Lcom/google/common/collect/i1;

    new-instance p1, Lcom/google/common/collect/S$c;

    invoke-direct {p1, p0, p2}, Lcom/google/common/collect/S$c;-><init>(Lcom/google/common/collect/S;Lcom/google/common/collect/S$a;)V

    iput-object p1, p0, Lcom/google/common/collect/S;->g:Lcom/google/common/collect/i1;

    return-void
.end method

.method public static synthetic O(Lcom/google/common/collect/S;)[I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/S;->h:[I

    return-object p0
.end method

.method public static synthetic P(Lcom/google/common/collect/S;)Lcom/google/common/collect/i1;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/S;->e:Lcom/google/common/collect/i1;

    return-object p0
.end method

.method public static synthetic R(Lcom/google/common/collect/S;)[[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/S;->j:[[Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic S(Lcom/google/common/collect/S;)[I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/S;->i:[I

    return-object p0
.end method

.method public static synthetic T(Lcom/google/common/collect/S;)Lcom/google/common/collect/i1;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/S;->d:Lcom/google/common/collect/i1;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic A()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/S;->m()Lcom/google/common/collect/i1;

    move-result-object v0

    return-object v0
.end method

.method public K(I)Lcom/google/common/collect/S2$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/S2$a<",
            "TR;TC;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/S;->k:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/google/common/collect/S;->l:[I

    aget p1, v1, p1

    invoke-virtual {p0}, Lcom/google/common/collect/z1;->y()Lcom/google/common/collect/r1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/r1;->a()Lcom/google/common/collect/g1;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/z1;->l()Lcom/google/common/collect/r1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/r1;->a()Lcom/google/common/collect/g1;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/S;->j:[[Ljava/lang/Object;

    aget-object v0, v3, v0

    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2, p1}, Lcom/google/common/collect/z1;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/S2$a;

    move-result-object p1

    return-object p1
.end method

.method public M(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/S;->j:[[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/S;->k:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/google/common/collect/S;->l:[I

    aget p1, v1, p1

    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/S;->d:Lcom/google/common/collect/i1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/i1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/common/collect/S;->e:Lcom/google/common/collect/i1;

    invoke-virtual {v0, p2}, Lcom/google/common/collect/i1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/S;->j:[[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object p1, p1, p2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public m()Lcom/google/common/collect/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/i1<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/S;->g:Lcom/google/common/collect/i1;

    invoke-static {v0}, Lcom/google/common/collect/i1;->n(Ljava/util/Map;)Lcom/google/common/collect/i1;

    move-result-object v0

    return-object v0
.end method

.method public q()Lcom/google/common/collect/z1$b;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/S;->k:[I

    iget-object v1, p0, Lcom/google/common/collect/S;->l:[I

    invoke-static {p0, v0, v1}, Lcom/google/common/collect/z1$b;->a(Lcom/google/common/collect/z1;[I[I)Lcom/google/common/collect/z1$b;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/S;->k:[I

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic u()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/S;->z()Lcom/google/common/collect/i1;

    move-result-object v0

    return-object v0
.end method

.method public z()Lcom/google/common/collect/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/i1<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/S;->f:Lcom/google/common/collect/i1;

    invoke-static {v0}, Lcom/google/common/collect/i1;->n(Ljava/util/Map;)Lcom/google/common/collect/i1;

    move-result-object v0

    return-object v0
.end method

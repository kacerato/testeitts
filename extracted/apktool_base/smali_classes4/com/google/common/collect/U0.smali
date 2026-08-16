.class public final Lcom/google/common/collect/U0;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/w;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/U0$b;,
        Lcom/google/common/collect/U0$e;,
        Lcom/google/common/collect/U0$d;,
        Lcom/google/common/collect/U0$a;,
        Lcom/google/common/collect/U0$c;,
        Lcom/google/common/collect/U0$g;,
        Lcom/google/common/collect/U0$f;,
        Lcom/google/common/collect/U0$h;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Lcom/google/common/collect/w<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lv2/b;
.end annotation


# static fields
.field public static final r:I = -0x1

.field public static final s:I = -0x2


# instance fields
.field public transient b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field public transient c:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field public transient d:I

.field public transient e:I

.field public transient f:[I

.field public transient g:[I

.field public transient h:[I

.field public transient i:[I

.field public transient j:I

.field public transient k:I

.field public transient l:[I

.field public transient m:[I

.field public transient n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field public transient o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation
.end field

.field public transient p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public transient q:Lcom/google/common/collect/w;
    .annotation runtime LJ2/b;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/w<",
            "TV;TK;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation build Lq3/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/common/collect/U0;->x(I)V

    return-void
.end method

.method private D(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-static {p1}, Lcom/google/common/collect/B2;->h(Ljava/io/ObjectInputStream;)I

    move-result v0

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/google/common/collect/U0;->x(I)V

    invoke-static {p0, p1, v0}, Lcom/google/common/collect/B2;->c(Ljava/util/Map;Ljava/io/ObjectInputStream;I)V

    return-void
.end method

.method private N(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-static {p0, p1}, Lcom/google/common/collect/B2;->i(Ljava/util/Map;Ljava/io/ObjectOutputStream;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/common/collect/U0;)I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/U0;->j:I

    return p0
.end method

.method public static synthetic b(Lcom/google/common/collect/U0;)[I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/U0;->m:[I

    return-object p0
.end method

.method public static synthetic c(Lcom/google/common/collect/U0;ILjava/lang/Object;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/U0;->L(ILjava/lang/Object;Z)V

    return-void
.end method

.method public static synthetic d(Lcom/google/common/collect/U0;Lcom/google/common/collect/w;)Lcom/google/common/collect/w;
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/U0;->q:Lcom/google/common/collect/w;

    return-object p1
.end method

.method public static synthetic e(Lcom/google/common/collect/U0;ILjava/lang/Object;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/U0;->K(ILjava/lang/Object;Z)V

    return-void
.end method

.method public static i()Lcom/google/common/collect/U0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/U0<",
            "TK;TV;>;"
        }
    .end annotation

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/common/collect/U0;->j(I)Lcom/google/common/collect/U0;

    move-result-object v0

    return-object v0
.end method

.method public static j(I)Lcom/google/common/collect/U0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/U0<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/U0;

    invoke-direct {v0, p0}, Lcom/google/common/collect/U0;-><init>(I)V

    return-object v0
.end method

.method public static k(Ljava/util/Map;)Lcom/google/common/collect/U0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/U0<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/U0;->j(I)Lcom/google/common/collect/U0;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public static l(I)[I
    .locals 1

    new-array p0, p0, [I

    const/4 v0, -0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    return-object p0
.end method

.method public static p([II)[I
    .locals 2

    array-length v0, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    const/4 v1, -0x1

    invoke-static {p0, v0, p1, v1}, Ljava/util/Arrays;->fill([IIII)V

    return-object p0
.end method


# virtual methods
.method public final A(II)V
    .locals 5

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/U0;->l:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/google/common/collect/U0;->m:[I

    aget v1, v1, p1

    invoke-virtual {p0, v0, p2}, Lcom/google/common/collect/U0;->M(II)V

    invoke-virtual {p0, p2, v1}, Lcom/google/common/collect/U0;->M(II)V

    iget-object v0, p0, Lcom/google/common/collect/U0;->b:[Ljava/lang/Object;

    aget-object v1, v0, p1

    iget-object v2, p0, Lcom/google/common/collect/U0;->c:[Ljava/lang/Object;

    aget-object v3, v2, p1

    aput-object v1, v0, p2

    aput-object v3, v2, p2

    invoke-static {v1}, Lcom/google/common/collect/Y0;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/U0;->f(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/U0;->f:[I

    aget v2, v1, v0

    if-ne v2, p1, :cond_1

    aput p2, v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/U0;->h:[I

    aget v0, v0, v2

    :goto_0
    move v4, v2

    move v2, v0

    move v0, v4

    if-ne v2, p1, :cond_4

    iget-object v1, p0, Lcom/google/common/collect/U0;->h:[I

    aput p2, v1, v0

    :goto_1
    iget-object v0, p0, Lcom/google/common/collect/U0;->h:[I

    aget v1, v0, p1

    aput v1, v0, p2

    const/4 v1, -0x1

    aput v1, v0, p1

    invoke-static {v3}, Lcom/google/common/collect/Y0;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/U0;->f(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/common/collect/U0;->g:[I

    aget v3, v2, v0

    if-ne v3, p1, :cond_2

    aput p2, v2, v0

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/U0;->i:[I

    aget v0, v0, v3

    :goto_2
    move v4, v3

    move v3, v0

    move v0, v4

    if-ne v3, p1, :cond_3

    iget-object v2, p0, Lcom/google/common/collect/U0;->i:[I

    aput p2, v2, v0

    :goto_3
    iget-object v0, p0, Lcom/google/common/collect/U0;->i:[I

    aget v2, v0, p1

    aput v2, v0, p2

    aput v1, v0, p1

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/U0;->i:[I

    aget v0, v0, v3

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/common/collect/U0;->h:[I

    aget v0, v0, v2

    goto :goto_0
.end method

.method public A8()Lcom/google/common/collect/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/w<",
            "TV;TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/U0;->q:Lcom/google/common/collect/w;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/U0$d;

    invoke-direct {v0, p0}, Lcom/google/common/collect/U0$d;-><init>(Lcom/google/common/collect/U0;)V

    iput-object v0, p0, Lcom/google/common/collect/U0;->q:Lcom/google/common/collect/w;

    :cond_0
    return-object v0
.end method

.method public B(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/Y0;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/U0;->s(Ljava/lang/Object;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object p1, p0, Lcom/google/common/collect/U0;->c:[Ljava/lang/Object;

    aget-object p1, p1, v1

    invoke-static {p1, p2}, Lw2/B;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p0, v1, p2, p3}, Lcom/google/common/collect/U0;->L(ILjava/lang/Object;Z)V

    return-object p1

    :cond_1
    invoke-static {p2}, Lcom/google/common/collect/Y0;->d(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, p2, v1}, Lcom/google/common/collect/U0;->v(Ljava/lang/Object;I)I

    move-result v3

    const/4 v4, 0x1

    if-eqz p3, :cond_2

    if-eq v3, v2, :cond_4

    invoke-virtual {p0, v3, v1}, Lcom/google/common/collect/U0;->I(II)V

    goto :goto_1

    :cond_2
    if-ne v3, v2, :cond_3

    move p3, v4

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    :goto_0
    const-string v2, "Value already present: %s"

    invoke-static {p3, v2, p2}, Lw2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    iget p3, p0, Lcom/google/common/collect/U0;->d:I

    add-int/2addr p3, v4

    invoke-virtual {p0, p3}, Lcom/google/common/collect/U0;->o(I)V

    iget-object p3, p0, Lcom/google/common/collect/U0;->b:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/U0;->d:I

    aput-object p1, p3, v2

    iget-object p1, p0, Lcom/google/common/collect/U0;->c:[Ljava/lang/Object;

    aput-object p2, p1, v2

    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/U0;->y(II)V

    iget p1, p0, Lcom/google/common/collect/U0;->d:I

    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/U0;->z(II)V

    iget p1, p0, Lcom/google/common/collect/U0;->k:I

    iget p2, p0, Lcom/google/common/collect/U0;->d:I

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/U0;->M(II)V

    iget p1, p0, Lcom/google/common/collect/U0;->d:I

    const/4 p2, -0x2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/U0;->M(II)V

    iget p1, p0, Lcom/google/common/collect/U0;->d:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/google/common/collect/U0;->d:I

    iget p1, p0, Lcom/google/common/collect/U0;->e:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/google/common/collect/U0;->e:I

    const/4 p1, 0x0

    return-object p1
.end method

.method public C(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TK;Z)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/Y0;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/U0;->v(Ljava/lang/Object;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object p1, p0, Lcom/google/common/collect/U0;->b:[Ljava/lang/Object;

    aget-object p1, p1, v1

    invoke-static {p1, p2}, Lw2/B;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p0, v1, p2, p3}, Lcom/google/common/collect/U0;->K(ILjava/lang/Object;Z)V

    return-object p1

    :cond_1
    iget v1, p0, Lcom/google/common/collect/U0;->k:I

    invoke-static {p2}, Lcom/google/common/collect/Y0;->d(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0, p2, v3}, Lcom/google/common/collect/U0;->s(Ljava/lang/Object;I)I

    move-result v4

    const/4 v5, 0x1

    if-eqz p3, :cond_2

    if-eq v4, v2, :cond_4

    iget-object p3, p0, Lcom/google/common/collect/U0;->l:[I

    aget v1, p3, v4

    invoke-virtual {p0, v4, v3}, Lcom/google/common/collect/U0;->H(II)V

    goto :goto_1

    :cond_2
    if-ne v4, v2, :cond_3

    move p3, v5

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    :goto_0
    const-string v2, "Key already present: %s"

    invoke-static {p3, v2, p2}, Lw2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    iget p3, p0, Lcom/google/common/collect/U0;->d:I

    add-int/2addr p3, v5

    invoke-virtual {p0, p3}, Lcom/google/common/collect/U0;->o(I)V

    iget-object p3, p0, Lcom/google/common/collect/U0;->b:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/U0;->d:I

    aput-object p2, p3, v2

    iget-object p2, p0, Lcom/google/common/collect/U0;->c:[Ljava/lang/Object;

    aput-object p1, p2, v2

    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/U0;->y(II)V

    iget p1, p0, Lcom/google/common/collect/U0;->d:I

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/U0;->z(II)V

    const/4 p1, -0x2

    if-ne v1, p1, :cond_5

    iget p1, p0, Lcom/google/common/collect/U0;->j:I

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/google/common/collect/U0;->m:[I

    aget p1, p1, v1

    :goto_2
    iget p2, p0, Lcom/google/common/collect/U0;->d:I

    invoke-virtual {p0, v1, p2}, Lcom/google/common/collect/U0;->M(II)V

    iget p2, p0, Lcom/google/common/collect/U0;->d:I

    invoke-virtual {p0, p2, p1}, Lcom/google/common/collect/U0;->M(II)V

    iget p1, p0, Lcom/google/common/collect/U0;->d:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/google/common/collect/U0;->d:I

    iget p1, p0, Lcom/google/common/collect/U0;->e:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/google/common/collect/U0;->e:I

    const/4 p1, 0x0

    return-object p1
.end method

.method public E(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/U0;->b:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/Y0;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/U0;->H(II)V

    return-void
.end method

.method public final F(III)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lw2/H;->d(Z)V

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/U0;->m(II)V

    invoke-virtual {p0, p1, p3}, Lcom/google/common/collect/U0;->n(II)V

    iget-object p2, p0, Lcom/google/common/collect/U0;->l:[I

    aget p2, p2, p1

    iget-object p3, p0, Lcom/google/common/collect/U0;->m:[I

    aget p3, p3, p1

    invoke-virtual {p0, p2, p3}, Lcom/google/common/collect/U0;->M(II)V

    iget p2, p0, Lcom/google/common/collect/U0;->d:I

    sub-int/2addr p2, v1

    invoke-virtual {p0, p2, p1}, Lcom/google/common/collect/U0;->A(II)V

    iget-object p1, p0, Lcom/google/common/collect/U0;->b:[Ljava/lang/Object;

    iget p2, p0, Lcom/google/common/collect/U0;->d:I

    add-int/lit8 p3, p2, -0x1

    const/4 v0, 0x0

    aput-object v0, p1, p3

    iget-object p1, p0, Lcom/google/common/collect/U0;->c:[Ljava/lang/Object;

    add-int/lit8 p3, p2, -0x1

    aput-object v0, p1, p3

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/google/common/collect/U0;->d:I

    iget p1, p0, Lcom/google/common/collect/U0;->e:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/common/collect/U0;->e:I

    return-void
.end method

.method public H(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/U0;->c:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/Y0;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/U0;->F(III)V

    return-void
.end method

.method public I(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/U0;->b:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/Y0;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/common/collect/U0;->F(III)V

    return-void
.end method

.method public J(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/Y0;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/U0;->v(Ljava/lang/Object;I)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/U0;->b:[Ljava/lang/Object;

    aget-object v1, v1, p1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/U0;->I(II)V

    return-object v1
.end method

.method public final K(ILjava/lang/Object;Z)V
    .locals 4
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;Z)V"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lw2/H;->d(Z)V

    invoke-static {p2}, Lcom/google/common/collect/Y0;->d(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, p2, v1}, Lcom/google/common/collect/U0;->s(Ljava/lang/Object;I)I

    move-result v2

    iget v3, p0, Lcom/google/common/collect/U0;->k:I

    if-eq v2, v0, :cond_2

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/common/collect/U0;->l:[I

    aget v3, p3, v2

    iget-object p3, p0, Lcom/google/common/collect/U0;->m:[I

    aget p3, p3, v2

    invoke-virtual {p0, v2, v1}, Lcom/google/common/collect/U0;->H(II)V

    iget v0, p0, Lcom/google/common/collect/U0;->d:I

    if-ne p1, v0, :cond_3

    move p1, v2

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Key already present in map: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p3, -0x2

    :cond_3
    :goto_1
    if-ne v3, p1, :cond_4

    iget-object v0, p0, Lcom/google/common/collect/U0;->l:[I

    aget v3, v0, p1

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/google/common/collect/U0;->d:I

    if-ne v3, v0, :cond_5

    move v3, v2

    :cond_5
    :goto_2
    if-ne p3, p1, :cond_6

    iget-object p3, p0, Lcom/google/common/collect/U0;->m:[I

    aget v2, p3, p1

    goto :goto_3

    :cond_6
    iget v0, p0, Lcom/google/common/collect/U0;->d:I

    if-ne p3, v0, :cond_7

    goto :goto_3

    :cond_7
    move v2, p3

    :goto_3
    iget-object p3, p0, Lcom/google/common/collect/U0;->l:[I

    aget p3, p3, p1

    iget-object v0, p0, Lcom/google/common/collect/U0;->m:[I

    aget v0, v0, p1

    invoke-virtual {p0, p3, v0}, Lcom/google/common/collect/U0;->M(II)V

    iget-object p3, p0, Lcom/google/common/collect/U0;->b:[Ljava/lang/Object;

    aget-object p3, p3, p1

    invoke-static {p3}, Lcom/google/common/collect/Y0;->d(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p0, p1, p3}, Lcom/google/common/collect/U0;->m(II)V

    iget-object p3, p0, Lcom/google/common/collect/U0;->b:[Ljava/lang/Object;

    aput-object p2, p3, p1

    invoke-static {p2}, Lcom/google/common/collect/Y0;->d(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/U0;->y(II)V

    invoke-virtual {p0, v3, p1}, Lcom/google/common/collect/U0;->M(II)V

    invoke-virtual {p0, p1, v2}, Lcom/google/common/collect/U0;->M(II)V

    return-void
.end method

.method public final L(ILjava/lang/Object;Z)V
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;Z)V"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lw2/H;->d(Z)V

    invoke-static {p2}, Lcom/google/common/collect/Y0;->d(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, p2, v1}, Lcom/google/common/collect/U0;->v(Ljava/lang/Object;I)I

    move-result v2

    if-eq v2, v0, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p0, v2, v1}, Lcom/google/common/collect/U0;->I(II)V

    iget p3, p0, Lcom/google/common/collect/U0;->d:I

    if-ne p1, p3, :cond_2

    move p1, v2

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Value already present in map: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    iget-object p3, p0, Lcom/google/common/collect/U0;->c:[Ljava/lang/Object;

    aget-object p3, p3, p1

    invoke-static {p3}, Lcom/google/common/collect/Y0;->d(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p0, p1, p3}, Lcom/google/common/collect/U0;->n(II)V

    iget-object p3, p0, Lcom/google/common/collect/U0;->c:[Ljava/lang/Object;

    aput-object p2, p3, p1

    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/U0;->z(II)V

    return-void
.end method

.method public final M(II)V
    .locals 2

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    iput p2, p0, Lcom/google/common/collect/U0;->j:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/U0;->m:[I

    aput p2, v1, p1

    :goto_0
    if-ne p2, v0, :cond_1

    iput p1, p0, Lcom/google/common/collect/U0;->k:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/U0;->l:[I

    aput p1, v0, p2

    :goto_1
    return-void
.end method

.method public U6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/U0;->B(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/U0;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/U0;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/U0;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/U0;->d:I

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/U0;->f:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/google/common/collect/U0;->g:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/google/common/collect/U0;->h:[I

    iget v3, p0, Lcom/google/common/collect/U0;->d:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, p0, Lcom/google/common/collect/U0;->i:[I

    iget v3, p0, Lcom/google/common/collect/U0;->d:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, p0, Lcom/google/common/collect/U0;->l:[I

    iget v3, p0, Lcom/google/common/collect/U0;->d:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, p0, Lcom/google/common/collect/U0;->m:[I

    iget v3, p0, Lcom/google/common/collect/U0;->d:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    iput v2, p0, Lcom/google/common/collect/U0;->d:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/common/collect/U0;->j:I

    iput v0, p0, Lcom/google/common/collect/U0;->k:I

    iget v0, p0, Lcom/google/common/collect/U0;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/U0;->e:I

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/common/collect/U0;->r(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/common/collect/U0;->u(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/U0;->p:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/U0$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/U0$c;-><init>(Lcom/google/common/collect/U0;)V

    iput-object v0, p0, Lcom/google/common/collect/U0;->p:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public final f(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/U0;->f:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/U0;->r(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/U0;->c:[Ljava/lang/Object;

    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/U0;->n:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/U0$f;

    invoke-direct {v0, p0}, Lcom/google/common/collect/U0$f;-><init>(Lcom/google/common/collect/U0;)V

    iput-object v0, p0, Lcom/google/common/collect/U0;->n:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public final m(II)V
    .locals 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lw2/H;->d(Z)V

    invoke-virtual {p0, p2}, Lcom/google/common/collect/U0;->f(I)I

    move-result p2

    iget-object v1, p0, Lcom/google/common/collect/U0;->f:[I

    aget v2, v1, p2

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcom/google/common/collect/U0;->h:[I

    aget v3, v2, p1

    aput v3, v1, p2

    aput v0, v2, p1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/common/collect/U0;->h:[I

    aget p2, p2, v2

    :goto_1
    move v4, v2

    move v2, p2

    move p2, v4

    if-eq v2, v0, :cond_3

    if-ne v2, p1, :cond_2

    iget-object v1, p0, Lcom/google/common/collect/U0;->h:[I

    aget v2, v1, p1

    aput v2, v1, p2

    aput v0, v1, p1

    return-void

    :cond_2
    iget-object p2, p0, Lcom/google/common/collect/U0;->h:[I

    aget p2, p2, v2

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/lang/AssertionError;

    iget-object v0, p0, Lcom/google/common/collect/U0;->b:[Ljava/lang/Object;

    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Expected to find entry with key "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public final n(II)V
    .locals 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lw2/H;->d(Z)V

    invoke-virtual {p0, p2}, Lcom/google/common/collect/U0;->f(I)I

    move-result p2

    iget-object v1, p0, Lcom/google/common/collect/U0;->g:[I

    aget v2, v1, p2

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcom/google/common/collect/U0;->i:[I

    aget v3, v2, p1

    aput v3, v1, p2

    aput v0, v2, p1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/common/collect/U0;->i:[I

    aget p2, p2, v2

    :goto_1
    move v4, v2

    move v2, p2

    move p2, v4

    if-eq v2, v0, :cond_3

    if-ne v2, p1, :cond_2

    iget-object v1, p0, Lcom/google/common/collect/U0;->i:[I

    aget v2, v1, p1

    aput v2, v1, p2

    aput v0, v1, p1

    return-void

    :cond_2
    iget-object p2, p0, Lcom/google/common/collect/U0;->i:[I

    aget p2, p2, v2

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/lang/AssertionError;

    iget-object v0, p0, Lcom/google/common/collect/U0;->c:[Ljava/lang/Object;

    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Expected to find entry with value "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public final o(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/U0;->h:[I

    array-length v1, v0

    if-ge v1, p1, :cond_0

    array-length v0, v0

    invoke-static {v0, p1}, Lcom/google/common/collect/c1$b;->f(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/U0;->b:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/U0;->b:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/U0;->c:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/U0;->c:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/U0;->h:[I

    invoke-static {v1, v0}, Lcom/google/common/collect/U0;->p([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/U0;->h:[I

    iget-object v1, p0, Lcom/google/common/collect/U0;->i:[I

    invoke-static {v1, v0}, Lcom/google/common/collect/U0;->p([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/U0;->i:[I

    iget-object v1, p0, Lcom/google/common/collect/U0;->l:[I

    invoke-static {v1, v0}, Lcom/google/common/collect/U0;->p([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/U0;->l:[I

    iget-object v1, p0, Lcom/google/common/collect/U0;->m:[I

    invoke-static {v1, v0}, Lcom/google/common/collect/U0;->p([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/U0;->m:[I

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/U0;->f:[I

    array-length v0, v0

    if-ge v0, p1, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, v0, v1}, Lcom/google/common/collect/Y0;->a(ID)I

    move-result p1

    invoke-static {p1}, Lcom/google/common/collect/U0;->l(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/U0;->f:[I

    invoke-static {p1}, Lcom/google/common/collect/U0;->l(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/U0;->g:[I

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lcom/google/common/collect/U0;->d:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/U0;->b:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/Y0;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/U0;->f(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/U0;->h:[I

    iget-object v2, p0, Lcom/google/common/collect/U0;->f:[I

    aget v3, v2, v0

    aput v3, v1, p1

    aput p1, v2, v0

    iget-object v0, p0, Lcom/google/common/collect/U0;->c:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/Y0;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/U0;->f(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/U0;->i:[I

    iget-object v2, p0, Lcom/google/common/collect/U0;->g:[I

    aget v3, v2, v0

    aput v3, v1, p1

    aput p1, v2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/U0;->B(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public q(Ljava/lang/Object;I[I[I[Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-virtual {p0, p2}, Lcom/google/common/collect/U0;->f(I)I

    move-result p2

    aget p2, p3, p2

    :goto_0
    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    aget-object p3, p5, p2

    invoke-static {p3, p1}, Lw2/B;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    return p2

    :cond_0
    aget p2, p4, p2

    goto :goto_0

    :cond_1
    return p3
.end method

.method public r(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/common/collect/Y0;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/U0;->s(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/Y0;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/U0;->s(Ljava/lang/Object;I)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/U0;->c:[Ljava/lang/Object;

    aget-object v1, v1, p1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/U0;->H(II)V

    return-object v1
.end method

.method public s(Ljava/lang/Object;I)I
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v3, p0, Lcom/google/common/collect/U0;->f:[I

    iget-object v4, p0, Lcom/google/common/collect/U0;->h:[I

    iget-object v5, p0, Lcom/google/common/collect/U0;->b:[Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/common/collect/U0;->q(Ljava/lang/Object;I[I[I[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/U0;->d:I

    return v0
.end method

.method public u(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/common/collect/Y0;->d(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/U0;->v(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public v(Ljava/lang/Object;I)I
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v3, p0, Lcom/google/common/collect/U0;->g:[I

    iget-object v4, p0, Lcom/google/common/collect/U0;->i:[I

    iget-object v5, p0, Lcom/google/common/collect/U0;->c:[Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/common/collect/U0;->q(Ljava/lang/Object;I[I[I[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/U0;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/U0;->o:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/common/collect/U0$g;

    invoke-direct {v0, p0}, Lcom/google/common/collect/U0$g;-><init>(Lcom/google/common/collect/U0;)V

    iput-object v0, p0, Lcom/google/common/collect/U0;->o:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public w(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/U0;->u(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/U0;->b:[Ljava/lang/Object;

    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public x(I)V
    .locals 2

    const-string v0, "expectedSize"

    invoke-static {p1, v0}, Lcom/google/common/collect/B;->b(ILjava/lang/String;)I

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, v0, v1}, Lcom/google/common/collect/Y0;->a(ID)I

    move-result v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/common/collect/U0;->d:I

    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/U0;->b:[Ljava/lang/Object;

    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/U0;->c:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/U0;->l(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/U0;->f:[I

    invoke-static {v0}, Lcom/google/common/collect/U0;->l(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/U0;->g:[I

    invoke-static {p1}, Lcom/google/common/collect/U0;->l(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/U0;->h:[I

    invoke-static {p1}, Lcom/google/common/collect/U0;->l(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/U0;->i:[I

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/common/collect/U0;->j:I

    iput v0, p0, Lcom/google/common/collect/U0;->k:I

    invoke-static {p1}, Lcom/google/common/collect/U0;->l(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/U0;->l:[I

    invoke-static {p1}, Lcom/google/common/collect/U0;->l(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/U0;->m:[I

    return-void
.end method

.method public final y(II)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lw2/H;->d(Z)V

    invoke-virtual {p0, p2}, Lcom/google/common/collect/U0;->f(I)I

    move-result p2

    iget-object v0, p0, Lcom/google/common/collect/U0;->h:[I

    iget-object v1, p0, Lcom/google/common/collect/U0;->f:[I

    aget v2, v1, p2

    aput v2, v0, p1

    aput p1, v1, p2

    return-void
.end method

.method public final z(II)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lw2/H;->d(Z)V

    invoke-virtual {p0, p2}, Lcom/google/common/collect/U0;->f(I)I

    move-result p2

    iget-object v0, p0, Lcom/google/common/collect/U0;->i:[I

    iget-object v1, p0, Lcom/google/common/collect/U0;->g:[I

    aget v2, v1, p2

    aput v2, v0, p1

    aput p1, v1, p2

    return-void
.end method

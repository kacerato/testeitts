.class public final Lcom/google/common/collect/H1;
.super Lcom/google/common/collect/I1;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/H1$c;,
        Lcom/google/common/collect/H1$b;,
        Lcom/google/common/collect/H1$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/I1<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lv2/b;
    emulated = true
    serializable = true
.end annotation


# static fields
.field public static final m:I = 0x10

.field public static final n:I = 0x2

.field public static final o:D = 1.0
    .annotation build Lv2/d;
    .end annotation
.end field

.field public static final p:J = 0x1L
    .annotation build Lv2/c;
    .end annotation
.end field


# instance fields
.field public transient k:I
    .annotation build Lv2/d;
    .end annotation
.end field

.field public transient l:Lcom/google/common/collect/H1$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/H1$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-static {p1}, Lcom/google/common/collect/h2;->f(I)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/I1;-><init>(Ljava/util/Map;)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/common/collect/H1;->k:I

    const-string p1, "expectedValuesPerKey"

    invoke-static {p2, p1}, Lcom/google/common/collect/B;->b(ILjava/lang/String;)I

    iput p2, p0, Lcom/google/common/collect/H1;->k:I

    invoke-static {}, Lcom/google/common/collect/H1$b;->i()Lcom/google/common/collect/H1$b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/H1;->l:Lcom/google/common/collect/H1$b;

    invoke-static {p1, p1}, Lcom/google/common/collect/H1;->Y(Lcom/google/common/collect/H1$b;Lcom/google/common/collect/H1$b;)V

    return-void
.end method

.method public static synthetic M(Lcom/google/common/collect/H1$d;Lcom/google/common/collect/H1$d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/H1;->a0(Lcom/google/common/collect/H1$d;Lcom/google/common/collect/H1$d;)V

    return-void
.end method

.method public static synthetic O(Lcom/google/common/collect/H1;)Lcom/google/common/collect/H1$b;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/H1;->l:Lcom/google/common/collect/H1$b;

    return-object p0
.end method

.method public static synthetic P(Lcom/google/common/collect/H1$b;Lcom/google/common/collect/H1$b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/H1;->Y(Lcom/google/common/collect/H1$b;Lcom/google/common/collect/H1$b;)V

    return-void
.end method

.method public static synthetic Q(Lcom/google/common/collect/H1$d;)V
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/H1;->W(Lcom/google/common/collect/H1$d;)V

    return-void
.end method

.method public static synthetic R(Lcom/google/common/collect/H1$b;)V
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/H1;->V(Lcom/google/common/collect/H1$b;)V

    return-void
.end method

.method public static S()Lcom/google/common/collect/H1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/H1<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/H1;

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/H1;-><init>(II)V

    return-object v0
.end method

.method public static T(II)Lcom/google/common/collect/H1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lcom/google/common/collect/H1<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/H1;

    invoke-static {p0}, Lcom/google/common/collect/Q1;->o(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/common/collect/Q1;->o(I)I

    move-result p1

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/H1;-><init>(II)V

    return-object v0
.end method

.method public static U(Lcom/google/common/collect/S1;)Lcom/google/common/collect/H1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/S1<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/H1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/collect/S1;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/common/collect/H1;->T(II)Lcom/google/common/collect/H1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/collect/H1;->w(Lcom/google/common/collect/S1;)Z

    return-object v0
.end method

.method public static V(Lcom/google/common/collect/H1$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/H1$b<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/H1$b;->e()Lcom/google/common/collect/H1$b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/H1$b;->f()Lcom/google/common/collect/H1$b;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/H1;->Y(Lcom/google/common/collect/H1$b;Lcom/google/common/collect/H1$b;)V

    return-void
.end method

.method public static W(Lcom/google/common/collect/H1$d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/H1$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/collect/H1$d;->b()Lcom/google/common/collect/H1$d;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/collect/H1$d;->g()Lcom/google/common/collect/H1$d;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/H1;->a0(Lcom/google/common/collect/H1$d;Lcom/google/common/collect/H1$d;)V

    return-void
.end method

.method private X(Ljava/io/ObjectInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-static {}, Lcom/google/common/collect/H1$b;->i()Lcom/google/common/collect/H1$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/H1;->l:Lcom/google/common/collect/H1$b;

    invoke-static {v0, v0}, Lcom/google/common/collect/H1;->Y(Lcom/google/common/collect/H1$b;Lcom/google/common/collect/H1$b;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/common/collect/H1;->k:I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/google/common/collect/h2;->f(I)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/common/collect/H1;->y(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    :goto_1
    if-ge v2, v0, :cond_1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/common/collect/e;->G(Ljava/util/Map;)V

    return-void
.end method

.method public static Y(Lcom/google/common/collect/H1$b;Lcom/google/common/collect/H1$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/H1$b<",
            "TK;TV;>;",
            "Lcom/google/common/collect/H1$b<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/H1$b;->k(Lcom/google/common/collect/H1$b;)V

    invoke-virtual {p1, p0}, Lcom/google/common/collect/H1$b;->j(Lcom/google/common/collect/H1$b;)V

    return-void
.end method

.method public static a0(Lcom/google/common/collect/H1$d;Lcom/google/common/collect/H1$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/H1$d<",
            "TK;TV;>;",
            "Lcom/google/common/collect/H1$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/google/common/collect/H1$d;->c(Lcom/google/common/collect/H1$d;)V

    invoke-interface {p1, p0}, Lcom/google/common/collect/H1$d;->d(Lcom/google/common/collect/H1$d;)V

    return-void
.end method

.method private b0(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lcom/google/common/collect/H1;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lcom/google/common/collect/H1;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/H1;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lcom/google/common/collect/H1;->v()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public K()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/collect/H1;->k:I

    invoke-static {v0}, Lcom/google/common/collect/h2;->g(I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic Z(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/h;->Z(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/m;->c(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/e;->clear()V

    iget-object v0, p0, Lcom/google/common/collect/H1;->l:Lcom/google/common/collect/H1$b;

    invoke-static {v0, v0}, Lcom/google/common/collect/H1;->Y(Lcom/google/common/collect/H1$b;Lcom/google/common/collect/H1$b;)V

    return-void
.end method

.method public bridge synthetic containsKey(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/common/collect/e;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/common/collect/h;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/H1;->d(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/m;->d(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/common/collect/m;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic g0(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/h;->g0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/common/collect/m;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public h()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/H1$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/H1$a;-><init>(Lcom/google/common/collect/H1;)V

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/h;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/H1;->h()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Q1;->O0(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/h;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic j()Lcom/google/common/collect/V1;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/h;->j()Lcom/google/common/collect/V1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/m;->k()Ljava/util/Map;

    move-result-object v0

    return-object v0
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

    invoke-super {p0}, Lcom/google/common/collect/h;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
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

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/h;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic size()I
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/e;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/h;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic v()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/H1;->v()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public v()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/google/common/collect/m;->v()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/e;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic w(Lcom/google/common/collect/S1;)Z
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/h;->w(Lcom/google/common/collect/S1;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic x()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/H1;->K()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public y(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/H1$c;

    iget v1, p0, Lcom/google/common/collect/H1;->k:I

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/collect/H1$c;-><init>(Lcom/google/common/collect/H1;Ljava/lang/Object;I)V

    return-object v0
.end method

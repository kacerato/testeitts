.class public Lcom/google/common/collect/K1;
.super Lcom/google/common/collect/h;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/L1;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/K1$i;,
        Lcom/google/common/collect/K1$e;,
        Lcom/google/common/collect/K1$h;,
        Lcom/google/common/collect/K1$f;,
        Lcom/google/common/collect/K1$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/h<",
        "TK;TV;>;",
        "Lcom/google/common/collect/L1<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lv2/b;
    emulated = true
    serializable = true
.end annotation


# static fields
.field public static final l:J
    .annotation build Lv2/c;
    .end annotation
.end field


# instance fields
.field public transient g:Lcom/google/common/collect/K1$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/K1$g<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient h:Lcom/google/common/collect/K1$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/K1$g<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Lcom/google/common/collect/K1$f<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public transient j:I

.field public transient k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xc

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/collect/K1;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/h;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/common/collect/h2;->d(I)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/K1;->i:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/S1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/S1<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 4
    invoke-interface {p1}, Lcom/google/common/collect/S1;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/K1;-><init>(I)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/common/collect/K1;->w(Lcom/google/common/collect/S1;)Z

    return-void
.end method

.method public static A(I)Lcom/google/common/collect/K1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/K1<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/K1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/K1;-><init>(I)V

    return-object v0
.end method

.method public static B(Lcom/google/common/collect/S1;)Lcom/google/common/collect/K1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/S1<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/K1<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/K1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/K1;-><init>(Lcom/google/common/collect/S1;)V

    return-object v0
.end method

.method private G(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-static {}, Lcom/google/common/collect/G;->g0()Lcom/google/common/collect/G;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/K1;->i:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/K1;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private K(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lcom/google/common/collect/K1;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lcom/google/common/collect/K1;->E()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic l(Lcom/google/common/collect/K1;)I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/K1;->k:I

    return p0
.end method

.method public static synthetic m(Lcom/google/common/collect/K1;)Lcom/google/common/collect/K1$g;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/K1;->h:Lcom/google/common/collect/K1$g;

    return-object p0
.end method

.method public static synthetic n(Lcom/google/common/collect/K1;)Lcom/google/common/collect/K1$g;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/K1;->g:Lcom/google/common/collect/K1$g;

    return-object p0
.end method

.method public static synthetic p(Lcom/google/common/collect/K1;Lcom/google/common/collect/K1$g;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/K1;->I(Lcom/google/common/collect/K1$g;)V

    return-void
.end method

.method public static synthetic q(Lcom/google/common/collect/K1;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/K1;->H(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic r(Lcom/google/common/collect/K1;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/K1;->i:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic s(Lcom/google/common/collect/K1;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/K1$g;)Lcom/google/common/collect/K1$g;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/K1;->x(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/K1$g;)Lcom/google/common/collect/K1$g;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Lcom/google/common/collect/K1;)I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/K1;->j:I

    return p0
.end method

.method public static y()Lcom/google/common/collect/K1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/K1<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/K1;

    invoke-direct {v0}, Lcom/google/common/collect/K1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public C()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/K1$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/K1$b;-><init>(Lcom/google/common/collect/K1;)V

    return-object v0
.end method

.method public D()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/K1$d;

    invoke-direct {v0, p0}, Lcom/google/common/collect/K1$d;-><init>(Lcom/google/common/collect/K1;)V

    return-object v0
.end method

.method public E()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/h;->v()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final F(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/K1$i;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/K1$i;-><init>(Lcom/google/common/collect/K1;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/common/collect/M1;->s(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final H(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/K1$i;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/K1$i;-><init>(Lcom/google/common/collect/K1;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/common/collect/E1;->h(Ljava/util/Iterator;)V

    return-void
.end method

.method public final I(Lcom/google/common/collect/K1$g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/K1$g<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/google/common/collect/K1$g;->e:Lcom/google/common/collect/K1$g;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/google/common/collect/K1$g;->d:Lcom/google/common/collect/K1$g;

    iput-object v1, v0, Lcom/google/common/collect/K1$g;->d:Lcom/google/common/collect/K1$g;

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/google/common/collect/K1$g;->d:Lcom/google/common/collect/K1$g;

    iput-object v1, p0, Lcom/google/common/collect/K1;->g:Lcom/google/common/collect/K1$g;

    :goto_0
    iget-object v1, p1, Lcom/google/common/collect/K1$g;->d:Lcom/google/common/collect/K1$g;

    if-eqz v1, :cond_1

    iput-object v0, v1, Lcom/google/common/collect/K1$g;->e:Lcom/google/common/collect/K1$g;

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lcom/google/common/collect/K1;->h:Lcom/google/common/collect/K1$g;

    :goto_1
    iget-object v0, p1, Lcom/google/common/collect/K1$g;->g:Lcom/google/common/collect/K1$g;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/google/common/collect/K1$g;->f:Lcom/google/common/collect/K1$g;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/K1;->i:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/common/collect/K1$g;->b:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/K1$f;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p1, Lcom/google/common/collect/K1$f;->c:I

    iget p1, p0, Lcom/google/common/collect/K1;->k:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/K1;->k:I

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/K1;->i:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/common/collect/K1$g;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/K1$f;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, v0, Lcom/google/common/collect/K1$f;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/google/common/collect/K1$f;->c:I

    iget-object v1, p1, Lcom/google/common/collect/K1$g;->g:Lcom/google/common/collect/K1$g;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/google/common/collect/K1$g;->f:Lcom/google/common/collect/K1$g;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Lcom/google/common/collect/K1$f;->a:Lcom/google/common/collect/K1$g;

    goto :goto_2

    :cond_3
    iget-object v2, p1, Lcom/google/common/collect/K1$g;->f:Lcom/google/common/collect/K1$g;

    iput-object v2, v1, Lcom/google/common/collect/K1$g;->f:Lcom/google/common/collect/K1$g;

    :goto_2
    iget-object v1, p1, Lcom/google/common/collect/K1$g;->f:Lcom/google/common/collect/K1$g;

    if-nez v1, :cond_4

    iget-object p1, p1, Lcom/google/common/collect/K1$g;->g:Lcom/google/common/collect/K1$g;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, v0, Lcom/google/common/collect/K1$f;->b:Lcom/google/common/collect/K1$g;

    goto :goto_3

    :cond_4
    iget-object p1, p1, Lcom/google/common/collect/K1$g;->g:Lcom/google/common/collect/K1$g;

    iput-object p1, v1, Lcom/google/common/collect/K1$g;->g:Lcom/google/common/collect/K1$g;

    :goto_3
    iget p1, p0, Lcom/google/common/collect/K1;->j:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/K1;->j:I

    return-void
.end method

.method public J()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/h;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

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

.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/U1$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/U1$a;-><init>(Lcom/google/common/collect/S1;)V

    return-object v0
.end method

.method public bridge synthetic b()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/K1;->C()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/K1;->c(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/K1;->F(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/collect/K1;->H(Ljava/lang/Object;)V

    return-object v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/K1;->g:Lcom/google/common/collect/K1$g;

    iput-object v0, p0, Lcom/google/common/collect/K1;->h:Lcom/google/common/collect/K1$g;

    iget-object v0, p0, Lcom/google/common/collect/K1;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/K1;->j:I

    iget v0, p0, Lcom/google/common/collect/K1;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/K1;->k:I

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/K1;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/common/collect/K1;->J()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

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
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/K1;->d(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
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
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/K1;->F(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/common/collect/K1$i;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/K1$i;-><init>(Lcom/google/common/collect/K1;Ljava/lang/Object;)V

    .line 4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 10
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 11
    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    return-object v0
.end method

.method public e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/K1$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/K1$c;-><init>(Lcom/google/common/collect/K1;)V

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/common/collect/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Lcom/google/common/collect/V1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/V1<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/U1$g;

    invoke-direct {v0, p0}, Lcom/google/common/collect/U1$g;-><init>(Lcom/google/common/collect/S1;)V

    return-object v0
.end method

.method public bridge synthetic g()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/K1;->D()Ljava/util/List;

    move-result-object v0

    return-object v0
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

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/K1;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/collect/K1$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/K1$a;-><init>(Lcom/google/common/collect/K1;Ljava/lang/Object;)V

    return-object v0
.end method

.method public h()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/h;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/K1;->g:Lcom/google/common/collect/K1$g;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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

    invoke-super {p0}, Lcom/google/common/collect/h;->k()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/h;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
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
            "(TK;TV;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/K1;->x(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/K1$g;)Lcom/google/common/collect/K1$g;

    const/4 p1, 0x1

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

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/K1;->j:I

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

    invoke-virtual {p0}, Lcom/google/common/collect/K1;->E()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/K1;->J()Ljava/util/List;

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

.method public final x(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/K1$g;)Lcom/google/common/collect/K1$g;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .param p3    # Lcom/google/common/collect/K1$g;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/common/collect/K1$g<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/K1$g<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/K1$g;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/K1$g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/common/collect/K1;->g:Lcom/google/common/collect/K1$g;

    if-nez p2, :cond_0

    iput-object v0, p0, Lcom/google/common/collect/K1;->h:Lcom/google/common/collect/K1$g;

    iput-object v0, p0, Lcom/google/common/collect/K1;->g:Lcom/google/common/collect/K1$g;

    iget-object p2, p0, Lcom/google/common/collect/K1;->i:Ljava/util/Map;

    new-instance p3, Lcom/google/common/collect/K1$f;

    invoke-direct {p3, v0}, Lcom/google/common/collect/K1$f;-><init>(Lcom/google/common/collect/K1$g;)V

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/google/common/collect/K1;->k:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/K1;->k:I

    goto :goto_2

    :cond_0
    if-nez p3, :cond_2

    iget-object p2, p0, Lcom/google/common/collect/K1;->h:Lcom/google/common/collect/K1$g;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p2, Lcom/google/common/collect/K1$g;->d:Lcom/google/common/collect/K1$g;

    iget-object p2, p0, Lcom/google/common/collect/K1;->h:Lcom/google/common/collect/K1$g;

    iput-object p2, v0, Lcom/google/common/collect/K1$g;->e:Lcom/google/common/collect/K1$g;

    iput-object v0, p0, Lcom/google/common/collect/K1;->h:Lcom/google/common/collect/K1$g;

    iget-object p2, p0, Lcom/google/common/collect/K1;->i:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/common/collect/K1$f;

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/common/collect/K1;->i:Ljava/util/Map;

    new-instance p3, Lcom/google/common/collect/K1$f;

    invoke-direct {p3, v0}, Lcom/google/common/collect/K1$f;-><init>(Lcom/google/common/collect/K1$g;)V

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/google/common/collect/K1;->k:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/K1;->k:I

    goto :goto_2

    :cond_1
    iget p1, p2, Lcom/google/common/collect/K1$f;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p2, Lcom/google/common/collect/K1$f;->c:I

    iget-object p1, p2, Lcom/google/common/collect/K1$f;->b:Lcom/google/common/collect/K1$g;

    iput-object v0, p1, Lcom/google/common/collect/K1$g;->f:Lcom/google/common/collect/K1$g;

    iput-object p1, v0, Lcom/google/common/collect/K1$g;->g:Lcom/google/common/collect/K1$g;

    iput-object v0, p2, Lcom/google/common/collect/K1$f;->b:Lcom/google/common/collect/K1$g;

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/google/common/collect/K1;->i:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/K1$f;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p1, Lcom/google/common/collect/K1$f;->c:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/common/collect/K1$f;->c:I

    iget-object p2, p3, Lcom/google/common/collect/K1$g;->e:Lcom/google/common/collect/K1$g;

    iput-object p2, v0, Lcom/google/common/collect/K1$g;->e:Lcom/google/common/collect/K1$g;

    iget-object p2, p3, Lcom/google/common/collect/K1$g;->g:Lcom/google/common/collect/K1$g;

    iput-object p2, v0, Lcom/google/common/collect/K1$g;->g:Lcom/google/common/collect/K1$g;

    iput-object p3, v0, Lcom/google/common/collect/K1$g;->d:Lcom/google/common/collect/K1$g;

    iput-object p3, v0, Lcom/google/common/collect/K1$g;->f:Lcom/google/common/collect/K1$g;

    iget-object p2, p3, Lcom/google/common/collect/K1$g;->g:Lcom/google/common/collect/K1$g;

    if-nez p2, :cond_3

    iput-object v0, p1, Lcom/google/common/collect/K1$f;->a:Lcom/google/common/collect/K1$g;

    goto :goto_0

    :cond_3
    iput-object v0, p2, Lcom/google/common/collect/K1$g;->f:Lcom/google/common/collect/K1$g;

    :goto_0
    iget-object p1, p3, Lcom/google/common/collect/K1$g;->e:Lcom/google/common/collect/K1$g;

    if-nez p1, :cond_4

    iput-object v0, p0, Lcom/google/common/collect/K1;->g:Lcom/google/common/collect/K1$g;

    goto :goto_1

    :cond_4
    iput-object v0, p1, Lcom/google/common/collect/K1$g;->d:Lcom/google/common/collect/K1$g;

    :goto_1
    iput-object v0, p3, Lcom/google/common/collect/K1$g;->e:Lcom/google/common/collect/K1$g;

    iput-object v0, p3, Lcom/google/common/collect/K1$g;->g:Lcom/google/common/collect/K1$g;

    :goto_2
    iget p1, p0, Lcom/google/common/collect/K1;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/K1;->j:I

    return-object v0
.end method

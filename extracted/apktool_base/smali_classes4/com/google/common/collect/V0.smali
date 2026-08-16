.class public final Lcom/google/common/collect/V0;
.super Lcom/google/common/collect/W0;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/W0<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lv2/b;
    emulated = true
    serializable = true
.end annotation


# static fields
.field public static final l:I = 0x2

.field public static final m:J
    .annotation build Lv2/c;
    .end annotation
.end field


# instance fields
.field public transient k:I
    .annotation build Lv2/d;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xc

    const/4 v1, 0x2

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/V0;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/h2;->d(I)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/W0;-><init>(Ljava/util/Map;)V

    const/4 p1, 0x2

    .line 3
    iput p1, p0, Lcom/google/common/collect/V0;->k:I

    if-ltz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-static {p1}, Lw2/H;->d(Z)V

    .line 5
    iput p2, p0, Lcom/google/common/collect/V0;->k:I

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

    .line 6
    invoke-interface {p1}, Lcom/google/common/collect/S1;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/h2;->d(I)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/W0;-><init>(Ljava/util/Map;)V

    const/4 v0, 0x2

    .line 7
    iput v0, p0, Lcom/google/common/collect/V0;->k:I

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/common/collect/V0;->w(Lcom/google/common/collect/S1;)Z

    return-void
.end method

.method public static M()Lcom/google/common/collect/V0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/V0<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/V0;

    invoke-direct {v0}, Lcom/google/common/collect/V0;-><init>()V

    return-object v0
.end method

.method public static O(II)Lcom/google/common/collect/V0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lcom/google/common/collect/V0<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/V0;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/V0;-><init>(II)V

    return-object v0
.end method

.method public static P(Lcom/google/common/collect/S1;)Lcom/google/common/collect/V0;
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
            "Lcom/google/common/collect/V0<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/V0;

    invoke-direct {v0, p0}, Lcom/google/common/collect/V0;-><init>(Lcom/google/common/collect/S1;)V

    return-object v0
.end method

.method private Q(Ljava/io/ObjectInputStream;)V
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

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/common/collect/V0;->k:I

    invoke-static {p1}, Lcom/google/common/collect/B2;->h(Ljava/io/ObjectInputStream;)I

    move-result v0

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/google/common/collect/h2;->d(I)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/common/collect/e;->G(Ljava/util/Map;)V

    invoke-static {p0, p1, v0}, Lcom/google/common/collect/B2;->e(Lcom/google/common/collect/S1;Ljava/io/ObjectInputStream;I)V

    return-void
.end method

.method private R(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-static {p0, p1}, Lcom/google/common/collect/B2;->j(Lcom/google/common/collect/S1;Ljava/io/ObjectOutputStream;)V

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

    iget v0, p0, Lcom/google/common/collect/V0;->k:I

    invoke-static {v0}, Lcom/google/common/collect/h2;->e(I)Ljava/util/Set;

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

.method public bridge synthetic clear()V
    .locals 0

    invoke-super {p0}, Lcom/google/common/collect/e;->clear()V

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

.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

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

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/h;->hashCode()I

    move-result v0

    return v0
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

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

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

.method public bridge synthetic v()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/m;->v()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

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

    invoke-virtual {p0}, Lcom/google/common/collect/V0;->K()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

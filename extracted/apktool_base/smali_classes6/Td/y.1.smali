.class public LTd/y;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "Ljava/lang/Double;",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/util/Map<",
        "Ljava/lang/Double;",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/io/Externalizable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final c:J = 0x1L


# instance fields
.field public b:Lee/u;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Lee/u;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 3
    iput-object p1, p0, LTd/y;->b:Lee/u;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, LTd/y;->h(Ljava/lang/Object;)D

    move-result-wide v1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    iget-object p1, p0, LTd/y;->b:Lee/u;

    invoke-interface {p1}, Lee/u;->l()D

    move-result-wide v1

    :goto_0
    iget-object p1, p0, LTd/y;->b:Lee/u;

    invoke-interface {p1, v1, v2}, Lee/u;->p0(D)I

    move-result p1

    iget-object v1, p0, LTd/y;->b:Lee/u;

    invoke-interface {v1}, Lee/u;->i()I

    move-result v1

    if-ne p1, v1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0, p1}, LTd/y;->k(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, LTd/y;->b:Lee/u;

    invoke-interface {v0}, Lee/u;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, LTd/y;->b:Lee/u;

    invoke-interface {p1}, Lee/u;->l()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lee/u;->A(D)Z

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    iget-object v0, p0, LTd/y;->b:Lee/u;

    invoke-virtual {p0, p1}, LTd/y;->h(Ljava/lang/Object;)D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lee/u;->A(D)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, LTd/y;->b:Lee/u;

    invoke-virtual {p0, p1}, LTd/y;->i(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {v0, p1}, Lee/u;->Q(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e()Lee/u;
    .locals 1

    iget-object v0, p0, LTd/y;->b:Lee/u;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Double;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    new-instance v0, LTd/y$a;

    invoke-direct {v0, p0}, LTd/y$a;-><init>(LTd/y;)V

    return-object v0
.end method

.method public f(Ljava/lang/Double;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, LTd/y;->b:Lee/u;

    invoke-interface {p1}, Lee/u;->l()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, LTd/y;->h(Ljava/lang/Object;)D

    move-result-wide v0

    :goto_0
    if-nez p2, :cond_1

    iget-object p1, p0, LTd/y;->b:Lee/u;

    invoke-interface {p1}, Lee/u;->i()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2}, LTd/y;->i(Ljava/lang/Object;)I

    move-result p1

    :goto_1
    iget-object p2, p0, LTd/y;->b:Lee/u;

    invoke-interface {p2, v0, v1, p1}, Lee/u;->N2(DI)I

    move-result p1

    iget-object p2, p0, LTd/y;->b:Lee/u;

    invoke-interface {p2}, Lee/u;->i()I

    move-result p2

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    invoke-virtual {p0, p1}, LTd/y;->k(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, LTd/y;->h(Ljava/lang/Object;)D

    move-result-wide v1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    iget-object p1, p0, LTd/y;->b:Lee/u;

    invoke-interface {p1}, Lee/u;->l()D

    move-result-wide v1

    :goto_0
    iget-object p1, p0, LTd/y;->b:Lee/u;

    invoke-interface {p1, v1, v2}, Lee/u;->a(D)I

    move-result p1

    iget-object v1, p0, LTd/y;->b:Lee/u;

    invoke-interface {v1}, Lee/u;->i()I

    move-result v1

    if-ne p1, v1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0, p1}, LTd/y;->k(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LTd/y;->a(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/Object;)D
    .locals 2

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public i(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, LTd/y;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j(D)Ljava/lang/Double;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public k(I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Double;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, LTd/y;->f(Ljava/lang/Double;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Double;",
            "+",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    :goto_0
    add-int/lit8 v1, p1, -0x1

    if-lez p1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, v2, p1}, LTd/y;->f(Ljava/lang/Double;Ljava/lang/Integer;)Ljava/lang/Integer;

    move p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lee/u;

    iput-object p1, p0, LTd/y;->b:Lee/u;

    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LTd/y;->g(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LTd/y;->b:Lee/u;

    invoke-interface {v0}, Lee/u;->size()I

    move-result v0

    return v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-object v0, p0, LTd/y;->b:Lee/u;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

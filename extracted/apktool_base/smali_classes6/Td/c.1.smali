.class public LTd/c;
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
        "Ljava/lang/Byte;",
        "Ljava/lang/Double;",
        ">;",
        "Ljava/util/Map<",
        "Ljava/lang/Byte;",
        "Ljava/lang/Double;",
        ">;",
        "Ljava/io/Externalizable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final c:J = 0x1L


# instance fields
.field public b:Lee/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Lee/c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 3
    iput-object p1, p0, LTd/c;->b:Lee/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, LTd/c;->h(Ljava/lang/Object;)B

    move-result p1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    iget-object p1, p0, LTd/c;->b:Lee/c;

    invoke-interface {p1}, Lee/c;->l()B

    move-result p1

    :goto_0
    iget-object v1, p0, LTd/c;->b:Lee/c;

    invoke-interface {v1, p1}, Lee/c;->s0(B)D

    move-result-wide v1

    iget-object p1, p0, LTd/c;->b:Lee/c;

    invoke-interface {p1}, Lee/c;->i()D

    move-result-wide v3

    cmpl-double p1, v1, v3

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0, v1, v2}, LTd/c;->k(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, LTd/c;->b:Lee/c;

    invoke-interface {v0}, Lee/c;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, LTd/c;->b:Lee/c;

    invoke-interface {p1}, Lee/c;->l()B

    move-result v0

    invoke-interface {p1, v0}, Lee/c;->D(B)Z

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    iget-object v0, p0, LTd/c;->b:Lee/c;

    invoke-virtual {p0, p1}, LTd/c;->h(Ljava/lang/Object;)B

    move-result p1

    invoke-interface {v0, p1}, Lee/c;->D(B)Z

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
    .locals 3

    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-object v0, p0, LTd/c;->b:Lee/c;

    invoke-virtual {p0, p1}, LTd/c;->i(Ljava/lang/Object;)D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lee/c;->T(D)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e()Lee/c;
    .locals 1

    iget-object v0, p0, LTd/c;->b:Lee/c;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    new-instance v0, LTd/c$a;

    invoke-direct {v0, p0}, LTd/c$a;-><init>(LTd/c;)V

    return-object v0
.end method

.method public f(Ljava/lang/Byte;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, LTd/c;->b:Lee/c;

    invoke-interface {p1}, Lee/c;->l()B

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, LTd/c;->h(Ljava/lang/Object;)B

    move-result p1

    :goto_0
    if-nez p2, :cond_1

    iget-object p2, p0, LTd/c;->b:Lee/c;

    invoke-interface {p2}, Lee/c;->i()D

    move-result-wide v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2}, LTd/c;->i(Ljava/lang/Object;)D

    move-result-wide v0

    :goto_1
    iget-object p2, p0, LTd/c;->b:Lee/c;

    invoke-interface {p2, p1, v0, v1}, Lee/c;->U3(BD)D

    move-result-wide p1

    iget-object v0, p0, LTd/c;->b:Lee/c;

    invoke-interface {v0}, Lee/c;->i()D

    move-result-wide v0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    invoke-virtual {p0, p1, p2}, LTd/c;->k(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, LTd/c;->h(Ljava/lang/Object;)B

    move-result p1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    iget-object p1, p0, LTd/c;->b:Lee/c;

    invoke-interface {p1}, Lee/c;->l()B

    move-result p1

    :goto_0
    iget-object v1, p0, LTd/c;->b:Lee/c;

    invoke-interface {v1, p1}, Lee/c;->m(B)D

    move-result-wide v1

    iget-object p1, p0, LTd/c;->b:Lee/c;

    invoke-interface {p1}, Lee/c;->i()D

    move-result-wide v3

    cmpl-double p1, v1, v3

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0, v1, v2}, LTd/c;->k(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LTd/c;->a(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/Object;)B
    .locals 0

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    return p1
.end method

.method public i(Ljava/lang/Object;)D
    .locals 2

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, LTd/c;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j(B)Ljava/lang/Byte;
    .locals 0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public k(D)Ljava/lang/Double;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Byte;

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, LTd/c;->f(Ljava/lang/Byte;Ljava/lang/Double;)Ljava/lang/Double;

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
            "Ljava/lang/Byte;",
            "+",
            "Ljava/lang/Double;",
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

    check-cast v2, Ljava/lang/Byte;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, v2, p1}, LTd/c;->f(Ljava/lang/Byte;Ljava/lang/Double;)Ljava/lang/Double;

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

    check-cast p1, Lee/c;

    iput-object p1, p0, LTd/c;->b:Lee/c;

    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LTd/c;->g(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LTd/c;->b:Lee/c;

    invoke-interface {v0}, Lee/c;->size()I

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

    iget-object v0, p0, LTd/c;->b:Lee/c;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

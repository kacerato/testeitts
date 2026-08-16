.class public LTd/A;
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
        "Ljava/lang/Long;",
        ">;",
        "Ljava/util/Map<",
        "Ljava/lang/Double;",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/io/Externalizable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final c:J = 0x1L


# instance fields
.field public b:Lee/v;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Lee/v;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 3
    iput-object p1, p0, LTd/A;->b:Lee/v;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, LTd/A;->h(Ljava/lang/Object;)D

    move-result-wide v1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    iget-object p1, p0, LTd/A;->b:Lee/v;

    invoke-interface {p1}, Lee/v;->l()D

    move-result-wide v1

    :goto_0
    iget-object p1, p0, LTd/A;->b:Lee/v;

    invoke-interface {p1, v1, v2}, Lee/v;->p0(D)J

    move-result-wide v1

    iget-object p1, p0, LTd/A;->b:Lee/v;

    invoke-interface {p1}, Lee/v;->i()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0, v1, v2}, LTd/A;->k(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, LTd/A;->b:Lee/v;

    invoke-interface {v0}, Lee/v;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, LTd/A;->b:Lee/v;

    invoke-interface {p1}, Lee/v;->l()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lee/v;->A(D)Z

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    iget-object v0, p0, LTd/A;->b:Lee/v;

    invoke-virtual {p0, p1}, LTd/A;->h(Ljava/lang/Object;)D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lee/v;->A(D)Z

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

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, LTd/A;->b:Lee/v;

    invoke-virtual {p0, p1}, LTd/A;->i(Ljava/lang/Object;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lee/v;->R(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e()Lee/v;
    .locals 1

    iget-object v0, p0, LTd/A;->b:Lee/v;

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
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    new-instance v0, LTd/A$a;

    invoke-direct {v0, p0}, LTd/A$a;-><init>(LTd/A;)V

    return-object v0
.end method

.method public f(Ljava/lang/Double;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, LTd/A;->b:Lee/v;

    invoke-interface {p1}, Lee/v;->l()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, LTd/A;->h(Ljava/lang/Object;)D

    move-result-wide v0

    :goto_0
    if-nez p2, :cond_1

    iget-object p1, p0, LTd/A;->b:Lee/v;

    invoke-interface {p1}, Lee/v;->i()J

    move-result-wide p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2}, LTd/A;->i(Ljava/lang/Object;)J

    move-result-wide p1

    :goto_1
    iget-object v2, p0, LTd/A;->b:Lee/v;

    invoke-interface {v2, v0, v1, p1, p2}, Lee/v;->O2(DJ)J

    move-result-wide p1

    iget-object v0, p0, LTd/A;->b:Lee/v;

    invoke-interface {v0}, Lee/v;->i()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    invoke-virtual {p0, p1, p2}, LTd/A;->k(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, LTd/A;->h(Ljava/lang/Object;)D

    move-result-wide v1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    iget-object p1, p0, LTd/A;->b:Lee/v;

    invoke-interface {p1}, Lee/v;->l()D

    move-result-wide v1

    :goto_0
    iget-object p1, p0, LTd/A;->b:Lee/v;

    invoke-interface {p1, v1, v2}, Lee/v;->a(D)J

    move-result-wide v1

    iget-object p1, p0, LTd/A;->b:Lee/v;

    invoke-interface {p1}, Lee/v;->i()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0, v1, v2}, LTd/A;->k(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LTd/A;->a(Ljava/lang/Object;)Ljava/lang/Long;

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

.method public i(Ljava/lang/Object;)J
    .locals 2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, LTd/A;->size()I

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

.method public k(J)Ljava/lang/Long;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Double;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, LTd/A;->f(Ljava/lang/Double;Ljava/lang/Long;)Ljava/lang/Long;

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
            "Ljava/lang/Long;",
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

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, v2, p1}, LTd/A;->f(Ljava/lang/Double;Ljava/lang/Long;)Ljava/lang/Long;

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

    check-cast p1, Lee/v;

    iput-object p1, p0, LTd/A;->b:Lee/v;

    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LTd/A;->g(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LTd/A;->b:Lee/v;

    invoke-interface {v0}, Lee/v;->size()I

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

    iget-object v0, p0, LTd/A;->b:Lee/v;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

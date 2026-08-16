.class public LTd/j;
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
        "Ljava/lang/Short;",
        ">;",
        "Ljava/util/Map<",
        "Ljava/lang/Byte;",
        "Ljava/lang/Short;",
        ">;",
        "Ljava/io/Externalizable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final c:J = 0x1L


# instance fields
.field public b:Lee/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Lee/h;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 3
    iput-object p1, p0, LTd/j;->b:Lee/h;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Short;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, LTd/j;->h(Ljava/lang/Object;)B

    move-result p1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    iget-object p1, p0, LTd/j;->b:Lee/h;

    invoke-interface {p1}, Lee/h;->l()B

    move-result p1

    :goto_0
    iget-object v1, p0, LTd/j;->b:Lee/h;

    invoke-interface {v1, p1}, Lee/h;->s0(B)S

    move-result p1

    iget-object v1, p0, LTd/j;->b:Lee/h;

    invoke-interface {v1}, Lee/h;->i()S

    move-result v1

    if-ne p1, v1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0, p1}, LTd/j;->k(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, LTd/j;->b:Lee/h;

    invoke-interface {v0}, Lee/h;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, LTd/j;->b:Lee/h;

    invoke-interface {p1}, Lee/h;->l()B

    move-result v0

    invoke-interface {p1, v0}, Lee/h;->D(B)Z

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    iget-object v0, p0, LTd/j;->b:Lee/h;

    invoke-virtual {p0, p1}, LTd/j;->h(Ljava/lang/Object;)B

    move-result p1

    invoke-interface {v0, p1}, Lee/h;->D(B)Z

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

    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_0

    iget-object v0, p0, LTd/j;->b:Lee/h;

    invoke-virtual {p0, p1}, LTd/j;->i(Ljava/lang/Object;)S

    move-result p1

    invoke-interface {v0, p1}, Lee/h;->L(S)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e()Lee/h;
    .locals 1

    iget-object v0, p0, LTd/j;->b:Lee/h;

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
            "Ljava/lang/Short;",
            ">;>;"
        }
    .end annotation

    new-instance v0, LTd/j$a;

    invoke-direct {v0, p0}, LTd/j$a;-><init>(LTd/j;)V

    return-object v0
.end method

.method public f(Ljava/lang/Byte;Ljava/lang/Short;)Ljava/lang/Short;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, LTd/j;->b:Lee/h;

    invoke-interface {p1}, Lee/h;->l()B

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, LTd/j;->h(Ljava/lang/Object;)B

    move-result p1

    :goto_0
    if-nez p2, :cond_1

    iget-object p2, p0, LTd/j;->b:Lee/h;

    invoke-interface {p2}, Lee/h;->i()S

    move-result p2

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2}, LTd/j;->i(Ljava/lang/Object;)S

    move-result p2

    :goto_1
    iget-object v0, p0, LTd/j;->b:Lee/h;

    invoke-interface {v0, p1, p2}, Lee/h;->s4(BS)S

    move-result p1

    iget-object p2, p0, LTd/j;->b:Lee/h;

    invoke-interface {p2}, Lee/h;->i()S

    move-result p2

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    invoke-virtual {p0, p1}, LTd/j;->k(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Short;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, LTd/j;->h(Ljava/lang/Object;)B

    move-result p1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    iget-object p1, p0, LTd/j;->b:Lee/h;

    invoke-interface {p1}, Lee/h;->l()B

    move-result p1

    :goto_0
    iget-object v1, p0, LTd/j;->b:Lee/h;

    invoke-interface {v1, p1}, Lee/h;->m(B)S

    move-result p1

    iget-object v1, p0, LTd/j;->b:Lee/h;

    invoke-interface {v1}, Lee/h;->i()S

    move-result v1

    if-ne p1, v1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0, p1}, LTd/j;->k(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LTd/j;->a(Ljava/lang/Object;)Ljava/lang/Short;

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

.method public i(Ljava/lang/Object;)S
    .locals 0

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, LTd/j;->size()I

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

.method public k(S)Ljava/lang/Short;
    .locals 0

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Byte;

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p0, p1, p2}, LTd/j;->f(Ljava/lang/Byte;Ljava/lang/Short;)Ljava/lang/Short;

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
            "Ljava/lang/Short;",
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

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p0, v2, p1}, LTd/j;->f(Ljava/lang/Byte;Ljava/lang/Short;)Ljava/lang/Short;

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

    check-cast p1, Lee/h;

    iput-object p1, p0, LTd/j;->b:Lee/h;

    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LTd/j;->g(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LTd/j;->b:Lee/h;

    invoke-interface {v0}, Lee/h;->size()I

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

    iget-object v0, p0, LTd/j;->b:Lee/h;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.class public LTd/l;
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
        "Ljava/lang/Character;",
        "Ljava/lang/Character;",
        ">;",
        "Ljava/util/Map<",
        "Ljava/lang/Character;",
        "Ljava/lang/Character;",
        ">;",
        "Ljava/io/Externalizable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final c:J = 0x1L


# instance fields
.field public b:Lee/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Lee/j;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 3
    iput-object p1, p0, LTd/l;->b:Lee/j;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Character;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, LTd/l;->h(Ljava/lang/Object;)C

    move-result p1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    iget-object p1, p0, LTd/l;->b:Lee/j;

    invoke-interface {p1}, Lee/j;->l()C

    move-result p1

    :goto_0
    iget-object v1, p0, LTd/l;->b:Lee/j;

    invoke-interface {v1, p1}, Lee/j;->o0(C)C

    move-result p1

    iget-object v1, p0, LTd/l;->b:Lee/j;

    invoke-interface {v1}, Lee/j;->i()C

    move-result v1

    if-ne p1, v1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0, p1}, LTd/l;->k(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, LTd/l;->b:Lee/j;

    invoke-interface {v0}, Lee/j;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, LTd/l;->b:Lee/j;

    invoke-interface {p1}, Lee/j;->l()C

    move-result v0

    invoke-interface {p1, v0}, Lee/j;->C(C)Z

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_1

    iget-object v0, p0, LTd/l;->b:Lee/j;

    invoke-virtual {p0, p1}, LTd/l;->h(Ljava/lang/Object;)C

    move-result p1

    invoke-interface {v0, p1}, Lee/j;->C(C)Z

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

    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_0

    iget-object v0, p0, LTd/l;->b:Lee/j;

    invoke-virtual {p0, p1}, LTd/l;->i(Ljava/lang/Object;)C

    move-result p1

    invoke-interface {v0, p1}, Lee/j;->O(C)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e()Lee/j;
    .locals 1

    iget-object v0, p0, LTd/l;->b:Lee/j;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;>;"
        }
    .end annotation

    new-instance v0, LTd/l$a;

    invoke-direct {v0, p0}, LTd/l$a;-><init>(LTd/l;)V

    return-object v0
.end method

.method public f(Ljava/lang/Character;Ljava/lang/Character;)Ljava/lang/Character;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, LTd/l;->b:Lee/j;

    invoke-interface {p1}, Lee/j;->l()C

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, LTd/l;->h(Ljava/lang/Object;)C

    move-result p1

    :goto_0
    if-nez p2, :cond_1

    iget-object p2, p0, LTd/l;->b:Lee/j;

    invoke-interface {p2}, Lee/j;->i()C

    move-result p2

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2}, LTd/l;->i(Ljava/lang/Object;)C

    move-result p2

    :goto_1
    iget-object v0, p0, LTd/l;->b:Lee/j;

    invoke-interface {v0, p1, p2}, Lee/j;->A4(CC)C

    move-result p1

    iget-object p2, p0, LTd/l;->b:Lee/j;

    invoke-interface {p2}, Lee/j;->i()C

    move-result p2

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    invoke-virtual {p0, p1}, LTd/l;->k(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Character;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, LTd/l;->h(Ljava/lang/Object;)C

    move-result p1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    iget-object p1, p0, LTd/l;->b:Lee/j;

    invoke-interface {p1}, Lee/j;->l()C

    move-result p1

    :goto_0
    iget-object v1, p0, LTd/l;->b:Lee/j;

    invoke-interface {v1, p1}, Lee/j;->b(C)C

    move-result p1

    iget-object v1, p0, LTd/l;->b:Lee/j;

    invoke-interface {v1}, Lee/j;->i()C

    move-result v1

    if-ne p1, v1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0, p1}, LTd/l;->k(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LTd/l;->a(Ljava/lang/Object;)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/Object;)C
    .locals 0

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    return p1
.end method

.method public i(Ljava/lang/Object;)C
    .locals 0

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, LTd/l;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j(C)Ljava/lang/Character;
    .locals 0

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public k(C)Ljava/lang/Character;
    .locals 0

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Character;

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p0, p1, p2}, LTd/l;->f(Ljava/lang/Character;Ljava/lang/Character;)Ljava/lang/Character;

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
            "Ljava/lang/Character;",
            "+",
            "Ljava/lang/Character;",
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

    check-cast v2, Ljava/lang/Character;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, v2, p1}, LTd/l;->f(Ljava/lang/Character;Ljava/lang/Character;)Ljava/lang/Character;

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

    check-cast p1, Lee/j;

    iput-object p1, p0, LTd/l;->b:Lee/j;

    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LTd/l;->g(Ljava/lang/Object;)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LTd/l;->b:Lee/j;

    invoke-interface {v0}, Lee/j;->size()I

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

    iget-object v0, p0, LTd/l;->b:Lee/j;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

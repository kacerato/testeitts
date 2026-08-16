.class public LTd/p0;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;",
        "Ljava/lang/Short;",
        ">;",
        "Ljava/util/Map<",
        "TK;",
        "Ljava/lang/Short;",
        ">;",
        "Ljava/io/Externalizable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final c:J = 0x1L


# instance fields
.field public b:Lee/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lee/e0<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Lee/e0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lee/e0<",
            "TK;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 3
    iput-object p1, p0, LTd/p0;->b:Lee/e0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Short;
    .locals 1

    iget-object v0, p0, LTd/p0;->b:Lee/e0;

    invoke-interface {v0, p1}, Lee/e0;->get(Ljava/lang/Object;)S

    move-result p1

    iget-object v0, p0, LTd/p0;->b:Lee/e0;

    invoke-interface {v0}, Lee/e0;->i()S

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, LTd/p0;->i(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, LTd/p0;->b:Lee/e0;

    invoke-interface {v0}, Lee/e0;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, LTd/p0;->b:Lee/e0;

    invoke-interface {v0, p1}, Lee/e0;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_0

    iget-object v0, p0, LTd/p0;->b:Lee/e0;

    invoke-virtual {p0, p1}, LTd/p0;->h(Ljava/lang/Object;)S

    move-result p1

    invoke-interface {v0, p1}, Lee/e0;->L(S)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e()Lee/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lee/e0<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, LTd/p0;->b:Lee/e0;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/lang/Short;",
            ">;>;"
        }
    .end annotation

    new-instance v0, LTd/p0$a;

    invoke-direct {v0, p0}, LTd/p0$a;-><init>(LTd/p0;)V

    return-object v0
.end method

.method public f(Ljava/lang/Object;Ljava/lang/Short;)Ljava/lang/Short;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Short;",
            ")",
            "Ljava/lang/Short;"
        }
    .end annotation

    if-nez p2, :cond_0

    iget-object p2, p0, LTd/p0;->b:Lee/e0;

    invoke-interface {p2}, Lee/e0;->i()S

    move-result v0

    invoke-interface {p2, p1, v0}, Lee/e0;->ga(Ljava/lang/Object;S)S

    move-result p1

    invoke-virtual {p0, p1}, LTd/p0;->i(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, LTd/p0;->b:Lee/e0;

    invoke-virtual {p0, p2}, LTd/p0;->h(Ljava/lang/Object;)S

    move-result p2

    invoke-interface {v0, p1, p2}, Lee/e0;->ga(Ljava/lang/Object;S)S

    move-result p1

    invoke-virtual {p0, p1}, LTd/p0;->i(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Short;
    .locals 1

    iget-object v0, p0, LTd/p0;->b:Lee/e0;

    invoke-interface {v0, p1}, Lee/e0;->remove(Ljava/lang/Object;)S

    move-result p1

    iget-object v0, p0, LTd/p0;->b:Lee/e0;

    invoke-interface {v0}, Lee/e0;->i()S

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, LTd/p0;->i(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LTd/p0;->a(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/Object;)S
    .locals 0

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1
.end method

.method public i(S)Ljava/lang/Short;
    .locals 0

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LTd/p0;->b:Lee/e0;

    invoke-interface {v0}, Lee/e0;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p0, p1, p2}, LTd/p0;->f(Ljava/lang/Object;Ljava/lang/Short;)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+",
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

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p0, v2, p1}, LTd/p0;->f(Ljava/lang/Object;Ljava/lang/Short;)Ljava/lang/Short;

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

    check-cast p1, Lee/e0;

    iput-object p1, p0, LTd/p0;->b:Lee/e0;

    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LTd/p0;->g(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LTd/p0;->b:Lee/e0;

    invoke-interface {v0}, Lee/e0;->size()I

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

    iget-object v0, p0, LTd/p0;->b:Lee/e0;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

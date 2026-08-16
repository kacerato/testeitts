.class public LTd/j0;
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
        "Ljava/lang/Byte;",
        ">;",
        "Ljava/util/Map<",
        "TK;",
        "Ljava/lang/Byte;",
        ">;",
        "Ljava/io/Externalizable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final c:J = 0x1L


# instance fields
.field public b:Lee/Y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lee/Y<",
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

.method public constructor <init>(Lee/Y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lee/Y<",
            "TK;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 3
    iput-object p1, p0, LTd/j0;->b:Lee/Y;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 1

    iget-object v0, p0, LTd/j0;->b:Lee/Y;

    invoke-interface {v0, p1}, Lee/Y;->get(Ljava/lang/Object;)B

    move-result p1

    iget-object v0, p0, LTd/j0;->b:Lee/Y;

    invoke-interface {v0}, Lee/Y;->i()B

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, LTd/j0;->i(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, LTd/j0;->b:Lee/Y;

    invoke-interface {v0}, Lee/Y;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, LTd/j0;->b:Lee/Y;

    invoke-interface {v0, p1}, Lee/Y;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    iget-object v0, p0, LTd/j0;->b:Lee/Y;

    invoke-virtual {p0, p1}, LTd/j0;->h(Ljava/lang/Object;)B

    move-result p1

    invoke-interface {v0, p1}, Lee/Y;->P(B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e()Lee/Y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lee/Y<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, LTd/j0;->b:Lee/Y;

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
            "Ljava/lang/Byte;",
            ">;>;"
        }
    .end annotation

    new-instance v0, LTd/j0$a;

    invoke-direct {v0, p0}, LTd/j0$a;-><init>(LTd/j0;)V

    return-object v0
.end method

.method public f(Ljava/lang/Object;Ljava/lang/Byte;)Ljava/lang/Byte;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Byte;",
            ")",
            "Ljava/lang/Byte;"
        }
    .end annotation

    if-nez p2, :cond_0

    iget-object p2, p0, LTd/j0;->b:Lee/Y;

    invoke-interface {p2}, Lee/Y;->i()B

    move-result v0

    invoke-interface {p2, p1, v0}, Lee/Y;->oa(Ljava/lang/Object;B)B

    move-result p1

    invoke-virtual {p0, p1}, LTd/j0;->i(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, LTd/j0;->b:Lee/Y;

    invoke-virtual {p0, p2}, LTd/j0;->h(Ljava/lang/Object;)B

    move-result p2

    invoke-interface {v0, p1, p2}, Lee/Y;->oa(Ljava/lang/Object;B)B

    move-result p1

    invoke-virtual {p0, p1}, LTd/j0;->i(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 1

    iget-object v0, p0, LTd/j0;->b:Lee/Y;

    invoke-interface {v0, p1}, Lee/Y;->remove(Ljava/lang/Object;)B

    move-result p1

    iget-object v0, p0, LTd/j0;->b:Lee/Y;

    invoke-interface {v0}, Lee/Y;->i()B

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, LTd/j0;->i(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LTd/j0;->a(Ljava/lang/Object;)Ljava/lang/Byte;

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

.method public i(B)Ljava/lang/Byte;
    .locals 0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LTd/j0;->b:Lee/Y;

    invoke-interface {v0}, Lee/Y;->size()I

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

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p0, p1, p2}, LTd/j0;->f(Ljava/lang/Object;Ljava/lang/Byte;)Ljava/lang/Byte;

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
            "Ljava/lang/Byte;",
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

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p0, v2, p1}, LTd/j0;->f(Ljava/lang/Object;Ljava/lang/Byte;)Ljava/lang/Byte;

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

    check-cast p1, Lee/Y;

    iput-object p1, p0, LTd/j0;->b:Lee/Y;

    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LTd/j0;->g(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LTd/j0;->b:Lee/Y;

    invoke-interface {v0}, Lee/Y;->size()I

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

    iget-object v0, p0, LTd/j0;->b:Lee/Y;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

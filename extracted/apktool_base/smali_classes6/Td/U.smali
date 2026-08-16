.class public LTd/U;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/util/List<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/io/Externalizable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final c:J = 0x1L


# instance fields
.field public b:Lbe/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method

.method public constructor <init>(Lbe/e;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 3
    iput-object p1, p0, LTd/U;->b:Lbe/e;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, LTd/U;->b:Lbe/e;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v0, p1, p2}, Lbe/e;->M7(II)V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, LTd/U;->a(ILjava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LTd/U;->j(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public j(I)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, LTd/U;->b:Lbe/e;

    invoke-interface {v0, p1}, Lbe/e;->get(I)I

    move-result p1

    iget-object v0, p0, LTd/U;->b:Lbe/e;

    invoke-interface {v0}, Lbe/e;->i()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public k()Lbe/e;
    .locals 1

    iget-object v0, p0, LTd/U;->b:Lbe/e;

    return-object v0
.end method

.method public l(I)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, LTd/U;->b:Lbe/e;

    invoke-interface {v0, p1}, Lbe/e;->B0(I)I

    move-result p1

    iget-object v0, p0, LTd/U;->b:Lbe/e;

    invoke-interface {v0}, Lbe/e;->i()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public m(ILjava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, LTd/U;->b:Lbe/e;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v0, p1, p2}, Lbe/e;->n5(II)I

    move-result p1

    iget-object p2, p0, LTd/U;->b:Lbe/e;

    invoke-interface {p2}, Lbe/e;->i()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
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

    check-cast p1, Lbe/e;

    iput-object p1, p0, LTd/U;->b:Lbe/e;

    return-void
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LTd/U;->l(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, LTd/U;->m(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LTd/U;->b:Lbe/e;

    invoke-interface {v0}, Lbe/e;->size()I

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

    iget-object v0, p0, LTd/U;->b:Lbe/e;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

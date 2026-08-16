.class public LTd/v0;
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
        "Ljava/lang/Short;",
        ">;",
        "Ljava/util/List<",
        "Ljava/lang/Short;",
        ">;",
        "Ljava/io/Externalizable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final c:J = 0x1L


# instance fields
.field public b:Lbe/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method

.method public constructor <init>(Lbe/i;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 3
    iput-object p1, p0, LTd/v0;->b:Lbe/i;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Short;)V
    .locals 1

    iget-object v0, p0, LTd/v0;->b:Lbe/i;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    invoke-interface {v0, p1, p2}, Lbe/i;->O7(IS)V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p0, p1, p2}, LTd/v0;->a(ILjava/lang/Short;)V

    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LTd/v0;->j(I)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public j(I)Ljava/lang/Short;
    .locals 1

    iget-object v0, p0, LTd/v0;->b:Lbe/i;

    invoke-interface {v0, p1}, Lbe/i;->get(I)S

    move-result p1

    iget-object v0, p0, LTd/v0;->b:Lbe/i;

    invoke-interface {v0}, Lbe/i;->i()S

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public k()Lbe/i;
    .locals 1

    iget-object v0, p0, LTd/v0;->b:Lbe/i;

    return-object v0
.end method

.method public l(I)Ljava/lang/Short;
    .locals 1

    iget-object v0, p0, LTd/v0;->b:Lbe/i;

    invoke-interface {v0, p1}, Lbe/i;->B0(I)S

    move-result p1

    iget-object v0, p0, LTd/v0;->b:Lbe/i;

    invoke-interface {v0}, Lbe/i;->i()S

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public m(ILjava/lang/Short;)Ljava/lang/Short;
    .locals 1

    iget-object v0, p0, LTd/v0;->b:Lbe/i;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    invoke-interface {v0, p1, p2}, Lbe/i;->t5(IS)S

    move-result p1

    iget-object p2, p0, LTd/v0;->b:Lbe/i;

    invoke-interface {p2}, Lbe/i;->i()S

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

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

    check-cast p1, Lbe/i;

    iput-object p1, p0, LTd/v0;->b:Lbe/i;

    return-void
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LTd/v0;->l(I)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p0, p1, p2}, LTd/v0;->m(ILjava/lang/Short;)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LTd/v0;->b:Lbe/i;

    invoke-interface {v0}, Lbe/i;->size()I

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

    iget-object v0, p0, LTd/v0;->b:Lbe/i;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

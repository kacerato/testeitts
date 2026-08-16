.class public LTd/p;
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
        "Ljava/lang/Character;",
        ">;",
        "Ljava/util/List<",
        "Ljava/lang/Character;",
        ">;",
        "Ljava/io/Externalizable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final c:J = 0x1L


# instance fields
.field public b:Lbe/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method

.method public constructor <init>(Lbe/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 3
    iput-object p1, p0, LTd/p;->b:Lbe/b;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Character;)V
    .locals 1

    iget-object v0, p0, LTd/p;->b:Lbe/b;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-interface {v0, p1, p2}, Lbe/b;->o8(IC)V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p0, p1, p2}, LTd/p;->a(ILjava/lang/Character;)V

    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LTd/p;->j(I)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public j(I)Ljava/lang/Character;
    .locals 1

    iget-object v0, p0, LTd/p;->b:Lbe/b;

    invoke-interface {v0, p1}, Lbe/b;->get(I)C

    move-result p1

    iget-object v0, p0, LTd/p;->b:Lbe/b;

    invoke-interface {v0}, Lbe/b;->i()C

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public k()Lbe/b;
    .locals 1

    iget-object v0, p0, LTd/p;->b:Lbe/b;

    return-object v0
.end method

.method public l(I)Ljava/lang/Character;
    .locals 1

    iget-object v0, p0, LTd/p;->b:Lbe/b;

    invoke-interface {v0, p1}, Lbe/b;->B0(I)C

    move-result p1

    iget-object v0, p0, LTd/p;->b:Lbe/b;

    invoke-interface {v0}, Lbe/b;->i()C

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public m(ILjava/lang/Character;)Ljava/lang/Character;
    .locals 1

    iget-object v0, p0, LTd/p;->b:Lbe/b;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-interface {v0, p1, p2}, Lbe/b;->b5(IC)C

    move-result p1

    iget-object p2, p0, LTd/p;->b:Lbe/b;

    invoke-interface {p2}, Lbe/b;->i()C

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

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

    check-cast p1, Lbe/b;

    iput-object p1, p0, LTd/p;->b:Lbe/b;

    return-void
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LTd/p;->l(I)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p0, p1, p2}, LTd/p;->m(ILjava/lang/Character;)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LTd/p;->b:Lbe/b;

    invoke-interface {v0}, Lbe/b;->size()I

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

    iget-object v0, p0, LTd/p;->b:Lbe/b;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

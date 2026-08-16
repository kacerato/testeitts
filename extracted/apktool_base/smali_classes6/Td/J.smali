.class public LTd/J;
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
        "Ljava/lang/Float;",
        ">;",
        "Ljava/util/List<",
        "Ljava/lang/Float;",
        ">;",
        "Ljava/io/Externalizable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final c:J = 0x1L


# instance fields
.field public b:Lbe/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method

.method public constructor <init>(Lbe/d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 3
    iput-object p1, p0, LTd/J;->b:Lbe/d;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Float;)V
    .locals 1

    iget-object v0, p0, LTd/J;->b:Lbe/d;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {v0, p1, p2}, Lbe/d;->l8(IF)V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, LTd/J;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LTd/J;->j(I)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public j(I)Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, LTd/J;->b:Lbe/d;

    invoke-interface {v0, p1}, Lbe/d;->get(I)F

    move-result p1

    iget-object v0, p0, LTd/J;->b:Lbe/d;

    invoke-interface {v0}, Lbe/d;->i()F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public k()Lbe/d;
    .locals 1

    iget-object v0, p0, LTd/J;->b:Lbe/d;

    return-object v0
.end method

.method public l(I)Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, LTd/J;->b:Lbe/d;

    invoke-interface {v0, p1}, Lbe/d;->B0(I)F

    move-result p1

    iget-object v0, p0, LTd/J;->b:Lbe/d;

    invoke-interface {v0}, Lbe/d;->i()F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public m(ILjava/lang/Float;)Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, LTd/J;->b:Lbe/d;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {v0, p1, p2}, Lbe/d;->l5(IF)F

    move-result p1

    iget-object p2, p0, LTd/J;->b:Lbe/d;

    invoke-interface {p2}, Lbe/d;->i()F

    move-result p2

    cmpl-float p2, p1, p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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

    check-cast p1, Lbe/d;

    iput-object p1, p0, LTd/J;->b:Lbe/d;

    return-void
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LTd/J;->l(I)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, LTd/J;->m(ILjava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LTd/J;->b:Lbe/d;

    invoke-interface {v0}, Lbe/d;->size()I

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

    iget-object v0, p0, LTd/J;->b:Lbe/d;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

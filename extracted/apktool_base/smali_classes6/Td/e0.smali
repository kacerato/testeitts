.class public LTd/e0;
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
        "Ljava/lang/Long;",
        ">;",
        "Ljava/util/List<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/io/Externalizable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final c:J = 0x1L


# instance fields
.field public b:Lbe/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method

.method public constructor <init>(Lbe/h;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 3
    iput-object p1, p0, LTd/e0;->b:Lbe/h;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Long;)V
    .locals 3

    iget-object v0, p0, LTd/e0;->b:Lbe/h;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Lbe/h;->N7(IJ)V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, LTd/e0;->a(ILjava/lang/Long;)V

    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LTd/e0;->j(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public j(I)Ljava/lang/Long;
    .locals 4

    iget-object v0, p0, LTd/e0;->b:Lbe/h;

    invoke-interface {v0, p1}, Lbe/h;->get(I)J

    move-result-wide v0

    iget-object p1, p0, LTd/e0;->b:Lbe/h;

    invoke-interface {p1}, Lbe/h;->i()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public k()Lbe/h;
    .locals 1

    iget-object v0, p0, LTd/e0;->b:Lbe/h;

    return-object v0
.end method

.method public l(I)Ljava/lang/Long;
    .locals 4

    iget-object v0, p0, LTd/e0;->b:Lbe/h;

    invoke-interface {v0, p1}, Lbe/h;->B0(I)J

    move-result-wide v0

    iget-object p1, p0, LTd/e0;->b:Lbe/h;

    invoke-interface {p1}, Lbe/h;->i()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public m(ILjava/lang/Long;)Ljava/lang/Long;
    .locals 3

    iget-object v0, p0, LTd/e0;->b:Lbe/h;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Lbe/h;->o5(IJ)J

    move-result-wide p1

    iget-object v0, p0, LTd/e0;->b:Lbe/h;

    invoke-interface {v0}, Lbe/h;->i()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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

    check-cast p1, Lbe/h;

    iput-object p1, p0, LTd/e0;->b:Lbe/h;

    return-void
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LTd/e0;->l(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, LTd/e0;->m(ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LTd/e0;->b:Lbe/h;

    invoke-interface {v0}, Lbe/h;->size()I

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

    iget-object v0, p0, LTd/e0;->b:Lbe/h;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

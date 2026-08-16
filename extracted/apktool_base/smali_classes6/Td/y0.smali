.class public LTd/y0;
.super Ljava/util/AbstractSet;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/lang/Short;",
        ">;",
        "Ljava/util/Set<",
        "Ljava/lang/Short;",
        ">;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field public static final c:J = 0x1L


# instance fields
.field public b:Lke/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method public constructor <init>(Lke/g;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 3
    iput-object p1, p0, LTd/y0;->b:Lke/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Short;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, LTd/y0;->b:Lke/g;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-interface {v0, p1}, Lke/g;->c1(S)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p0, p1}, LTd/y0;->a(Ljava/lang/Short;)Z

    move-result p1

    return p1
.end method

.method public b()Lke/g;
    .locals 1

    iget-object v0, p0, LTd/y0;->b:Lke/g;

    return-object v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, LTd/y0;->b:Lke/g;

    invoke-interface {v0}, Lke/g;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, LTd/y0;->b:Lke/g;

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-interface {v0, p1}, Lke/g;->W0(S)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    iget-object v0, p0, LTd/y0;->b:Lke/g;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v3, p0, LTd/y0;->b:Lke/g;

    invoke-interface {v3}, Lke/g;->size()I

    move-result v3

    if-eq v0, v3, :cond_1

    return v2

    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    :goto_0
    add-int/lit8 v3, p1, -0x1

    if-lez p1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    instance-of v4, p1, Ljava/lang/Short;

    if-eqz v4, :cond_2

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    iget-object v4, p0, LTd/y0;->b:Lke/g;

    invoke-interface {v4, p1}, Lke/g;->W0(S)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    return v1

    :cond_4
    return v2
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LTd/y0;->b:Lke/g;

    invoke-interface {v0}, Lke/g;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    new-instance v0, LTd/y0$a;

    invoke-direct {v0, p0}, LTd/y0$a;-><init>(LTd/y0;)V

    return-object v0
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

    check-cast p1, Lke/g;

    iput-object p1, p0, LTd/y0;->b:Lke/g;

    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_0

    iget-object v0, p0, LTd/y0;->b:Lke/g;

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-interface {v0, p1}, Lke/g;->d(S)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LTd/y0;->b:Lke/g;

    invoke-interface {v0}, Lke/g;->size()I

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

    iget-object v0, p0, LTd/y0;->b:Lke/g;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

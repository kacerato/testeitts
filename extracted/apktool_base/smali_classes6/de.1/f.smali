.class public Lde/f;
.super Ljava/util/AbstractSequentialList;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lbe/f<",
        "TT;>;>",
        "Ljava/util/AbstractSequentialList<",
        "TT;>;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field public static final e:J = 0x1L


# instance fields
.field public b:Lbe/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public c:Lbe/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lde/f;->d:I

    return-void
.end method


# virtual methods
.method public a(ILbe/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lde/f;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lde/f;->o(ILbe/f;)V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lbe/f;

    invoke-virtual {p0, p1, p2}, Lde/f;->a(ILbe/f;)V

    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Lbe/f;

    invoke-virtual {p0, p1}, Lde/f;->b(Lbe/f;)Z

    move-result p1

    return p1
.end method

.method public b(Lbe/f;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget v0, p0, Lde/f;->d:I

    invoke-virtual {p0, v0, p1}, Lde/f;->o(ILbe/f;)V

    const/4 p1, 0x1

    return p1
.end method

.method public c(Lbe/f;Lbe/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lde/f;->c:Lbe/f;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lde/f;->f(Lbe/f;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0, p2}, Lde/f;->e(Lbe/f;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lbe/f;->getNext()Lbe/f;

    move-result-object v0

    invoke-interface {p2, p1}, Lbe/f;->a5(Lbe/f;)V

    invoke-interface {p2, v0}, Lbe/f;->ec(Lbe/f;)V

    invoke-interface {p1, p2}, Lbe/f;->ec(Lbe/f;)V

    invoke-interface {v0, p2}, Lbe/f;->a5(Lbe/f;)V

    iget p1, p0, Lde/f;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lde/f;->d:I

    :goto_0
    return-void
.end method

.method public clear()V
    .locals 3

    iget-object v0, p0, Lde/f;->b:Lbe/f;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lbe/f;->getNext()Lbe/f;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lbe/f;->o7()Lbe/f;

    move-result-object v2

    invoke-interface {v2, v1}, Lbe/f;->ec(Lbe/f;)V

    invoke-interface {v0, v1}, Lbe/f;->a5(Lbe/f;)V

    invoke-interface {v0}, Lbe/f;->getNext()Lbe/f;

    move-result-object v0

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lde/f;->c:Lbe/f;

    iput-object v1, p0, Lde/f;->b:Lbe/f;

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lde/f;->d:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lde/f;->b:Lbe/f;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-interface {v0}, Lbe/f;->getNext()Lbe/f;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public d(Lbe/f;Lbe/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lde/f;->b:Lbe/f;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lde/f;->e(Lbe/f;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0, p2}, Lde/f;->f(Lbe/f;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lbe/f;->o7()Lbe/f;

    move-result-object v0

    invoke-interface {p2, p1}, Lbe/f;->ec(Lbe/f;)V

    invoke-interface {v0, p2}, Lbe/f;->ec(Lbe/f;)V

    invoke-interface {p2, v0}, Lbe/f;->a5(Lbe/f;)V

    invoke-interface {p1, p2}, Lbe/f;->a5(Lbe/f;)V

    iget p1, p0, Lde/f;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lde/f;->d:I

    :goto_0
    return-void
.end method

.method public e(Lbe/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lde/f;->o(ILbe/f;)V

    return-void
.end method

.method public f(Lbe/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lde/f;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lde/f;->o(ILbe/f;)V

    return-void
.end method

.method public g(Lhe/k0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/k0<",
            "TT;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lde/f;->b:Lbe/f;

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Lhe/k0;->a(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {v0}, Lbe/f;->getNext()Lbe/f;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lde/f;->j(I)Lbe/f;

    move-result-object p1

    return-object p1
.end method

.method public j(I)Lbe/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_3

    iget v0, p0, Lde/f;->d:I

    if-ge p1, v0, :cond_3

    shr-int/lit8 v1, v0, 0x1

    if-le p1, v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lde/f;->c:Lbe/f;

    :goto_0
    if-le v0, p1, :cond_0

    invoke-interface {v1}, Lbe/f;->o7()Lbe/f;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lde/f;->b:Lbe/f;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_2

    invoke-interface {v0}, Lbe/f;->getNext()Lbe/f;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lde/f;->d:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()Lbe/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lde/f;->b:Lbe/f;

    return-object v0
.end method

.method public l()Lbe/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lde/f;->c:Lbe/f;

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lde/f$a;

    invoke-direct {v0, p0, p1}, Lde/f$a;-><init>(Lde/f;I)V

    return-object v0
.end method

.method public m(Lbe/f;)Lbe/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    invoke-interface {p1}, Lbe/f;->getNext()Lbe/f;

    move-result-object p1

    return-object p1
.end method

.method public n(Lbe/f;)Lbe/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    invoke-interface {p1}, Lbe/f;->o7()Lbe/f;

    move-result-object p1

    return-object p1
.end method

.method public o(ILbe/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget v0, p0, Lde/f;->d:I

    if-nez v0, :cond_0

    iput-object p2, p0, Lde/f;->c:Lbe/f;

    iput-object p2, p0, Lde/f;->b:Lbe/f;

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lde/f;->b:Lbe/f;

    invoke-interface {p2, p1}, Lbe/f;->ec(Lbe/f;)V

    iget-object p1, p0, Lde/f;->b:Lbe/f;

    invoke-interface {p1, p2}, Lbe/f;->a5(Lbe/f;)V

    iput-object p2, p0, Lde/f;->b:Lbe/f;

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lde/f;->c:Lbe/f;

    invoke-interface {p1, p2}, Lbe/f;->ec(Lbe/f;)V

    iget-object p1, p0, Lde/f;->c:Lbe/f;

    invoke-interface {p2, p1}, Lbe/f;->a5(Lbe/f;)V

    iput-object p2, p0, Lde/f;->c:Lbe/f;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lde/f;->j(I)Lbe/f;

    move-result-object p1

    invoke-interface {p1}, Lbe/f;->o7()Lbe/f;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, p2}, Lbe/f;->ec(Lbe/f;)V

    :cond_3
    invoke-interface {p2, v0}, Lbe/f;->a5(Lbe/f;)V

    invoke-interface {p2, p1}, Lbe/f;->ec(Lbe/f;)V

    invoke-interface {p1, p2}, Lbe/f;->a5(Lbe/f;)V

    :goto_0
    iget p1, p0, Lde/f;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lde/f;->d:I

    return-void
.end method

.method public r()Lbe/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lde/f;->b:Lbe/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lbe/f;->getNext()Lbe/f;

    move-result-object v2

    invoke-interface {v0, v1}, Lbe/f;->ec(Lbe/f;)V

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Lbe/f;->a5(Lbe/f;)V

    :cond_1
    iput-object v2, p0, Lde/f;->b:Lbe/f;

    iget v2, p0, Lde/f;->d:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lde/f;->d:I

    if-nez v2, :cond_2

    iput-object v1, p0, Lde/f;->c:Lbe/f;

    :cond_2
    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lde/f;->d:I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbe/f;

    iput-object v0, p0, Lde/f;->b:Lbe/f;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbe/f;

    iput-object p1, p0, Lde/f;->c:Lbe/f;

    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lbe/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lbe/f;

    invoke-interface {v0}, Lbe/f;->o7()Lbe/f;

    move-result-object v2

    invoke-interface {v0}, Lbe/f;->getNext()Lbe/f;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    iget-object v0, p0, Lde/f;->b:Lbe/f;

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    iput-object v4, p0, Lde/f;->c:Lbe/f;

    iput-object v4, p0, Lde/f;->b:Lbe/f;

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    invoke-interface {v0, v4}, Lbe/f;->a5(Lbe/f;)V

    invoke-interface {v2, v4}, Lbe/f;->ec(Lbe/f;)V

    iput-object v2, p0, Lde/f;->c:Lbe/f;

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    invoke-interface {v0, v4}, Lbe/f;->ec(Lbe/f;)V

    invoke-interface {v3, v4}, Lbe/f;->a5(Lbe/f;)V

    iput-object v3, p0, Lde/f;->b:Lbe/f;

    goto :goto_0

    :cond_3
    invoke-interface {v2, v3}, Lbe/f;->ec(Lbe/f;)V

    invoke-interface {v3, v2}, Lbe/f;->a5(Lbe/f;)V

    invoke-interface {v0, v4}, Lbe/f;->ec(Lbe/f;)V

    invoke-interface {v0, v4}, Lbe/f;->a5(Lbe/f;)V

    :goto_0
    iget p1, p0, Lde/f;->d:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lde/f;->d:I

    return v0

    :cond_4
    return v1
.end method

.method public s()Lbe/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lde/f;->c:Lbe/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lbe/f;->o7()Lbe/f;

    move-result-object v2

    invoke-interface {v0, v1}, Lbe/f;->a5(Lbe/f;)V

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Lbe/f;->ec(Lbe/f;)V

    :cond_1
    iput-object v2, p0, Lde/f;->c:Lbe/f;

    iget v2, p0, Lde/f;->d:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lde/f;->d:I

    if-nez v2, :cond_2

    iput-object v1, p0, Lde/f;->b:Lbe/f;

    :cond_2
    return-object v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lde/f;->d:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lde/f;->d:I

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lde/f;->b:Lbe/f;

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_0

    add-int/lit8 v3, v2, 0x1

    aput-object v1, v0, v2

    invoke-interface {v1}, Lbe/f;->getNext()Lbe/f;

    move-result-object v1

    move v2, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public u([Lbe/f;)[Lbe/f;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lde/f;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lbe/f;

    check-cast p1, [Lbe/f;

    :cond_0
    iget-object v0, p0, Lde/f;->b:Lbe/f;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    aput-object v0, p1, v2

    invoke-interface {v0}, Lbe/f;->getNext()Lbe/f;

    move-result-object v4

    invoke-interface {v0, v3}, Lbe/f;->ec(Lbe/f;)V

    invoke-interface {v0, v3}, Lbe/f;->a5(Lbe/f;)V

    add-int/lit8 v2, v2, 0x1

    move-object v0, v4

    goto :goto_0

    :cond_1
    iput v1, p0, Lde/f;->d:I

    iput-object v3, p0, Lde/f;->c:Lbe/f;

    iput-object v3, p0, Lde/f;->b:Lbe/f;

    return-object p1
.end method

.method public v()[Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lde/f;->d:I

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lde/f;->b:Lbe/f;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-eqz v1, :cond_0

    aput-object v1, v0, v3

    invoke-interface {v1}, Lbe/f;->getNext()Lbe/f;

    move-result-object v5

    invoke-interface {v1, v4}, Lbe/f;->ec(Lbe/f;)V

    invoke-interface {v1, v4}, Lbe/f;->a5(Lbe/f;)V

    add-int/lit8 v3, v3, 0x1

    move-object v1, v5

    goto :goto_0

    :cond_0
    iput v2, p0, Lde/f;->d:I

    iput-object v4, p0, Lde/f;->c:Lbe/f;

    iput-object v4, p0, Lde/f;->b:Lbe/f;

    return-object v0
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

    iget v0, p0, Lde/f;->d:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p0, Lde/f;->b:Lbe/f;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lde/f;->c:Lbe/f;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

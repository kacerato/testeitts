.class public Lde/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbe/a;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/a$b;,
        Lde/a$c;
    }
.end annotation


# instance fields
.field public b:B

.field public c:I

.field public d:Lde/a$c;

.field public e:Lde/a$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lde/a;->d:Lde/a$c;

    .line 3
    iput-object v0, p0, Lde/a;->e:Lde/a$c;

    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lde/a;->d:Lde/a$c;

    .line 6
    iput-object v0, p0, Lde/a;->e:Lde/a$c;

    .line 7
    iput-byte p1, p0, Lde/a;->b:B

    return-void
.end method

.method public constructor <init>(Lbe/a;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lde/a;->d:Lde/a$c;

    .line 10
    iput-object v0, p0, Lde/a;->e:Lde/a$c;

    .line 11
    invoke-interface {p1}, Lbe/a;->i()B

    move-result v0

    iput-byte v0, p0, Lde/a;->b:B

    .line 12
    invoke-interface {p1}, LSd/a;->iterator()LZd/g;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-interface {p1}, LZd/g;->next()B

    move-result v0

    .line 14
    invoke-virtual {p0, v0}, Lde/a;->d1(B)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Lde/a;Lde/a$c;)V
    .locals 0

    invoke-virtual {p0, p1}, Lde/a;->j(Lde/a$c;)V

    return-void
.end method

.method public static b(Lde/a$c;II)Lde/a$c;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lde/a;->c(Lde/a$c;IIZ)Lde/a$c;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lde/a$c;IIZ)Lde/a$c;
    .locals 1

    :goto_0
    invoke-static {p0}, Lde/a;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne p1, p2, :cond_0

    return-object p0

    :cond_0
    if-eqz p3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    add-int/2addr p1, v0

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lde/a$c;->a()Lde/a$c;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lde/a$c;->b()Lde/a$c;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static g([BII)Lde/a;
    .locals 3

    new-instance v0, Lde/a;

    invoke-direct {v0}, Lde/a;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    add-int v2, p1, v1

    aget-byte v2, p0, v2

    invoke-virtual {v0, v2}, Lde/a;->d1(B)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static h(Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public Ae(I[BII)V
    .locals 0

    invoke-static {p2, p3, p4}, Lde/a;->g([BII)Lde/a;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lde/a;->f(ILde/a;)V

    return-void
.end method

.method public B0(I)B
    .locals 3

    invoke-virtual {p0, p1}, Lde/a;->d(I)Lde/a$c;

    move-result-object v0

    invoke-static {v0}, Lde/a;->h(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lde/a$c;->c()B

    move-result p1

    invoke-virtual {p0, v0}, Lde/a;->j(Lde/a$c;)V

    return p1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no elemenet at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public C7([BII)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lde/a;->d1(B)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public D7(IIB)V
    .locals 2

    if-ltz p1, :cond_3

    invoke-virtual {p0, p1}, Lde/a;->d(I)Lde/a$c;

    move-result-object v0

    iget v1, p0, Lde/a;->c:I

    if-le p2, v1, :cond_1

    :goto_0
    iget v1, p0, Lde/a;->c:I

    if-ge p1, v1, :cond_0

    invoke-virtual {v0, p3}, Lde/a$c;->f(B)V

    invoke-virtual {v0}, Lde/a$c;->a()Lde/a$c;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, p2, :cond_2

    invoke-virtual {p0, p3}, Lde/a;->d1(B)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge p1, p2, :cond_2

    invoke-virtual {v0, p3}, Lde/a$c;->f(B)V

    invoke-virtual {v0}, Lde/a$c;->a()Lde/a$c;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "begin index can not be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public E1(LSd/a;)Z
    .locals 2

    invoke-interface {p1}, LSd/a;->iterator()LZd/g;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, LZd/g;->next()B

    move-result v1

    invoke-virtual {p0, v1}, Lde/a;->d1(B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public E8(IB)B
    .locals 0

    invoke-virtual {p0, p1, p2}, Lde/a;->set(IB)B

    move-result p1

    return p1
.end method

.method public Fe(I[B)V
    .locals 2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lde/a;->g([BII)Lde/a;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lde/a;->f(ILde/a;)V

    return-void
.end method

.method public J0(Ljava/util/Random;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lde/a;->c:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lde/a;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lde/a;->d(I)Lde/a$c;

    move-result-object v1

    invoke-virtual {p0, v1}, Lde/a;->j(Lde/a$c;)V

    invoke-virtual {v1}, Lde/a$c;->c()B

    move-result v1

    invoke-virtual {p0, v1}, Lde/a;->d1(B)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public J4(IB)I
    .locals 3

    invoke-virtual {p0}, Lde/a;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lde/a;->d(I)Lde/a$c;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lde/a$c;->a()Lde/a$c;

    move-result-object v2

    invoke-static {v2}, Lde/a;->e(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lde/a$c;->c()B

    move-result v2

    if-ne v2, p2, :cond_1

    move v1, p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0}, Lde/a$c;->a()Lde/a$c;

    move-result-object v0

    goto :goto_0

    :cond_2
    return v1
.end method

.method public O3(B)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lde/a;->J4(IB)I

    move-result p1

    return p1
.end method

.method public Oe([BIII)[B
    .locals 3

    if-nez p4, :cond_0

    return-object p1

    :cond_0
    if-ltz p2, :cond_2

    invoke-virtual {p0}, Lde/a;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    invoke-virtual {p0, p2}, Lde/a;->d(I)Lde/a$c;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    add-int v1, p3, v0

    invoke-virtual {p2}, Lde/a$c;->c()B

    move-result v2

    aput-byte v2, p1, v1

    invoke-virtual {p2}, Lde/a$c;->a()Lde/a$c;

    move-result-object p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p1
.end method

.method public R0([B)[B
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lde/a;->c:I

    invoke-virtual {p0, p1, v0, v1}, Lde/a;->cd([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public Rb(BII)I
    .locals 4

    if-ltz p2, :cond_5

    iget v0, p0, Lde/a;->c:I

    if-gt p3, v0, :cond_4

    if-ge p3, p2, :cond_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    neg-int p1, p2

    return p1

    :cond_1
    invoke-virtual {p0, p2}, Lde/a;->d(I)Lde/a$c;

    move-result-object v0

    :goto_0
    if-ge p2, p3, :cond_0

    add-int v1, p2, p3

    ushr-int/lit8 v1, v1, 0x1

    invoke-static {v0, p2, v1}, Lde/a;->b(Lde/a$c;II)Lde/a$c;

    move-result-object v2

    invoke-virtual {v2}, Lde/a$c;->c()B

    move-result v3

    if-ne v3, p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {v2}, Lde/a$c;->c()B

    move-result v3

    if-ge v3, p1, :cond_3

    add-int/lit8 p2, v1, 0x1

    iget-object v0, v2, Lde/a$c;->c:Lde/a$c;

    goto :goto_0

    :cond_3
    add-int/lit8 p3, v1, -0x1

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "end index > size: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lde/a;->c:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "begin index can not be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public S6(Lhe/h;)Lbe/a;
    .locals 3

    new-instance v0, Lde/a;

    invoke-direct {v0}, Lde/a;-><init>()V

    iget-object v1, p0, Lde/a;->d:Lde/a$c;

    :goto_0
    invoke-static {v1}, Lde/a;->e(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lde/a$c;->c()B

    move-result v2

    invoke-interface {p1, v2}, Lhe/h;->a(B)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lde/a$c;->c()B

    move-result v2

    invoke-interface {v0, v2}, Lbe/a;->d1(B)Z

    :cond_0
    invoke-virtual {v1}, Lde/a$c;->a()Lde/a$c;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public T2(B)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lde/a;->c:I

    invoke-virtual {p0, v0, v1, p1}, Lde/a;->D7(IIB)V

    return-void
.end method

.method public V0(Lhe/h;)Z
    .locals 2

    iget-object v0, p0, Lde/a;->d:Lde/a$c;

    :goto_0
    invoke-static {v0}, Lde/a;->e(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lde/a$c;->c()B

    move-result v1

    invoke-interface {p1, v1}, Lhe/h;->a(B)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0}, Lde/a$c;->a()Lde/a$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public W1([B)Z
    .locals 3

    invoke-static {p1}, Ljava/util/Arrays;->sort([B)V

    invoke-virtual {p0}, Lde/a;->iterator()LZd/g;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, LZd/g;->next()B

    move-result v2

    invoke-static {p1, v2}, Ljava/util/Arrays;->binarySearch([BB)I

    move-result v2

    if-gez v2, :cond_0

    invoke-interface {v0}, LZd/V;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public a1(B)Z
    .locals 3

    invoke-virtual {p0}, Lde/a;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lde/a;->d:Lde/a$c;

    :goto_0
    invoke-static {v0}, Lde/a;->e(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lde/a$c;->c()B

    move-result v2

    if-ne v2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {v0}, Lde/a$c;->a()Lde/a$c;

    move-result-object v0

    goto :goto_0

    :cond_2
    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {p0, v1}, Lde/a;->d1(B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public b8(Lhe/h;)Z
    .locals 2

    iget-object v0, p0, Lde/a;->e:Lde/a$c;

    :goto_0
    invoke-static {v0}, Lde/a;->e(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lde/a$c;->c()B

    move-result v1

    invoke-interface {p1, v1}, Lhe/h;->a(B)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0}, Lde/a$c;->b()Lde/a$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public cd([BII)[B
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lde/a;->Oe([BIII)[B

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lde/a;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lde/a;->d:Lde/a$c;

    iput-object v0, p0, Lde/a;->e:Lde/a$c;

    return-void
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lde/a;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Byte;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0}, Lde/a;->a1(B)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public d(I)Lde/a$c;
    .locals 4

    invoke-virtual {p0}, Lde/a;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lde/a;->size()I

    move-result v0

    const/4 v1, 0x1

    ushr-int/2addr v0, v1

    const/4 v2, 0x0

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lde/a;->d:Lde/a$c;

    invoke-static {v0, v2, p1, v1}, Lde/a;->c(Lde/a$c;IIZ)Lde/a$c;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lde/a;->e:Lde/a$c;

    invoke-virtual {p0}, Lde/a;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v0, v3, p1, v2}, Lde/a;->c(Lde/a$c;IIZ)Lde/a$c;

    move-result-object p1

    return-object p1
.end method

.method public d1(B)Z
    .locals 1

    new-instance v0, Lde/a$c;

    invoke-direct {v0, p1}, Lde/a$c;-><init>(B)V

    iget-object p1, p0, Lde/a;->d:Lde/a$c;

    invoke-static {p1}, Lde/a;->h(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object v0, p0, Lde/a;->d:Lde/a$c;

    iput-object v0, p0, Lde/a;->e:Lde/a$c;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lde/a;->e:Lde/a$c;

    invoke-virtual {v0, p1}, Lde/a$c;->e(Lde/a$c;)V

    iget-object p1, p0, Lde/a;->e:Lde/a$c;

    invoke-virtual {p1, v0}, Lde/a$c;->d(Lde/a$c;)V

    iput-object v0, p0, Lde/a;->e:Lde/a$c;

    :goto_0
    iget p1, p0, Lde/a;->c:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lde/a;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lde/a;

    iget-byte v2, p0, Lde/a;->b:B

    iget-byte v3, p1, Lde/a;->b:B

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lde/a;->c:I

    iget v3, p1, Lde/a;->c:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lde/a;->iterator()LZd/g;

    move-result-object v2

    invoke-virtual {p1}, Lde/a;->iterator()LZd/g;

    move-result-object p1

    :cond_4
    invoke-interface {v2}, LZd/V;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    :cond_5
    invoke-interface {v2}, LZd/g;->next()B

    move-result v3

    invoke-interface {p1}, LZd/g;->next()B

    move-result v4

    if-eq v3, v4, :cond_4

    return v1

    :cond_6
    return v0

    :cond_7
    :goto_0
    return v1
.end method

.method public f(ILde/a;)V
    .locals 3

    invoke-virtual {p0, p1}, Lde/a;->d(I)Lde/a$c;

    move-result-object p1

    iget v0, p0, Lde/a;->c:I

    iget v1, p2, Lde/a;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lde/a;->c:I

    iget-object v0, p0, Lde/a;->d:Lde/a$c;

    if-ne p1, v0, :cond_0

    iget-object p1, p2, Lde/a;->e:Lde/a$c;

    invoke-virtual {p1, v0}, Lde/a$c;->d(Lde/a$c;)V

    iget-object p1, p0, Lde/a;->d:Lde/a$c;

    iget-object v0, p2, Lde/a;->e:Lde/a$c;

    invoke-virtual {p1, v0}, Lde/a$c;->e(Lde/a$c;)V

    iget-object p1, p2, Lde/a;->d:Lde/a$c;

    iput-object p1, p0, Lde/a;->d:Lde/a$c;

    return-void

    :cond_0
    invoke-static {p1}, Lde/a;->h(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget p1, p0, Lde/a;->c:I

    if-nez p1, :cond_1

    iget-object p1, p2, Lde/a;->d:Lde/a$c;

    iput-object p1, p0, Lde/a;->d:Lde/a$c;

    iget-object p1, p2, Lde/a;->e:Lde/a$c;

    iput-object p1, p0, Lde/a;->e:Lde/a$c;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lde/a;->e:Lde/a$c;

    iget-object v0, p2, Lde/a;->d:Lde/a$c;

    invoke-virtual {p1, v0}, Lde/a$c;->d(Lde/a$c;)V

    iget-object p1, p2, Lde/a;->d:Lde/a$c;

    iget-object v0, p0, Lde/a;->e:Lde/a$c;

    invoke-virtual {p1, v0}, Lde/a$c;->e(Lde/a$c;)V

    iget-object p1, p2, Lde/a;->e:Lde/a$c;

    iput-object p1, p0, Lde/a;->e:Lde/a$c;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lde/a$c;->b()Lde/a$c;

    move-result-object v0

    invoke-virtual {p1}, Lde/a$c;->b()Lde/a$c;

    move-result-object v1

    iget-object v2, p2, Lde/a;->d:Lde/a$c;

    invoke-virtual {v1, v2}, Lde/a$c;->d(Lde/a$c;)V

    iget-object v1, p2, Lde/a;->e:Lde/a$c;

    invoke-virtual {v1, p1}, Lde/a$c;->d(Lde/a$c;)V

    iget-object v1, p2, Lde/a;->e:Lde/a$c;

    invoke-virtual {p1, v1}, Lde/a$c;->e(Lde/a$c;)V

    iget-object p1, p2, Lde/a;->d:Lde/a$c;

    invoke-virtual {p1, v0}, Lde/a$c;->e(Lde/a$c;)V

    :goto_0
    return-void
.end method

.method public get(I)B
    .locals 3

    iget v0, p0, Lde/a;->c:I

    if-gt p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lde/a;->d(I)Lde/a$c;

    move-result-object p1

    invoke-static {p1}, Lde/a;->h(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-byte p1, p0, Lde/a;->b:B

    return p1

    :cond_0
    invoke-virtual {p1}, Lde/a$c;->c()B

    move-result p1

    return p1

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " exceeds size "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lde/a;->c:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    iget-byte v0, p0, Lde/a;->b:B

    invoke-static {v0}, LVd/b;->d(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lde/a;->c:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lde/a;->iterator()LZd/g;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    invoke-interface {v1}, LZd/g;->next()B

    move-result v2

    invoke-static {v2}, LVd/b;->d(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public i()B
    .locals 1

    iget-byte v0, p0, Lde/a;->b:B

    return v0
.end method

.method public i2(LSd/a;)Z
    .locals 3

    invoke-virtual {p0}, Lde/a;->iterator()LZd/g;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, LZd/g;->next()B

    move-result v2

    invoke-interface {p1, v2}, LSd/a;->a1(B)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, LZd/V;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lde/a;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()LZd/g;
    .locals 1

    new-instance v0, Lde/a$a;

    invoke-direct {v0, p0}, Lde/a$a;-><init>(Lde/a;)V

    return-object v0
.end method

.method public final j(Lde/a$c;)V
    .locals 3

    invoke-static {p1}, Lde/a;->h(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lde/a;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lde/a;->c:I

    invoke-virtual {p1}, Lde/a$c;->b()Lde/a$c;

    move-result-object v0

    invoke-virtual {p1}, Lde/a$c;->a()Lde/a$c;

    move-result-object v1

    invoke-static {v0}, Lde/a;->e(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lde/a$c;->d(Lde/a$c;)V

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lde/a;->d:Lde/a$c;

    :goto_0
    invoke-static {v1}, Lde/a;->e(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Lde/a$c;->e(Lde/a$c;)V

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lde/a;->e:Lde/a$c;

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lde/a$c;->d(Lde/a$c;)V

    invoke-virtual {p1, v0}, Lde/a$c;->e(Lde/a$c;)V

    return-void
.end method

.method public l1([B)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    invoke-virtual {p0, v2}, Lde/a;->d1(B)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public m(B)Z
    .locals 3

    iget-object v0, p0, Lde/a;->d:Lde/a$c;

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0}, Lde/a;->e(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lde/a$c;->c()B

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, v0}, Lde/a;->j(Lde/a$c;)V

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0}, Lde/a$c;->a()Lde/a$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    return v1
.end method

.method public max()B
    .locals 3

    invoke-virtual {p0}, Lde/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lde/a;->d:Lde/a$c;

    const/16 v1, -0x80

    :goto_0
    invoke-static {v0}, Lde/a;->e(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lde/a$c;->c()B

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Lde/a$c;->c()B

    move-result v1

    :cond_0
    invoke-virtual {v0}, Lde/a$c;->a()Lde/a$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public min()B
    .locals 3

    invoke-virtual {p0}, Lde/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lde/a;->d:Lde/a$c;

    const/16 v1, 0x7f

    :goto_0
    invoke-static {v0}, Lde/a;->e(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lde/a$c;->c()B

    move-result v2

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Lde/a$c;->c()B

    move-result v1

    :cond_0
    invoke-virtual {v0}, Lde/a$c;->a()Lde/a$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public n8(IB)V
    .locals 1

    new-instance v0, Lde/a;

    invoke-direct {v0}, Lde/a;-><init>()V

    invoke-virtual {v0, p2}, Lde/a;->d1(B)Z

    invoke-virtual {p0, p1, v0}, Lde/a;->f(ILde/a;)V

    return-void
.end method

.method public o()B
    .locals 3

    iget-object v0, p0, Lde/a;->d:Lde/a$c;

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0}, Lde/a;->e(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lde/a$c;->c()B

    move-result v2

    add-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0}, Lde/a$c;->a()Lde/a$c;

    move-result-object v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method public o2([B)Z
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-byte v3, p1, v1

    invoke-virtual {p0, v3}, Lde/a;->d1(B)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public p1(B)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lde/a;->w6(IB)I

    move-result p1

    return p1
.end method

.method public r2(I[B)V
    .locals 2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lde/a;->set(I[BII)V

    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lde/a;->b:B

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v2

    invoke-virtual {p0, v2}, Lde/a;->d1(B)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lde/a;->iterator()LZd/g;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, LZd/g;->next()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, LZd/V;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lde/a;->iterator()LZd/g;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, LZd/g;->next()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, LZd/V;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public s(LUd/a;)V
    .locals 2

    iget-object v0, p0, Lde/a;->d:Lde/a$c;

    :goto_0
    invoke-static {v0}, Lde/a;->e(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lde/a$c;->c()B

    move-result v1

    invoke-interface {p1, v1}, LUd/a;->a(B)B

    move-result v1

    invoke-virtual {v0, v1}, Lde/a$c;->f(B)V

    invoke-virtual {v0}, Lde/a$c;->a()Lde/a$c;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public s2(LSd/a;)Z
    .locals 3

    invoke-virtual {p0}, Lde/a;->iterator()LZd/g;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, LZd/g;->next()B

    move-result v2

    invoke-interface {p1, v2}, LSd/a;->a1(B)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, LZd/V;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public sb(Lhe/h;)Lbe/a;
    .locals 3

    new-instance v0, Lde/a;

    invoke-direct {v0}, Lde/a;-><init>()V

    iget-object v1, p0, Lde/a;->d:Lde/a$c;

    :goto_0
    invoke-static {v1}, Lde/a;->e(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lde/a$c;->c()B

    move-result v2

    invoke-interface {p1, v2}, Lhe/h;->a(B)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lde/a$c;->c()B

    move-result v2

    invoke-interface {v0, v2}, Lbe/a;->d1(B)Z

    :cond_0
    invoke-virtual {v1}, Lde/a$c;->a()Lde/a$c;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public set(IB)B
    .locals 2

    .line 1
    iget v0, p0, Lde/a;->c:I

    if-gt p1, v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lde/a;->d(I)Lde/a$c;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lde/a;->h(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lde/a$c;->c()B

    move-result p1

    .line 5
    invoke-virtual {v0, p2}, Lde/a$c;->f(B)V

    return p1

    .line 6
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "at offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " exceeds size "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lde/a;->c:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public set(I[BII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p3, v0

    .line 8
    aget-byte v1, p2, v1

    add-int v2, p1, v0

    .line 9
    invoke-virtual {p0, v2, v1}, Lde/a;->set(IB)B

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lde/a;->c:I

    return v0
.end method

.method public sort()V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lde/a;->c:I

    invoke-virtual {p0, v0, v1}, Lde/a;->w0(II)V

    return-void
.end method

.method public subList(II)Lbe/a;
    .locals 3

    const-string v0, "begin index "

    if-lt p2, p1, :cond_4

    iget v1, p0, Lde/a;->c:I

    if-lt v1, p1, :cond_3

    if-ltz p1, :cond_2

    if-gt p2, v1, :cond_1

    new-instance v0, Lde/a;

    invoke-direct {v0}, Lde/a;-><init>()V

    invoke-virtual {p0, p1}, Lde/a;->d(I)Lde/a$c;

    move-result-object v1

    :goto_0
    if-ge p1, p2, :cond_0

    invoke-virtual {v1}, Lde/a$c;->c()B

    move-result v2

    invoke-virtual {v0, v2}, Lde/a;->d1(B)Z

    invoke-virtual {v1}, Lde/a$c;->a()Lde/a$c;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "end index < "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lde/a;->c:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "begin index can not be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " greater than last index "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lde/a;->c:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " greater than end index "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public t0(II)V
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p0, p1}, Lde/a;->B0(I)B

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public t1([B)Z
    .locals 4

    invoke-virtual {p0}, Lde/a;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-byte v3, p1, v2

    invoke-virtual {p0, v3}, Lde/a;->a1(B)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public toArray()[B
    .locals 3

    iget v0, p0, Lde/a;->c:I

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lde/a;->cd([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/a;->iterator()LZd/g;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, LZd/g;->next()B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {v1}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u0()V
    .locals 6

    iget-object v0, p0, Lde/a;->d:Lde/a$c;

    iget-object v1, p0, Lde/a;->e:Lde/a$c;

    move-object v2, v0

    :goto_0
    invoke-static {v2}, Lde/a;->e(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lde/a$c;->a()Lde/a$c;

    move-result-object v3

    invoke-virtual {v2}, Lde/a$c;->b()Lde/a$c;

    move-result-object v4

    invoke-virtual {v2}, Lde/a$c;->a()Lde/a$c;

    move-result-object v5

    invoke-virtual {v2, v4}, Lde/a$c;->d(Lde/a$c;)V

    invoke-virtual {v2, v3}, Lde/a$c;->e(Lde/a$c;)V

    move-object v2, v5

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lde/a;->d:Lde/a$c;

    iput-object v0, p0, Lde/a;->e:Lde/a$c;

    return-void
.end method

.method public w0(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lde/a;->subList(II)Lbe/a;

    move-result-object p2

    invoke-interface {p2}, Lbe/a;->toArray()[B

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->sort([B)V

    invoke-virtual {p0, p1, p2}, Lde/a;->r2(I[B)V

    return-void
.end method

.method public w2(LSd/a;)Z
    .locals 2

    invoke-virtual {p0}, Lde/a;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, LSd/a;->iterator()LZd/g;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, LZd/g;->next()B

    move-result v0

    invoke-virtual {p0, v0}, Lde/a;->a1(B)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public w6(IB)I
    .locals 2

    invoke-virtual {p0, p1}, Lde/a;->d(I)Lde/a$c;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lde/a$c;->a()Lde/a$c;

    move-result-object v1

    invoke-static {v1}, Lde/a;->e(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lde/a$c;->c()B

    move-result v1

    if-ne v1, p2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0}, Lde/a$c;->a()Lde/a$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-byte v0, p0, Lde/a;->b:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget v0, p0, Lde/a;->c:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-virtual {p0}, Lde/a;->iterator()LZd/g;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LZd/g;->next()B

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public y0(II)V
    .locals 5

    if-gt p1, p2, :cond_2

    invoke-virtual {p0, p1}, Lde/a;->d(I)Lde/a$c;

    move-result-object p1

    invoke-virtual {p0, p2}, Lde/a;->d(I)Lde/a$c;

    move-result-object p2

    invoke-virtual {p1}, Lde/a$c;->b()Lde/a$c;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v1, p1

    :goto_0
    if-eq v1, p2, :cond_0

    invoke-virtual {v1}, Lde/a$c;->a()Lde/a$c;

    move-result-object v2

    invoke-virtual {v1}, Lde/a$c;->b()Lde/a$c;

    move-result-object v3

    invoke-virtual {v1}, Lde/a$c;->a()Lde/a$c;

    move-result-object v4

    invoke-virtual {v1, v3}, Lde/a$c;->d(Lde/a$c;)V

    invoke-virtual {v1, v2}, Lde/a$c;->e(Lde/a$c;)V

    move-object v2, v1

    move-object v1, v4

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lde/a;->e(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Lde/a$c;->d(Lde/a$c;)V

    invoke-virtual {p2, v0}, Lde/a$c;->e(Lde/a$c;)V

    :cond_1
    invoke-virtual {p1, p2}, Lde/a$c;->d(Lde/a$c;)V

    invoke-virtual {p2, p1}, Lde/a$c;->e(Lde/a$c;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "from > to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public y1([B)Z
    .locals 3

    invoke-static {p1}, Ljava/util/Arrays;->sort([B)V

    invoke-virtual {p0}, Lde/a;->iterator()LZd/g;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, LZd/g;->next()B

    move-result v2

    invoke-static {p1, v2}, Ljava/util/Arrays;->binarySearch([BB)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-interface {v0}, LZd/V;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public z0(II)[B
    .locals 2

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lde/a;->Oe([BIII)[B

    move-result-object p1

    return-object p1
.end method

.method public z3(B)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lde/a;->size()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lde/a;->Rb(BII)I

    move-result p1

    return p1
.end method

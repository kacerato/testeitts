.class public Lde/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbe/b;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/b$b;,
        Lde/b$c;
    }
.end annotation


# instance fields
.field public b:C

.field public c:I

.field public d:Lde/b$c;

.field public e:Lde/b$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lde/b;->d:Lde/b$c;

    .line 3
    iput-object v0, p0, Lde/b;->e:Lde/b$c;

    return-void
.end method

.method public constructor <init>(C)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lde/b;->d:Lde/b$c;

    .line 6
    iput-object v0, p0, Lde/b;->e:Lde/b$c;

    .line 7
    iput-char p1, p0, Lde/b;->b:C

    return-void
.end method

.method public constructor <init>(Lbe/b;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lde/b;->d:Lde/b$c;

    .line 10
    iput-object v0, p0, Lde/b;->e:Lde/b$c;

    .line 11
    invoke-interface {p1}, Lbe/b;->i()C

    move-result v0

    iput-char v0, p0, Lde/b;->b:C

    .line 12
    invoke-interface {p1}, LSd/b;->iterator()LZd/p;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-interface {p1}, LZd/p;->next()C

    move-result v0

    .line 14
    invoke-virtual {p0, v0}, Lde/b;->e1(C)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Lde/b;Lde/b$c;)V
    .locals 0

    invoke-virtual {p0, p1}, Lde/b;->l(Lde/b$c;)V

    return-void
.end method

.method public static c(Lde/b$c;II)Lde/b$c;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lde/b;->d(Lde/b$c;IIZ)Lde/b$c;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lde/b$c;IIZ)Lde/b$c;
    .locals 1

    :goto_0
    invoke-static {p0}, Lde/b;->f(Ljava/lang/Object;)Z

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

    invoke-virtual {p0}, Lde/b$c;->a()Lde/b$c;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lde/b$c;->b()Lde/b$c;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static j([CII)Lde/b;
    .locals 3

    new-instance v0, Lde/b;

    invoke-direct {v0}, Lde/b;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    add-int v2, p1, v1

    aget-char v2, p0, v2

    invoke-virtual {v0, v2}, Lde/b;->e1(C)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static k(Ljava/lang/Object;)Z
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
.method public B0(I)C
    .locals 3

    invoke-virtual {p0, p1}, Lde/b;->e(I)Lde/b$c;

    move-result-object v0

    invoke-static {v0}, Lde/b;->k(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lde/b$c;->c()C

    move-result p1

    invoke-virtual {p0, v0}, Lde/b;->l(Lde/b$c;)V

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

.method public B3(C)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lde/b;->size()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lde/b;->id(CII)I

    move-result p1

    return p1
.end method

.method public B5([CII)[C
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lde/b;->Fc([CIII)[C

    move-result-object p1

    return-object p1
.end method

.method public C8(IC)C
    .locals 0

    invoke-virtual {p0, p1, p2}, Lde/b;->b5(IC)C

    move-result p1

    return p1
.end method

.method public Fc([CIII)[C
    .locals 3

    if-nez p4, :cond_0

    return-object p1

    :cond_0
    if-ltz p2, :cond_2

    invoke-virtual {p0}, Lde/b;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    invoke-virtual {p0, p2}, Lde/b;->e(I)Lde/b$c;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    add-int v1, p3, v0

    invoke-virtual {p2}, Lde/b$c;->c()C

    move-result v2

    aput-char v2, p1, v1

    invoke-virtual {p2}, Lde/b$c;->a()Lde/b$c;

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

.method public Ge(I[C)V
    .locals 2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lde/b;->j([CII)Lde/b;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lde/b;->h(ILde/b;)V

    return-void
.end method

.method public H7(IIC)V
    .locals 2

    if-ltz p1, :cond_3

    invoke-virtual {p0, p1}, Lde/b;->e(I)Lde/b$c;

    move-result-object v0

    iget v1, p0, Lde/b;->c:I

    if-le p2, v1, :cond_1

    :goto_0
    iget v1, p0, Lde/b;->c:I

    if-ge p1, v1, :cond_0

    invoke-virtual {v0, p3}, Lde/b$c;->f(C)V

    invoke-virtual {v0}, Lde/b$c;->a()Lde/b$c;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, p2, :cond_2

    invoke-virtual {p0, p3}, Lde/b;->e1(C)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge p1, p2, :cond_2

    invoke-virtual {v0, p3}, Lde/b$c;->f(C)V

    invoke-virtual {v0}, Lde/b$c;->a()Lde/b$c;

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

.method public J0(Ljava/util/Random;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lde/b;->c:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lde/b;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lde/b;->e(I)Lde/b$c;

    move-result-object v1

    invoke-virtual {p0, v1}, Lde/b;->l(Lde/b$c;)V

    invoke-virtual {v1}, Lde/b$c;->c()C

    move-result v1

    invoke-virtual {p0, v1}, Lde/b;->e1(C)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public K4(IC)I
    .locals 3

    invoke-virtual {p0}, Lde/b;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lde/b;->e(I)Lde/b$c;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lde/b$c;->a()Lde/b$c;

    move-result-object v2

    invoke-static {v2}, Lde/b;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lde/b$c;->c()C

    move-result v2

    if-ne v2, p2, :cond_1

    move v1, p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0}, Lde/b$c;->a()Lde/b$c;

    move-result-object v0

    goto :goto_0

    :cond_2
    return v1
.end method

.method public L5([CII)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    aget-char v1, p1, v1

    invoke-virtual {p0, v1}, Lde/b;->e1(C)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Mc(Lhe/q;)Lbe/b;
    .locals 3

    new-instance v0, Lde/b;

    invoke-direct {v0}, Lde/b;-><init>()V

    iget-object v1, p0, Lde/b;->d:Lde/b$c;

    :goto_0
    invoke-static {v1}, Lde/b;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lde/b$c;->c()C

    move-result v2

    invoke-interface {p1, v2}, Lhe/q;->a(C)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lde/b$c;->c()C

    move-result v2

    invoke-interface {v0, v2}, Lbe/b;->e1(C)Z

    :cond_0
    invoke-virtual {v1}, Lde/b$c;->a()Lde/b$c;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public Q0([C)[C
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lde/b;->c:I

    invoke-virtual {p0, p1, v0, v1}, Lde/b;->B5([CII)[C

    move-result-object p1

    return-object p1
.end method

.method public S2(C)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lde/b;->c:I

    invoke-virtual {p0, v0, v1, p1}, Lde/b;->H7(IIC)V

    return-void
.end method

.method public S8(Lhe/q;)Z
    .locals 2

    iget-object v0, p0, Lde/b;->e:Lde/b$c;

    :goto_0
    invoke-static {v0}, Lde/b;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lde/b$c;->c()C

    move-result v1

    invoke-interface {p1, v1}, Lhe/q;->a(C)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0}, Lde/b$c;->b()Lde/b$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public X1([C)Z
    .locals 3

    invoke-static {p1}, Ljava/util/Arrays;->sort([C)V

    invoke-virtual {p0}, Lde/b;->iterator()LZd/p;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, LZd/p;->next()C

    move-result v2

    invoke-static {p1, v2}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v2

    if-gez v2, :cond_0

    invoke-interface {v0}, LZd/V;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public Xc(I[C)V
    .locals 2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lde/b;->gc(I[CII)V

    return-void
.end method

.method public Z3(C)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lde/b;->K4(IC)I

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Character;",
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

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {p0, v1}, Lde/b;->e1(C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public b(C)Z
    .locals 3

    iget-object v0, p0, Lde/b;->d:Lde/b$c;

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0}, Lde/b;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lde/b$c;->c()C

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, v0}, Lde/b;->l(Lde/b$c;)V

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0}, Lde/b$c;->a()Lde/b$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    return v1
.end method

.method public b1(C)Z
    .locals 3

    invoke-virtual {p0}, Lde/b;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lde/b;->d:Lde/b$c;

    :goto_0
    invoke-static {v0}, Lde/b;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lde/b$c;->c()C

    move-result v2

    if-ne v2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {v0}, Lde/b$c;->a()Lde/b$c;

    move-result-object v0

    goto :goto_0

    :cond_2
    return v1
.end method

.method public b5(IC)C
    .locals 2

    iget v0, p0, Lde/b;->c:I

    if-gt p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lde/b;->e(I)Lde/b$c;

    move-result-object v0

    invoke-static {v0}, Lde/b;->k(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lde/b$c;->c()C

    move-result p1

    invoke-virtual {v0, p2}, Lde/b$c;->f(C)V

    return p1

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

    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " exceeds size "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lde/b;->c:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lde/b;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lde/b;->d:Lde/b$c;

    iput-object v0, p0, Lde/b;->e:Lde/b$c;

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

    invoke-virtual {p0}, Lde/b;->isEmpty()Z

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

    instance-of v2, v0, Ljava/lang/Character;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v0}, Lde/b;->b1(C)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public e(I)Lde/b$c;
    .locals 4

    invoke-virtual {p0}, Lde/b;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lde/b;->size()I

    move-result v0

    const/4 v1, 0x1

    ushr-int/2addr v0, v1

    const/4 v2, 0x0

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lde/b;->d:Lde/b$c;

    invoke-static {v0, v2, p1, v1}, Lde/b;->d(Lde/b$c;IIZ)Lde/b$c;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lde/b;->e:Lde/b$c;

    invoke-virtual {p0}, Lde/b;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v0, v3, p1, v2}, Lde/b;->d(Lde/b$c;IIZ)Lde/b$c;

    move-result-object p1

    return-object p1
.end method

.method public e1(C)Z
    .locals 1

    new-instance v0, Lde/b$c;

    invoke-direct {v0, p1}, Lde/b$c;-><init>(C)V

    iget-object p1, p0, Lde/b;->d:Lde/b$c;

    invoke-static {p1}, Lde/b;->k(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object v0, p0, Lde/b;->d:Lde/b$c;

    iput-object v0, p0, Lde/b;->e:Lde/b$c;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lde/b;->e:Lde/b$c;

    invoke-virtual {v0, p1}, Lde/b$c;->e(Lde/b$c;)V

    iget-object p1, p0, Lde/b;->e:Lde/b$c;

    invoke-virtual {p1, v0}, Lde/b$c;->d(Lde/b$c;)V

    iput-object v0, p0, Lde/b;->e:Lde/b$c;

    :goto_0
    iget p1, p0, Lde/b;->c:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lde/b;->c:I

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
    check-cast p1, Lde/b;

    iget-char v2, p0, Lde/b;->b:C

    iget-char v3, p1, Lde/b;->b:C

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lde/b;->c:I

    iget v3, p1, Lde/b;->c:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lde/b;->iterator()LZd/p;

    move-result-object v2

    invoke-virtual {p1}, Lde/b;->iterator()LZd/p;

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
    invoke-interface {v2}, LZd/p;->next()C

    move-result v3

    invoke-interface {p1}, LZd/p;->next()C

    move-result v4

    if-eq v3, v4, :cond_4

    return v1

    :cond_6
    return v0

    :cond_7
    :goto_0
    return v1
.end method

.method public g(LUd/b;)V
    .locals 2

    iget-object v0, p0, Lde/b;->d:Lde/b$c;

    :goto_0
    invoke-static {v0}, Lde/b;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lde/b$c;->c()C

    move-result v1

    invoke-interface {p1, v1}, LUd/b;->a(C)C

    move-result v1

    invoke-virtual {v0, v1}, Lde/b$c;->f(C)V

    invoke-virtual {v0}, Lde/b$c;->a()Lde/b$c;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g1(Lhe/q;)Z
    .locals 2

    iget-object v0, p0, Lde/b;->d:Lde/b$c;

    :goto_0
    invoke-static {v0}, Lde/b;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lde/b$c;->c()C

    move-result v1

    invoke-interface {p1, v1}, Lhe/q;->a(C)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0}, Lde/b$c;->a()Lde/b$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public gc(I[CII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p3, v0

    aget-char v1, p2, v1

    add-int v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lde/b;->b5(IC)C

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(I)C
    .locals 3

    iget v0, p0, Lde/b;->c:I

    if-gt p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lde/b;->e(I)Lde/b$c;

    move-result-object p1

    invoke-static {p1}, Lde/b;->k(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char p1, p0, Lde/b;->b:C

    return p1

    :cond_0
    invoke-virtual {p1}, Lde/b$c;->c()C

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

    iget p1, p0, Lde/b;->c:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h(ILde/b;)V
    .locals 3

    invoke-virtual {p0, p1}, Lde/b;->e(I)Lde/b$c;

    move-result-object p1

    iget v0, p0, Lde/b;->c:I

    iget v1, p2, Lde/b;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lde/b;->c:I

    iget-object v0, p0, Lde/b;->d:Lde/b$c;

    if-ne p1, v0, :cond_0

    iget-object p1, p2, Lde/b;->e:Lde/b$c;

    invoke-virtual {p1, v0}, Lde/b$c;->d(Lde/b$c;)V

    iget-object p1, p0, Lde/b;->d:Lde/b$c;

    iget-object v0, p2, Lde/b;->e:Lde/b$c;

    invoke-virtual {p1, v0}, Lde/b$c;->e(Lde/b$c;)V

    iget-object p1, p2, Lde/b;->d:Lde/b$c;

    iput-object p1, p0, Lde/b;->d:Lde/b$c;

    return-void

    :cond_0
    invoke-static {p1}, Lde/b;->k(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget p1, p0, Lde/b;->c:I

    if-nez p1, :cond_1

    iget-object p1, p2, Lde/b;->d:Lde/b$c;

    iput-object p1, p0, Lde/b;->d:Lde/b$c;

    iget-object p1, p2, Lde/b;->e:Lde/b$c;

    iput-object p1, p0, Lde/b;->e:Lde/b$c;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lde/b;->e:Lde/b$c;

    iget-object v0, p2, Lde/b;->d:Lde/b$c;

    invoke-virtual {p1, v0}, Lde/b$c;->d(Lde/b$c;)V

    iget-object p1, p2, Lde/b;->d:Lde/b$c;

    iget-object v0, p0, Lde/b;->e:Lde/b$c;

    invoke-virtual {p1, v0}, Lde/b$c;->e(Lde/b$c;)V

    iget-object p1, p2, Lde/b;->e:Lde/b$c;

    iput-object p1, p0, Lde/b;->e:Lde/b$c;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lde/b$c;->b()Lde/b$c;

    move-result-object v0

    invoke-virtual {p1}, Lde/b$c;->b()Lde/b$c;

    move-result-object v1

    iget-object v2, p2, Lde/b;->d:Lde/b$c;

    invoke-virtual {v1, v2}, Lde/b$c;->d(Lde/b$c;)V

    iget-object v1, p2, Lde/b;->e:Lde/b$c;

    invoke-virtual {v1, p1}, Lde/b$c;->d(Lde/b$c;)V

    iget-object v1, p2, Lde/b;->e:Lde/b$c;

    invoke-virtual {p1, v1}, Lde/b$c;->e(Lde/b$c;)V

    iget-object p1, p2, Lde/b;->d:Lde/b$c;

    invoke-virtual {p1, v0}, Lde/b$c;->e(Lde/b$c;)V

    :goto_0
    return-void
.end method

.method public h6(C)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lde/b;->v6(IC)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-char v0, p0, Lde/b;->b:C

    invoke-static {v0}, LVd/b;->d(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lde/b;->c:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lde/b;->iterator()LZd/p;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    invoke-interface {v1}, LZd/p;->next()C

    move-result v2

    invoke-static {v2}, LVd/b;->d(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public i()C
    .locals 1

    iget-char v0, p0, Lde/b;->b:C

    return v0
.end method

.method public id(CII)I
    .locals 4

    if-ltz p2, :cond_5

    iget v0, p0, Lde/b;->c:I

    if-gt p3, v0, :cond_4

    if-ge p3, p2, :cond_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    neg-int p1, p2

    return p1

    :cond_1
    invoke-virtual {p0, p2}, Lde/b;->e(I)Lde/b$c;

    move-result-object v0

    :goto_0
    if-ge p2, p3, :cond_0

    add-int v1, p2, p3

    ushr-int/lit8 v1, v1, 0x1

    invoke-static {v0, p2, v1}, Lde/b;->c(Lde/b$c;II)Lde/b$c;

    move-result-object v2

    invoke-virtual {v2}, Lde/b$c;->c()C

    move-result v3

    if-ne v3, p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {v2}, Lde/b$c;->c()C

    move-result v3

    if-ge v3, p1, :cond_3

    add-int/lit8 p2, v1, 0x1

    iget-object v0, v2, Lde/b$c;->c:Lde/b$c;

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

    iget p3, p0, Lde/b;->c:I

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

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lde/b;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()LZd/p;
    .locals 1

    new-instance v0, Lde/b$a;

    invoke-direct {v0, p0}, Lde/b$a;-><init>(Lde/b;)V

    return-object v0
.end method

.method public final l(Lde/b$c;)V
    .locals 3

    invoke-static {p1}, Lde/b;->k(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lde/b;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lde/b;->c:I

    invoke-virtual {p1}, Lde/b$c;->b()Lde/b$c;

    move-result-object v0

    invoke-virtual {p1}, Lde/b$c;->a()Lde/b$c;

    move-result-object v1

    invoke-static {v0}, Lde/b;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lde/b$c;->d(Lde/b$c;)V

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lde/b;->d:Lde/b$c;

    :goto_0
    invoke-static {v1}, Lde/b;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Lde/b$c;->e(Lde/b$c;)V

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lde/b;->e:Lde/b$c;

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lde/b$c;->d(Lde/b$c;)V

    invoke-virtual {p1, v0}, Lde/b$c;->e(Lde/b$c;)V

    return-void
.end method

.method public max()C
    .locals 3

    invoke-virtual {p0}, Lde/b;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lde/b;->d:Lde/b$c;

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0}, Lde/b;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lde/b$c;->c()C

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Lde/b$c;->c()C

    move-result v1

    :cond_0
    invoke-virtual {v0}, Lde/b$c;->a()Lde/b$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public min()C
    .locals 3

    invoke-virtual {p0}, Lde/b;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lde/b;->d:Lde/b$c;

    const v1, 0xffff

    :goto_0
    invoke-static {v0}, Lde/b;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lde/b$c;->c()C

    move-result v2

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Lde/b$c;->c()C

    move-result v1

    :cond_0
    invoke-virtual {v0}, Lde/b$c;->a()Lde/b$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public n2([C)Z
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-char v3, p1, v1

    invoke-virtual {p0, v3}, Lde/b;->e1(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public o()C
    .locals 3

    iget-object v0, p0, Lde/b;->d:Lde/b$c;

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0}, Lde/b;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lde/b$c;->c()C

    move-result v2

    add-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {v0}, Lde/b$c;->a()Lde/b$c;

    move-result-object v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method public o3([C)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-char v2, p1, v1

    invoke-virtual {p0, v2}, Lde/b;->e1(C)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o8(IC)V
    .locals 1

    new-instance v0, Lde/b;

    invoke-direct {v0}, Lde/b;-><init>()V

    invoke-virtual {v0, p2}, Lde/b;->e1(C)Z

    invoke-virtual {p0, p1, v0}, Lde/b;->h(ILde/b;)V

    return-void
.end method

.method public p2(LSd/b;)Z
    .locals 2

    invoke-virtual {p0}, Lde/b;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, LSd/b;->iterator()LZd/p;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, LZd/p;->next()C

    move-result v0

    invoke-virtual {p0, v0}, Lde/b;->b1(C)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public p4(Lhe/q;)Lbe/b;
    .locals 3

    new-instance v0, Lde/b;

    invoke-direct {v0}, Lde/b;-><init>()V

    iget-object v1, p0, Lde/b;->d:Lde/b$c;

    :goto_0
    invoke-static {v1}, Lde/b;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lde/b$c;->c()C

    move-result v2

    invoke-interface {p1, v2}, Lhe/q;->a(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lde/b$c;->c()C

    move-result v2

    invoke-interface {v0, v2}, Lbe/b;->e1(C)Z

    :cond_0
    invoke-virtual {v1}, Lde/b$c;->a()Lde/b$c;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v0
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

    invoke-interface {p1}, Ljava/io/DataInput;->readChar()C

    move-result v0

    iput-char v0, p0, Lde/b;->b:C

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1}, Ljava/io/DataInput;->readChar()C

    move-result v2

    invoke-virtual {p0, v2}, Lde/b;->e1(C)Z

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

    invoke-virtual {p0}, Lde/b;->iterator()LZd/p;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, LZd/p;->next()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

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

    invoke-virtual {p0}, Lde/b;->iterator()LZd/p;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, LZd/p;->next()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

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

.method public size()I
    .locals 1

    iget v0, p0, Lde/b;->c:I

    return v0
.end method

.method public sort()V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lde/b;->c:I

    invoke-virtual {p0, v0, v1}, Lde/b;->w0(II)V

    return-void
.end method

.method public subList(II)Lbe/b;
    .locals 3

    const-string v0, "begin index "

    if-lt p2, p1, :cond_4

    iget v1, p0, Lde/b;->c:I

    if-lt v1, p1, :cond_3

    if-ltz p1, :cond_2

    if-gt p2, v1, :cond_1

    new-instance v0, Lde/b;

    invoke-direct {v0}, Lde/b;-><init>()V

    invoke-virtual {p0, p1}, Lde/b;->e(I)Lde/b$c;

    move-result-object v1

    :goto_0
    if-ge p1, p2, :cond_0

    invoke-virtual {v1}, Lde/b$c;->c()C

    move-result v2

    invoke-virtual {v0, v2}, Lde/b;->e1(C)Z

    invoke-virtual {v1}, Lde/b$c;->a()Lde/b$c;

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

    iget v0, p0, Lde/b;->c:I

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

    iget p1, p0, Lde/b;->c:I

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

    invoke-virtual {p0, p1}, Lde/b;->B0(I)C

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public t2(LSd/b;)Z
    .locals 3

    invoke-virtual {p0}, Lde/b;->iterator()LZd/p;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, LZd/p;->next()C

    move-result v2

    invoke-interface {p1, v2}, LSd/b;->b1(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, LZd/V;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public toArray()[C
    .locals 3

    iget v0, p0, Lde/b;->c:I

    new-array v1, v0, [C

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lde/b;->B5([CII)[C

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/b;->iterator()LZd/p;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, LZd/p;->next()C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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

    iget-object v0, p0, Lde/b;->d:Lde/b$c;

    iget-object v1, p0, Lde/b;->e:Lde/b$c;

    move-object v2, v0

    :goto_0
    invoke-static {v2}, Lde/b;->f(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lde/b$c;->a()Lde/b$c;

    move-result-object v3

    invoke-virtual {v2}, Lde/b$c;->b()Lde/b$c;

    move-result-object v4

    invoke-virtual {v2}, Lde/b$c;->a()Lde/b$c;

    move-result-object v5

    invoke-virtual {v2, v4}, Lde/b$c;->d(Lde/b$c;)V

    invoke-virtual {v2, v3}, Lde/b$c;->e(Lde/b$c;)V

    move-object v2, v5

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lde/b;->d:Lde/b$c;

    iput-object v0, p0, Lde/b;->e:Lde/b$c;

    return-void
.end method

.method public u1([C)Z
    .locals 4

    invoke-virtual {p0}, Lde/b;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-char v3, p1, v2

    invoke-virtual {p0, v3}, Lde/b;->b1(C)Z

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

.method public u2(LSd/b;)Z
    .locals 3

    invoke-virtual {p0}, Lde/b;->iterator()LZd/p;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, LZd/p;->next()C

    move-result v2

    invoke-interface {p1, v2}, LSd/b;->b1(C)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, LZd/V;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public v1([C)Z
    .locals 3

    invoke-static {p1}, Ljava/util/Arrays;->sort([C)V

    invoke-virtual {p0}, Lde/b;->iterator()LZd/p;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, LZd/p;->next()C

    move-result v2

    invoke-static {p1, v2}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-interface {v0}, LZd/V;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public v6(IC)I
    .locals 2

    invoke-virtual {p0, p1}, Lde/b;->e(I)Lde/b$c;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lde/b$c;->a()Lde/b$c;

    move-result-object v1

    invoke-static {v1}, Lde/b;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lde/b$c;->c()C

    move-result v1

    if-ne v1, p2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0}, Lde/b$c;->a()Lde/b$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public w0(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lde/b;->subList(II)Lbe/b;

    move-result-object p2

    invoke-interface {p2}, Lbe/b;->toArray()[C

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->sort([C)V

    invoke-virtual {p0, p1, p2}, Lde/b;->Xc(I[C)V

    return-void
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

    iget-char v0, p0, Lde/b;->b:C

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeChar(I)V

    iget v0, p0, Lde/b;->c:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-virtual {p0}, Lde/b;->iterator()LZd/p;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LZd/p;->next()C

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeChar(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public y0(II)V
    .locals 5

    if-gt p1, p2, :cond_2

    invoke-virtual {p0, p1}, Lde/b;->e(I)Lde/b$c;

    move-result-object p1

    invoke-virtual {p0, p2}, Lde/b;->e(I)Lde/b$c;

    move-result-object p2

    invoke-virtual {p1}, Lde/b$c;->b()Lde/b$c;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v1, p1

    :goto_0
    if-eq v1, p2, :cond_0

    invoke-virtual {v1}, Lde/b$c;->a()Lde/b$c;

    move-result-object v2

    invoke-virtual {v1}, Lde/b$c;->b()Lde/b$c;

    move-result-object v3

    invoke-virtual {v1}, Lde/b$c;->a()Lde/b$c;

    move-result-object v4

    invoke-virtual {v1, v3}, Lde/b$c;->d(Lde/b$c;)V

    invoke-virtual {v1, v2}, Lde/b$c;->e(Lde/b$c;)V

    move-object v2, v1

    move-object v1, v4

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lde/b;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Lde/b$c;->d(Lde/b$c;)V

    invoke-virtual {p2, v0}, Lde/b$c;->e(Lde/b$c;)V

    :cond_1
    invoke-virtual {p1, p2}, Lde/b$c;->d(Lde/b$c;)V

    invoke-virtual {p2, p1}, Lde/b$c;->e(Lde/b$c;)V

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

.method public yd(I[CII)V
    .locals 0

    invoke-static {p2, p3, p4}, Lde/b;->j([CII)Lde/b;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lde/b;->h(ILde/b;)V

    return-void
.end method

.method public z0(II)[C
    .locals 2

    new-array v0, p2, [C

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lde/b;->Fc([CIII)[C

    move-result-object p1

    return-object p1
.end method

.method public z1(LSd/b;)Z
    .locals 2

    invoke-interface {p1}, LSd/b;->iterator()LZd/p;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, LZd/p;->next()C

    move-result v1

    invoke-virtual {p0, v1}, Lde/b;->e1(C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

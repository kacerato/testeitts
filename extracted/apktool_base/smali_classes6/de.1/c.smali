.class public Lde/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbe/c;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/c$b;,
        Lde/c$c;
    }
.end annotation


# instance fields
.field public b:D

.field public c:I

.field public d:Lde/c$c;

.field public e:Lde/c$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lde/c;->d:Lde/c$c;

    .line 3
    iput-object v0, p0, Lde/c;->e:Lde/c$c;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lde/c;->d:Lde/c$c;

    .line 6
    iput-object v0, p0, Lde/c;->e:Lde/c$c;

    .line 7
    iput-wide p1, p0, Lde/c;->b:D

    return-void
.end method

.method public constructor <init>(Lbe/c;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lde/c;->d:Lde/c$c;

    .line 10
    iput-object v0, p0, Lde/c;->e:Lde/c$c;

    .line 11
    invoke-interface {p1}, Lbe/c;->i()D

    move-result-wide v0

    iput-wide v0, p0, Lde/c;->b:D

    .line 12
    invoke-interface {p1}, LSd/e;->iterator()LZd/y;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-interface {p1}, LZd/y;->next()D

    move-result-wide v0

    .line 14
    invoke-virtual {p0, v0, v1}, Lde/c;->add(D)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic b(Lde/c;Lde/c$c;)V
    .locals 0

    invoke-virtual {p0, p1}, Lde/c;->k(Lde/c$c;)V

    return-void
.end method

.method public static c(Lde/c$c;II)Lde/c$c;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lde/c;->d(Lde/c$c;IIZ)Lde/c$c;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lde/c$c;IIZ)Lde/c$c;
    .locals 1

    :goto_0
    invoke-static {p0}, Lde/c;->f(Ljava/lang/Object;)Z

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

    invoke-virtual {p0}, Lde/c$c;->a()Lde/c$c;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lde/c$c;->b()Lde/c$c;

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

.method public static h([DII)Lde/c;
    .locals 4

    new-instance v0, Lde/c;

    invoke-direct {v0}, Lde/c;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    add-int v2, p1, v1

    aget-wide v2, p0, v2

    invoke-virtual {v0, v2, v3}, Lde/c;->add(D)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static j(Ljava/lang/Object;)Z
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
.method public B0(I)D
    .locals 3

    invoke-virtual {p0, p1}, Lde/c;->e(I)Lde/c$c;

    move-result-object v0

    invoke-static {v0}, Lde/c;->j(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lde/c$c;->c()D

    move-result-wide v1

    invoke-virtual {p0, v0}, Lde/c;->k(Lde/c$c;)V

    return-wide v1

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

.method public Bc(I[DII)V
    .locals 0

    invoke-static {p2, p3, p4}, Lde/c;->h([DII)Lde/c;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lde/c;->g(ILde/c;)V

    return-void
.end method

.method public C1(LSd/e;)Z
    .locals 4

    invoke-virtual {p0}, Lde/c;->iterator()LZd/y;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, LZd/y;->next()D

    move-result-wide v2

    invoke-interface {p1, v2, v3}, LSd/e;->Y0(D)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, LZd/V;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public F7(IID)V
    .locals 2

    if-ltz p1, :cond_3

    invoke-virtual {p0, p1}, Lde/c;->e(I)Lde/c$c;

    move-result-object v0

    iget v1, p0, Lde/c;->c:I

    if-le p2, v1, :cond_1

    :goto_0
    iget v1, p0, Lde/c;->c:I

    if-ge p1, v1, :cond_0

    invoke-virtual {v0, p3, p4}, Lde/c$c;->f(D)V

    invoke-virtual {v0}, Lde/c$c;->a()Lde/c$c;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, p2, :cond_2

    invoke-virtual {p0, p3, p4}, Lde/c;->add(D)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge p1, p2, :cond_2

    invoke-virtual {v0, p3, p4}, Lde/c$c;->f(D)V

    invoke-virtual {v0}, Lde/c$c;->a()Lde/c$c;

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

.method public G1(LSd/e;)Z
    .locals 4

    invoke-virtual {p0}, Lde/c;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, LSd/e;->iterator()LZd/y;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, LZd/y;->next()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lde/c;->Y0(D)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public G8(ID)D
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lde/c;->g5(ID)D

    move-result-wide p1

    return-wide p1
.end method

.method public Ie(I[D)V
    .locals 2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lde/c;->h([DII)Lde/c;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lde/c;->g(ILde/c;)V

    return-void
.end method

.method public J0(Ljava/util/Random;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lde/c;->c:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lde/c;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lde/c;->e(I)Lde/c$c;

    move-result-object v1

    invoke-virtual {p0, v1}, Lde/c;->k(Lde/c$c;)V

    invoke-virtual {v1}, Lde/c$c;->c()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lde/c;->add(D)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public J1(LSd/e;)Z
    .locals 4

    invoke-virtual {p0}, Lde/c;->iterator()LZd/y;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, LZd/y;->next()D

    move-result-wide v2

    invoke-interface {p1, v2, v3}, LSd/e;->Y0(D)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, LZd/V;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public P2(D)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lde/c;->c:I

    invoke-virtual {p0, v0, v1, p1, p2}, Lde/c;->F7(IID)V

    return-void
.end method

.method public Y0(D)Z
    .locals 4

    invoke-virtual {p0}, Lde/c;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lde/c;->d:Lde/c$c;

    :goto_0
    invoke-static {v0}, Lde/c;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lde/c$c;->c()D

    move-result-wide v2

    cmpl-double v2, v2, p1

    if-nez v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {v0}, Lde/c$c;->a()Lde/c$c;

    move-result-object v0

    goto :goto_0

    :cond_2
    return v1
.end method

.method public Y1([D)Z
    .locals 4

    invoke-static {p1}, Ljava/util/Arrays;->sort([D)V

    invoke-virtual {p0}, Lde/c;->iterator()LZd/y;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, LZd/y;->next()D

    move-result-wide v2

    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v2

    if-gez v2, :cond_0

    invoke-interface {v0}, LZd/V;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public a(D)Z
    .locals 4

    iget-object v0, p0, Lde/c;->d:Lde/c$c;

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0}, Lde/c;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lde/c$c;->c()D

    move-result-wide v2

    cmpl-double v2, v2, p1

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lde/c;->k(Lde/c$c;)V

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0}, Lde/c$c;->a()Lde/c$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    return v1
.end method

.method public a6(Lhe/z;)Lbe/c;
    .locals 4

    new-instance v0, Lde/c;

    invoke-direct {v0}, Lde/c;-><init>()V

    iget-object v1, p0, Lde/c;->d:Lde/c$c;

    :goto_0
    invoke-static {v1}, Lde/c;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lde/c$c;->c()D

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Lhe/z;->a(D)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lde/c$c;->c()D

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lbe/c;->add(D)Z

    :cond_0
    invoke-virtual {v1}, Lde/c$c;->a()Lde/c$c;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public ad(I[D)V
    .locals 2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lde/c;->q7(I[DII)V

    return-void
.end method

.method public add(D)Z
    .locals 1

    new-instance v0, Lde/c$c;

    invoke-direct {v0, p1, p2}, Lde/c$c;-><init>(D)V

    iget-object p1, p0, Lde/c;->d:Lde/c$c;

    invoke-static {p1}, Lde/c;->j(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object v0, p0, Lde/c;->d:Lde/c$c;

    iput-object v0, p0, Lde/c;->e:Lde/c$c;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lde/c;->e:Lde/c$c;

    invoke-virtual {v0, p1}, Lde/c$c;->e(Lde/c$c;)V

    iget-object p1, p0, Lde/c;->e:Lde/c$c;

    invoke-virtual {p1, v0}, Lde/c$c;->d(Lde/c$c;)V

    iput-object v0, p0, Lde/c;->e:Lde/c$c;

    :goto_0
    iget p1, p0, Lde/c;->c:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lde/c;->c:I

    return p2
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Double;",
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

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lde/c;->add(D)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lde/c;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lde/c;->d:Lde/c$c;

    iput-object v0, p0, Lde/c;->e:Lde/c$c;

    return-void
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lde/c;->isEmpty()Z

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

    instance-of v2, v0, Ljava/lang/Double;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lde/c;->Y0(D)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public e(I)Lde/c$c;
    .locals 4

    invoke-virtual {p0}, Lde/c;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lde/c;->size()I

    move-result v0

    const/4 v1, 0x1

    ushr-int/2addr v0, v1

    const/4 v2, 0x0

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lde/c;->d:Lde/c$c;

    invoke-static {v0, v2, p1, v1}, Lde/c;->d(Lde/c$c;IIZ)Lde/c$c;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lde/c;->e:Lde/c$c;

    invoke-virtual {p0}, Lde/c;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v0, v3, p1, v2}, Lde/c;->d(Lde/c$c;IIZ)Lde/c$c;

    move-result-object p1

    return-object p1
.end method

.method public e4(D)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lde/c;->e6(ID)I

    move-result p1

    return p1
.end method

.method public e6(ID)I
    .locals 4

    invoke-virtual {p0}, Lde/c;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lde/c;->e(I)Lde/c$c;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lde/c$c;->a()Lde/c$c;

    move-result-object v2

    invoke-static {v2}, Lde/c;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lde/c$c;->c()D

    move-result-wide v2

    cmpl-double v2, v2, p2

    if-nez v2, :cond_1

    move v1, p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0}, Lde/c$c;->a()Lde/c$c;

    move-result-object v0

    goto :goto_0

    :cond_2
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

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
    check-cast p1, Lde/c;

    iget-wide v2, p0, Lde/c;->b:D

    iget-wide v4, p1, Lde/c;->b:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lde/c;->c:I

    iget v3, p1, Lde/c;->c:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lde/c;->iterator()LZd/y;

    move-result-object v2

    invoke-virtual {p1}, Lde/c;->iterator()LZd/y;

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
    invoke-interface {v2}, LZd/y;->next()D

    move-result-wide v3

    invoke-interface {p1}, LZd/y;->next()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_4

    return v1

    :cond_6
    return v0

    :cond_7
    :goto_0
    return v1
.end method

.method public g(ILde/c;)V
    .locals 3

    invoke-virtual {p0, p1}, Lde/c;->e(I)Lde/c$c;

    move-result-object p1

    iget v0, p0, Lde/c;->c:I

    iget v1, p2, Lde/c;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lde/c;->c:I

    iget-object v0, p0, Lde/c;->d:Lde/c$c;

    if-ne p1, v0, :cond_0

    iget-object p1, p2, Lde/c;->e:Lde/c$c;

    invoke-virtual {p1, v0}, Lde/c$c;->d(Lde/c$c;)V

    iget-object p1, p0, Lde/c;->d:Lde/c$c;

    iget-object v0, p2, Lde/c;->e:Lde/c$c;

    invoke-virtual {p1, v0}, Lde/c$c;->e(Lde/c$c;)V

    iget-object p1, p2, Lde/c;->d:Lde/c$c;

    iput-object p1, p0, Lde/c;->d:Lde/c$c;

    return-void

    :cond_0
    invoke-static {p1}, Lde/c;->j(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget p1, p0, Lde/c;->c:I

    if-nez p1, :cond_1

    iget-object p1, p2, Lde/c;->d:Lde/c$c;

    iput-object p1, p0, Lde/c;->d:Lde/c$c;

    iget-object p1, p2, Lde/c;->e:Lde/c$c;

    iput-object p1, p0, Lde/c;->e:Lde/c$c;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lde/c;->e:Lde/c$c;

    iget-object v0, p2, Lde/c;->d:Lde/c$c;

    invoke-virtual {p1, v0}, Lde/c$c;->d(Lde/c$c;)V

    iget-object p1, p2, Lde/c;->d:Lde/c$c;

    iget-object v0, p0, Lde/c;->e:Lde/c$c;

    invoke-virtual {p1, v0}, Lde/c$c;->e(Lde/c$c;)V

    iget-object p1, p2, Lde/c;->e:Lde/c$c;

    iput-object p1, p0, Lde/c;->e:Lde/c$c;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lde/c$c;->b()Lde/c$c;

    move-result-object v0

    invoke-virtual {p1}, Lde/c$c;->b()Lde/c$c;

    move-result-object v1

    iget-object v2, p2, Lde/c;->d:Lde/c$c;

    invoke-virtual {v1, v2}, Lde/c$c;->d(Lde/c$c;)V

    iget-object v1, p2, Lde/c;->e:Lde/c$c;

    invoke-virtual {v1, p1}, Lde/c$c;->d(Lde/c$c;)V

    iget-object v1, p2, Lde/c;->e:Lde/c$c;

    invoke-virtual {p1, v1}, Lde/c$c;->e(Lde/c$c;)V

    iget-object p1, p2, Lde/c;->d:Lde/c$c;

    invoke-virtual {p1, v0}, Lde/c$c;->e(Lde/c$c;)V

    :goto_0
    return-void
.end method

.method public g5(ID)D
    .locals 3

    iget v0, p0, Lde/c;->c:I

    if-gt p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lde/c;->e(I)Lde/c$c;

    move-result-object v0

    invoke-static {v0}, Lde/c;->j(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lde/c$c;->c()D

    move-result-wide v1

    invoke-virtual {v0, p2, p3}, Lde/c$c;->f(D)V

    return-wide v1

    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "at offset "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "index "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " exceeds size "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lde/c;->c:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public g6(D)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lde/c;->x6(ID)I

    move-result p1

    return p1
.end method

.method public get(I)D
    .locals 3

    iget v0, p0, Lde/c;->c:I

    if-gt p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lde/c;->e(I)Lde/c$c;

    move-result-object p1

    invoke-static {p1}, Lde/c;->j(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lde/c;->b:D

    return-wide v0

    :cond_0
    invoke-virtual {p1}, Lde/c$c;->c()D

    move-result-wide v0

    return-wide v0

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " exceeds size "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lde/c;->c:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ha([DIII)[D
    .locals 4

    if-nez p4, :cond_0

    return-object p1

    :cond_0
    if-ltz p2, :cond_2

    invoke-virtual {p0}, Lde/c;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    invoke-virtual {p0, p2}, Lde/c;->e(I)Lde/c$c;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    add-int v1, p3, v0

    invoke-virtual {p2}, Lde/c$c;->c()D

    move-result-wide v2

    aput-wide v2, p1, v1

    invoke-virtual {p2}, Lde/c$c;->a()Lde/c$c;

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

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lde/c;->b:D

    invoke-static {v0, v1}, LVd/b;->b(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lde/c;->c:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lde/c;->iterator()LZd/y;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    invoke-interface {v1}, LZd/y;->next()D

    move-result-wide v2

    invoke-static {v2, v3}, LVd/b;->b(D)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public i()D
    .locals 2

    iget-wide v0, p0, Lde/c;->b:D

    return-wide v0
.end method

.method public i1(Lhe/z;)Z
    .locals 3

    iget-object v0, p0, Lde/c;->d:Lde/c$c;

    :goto_0
    invoke-static {v0}, Lde/c;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lde/c$c;->c()D

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Lhe/z;->a(D)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0}, Lde/c$c;->a()Lde/c$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public i3([DII)[D
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lde/c;->ha([DIII)[D

    move-result-object p1

    return-object p1
.end method

.method public i7(Lhe/z;)Z
    .locals 3

    iget-object v0, p0, Lde/c;->e:Lde/c$c;

    :goto_0
    invoke-static {v0}, Lde/c;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lde/c$c;->c()D

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Lhe/z;->a(D)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0}, Lde/c$c;->b()Lde/c$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public i8(ID)V
    .locals 1

    new-instance v0, Lde/c;

    invoke-direct {v0}, Lde/c;-><init>()V

    invoke-virtual {v0, p2, p3}, Lde/c;->add(D)Z

    invoke-virtual {p0, p1, v0}, Lde/c;->g(ILde/c;)V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lde/c;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()LZd/y;
    .locals 1

    new-instance v0, Lde/c$a;

    invoke-direct {v0, p0}, Lde/c$a;-><init>(Lde/c;)V

    return-object v0
.end method

.method public final k(Lde/c$c;)V
    .locals 3

    invoke-static {p1}, Lde/c;->j(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lde/c;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lde/c;->c:I

    invoke-virtual {p1}, Lde/c$c;->b()Lde/c$c;

    move-result-object v0

    invoke-virtual {p1}, Lde/c$c;->a()Lde/c$c;

    move-result-object v1

    invoke-static {v0}, Lde/c;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lde/c$c;->d(Lde/c$c;)V

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lde/c;->d:Lde/c$c;

    :goto_0
    invoke-static {v1}, Lde/c;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Lde/c$c;->e(Lde/c$c;)V

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lde/c;->e:Lde/c$c;

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lde/c$c;->d(Lde/c$c;)V

    invoke-virtual {p1, v0}, Lde/c$c;->e(Lde/c$c;)V

    return-void
.end method

.method public m2([D)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-wide v3, p1, v1

    invoke-virtual {p0, v3, v4}, Lde/c;->add(D)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public max()D
    .locals 5

    invoke-virtual {p0}, Lde/c;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lde/c;->d:Lde/c$c;

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_0
    invoke-static {v0}, Lde/c;->f(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lde/c$c;->c()D

    move-result-wide v3

    cmpg-double v3, v1, v3

    if-gez v3, :cond_0

    invoke-virtual {v0}, Lde/c$c;->c()D

    move-result-wide v1

    :cond_0
    invoke-virtual {v0}, Lde/c$c;->a()Lde/c$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-wide v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public min()D
    .locals 5

    invoke-virtual {p0}, Lde/c;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lde/c;->d:Lde/c$c;

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_0
    invoke-static {v0}, Lde/c;->f(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lde/c$c;->c()D

    move-result-wide v3

    cmpl-double v3, v1, v3

    if-lez v3, :cond_0

    invoke-virtual {v0}, Lde/c$c;->c()D

    move-result-wide v1

    :cond_0
    invoke-virtual {v0}, Lde/c$c;->a()Lde/c$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-wide v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public n3([D)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Lde/c;->add(D)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o()D
    .locals 5

    iget-object v0, p0, Lde/c;->d:Lde/c$c;

    const-wide/16 v1, 0x0

    :goto_0
    invoke-static {v0}, Lde/c;->f(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lde/c$c;->c()D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-virtual {v0}, Lde/c$c;->a()Lde/c$c;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public p(LUd/c;)V
    .locals 3

    iget-object v0, p0, Lde/c;->d:Lde/c$c;

    :goto_0
    invoke-static {v0}, Lde/c;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lde/c$c;->c()D

    move-result-wide v1

    invoke-interface {p1, v1, v2}, LUd/c;->a(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lde/c$c;->f(D)V

    invoke-virtual {v0}, Lde/c$c;->a()Lde/c$c;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public q3([DII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Lde/c;->add(D)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public q7(I[DII)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p3, v0

    aget-wide v1, p2, v1

    add-int v3, p1, v0

    invoke-virtual {p0, v3, v1, v2}, Lde/c;->g5(ID)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public q8(Lhe/z;)Lbe/c;
    .locals 4

    new-instance v0, Lde/c;

    invoke-direct {v0}, Lde/c;-><init>()V

    iget-object v1, p0, Lde/c;->d:Lde/c$c;

    :goto_0
    invoke-static {v1}, Lde/c;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lde/c$c;->c()D

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Lhe/z;->a(D)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lde/c$c;->c()D

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lbe/c;->add(D)Z

    :cond_0
    invoke-virtual {v1}, Lde/c$c;->a()Lde/c$c;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lde/c;->b:D

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lde/c;->add(D)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lde/c;->iterator()LZd/y;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, LZd/y;->next()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lde/c;->iterator()LZd/y;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, LZd/y;->next()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

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

.method public s1([D)Z
    .locals 5

    invoke-virtual {p0}, Lde/c;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-wide v3, p1, v2

    invoke-virtual {p0, v3, v4}, Lde/c;->Y0(D)Z

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

.method public size()I
    .locals 1

    iget v0, p0, Lde/c;->c:I

    return v0
.end method

.method public sort()V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lde/c;->c:I

    invoke-virtual {p0, v0, v1}, Lde/c;->w0(II)V

    return-void
.end method

.method public subList(II)Lbe/c;
    .locals 4

    const-string v0, "begin index "

    if-lt p2, p1, :cond_4

    iget v1, p0, Lde/c;->c:I

    if-lt v1, p1, :cond_3

    if-ltz p1, :cond_2

    if-gt p2, v1, :cond_1

    new-instance v0, Lde/c;

    invoke-direct {v0}, Lde/c;-><init>()V

    invoke-virtual {p0, p1}, Lde/c;->e(I)Lde/c$c;

    move-result-object v1

    :goto_0
    if-ge p1, p2, :cond_0

    invoke-virtual {v1}, Lde/c$c;->c()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lde/c;->add(D)Z

    invoke-virtual {v1}, Lde/c$c;->a()Lde/c$c;

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

    iget v0, p0, Lde/c;->c:I

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

    iget p1, p0, Lde/c;->c:I

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

    invoke-virtual {p0, p1}, Lde/c;->B0(I)D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toArray()[D
    .locals 3

    .line 1
    iget v0, p0, Lde/c;->c:I

    new-array v1, v0, [D

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lde/c;->i3([DII)[D

    move-result-object v0

    return-object v0
.end method

.method public toArray([D)[D
    .locals 2

    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lde/c;->c:I

    invoke-virtual {p0, p1, v0, v1}, Lde/c;->i3([DII)[D

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/c;->iterator()LZd/y;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, LZd/y;->next()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

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

    iget-object v0, p0, Lde/c;->d:Lde/c$c;

    iget-object v1, p0, Lde/c;->e:Lde/c$c;

    move-object v2, v0

    :goto_0
    invoke-static {v2}, Lde/c;->f(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lde/c$c;->a()Lde/c$c;

    move-result-object v3

    invoke-virtual {v2}, Lde/c$c;->b()Lde/c$c;

    move-result-object v4

    invoke-virtual {v2}, Lde/c$c;->a()Lde/c$c;

    move-result-object v5

    invoke-virtual {v2, v4}, Lde/c$c;->d(Lde/c$c;)V

    invoke-virtual {v2, v3}, Lde/c$c;->e(Lde/c$c;)V

    move-object v2, v5

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lde/c;->d:Lde/c$c;

    iput-object v0, p0, Lde/c;->e:Lde/c$c;

    return-void
.end method

.method public uc(DII)I
    .locals 5

    if-ltz p3, :cond_5

    iget v0, p0, Lde/c;->c:I

    if-gt p4, v0, :cond_4

    if-ge p4, p3, :cond_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    neg-int p1, p3

    return p1

    :cond_1
    invoke-virtual {p0, p3}, Lde/c;->e(I)Lde/c$c;

    move-result-object v0

    :goto_0
    if-ge p3, p4, :cond_0

    add-int v1, p3, p4

    ushr-int/lit8 v1, v1, 0x1

    invoke-static {v0, p3, v1}, Lde/c;->c(Lde/c$c;II)Lde/c$c;

    move-result-object v2

    invoke-virtual {v2}, Lde/c$c;->c()D

    move-result-wide v3

    cmpl-double v3, v3, p1

    if-nez v3, :cond_2

    return v1

    :cond_2
    invoke-virtual {v2}, Lde/c$c;->c()D

    move-result-wide v3

    cmpg-double v3, v3, p1

    if-gez v3, :cond_3

    add-int/lit8 p3, v1, 0x1

    iget-object v0, v2, Lde/c$c;->c:Lde/c$c;

    goto :goto_0

    :cond_3
    add-int/lit8 p4, v1, -0x1

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "end index > size: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lde/c;->c:I

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

.method public w0(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lde/c;->subList(II)Lbe/c;

    move-result-object p2

    invoke-interface {p2}, Lbe/c;->toArray()[D

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->sort([D)V

    invoke-virtual {p0, p1, p2}, Lde/c;->ad(I[D)V

    return-void
.end method

.method public w1([D)Z
    .locals 4

    invoke-static {p1}, Ljava/util/Arrays;->sort([D)V

    invoke-virtual {p0}, Lde/c;->iterator()LZd/y;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, LZd/y;->next()D

    move-result-wide v2

    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-interface {v0}, LZd/V;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public w3(D)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lde/c;->size()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lde/c;->uc(DII)I

    move-result p1

    return p1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-wide v0, p0, Lde/c;->b:D

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    iget v0, p0, Lde/c;->c:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-virtual {p0}, Lde/c;->iterator()LZd/y;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LZd/y;->next()D

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Ljava/io/DataOutput;->writeDouble(D)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public x2(LSd/e;)Z
    .locals 3

    invoke-interface {p1}, LSd/e;->iterator()LZd/y;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, LZd/y;->next()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lde/c;->add(D)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public x6(ID)I
    .locals 3

    invoke-virtual {p0, p1}, Lde/c;->e(I)Lde/c$c;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lde/c$c;->a()Lde/c$c;

    move-result-object v1

    invoke-static {v1}, Lde/c;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lde/c$c;->c()D

    move-result-wide v1

    cmpl-double v1, v1, p2

    if-nez v1, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0}, Lde/c$c;->a()Lde/c$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public y0(II)V
    .locals 5

    if-gt p1, p2, :cond_2

    invoke-virtual {p0, p1}, Lde/c;->e(I)Lde/c$c;

    move-result-object p1

    invoke-virtual {p0, p2}, Lde/c;->e(I)Lde/c$c;

    move-result-object p2

    invoke-virtual {p1}, Lde/c$c;->b()Lde/c$c;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v1, p1

    :goto_0
    if-eq v1, p2, :cond_0

    invoke-virtual {v1}, Lde/c$c;->a()Lde/c$c;

    move-result-object v2

    invoke-virtual {v1}, Lde/c$c;->b()Lde/c$c;

    move-result-object v3

    invoke-virtual {v1}, Lde/c$c;->a()Lde/c$c;

    move-result-object v4

    invoke-virtual {v1, v3}, Lde/c$c;->d(Lde/c$c;)V

    invoke-virtual {v1, v2}, Lde/c$c;->e(Lde/c$c;)V

    move-object v2, v1

    move-object v1, v4

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lde/c;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Lde/c$c;->d(Lde/c$c;)V

    invoke-virtual {p2, v0}, Lde/c$c;->e(Lde/c$c;)V

    :cond_1
    invoke-virtual {p1, p2}, Lde/c$c;->d(Lde/c$c;)V

    invoke-virtual {p2, p1}, Lde/c$c;->e(Lde/c$c;)V

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

.method public z0(II)[D
    .locals 2

    new-array v0, p2, [D

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lde/c;->ha([DIII)[D

    move-result-object p1

    return-object p1
.end method

.class public Lde/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbe/d;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/d$b;,
        Lde/d$c;
    }
.end annotation


# instance fields
.field public b:F

.field public c:I

.field public d:Lde/d$c;

.field public e:Lde/d$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lde/d;->d:Lde/d$c;

    .line 3
    iput-object v0, p0, Lde/d;->e:Lde/d$c;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lde/d;->d:Lde/d$c;

    .line 6
    iput-object v0, p0, Lde/d;->e:Lde/d$c;

    .line 7
    iput p1, p0, Lde/d;->b:F

    return-void
.end method

.method public constructor <init>(Lbe/d;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lde/d;->d:Lde/d$c;

    .line 10
    iput-object v0, p0, Lde/d;->e:Lde/d$c;

    .line 11
    invoke-interface {p1}, Lbe/d;->i()F

    move-result v0

    iput v0, p0, Lde/d;->b:F

    .line 12
    invoke-interface {p1}, LSd/f;->iterator()LZd/H;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-interface {p1}, LZd/H;->next()F

    move-result v0

    .line 14
    invoke-virtual {p0, v0}, Lde/d;->f1(F)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Lde/d;Lde/d$c;)V
    .locals 0

    invoke-virtual {p0, p1}, Lde/d;->k(Lde/d$c;)V

    return-void
.end method

.method public static b(Lde/d$c;II)Lde/d$c;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lde/d;->d(Lde/d$c;IIZ)Lde/d$c;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lde/d$c;IIZ)Lde/d$c;
    .locals 1

    :goto_0
    invoke-static {p0}, Lde/d;->f(Ljava/lang/Object;)Z

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

    invoke-virtual {p0}, Lde/d$c;->a()Lde/d$c;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lde/d$c;->b()Lde/d$c;

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

.method public static h([FII)Lde/d;
    .locals 3

    new-instance v0, Lde/d;

    invoke-direct {v0}, Lde/d;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    add-int v2, p1, v1

    aget v2, p0, v2

    invoke-virtual {v0, v2}, Lde/d;->f1(F)Z

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
.method public B0(I)F
    .locals 3

    invoke-virtual {p0, p1}, Lde/d;->e(I)Lde/d$c;

    move-result-object v0

    invoke-static {v0}, Lde/d;->j(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lde/d$c;->c()F

    move-result p1

    invoke-virtual {p0, v0}, Lde/d;->k(Lde/d$c;)V

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

.method public C2(LSd/f;)Z
    .locals 2

    invoke-interface {p1}, LSd/f;->iterator()LZd/H;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, LZd/H;->next()F

    move-result v1

    invoke-virtual {p0, v1}, Lde/d;->f1(F)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public D1(LSd/f;)Z
    .locals 2

    invoke-virtual {p0}, Lde/d;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, LSd/f;->iterator()LZd/H;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, LZd/H;->next()F

    move-result v0

    invoke-virtual {p0, v0}, Lde/d;->Z0(F)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public G3(FII)I
    .locals 4

    if-ltz p2, :cond_5

    iget v0, p0, Lde/d;->c:I

    if-gt p3, v0, :cond_4

    if-ge p3, p2, :cond_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    neg-int p1, p2

    return p1

    :cond_1
    invoke-virtual {p0, p2}, Lde/d;->e(I)Lde/d$c;

    move-result-object v0

    :goto_0
    if-ge p2, p3, :cond_0

    add-int v1, p2, p3

    ushr-int/lit8 v1, v1, 0x1

    invoke-static {v0, p2, v1}, Lde/d;->b(Lde/d$c;II)Lde/d$c;

    move-result-object v2

    invoke-virtual {v2}, Lde/d$c;->c()F

    move-result v3

    cmpl-float v3, v3, p1

    if-nez v3, :cond_2

    return v1

    :cond_2
    invoke-virtual {v2}, Lde/d$c;->c()F

    move-result v3

    cmpg-float v3, v3, p1

    if-gez v3, :cond_3

    add-int/lit8 p2, v1, 0x1

    iget-object v0, v2, Lde/d$c;->c:Lde/d$c;

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

    iget p3, p0, Lde/d;->c:I

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

.method public H3(F)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lde/d;->size()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lde/d;->G3(FII)I

    move-result p1

    return p1
.end method

.method public J0(Ljava/util/Random;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lde/d;->c:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lde/d;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lde/d;->e(I)Lde/d$c;

    move-result-object v1

    invoke-virtual {p0, v1}, Lde/d;->k(Lde/d$c;)V

    invoke-virtual {v1}, Lde/d$c;->c()F

    move-result v1

    invoke-virtual {p0, v1}, Lde/d;->f1(F)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Ka(I[FII)V
    .locals 0

    invoke-static {p2, p3, p4}, Lde/d;->h([FII)Lde/d;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lde/d;->g(ILde/d;)V

    return-void
.end method

.method public L1([F)Z
    .locals 4

    invoke-virtual {p0}, Lde/d;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    invoke-virtual {p0, v3}, Lde/d;->Z0(F)Z

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

.method public M2(F)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lde/d;->c:I

    invoke-virtual {p0, v0, v1, p1}, Lde/d;->q6(IIF)V

    return-void
.end method

.method public Q8(IF)F
    .locals 0

    invoke-virtual {p0, p1, p2}, Lde/d;->l5(IF)F

    move-result p1

    return p1
.end method

.method public R5([FIII)[F
    .locals 3

    if-nez p4, :cond_0

    return-object p1

    :cond_0
    if-ltz p2, :cond_2

    invoke-virtual {p0}, Lde/d;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    invoke-virtual {p0, p2}, Lde/d;->e(I)Lde/d$c;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    add-int v1, p3, v0

    invoke-virtual {p2}, Lde/d$c;->c()F

    move-result v2

    aput v2, p1, v1

    invoke-virtual {p2}, Lde/d$c;->a()Lde/d$c;

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

.method public T7(I[FII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p3, v0

    aget v1, p2, v1

    add-int v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lde/d;->l5(IF)F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Te(I[F)V
    .locals 2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lde/d;->h([FII)Lde/d;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lde/d;->g(ILde/d;)V

    return-void
.end method

.method public U8([FII)[F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lde/d;->R5([FIII)[F

    move-result-object p1

    return-object p1
.end method

.method public V1([F)Z
    .locals 3

    invoke-static {p1}, Ljava/util/Arrays;->sort([F)V

    invoke-virtual {p0}, Lde/d;->iterator()LZd/H;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, LZd/H;->next()F

    move-result v2

    invoke-static {p1, v2}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v2

    if-gez v2, :cond_0

    invoke-interface {v0}, LZd/V;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public V2(Lhe/I;)Lbe/d;
    .locals 3

    new-instance v0, Lde/d;

    invoke-direct {v0}, Lde/d;-><init>()V

    iget-object v1, p0, Lde/d;->d:Lde/d$c;

    :goto_0
    invoke-static {v1}, Lde/d;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lde/d$c;->c()F

    move-result v2

    invoke-interface {p1, v2}, Lhe/I;->a(F)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lde/d$c;->c()F

    move-result v2

    invoke-interface {v0, v2}, Lbe/d;->f1(F)Z

    :cond_0
    invoke-virtual {v1}, Lde/d$c;->a()Lde/d$c;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public We([FII)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    aget v1, p1, v1

    invoke-virtual {p0, v1}, Lde/d;->f1(F)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public X3(F)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lde/d;->d6(IF)I

    move-result p1

    return p1
.end method

.method public Z0(F)Z
    .locals 3

    invoke-virtual {p0}, Lde/d;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lde/d;->d:Lde/d$c;

    :goto_0
    invoke-static {v0}, Lde/d;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lde/d$c;->c()F

    move-result v2

    cmpl-float v2, v2, p1

    if-nez v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {v0}, Lde/d$c;->a()Lde/d$c;

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
            "Ljava/lang/Float;",
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

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Lde/d;->f1(F)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public bd(I[F)V
    .locals 2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lde/d;->T7(I[FII)V

    return-void
.end method

.method public c(F)Z
    .locals 3

    iget-object v0, p0, Lde/d;->d:Lde/d$c;

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0}, Lde/d;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lde/d$c;->c()F

    move-result v2

    cmpl-float v2, v2, p1

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lde/d;->k(Lde/d$c;)V

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0}, Lde/d$c;->a()Lde/d$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    return v1
.end method

.method public c2(LSd/f;)Z
    .locals 3

    invoke-virtual {p0}, Lde/d;->iterator()LZd/H;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, LZd/H;->next()F

    move-result v2

    invoke-interface {p1, v2}, LSd/f;->Z0(F)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, LZd/V;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lde/d;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lde/d;->d:Lde/d$c;

    iput-object v0, p0, Lde/d;->e:Lde/d$c;

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

    invoke-virtual {p0}, Lde/d;->isEmpty()Z

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

    instance-of v2, v0, Ljava/lang/Float;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lde/d;->Z0(F)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public d5(Lhe/I;)Lbe/d;
    .locals 3

    new-instance v0, Lde/d;

    invoke-direct {v0}, Lde/d;-><init>()V

    iget-object v1, p0, Lde/d;->d:Lde/d$c;

    :goto_0
    invoke-static {v1}, Lde/d;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lde/d$c;->c()F

    move-result v2

    invoke-interface {p1, v2}, Lhe/I;->a(F)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lde/d$c;->c()F

    move-result v2

    invoke-interface {v0, v2}, Lbe/d;->f1(F)Z

    :cond_0
    invoke-virtual {v1}, Lde/d$c;->a()Lde/d$c;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public d6(IF)I
    .locals 3

    invoke-virtual {p0}, Lde/d;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lde/d;->e(I)Lde/d$c;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lde/d$c;->a()Lde/d$c;

    move-result-object v2

    invoke-static {v2}, Lde/d;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lde/d$c;->c()F

    move-result v2

    cmpl-float v2, v2, p2

    if-nez v2, :cond_1

    move v1, p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0}, Lde/d$c;->a()Lde/d$c;

    move-result-object v0

    goto :goto_0

    :cond_2
    return v1
.end method

.method public e(I)Lde/d$c;
    .locals 4

    invoke-virtual {p0}, Lde/d;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lde/d;->size()I

    move-result v0

    const/4 v1, 0x1

    ushr-int/2addr v0, v1

    const/4 v2, 0x0

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lde/d;->d:Lde/d$c;

    invoke-static {v0, v2, p1, v1}, Lde/d;->d(Lde/d$c;IIZ)Lde/d$c;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lde/d;->e:Lde/d$c;

    invoke-virtual {p0}, Lde/d;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {v0, v3, p1, v2}, Lde/d;->d(Lde/d$c;IIZ)Lde/d$c;

    move-result-object p1

    return-object p1
.end method

.method public e3([F)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    invoke-virtual {p0, v2}, Lde/d;->f1(F)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
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
    check-cast p1, Lde/d;

    iget v2, p0, Lde/d;->b:F

    iget v3, p1, Lde/d;->b:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lde/d;->c:I

    iget v3, p1, Lde/d;->c:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lde/d;->iterator()LZd/H;

    move-result-object v2

    invoke-virtual {p1}, Lde/d;->iterator()LZd/H;

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
    invoke-interface {v2}, LZd/H;->next()F

    move-result v3

    invoke-interface {p1}, LZd/H;->next()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    return v1

    :cond_6
    return v0

    :cond_7
    :goto_0
    return v1
.end method

.method public f1(F)Z
    .locals 1

    new-instance v0, Lde/d$c;

    invoke-direct {v0, p1}, Lde/d$c;-><init>(F)V

    iget-object p1, p0, Lde/d;->d:Lde/d$c;

    invoke-static {p1}, Lde/d;->j(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object v0, p0, Lde/d;->d:Lde/d$c;

    iput-object v0, p0, Lde/d;->e:Lde/d$c;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lde/d;->e:Lde/d$c;

    invoke-virtual {v0, p1}, Lde/d$c;->e(Lde/d$c;)V

    iget-object p1, p0, Lde/d;->e:Lde/d$c;

    invoke-virtual {p1, v0}, Lde/d$c;->d(Lde/d$c;)V

    iput-object v0, p0, Lde/d;->e:Lde/d$c;

    :goto_0
    iget p1, p0, Lde/d;->c:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lde/d;->c:I

    return v0
.end method

.method public g(ILde/d;)V
    .locals 3

    invoke-virtual {p0, p1}, Lde/d;->e(I)Lde/d$c;

    move-result-object p1

    iget v0, p0, Lde/d;->c:I

    iget v1, p2, Lde/d;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lde/d;->c:I

    iget-object v0, p0, Lde/d;->d:Lde/d$c;

    if-ne p1, v0, :cond_0

    iget-object p1, p2, Lde/d;->e:Lde/d$c;

    invoke-virtual {p1, v0}, Lde/d$c;->d(Lde/d$c;)V

    iget-object p1, p0, Lde/d;->d:Lde/d$c;

    iget-object v0, p2, Lde/d;->e:Lde/d$c;

    invoke-virtual {p1, v0}, Lde/d$c;->e(Lde/d$c;)V

    iget-object p1, p2, Lde/d;->d:Lde/d$c;

    iput-object p1, p0, Lde/d;->d:Lde/d$c;

    return-void

    :cond_0
    invoke-static {p1}, Lde/d;->j(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget p1, p0, Lde/d;->c:I

    if-nez p1, :cond_1

    iget-object p1, p2, Lde/d;->d:Lde/d$c;

    iput-object p1, p0, Lde/d;->d:Lde/d$c;

    iget-object p1, p2, Lde/d;->e:Lde/d$c;

    iput-object p1, p0, Lde/d;->e:Lde/d$c;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lde/d;->e:Lde/d$c;

    iget-object v0, p2, Lde/d;->d:Lde/d$c;

    invoke-virtual {p1, v0}, Lde/d$c;->d(Lde/d$c;)V

    iget-object p1, p2, Lde/d;->d:Lde/d$c;

    iget-object v0, p0, Lde/d;->e:Lde/d$c;

    invoke-virtual {p1, v0}, Lde/d$c;->e(Lde/d$c;)V

    iget-object p1, p2, Lde/d;->e:Lde/d$c;

    iput-object p1, p0, Lde/d;->e:Lde/d$c;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lde/d$c;->b()Lde/d$c;

    move-result-object v0

    invoke-virtual {p1}, Lde/d$c;->b()Lde/d$c;

    move-result-object v1

    iget-object v2, p2, Lde/d;->d:Lde/d$c;

    invoke-virtual {v1, v2}, Lde/d$c;->d(Lde/d$c;)V

    iget-object v1, p2, Lde/d;->e:Lde/d$c;

    invoke-virtual {v1, p1}, Lde/d$c;->d(Lde/d$c;)V

    iget-object v1, p2, Lde/d;->e:Lde/d$c;

    invoke-virtual {p1, v1}, Lde/d$c;->e(Lde/d$c;)V

    iget-object p1, p2, Lde/d;->d:Lde/d$c;

    invoke-virtual {p1, v0}, Lde/d$c;->e(Lde/d$c;)V

    :goto_0
    return-void
.end method

.method public g2(LSd/f;)Z
    .locals 3

    invoke-virtual {p0}, Lde/d;->iterator()LZd/H;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, LZd/H;->next()F

    move-result v2

    invoke-interface {p1, v2}, LSd/f;->Z0(F)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, LZd/V;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public get(I)F
    .locals 3

    iget v0, p0, Lde/d;->c:I

    if-gt p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lde/d;->e(I)Lde/d$c;

    move-result-object p1

    invoke-static {p1}, Lde/d;->j(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, Lde/d;->b:F

    return p1

    :cond_0
    invoke-virtual {p1}, Lde/d$c;->c()F

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

    iget p1, p0, Lde/d;->c:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lde/d;->b:F

    invoke-static {v0}, LVd/b;->c(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lde/d;->c:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lde/d;->iterator()LZd/H;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    invoke-interface {v1}, LZd/H;->next()F

    move-result v2

    invoke-static {v2}, LVd/b;->c(F)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public i()F
    .locals 1

    iget v0, p0, Lde/d;->b:F

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lde/d;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()LZd/H;
    .locals 1

    new-instance v0, Lde/d$a;

    invoke-direct {v0, p0}, Lde/d$a;-><init>(Lde/d;)V

    return-object v0
.end method

.method public j6(F)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lde/d;->z6(IF)I

    move-result p1

    return p1
.end method

.method public final k(Lde/d$c;)V
    .locals 3

    invoke-static {p1}, Lde/d;->j(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lde/d;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lde/d;->c:I

    invoke-virtual {p1}, Lde/d$c;->b()Lde/d$c;

    move-result-object v0

    invoke-virtual {p1}, Lde/d$c;->a()Lde/d$c;

    move-result-object v1

    invoke-static {v0}, Lde/d;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lde/d$c;->d(Lde/d$c;)V

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lde/d;->d:Lde/d$c;

    :goto_0
    invoke-static {v1}, Lde/d;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Lde/d$c;->e(Lde/d$c;)V

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lde/d;->e:Lde/d$c;

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lde/d$c;->d(Lde/d$c;)V

    invoke-virtual {p1, v0}, Lde/d$c;->e(Lde/d$c;)V

    return-void
.end method

.method public k1(Lhe/I;)Z
    .locals 2

    iget-object v0, p0, Lde/d;->d:Lde/d$c;

    :goto_0
    invoke-static {v0}, Lde/d;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lde/d$c;->c()F

    move-result v1

    invoke-interface {p1, v1}, Lhe/I;->a(F)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0}, Lde/d$c;->a()Lde/d$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public l2([F)Z
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget v3, p1, v1

    invoke-virtual {p0, v3}, Lde/d;->f1(F)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public l5(IF)F
    .locals 2

    iget v0, p0, Lde/d;->c:I

    if-gt p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lde/d;->e(I)Lde/d$c;

    move-result-object v0

    invoke-static {v0}, Lde/d;->j(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lde/d$c;->c()F

    move-result p1

    invoke-virtual {v0, p2}, Lde/d$c;->f(F)V

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

    iget p1, p0, Lde/d;->c:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public l8(IF)V
    .locals 1

    new-instance v0, Lde/d;

    invoke-direct {v0}, Lde/d;-><init>()V

    invoke-virtual {v0, p2}, Lde/d;->f1(F)Z

    invoke-virtual {p0, p1, v0}, Lde/d;->g(ILde/d;)V

    return-void
.end method

.method public max()F
    .locals 3

    invoke-virtual {p0}, Lde/d;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lde/d;->d:Lde/d$c;

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    :goto_0
    invoke-static {v0}, Lde/d;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lde/d$c;->c()F

    move-result v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    invoke-virtual {v0}, Lde/d$c;->c()F

    move-result v1

    :cond_0
    invoke-virtual {v0}, Lde/d$c;->a()Lde/d$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public min()F
    .locals 3

    invoke-virtual {p0}, Lde/d;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lde/d;->d:Lde/d$c;

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    :goto_0
    invoke-static {v0}, Lde/d;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lde/d$c;->c()F

    move-result v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Lde/d$c;->c()F

    move-result v1

    :cond_0
    invoke-virtual {v0}, Lde/d$c;->a()Lde/d$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public n(LUd/d;)V
    .locals 2

    iget-object v0, p0, Lde/d;->d:Lde/d$c;

    :goto_0
    invoke-static {v0}, Lde/d;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lde/d$c;->c()F

    move-result v1

    invoke-interface {p1, v1}, LUd/d;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lde/d$c;->f(F)V

    invoke-virtual {v0}, Lde/d$c;->a()Lde/d$c;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o()F
    .locals 3

    iget-object v0, p0, Lde/d;->d:Lde/d$c;

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0}, Lde/d;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lde/d$c;->c()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0}, Lde/d$c;->a()Lde/d$c;

    move-result-object v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method public q6(IIF)V
    .locals 2

    if-ltz p1, :cond_3

    invoke-virtual {p0, p1}, Lde/d;->e(I)Lde/d$c;

    move-result-object v0

    iget v1, p0, Lde/d;->c:I

    if-le p2, v1, :cond_1

    :goto_0
    iget v1, p0, Lde/d;->c:I

    if-ge p1, v1, :cond_0

    invoke-virtual {v0, p3}, Lde/d$c;->f(F)V

    invoke-virtual {v0}, Lde/d$c;->a()Lde/d$c;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, p2, :cond_2

    invoke-virtual {p0, p3}, Lde/d;->f1(F)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge p1, p2, :cond_2

    invoke-virtual {v0, p3}, Lde/d$c;->f(F)V

    invoke-virtual {v0}, Lde/d$c;->a()Lde/d$c;

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

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    invoke-interface {p1}, Ljava/io/DataInput;->readFloat()F

    move-result v0

    iput v0, p0, Lde/d;->b:F

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1}, Ljava/io/DataInput;->readFloat()F

    move-result v2

    invoke-virtual {p0, v2}, Lde/d;->f1(F)Z

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

    invoke-virtual {p0}, Lde/d;->iterator()LZd/H;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, LZd/H;->next()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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

    invoke-virtual {p0}, Lde/d;->iterator()LZd/H;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, LZd/H;->next()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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

    iget v0, p0, Lde/d;->c:I

    return v0
.end method

.method public sort()V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lde/d;->c:I

    invoke-virtual {p0, v0, v1}, Lde/d;->w0(II)V

    return-void
.end method

.method public subList(II)Lbe/d;
    .locals 3

    const-string v0, "begin index "

    if-lt p2, p1, :cond_4

    iget v1, p0, Lde/d;->c:I

    if-lt v1, p1, :cond_3

    if-ltz p1, :cond_2

    if-gt p2, v1, :cond_1

    new-instance v0, Lde/d;

    invoke-direct {v0}, Lde/d;-><init>()V

    invoke-virtual {p0, p1}, Lde/d;->e(I)Lde/d$c;

    move-result-object v1

    :goto_0
    if-ge p1, p2, :cond_0

    invoke-virtual {v1}, Lde/d$c;->c()F

    move-result v2

    invoke-virtual {v0, v2}, Lde/d;->f1(F)Z

    invoke-virtual {v1}, Lde/d$c;->a()Lde/d$c;

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

    iget v0, p0, Lde/d;->c:I

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

    iget p1, p0, Lde/d;->c:I

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

    invoke-virtual {p0, p1}, Lde/d;->B0(I)F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toArray()[F
    .locals 3

    .line 1
    iget v0, p0, Lde/d;->c:I

    new-array v1, v0, [F

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lde/d;->U8([FII)[F

    move-result-object v0

    return-object v0
.end method

.method public toArray([F)[F
    .locals 2

    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lde/d;->c:I

    invoke-virtual {p0, p1, v0, v1}, Lde/d;->U8([FII)[F

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/d;->iterator()LZd/H;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, LZd/H;->next()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

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

    iget-object v0, p0, Lde/d;->d:Lde/d$c;

    iget-object v1, p0, Lde/d;->e:Lde/d$c;

    move-object v2, v0

    :goto_0
    invoke-static {v2}, Lde/d;->f(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lde/d$c;->a()Lde/d$c;

    move-result-object v3

    invoke-virtual {v2}, Lde/d$c;->b()Lde/d$c;

    move-result-object v4

    invoke-virtual {v2}, Lde/d$c;->a()Lde/d$c;

    move-result-object v5

    invoke-virtual {v2, v4}, Lde/d$c;->d(Lde/d$c;)V

    invoke-virtual {v2, v3}, Lde/d$c;->e(Lde/d$c;)V

    move-object v2, v5

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lde/d;->d:Lde/d$c;

    iput-object v0, p0, Lde/d;->e:Lde/d$c;

    return-void
.end method

.method public w0(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lde/d;->subList(II)Lbe/d;

    move-result-object p2

    invoke-interface {p2}, Lbe/d;->toArray()[F

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->sort([F)V

    invoke-virtual {p0, p1, p2}, Lde/d;->bd(I[F)V

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

    iget v0, p0, Lde/d;->b:F

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeFloat(F)V

    iget v0, p0, Lde/d;->c:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-virtual {p0}, Lde/d;->iterator()LZd/H;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, LZd/H;->next()F

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeFloat(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public x1([F)Z
    .locals 3

    invoke-static {p1}, Ljava/util/Arrays;->sort([F)V

    invoke-virtual {p0}, Lde/d;->iterator()LZd/H;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, LZd/H;->next()F

    move-result v2

    invoke-static {p1, v2}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-interface {v0}, LZd/V;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public y0(II)V
    .locals 5

    if-gt p1, p2, :cond_2

    invoke-virtual {p0, p1}, Lde/d;->e(I)Lde/d$c;

    move-result-object p1

    invoke-virtual {p0, p2}, Lde/d;->e(I)Lde/d$c;

    move-result-object p2

    invoke-virtual {p1}, Lde/d$c;->b()Lde/d$c;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v1, p1

    :goto_0
    if-eq v1, p2, :cond_0

    invoke-virtual {v1}, Lde/d$c;->a()Lde/d$c;

    move-result-object v2

    invoke-virtual {v1}, Lde/d$c;->b()Lde/d$c;

    move-result-object v3

    invoke-virtual {v1}, Lde/d$c;->a()Lde/d$c;

    move-result-object v4

    invoke-virtual {v1, v3}, Lde/d$c;->d(Lde/d$c;)V

    invoke-virtual {v1, v2}, Lde/d$c;->e(Lde/d$c;)V

    move-object v2, v1

    move-object v1, v4

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lde/d;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Lde/d$c;->d(Lde/d$c;)V

    invoke-virtual {p2, v0}, Lde/d$c;->e(Lde/d$c;)V

    :cond_1
    invoke-virtual {p1, p2}, Lde/d$c;->d(Lde/d$c;)V

    invoke-virtual {p2, p1}, Lde/d$c;->e(Lde/d$c;)V

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

.method public z0(II)[F
    .locals 2

    new-array v0, p2, [F

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lde/d;->R5([FIII)[F

    move-result-object p1

    return-object p1
.end method

.method public z6(IF)I
    .locals 2

    invoke-virtual {p0, p1}, Lde/d;->e(I)Lde/d$c;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lde/d$c;->a()Lde/d$c;

    move-result-object v1

    invoke-static {v1}, Lde/d;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lde/d$c;->c()F

    move-result v1

    cmpl-float v1, v1, p2

    if-nez v1, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0}, Lde/d$c;->a()Lde/d$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public zc(Lhe/I;)Z
    .locals 2

    iget-object v0, p0, Lde/d;->e:Lde/d$c;

    :goto_0
    invoke-static {v0}, Lde/d;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lde/d$c;->c()F

    move-result v1

    invoke-interface {p1, v1}, Lhe/I;->a(F)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0}, Lde/d$c;->b()Lde/d$c;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

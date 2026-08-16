.class public LYd/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LSd/f;
.implements Ljava/io/Serializable;


# static fields
.field public static final c:J = 0x19420080cb5ef71eL


# instance fields
.field public final b:LSd/f;


# direct methods
.method public constructor <init>(LSd/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/J;->b:LSd/f;

    return-void
.end method


# virtual methods
.method public C2(LSd/f;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public D1(LSd/f;)Z
    .locals 1

    iget-object v0, p0, LYd/J;->b:LSd/f;

    invoke-interface {v0, p1}, LSd/f;->D1(LSd/f;)Z

    move-result p1

    return p1
.end method

.method public L1([F)Z
    .locals 1

    iget-object v0, p0, LYd/J;->b:LSd/f;

    invoke-interface {v0, p1}, LSd/f;->L1([F)Z

    move-result p1

    return p1
.end method

.method public V1([F)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Z0(F)Z
    .locals 1

    iget-object v0, p0, LYd/J;->b:LSd/f;

    invoke-interface {v0, p1}, LSd/f;->Z0(F)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c(F)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c2(LSd/f;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, LYd/J;->b:LSd/f;

    invoke-interface {v0, p1}, LSd/f;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public f1(F)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public g2(LSd/f;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public i()F
    .locals 1

    iget-object v0, p0, LYd/J;->b:LSd/f;

    invoke-interface {v0}, LSd/f;->i()F

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/J;->b:LSd/f;

    invoke-interface {v0}, LSd/f;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/H;
    .locals 1

    new-instance v0, LYd/J$a;

    invoke-direct {v0, p0}, LYd/J$a;-><init>(LYd/J;)V

    return-object v0
.end method

.method public k1(Lhe/I;)Z
    .locals 1

    iget-object v0, p0, LYd/J;->b:LSd/f;

    invoke-interface {v0, p1}, LSd/f;->k1(Lhe/I;)Z

    move-result p1

    return p1
.end method

.method public l2([F)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/J;->b:LSd/f;

    invoke-interface {v0}, LSd/f;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[F
    .locals 1

    .line 1
    iget-object v0, p0, LYd/J;->b:LSd/f;

    invoke-interface {v0}, LSd/f;->toArray()[F

    move-result-object v0

    return-object v0
.end method

.method public toArray([F)[F
    .locals 1

    .line 2
    iget-object v0, p0, LYd/J;->b:LSd/f;

    invoke-interface {v0, p1}, LSd/f;->toArray([F)[F

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/J;->b:LSd/f;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x1([F)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.class public LYd/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LSd/e;
.implements Ljava/io/Serializable;


# static fields
.field public static final c:J = 0x19420080cb5ef71eL


# instance fields
.field public final b:LSd/e;


# direct methods
.method public constructor <init>(LSd/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/y;->b:LSd/e;

    return-void
.end method


# virtual methods
.method public C1(LSd/e;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public G1(LSd/e;)Z
    .locals 1

    iget-object v0, p0, LYd/y;->b:LSd/e;

    invoke-interface {v0, p1}, LSd/e;->G1(LSd/e;)Z

    move-result p1

    return p1
.end method

.method public J1(LSd/e;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Y0(D)Z
    .locals 1

    iget-object v0, p0, LYd/y;->b:LSd/e;

    invoke-interface {v0, p1, p2}, LSd/e;->Y0(D)Z

    move-result p1

    return p1
.end method

.method public Y1([D)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a(D)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public add(D)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

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

    iget-object v0, p0, LYd/y;->b:LSd/e;

    invoke-interface {v0, p1}, LSd/e;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public i()D
    .locals 2

    iget-object v0, p0, LYd/y;->b:LSd/e;

    invoke-interface {v0}, LSd/e;->i()D

    move-result-wide v0

    return-wide v0
.end method

.method public i1(Lhe/z;)Z
    .locals 1

    iget-object v0, p0, LYd/y;->b:LSd/e;

    invoke-interface {v0, p1}, LSd/e;->i1(Lhe/z;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/y;->b:LSd/e;

    invoke-interface {v0}, LSd/e;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/y;
    .locals 1

    new-instance v0, LYd/y$a;

    invoke-direct {v0, p0}, LYd/y$a;-><init>(LYd/y;)V

    return-object v0
.end method

.method public m2([D)Z
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

.method public s1([D)Z
    .locals 1

    iget-object v0, p0, LYd/y;->b:LSd/e;

    invoke-interface {v0, p1}, LSd/e;->s1([D)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/y;->b:LSd/e;

    invoke-interface {v0}, LSd/e;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[D
    .locals 1

    .line 1
    iget-object v0, p0, LYd/y;->b:LSd/e;

    invoke-interface {v0}, LSd/e;->toArray()[D

    move-result-object v0

    return-object v0
.end method

.method public toArray([D)[D
    .locals 1

    .line 2
    iget-object v0, p0, LYd/y;->b:LSd/e;

    invoke-interface {v0, p1}, LSd/e;->toArray([D)[D

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/y;->b:LSd/e;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w1([D)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public x2(LSd/e;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

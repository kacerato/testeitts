.class public LYd/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LSd/g;
.implements Ljava/io/Serializable;


# static fields
.field public static final c:J = 0x19420080cb5ef71eL


# instance fields
.field public final b:LSd/g;


# direct methods
.method public constructor <init>(LSd/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/V;->b:LSd/g;

    return-void
.end method


# virtual methods
.method public A1([I)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public K1([I)Z
    .locals 1

    iget-object v0, p0, LYd/V;->b:LSd/g;

    invoke-interface {v0, p1}, LSd/g;->K1([I)Z

    move-result p1

    return p1
.end method

.method public M1([I)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public P0([I)[I
    .locals 1

    iget-object v0, p0, LYd/V;->b:LSd/g;

    invoke-interface {v0, p1}, LSd/g;->P0([I)[I

    move-result-object p1

    return-object p1
.end method

.method public U0(Lhe/S;)Z
    .locals 1

    iget-object v0, p0, LYd/V;->b:LSd/g;

    invoke-interface {v0, p1}, LSd/g;->U0(Lhe/S;)Z

    move-result p1

    return p1
.end method

.method public add(I)Z
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
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b2(LSd/g;)Z
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

.method public contains(I)Z
    .locals 1

    iget-object v0, p0, LYd/V;->b:LSd/g;

    invoke-interface {v0, p1}, LSd/g;->contains(I)Z

    move-result p1

    return p1
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

    iget-object v0, p0, LYd/V;->b:LSd/g;

    invoke-interface {v0, p1}, LSd/g;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public d2(LSd/g;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public h2(LSd/g;)Z
    .locals 1

    iget-object v0, p0, LYd/V;->b:LSd/g;

    invoke-interface {v0, p1}, LSd/g;->h2(LSd/g;)Z

    move-result p1

    return p1
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, LYd/V;->b:LSd/g;

    invoke-interface {v0}, LSd/g;->i()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/V;->b:LSd/g;

    invoke-interface {v0}, LSd/g;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/Q;
    .locals 1

    new-instance v0, LYd/V$a;

    invoke-direct {v0, p0}, LYd/V$a;-><init>(LYd/V;)V

    return-object v0
.end method

.method public j2(LSd/g;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(I)Z
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

    iget-object v0, p0, LYd/V;->b:LSd/g;

    invoke-interface {v0}, LSd/g;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[I
    .locals 1

    iget-object v0, p0, LYd/V;->b:LSd/g;

    invoke-interface {v0}, LSd/g;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/V;->b:LSd/g;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z2([I)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

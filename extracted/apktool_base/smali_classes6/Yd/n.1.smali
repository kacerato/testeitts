.class public LYd/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LSd/b;
.implements Ljava/io/Serializable;


# static fields
.field public static final c:J = 0x19420080cb5ef71eL


# instance fields
.field public final b:LSd/b;


# direct methods
.method public constructor <init>(LSd/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/n;->b:LSd/b;

    return-void
.end method


# virtual methods
.method public Q0([C)[C
    .locals 1

    iget-object v0, p0, LYd/n;->b:LSd/b;

    invoke-interface {v0, p1}, LSd/b;->Q0([C)[C

    move-result-object p1

    return-object p1
.end method

.method public X1([C)Z
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
            "Ljava/lang/Character;",
            ">;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b(C)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b1(C)Z
    .locals 1

    iget-object v0, p0, LYd/n;->b:LSd/b;

    invoke-interface {v0, p1}, LSd/b;->b1(C)Z

    move-result p1

    return p1
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

    iget-object v0, p0, LYd/n;->b:LSd/b;

    invoke-interface {v0, p1}, LSd/b;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public e1(C)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public g1(Lhe/q;)Z
    .locals 1

    iget-object v0, p0, LYd/n;->b:LSd/b;

    invoke-interface {v0, p1}, LSd/b;->g1(Lhe/q;)Z

    move-result p1

    return p1
.end method

.method public i()C
    .locals 1

    iget-object v0, p0, LYd/n;->b:LSd/b;

    invoke-interface {v0}, LSd/b;->i()C

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/n;->b:LSd/b;

    invoke-interface {v0}, LSd/b;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/p;
    .locals 1

    new-instance v0, LYd/n$a;

    invoke-direct {v0, p0}, LYd/n$a;-><init>(LYd/n;)V

    return-object v0
.end method

.method public n2([C)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public p2(LSd/b;)Z
    .locals 1

    iget-object v0, p0, LYd/n;->b:LSd/b;

    invoke-interface {v0, p1}, LSd/b;->p2(LSd/b;)Z

    move-result p1

    return p1
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

    iget-object v0, p0, LYd/n;->b:LSd/b;

    invoke-interface {v0}, LSd/b;->size()I

    move-result v0

    return v0
.end method

.method public t2(LSd/b;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toArray()[C
    .locals 1

    iget-object v0, p0, LYd/n;->b:LSd/b;

    invoke-interface {v0}, LSd/b;->toArray()[C

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/n;->b:LSd/b;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u1([C)Z
    .locals 1

    iget-object v0, p0, LYd/n;->b:LSd/b;

    invoke-interface {v0, p1}, LSd/b;->u1([C)Z

    move-result p1

    return p1
.end method

.method public u2(LSd/b;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public v1([C)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public z1(LSd/b;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.class public LYd/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LSd/a;
.implements Ljava/io/Serializable;


# static fields
.field public static final c:J = 0x19420080cb5ef71eL


# instance fields
.field public final b:LSd/a;


# direct methods
.method public constructor <init>(LSd/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/c;->b:LSd/a;

    return-void
.end method


# virtual methods
.method public E1(LSd/a;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public R0([B)[B
    .locals 1

    iget-object v0, p0, LYd/c;->b:LSd/a;

    invoke-interface {v0, p1}, LSd/a;->R0([B)[B

    move-result-object p1

    return-object p1
.end method

.method public V0(Lhe/h;)Z
    .locals 1

    iget-object v0, p0, LYd/c;->b:LSd/a;

    invoke-interface {v0, p1}, LSd/a;->V0(Lhe/h;)Z

    move-result p1

    return p1
.end method

.method public W1([B)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a1(B)Z
    .locals 1

    iget-object v0, p0, LYd/c;->b:LSd/a;

    invoke-interface {v0, p1}, LSd/a;->a1(B)Z

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
            "Ljava/lang/Byte;",
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

    iget-object v0, p0, LYd/c;->b:LSd/a;

    invoke-interface {v0, p1}, LSd/a;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public d1(B)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public i()B
    .locals 1

    iget-object v0, p0, LYd/c;->b:LSd/a;

    invoke-interface {v0}, LSd/a;->i()B

    move-result v0

    return v0
.end method

.method public i2(LSd/a;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/c;->b:LSd/a;

    invoke-interface {v0}, LSd/a;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/g;
    .locals 1

    new-instance v0, LYd/c$a;

    invoke-direct {v0, p0}, LYd/c$a;-><init>(LYd/c;)V

    return-object v0
.end method

.method public m(B)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public o2([B)Z
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

.method public s2(LSd/a;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/c;->b:LSd/a;

    invoke-interface {v0}, LSd/a;->size()I

    move-result v0

    return v0
.end method

.method public t1([B)Z
    .locals 1

    iget-object v0, p0, LYd/c;->b:LSd/a;

    invoke-interface {v0, p1}, LSd/a;->t1([B)Z

    move-result p1

    return p1
.end method

.method public toArray()[B
    .locals 1

    iget-object v0, p0, LYd/c;->b:LSd/a;

    invoke-interface {v0}, LSd/a;->toArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/c;->b:LSd/a;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w2(LSd/a;)Z
    .locals 1

    iget-object v0, p0, LYd/c;->b:LSd/a;

    invoke-interface {v0, p1}, LSd/a;->w2(LSd/a;)Z

    move-result p1

    return p1
.end method

.method public y1([B)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

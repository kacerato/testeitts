.class public LYd/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LSd/h;
.implements Ljava/io/Serializable;


# static fields
.field public static final c:J = 0x19420080cb5ef71eL


# instance fields
.field public final b:LSd/h;


# direct methods
.method public constructor <init>(LSd/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/g0;->b:LSd/h;

    return-void
.end method


# virtual methods
.method public B1([J)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public B2(LSd/h;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public H1(LSd/h;)Z
    .locals 1

    iget-object v0, p0, LYd/g0;->b:LSd/h;

    invoke-interface {v0, p1}, LSd/h;->H1(LSd/h;)Z

    move-result p1

    return p1
.end method

.method public M0(J)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public O0([J)[J
    .locals 1

    iget-object v0, p0, LYd/g0;->b:LSd/h;

    invoke-interface {v0, p1}, LSd/h;->O0([J)[J

    move-result-object p1

    return-object p1
.end method

.method public Q1([J)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public U1([J)Z
    .locals 1

    iget-object v0, p0, LYd/g0;->b:LSd/h;

    invoke-interface {v0, p1}, LSd/h;->U1([J)Z

    move-result p1

    return p1
.end method

.method public X0(J)Z
    .locals 1

    iget-object v0, p0, LYd/g0;->b:LSd/h;

    invoke-interface {v0, p1, p2}, LSd/h;->X0(J)Z

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
            "Ljava/lang/Long;",
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

    iget-object v0, p0, LYd/g0;->b:LSd/h;

    invoke-interface {v0, p1}, LSd/h;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public e(J)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public f2(LSd/h;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public i()J
    .locals 2

    iget-object v0, p0, LYd/g0;->b:LSd/h;

    invoke-interface {v0}, LSd/h;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/g0;->b:LSd/h;

    invoke-interface {v0}, LSd/h;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/b0;
    .locals 1

    new-instance v0, LYd/g0$a;

    invoke-direct {v0, p0}, LYd/g0$a;-><init>(LYd/g0;)V

    return-object v0
.end method

.method public j1(Lhe/b0;)Z
    .locals 1

    iget-object v0, p0, LYd/g0;->b:LSd/h;

    invoke-interface {v0, p1}, LSd/h;->j1(Lhe/b0;)Z

    move-result p1

    return p1
.end method

.method public q1(LSd/h;)Z
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

    iget-object v0, p0, LYd/g0;->b:LSd/h;

    invoke-interface {v0}, LSd/h;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[J
    .locals 1

    iget-object v0, p0, LYd/g0;->b:LSd/h;

    invoke-interface {v0}, LSd/h;->toArray()[J

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/g0;->b:LSd/h;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y2([J)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

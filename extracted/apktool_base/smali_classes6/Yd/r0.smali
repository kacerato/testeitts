.class public LYd/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/a0;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lee/a0<",
        "TK;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lee/a0<",
            "TK;>;"
        }
    .end annotation
.end field

.field public transient c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field public transient d:LSd/e;


# direct methods
.method public constructor <init>(Lee/a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lee/a0<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/r0;->c:Ljava/util/Set;

    iput-object v0, p0, LYd/r0;->d:LSd/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/r0;->b:Lee/a0;

    return-void
.end method

.method public static synthetic a(LYd/r0;)Lee/a0;
    .locals 0

    iget-object p0, p0, LYd/r0;->b:Lee/a0;

    return-object p0
.end method


# virtual methods
.method public C0([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)[TK;"
        }
    .end annotation

    iget-object v0, p0, LYd/r0;->b:Lee/a0;

    invoke-interface {v0, p1}, Lee/a0;->C0([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public G(Lhe/k0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/k0<",
            "-TK;>;)Z"
        }
    .end annotation

    iget-object v0, p0, LYd/r0;->b:Lee/a0;

    invoke-interface {v0, p1}, Lee/a0;->G(Lhe/k0;)Z

    move-result p1

    return p1
.end method

.method public I(Lhe/z;)Z
    .locals 1

    iget-object v0, p0, LYd/r0;->b:Lee/a0;

    invoke-interface {v0, p1}, Lee/a0;->I(Lhe/z;)Z

    move-result p1

    return p1
.end method

.method public La(Ljava/lang/Object;DD)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;DD)D"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Pd(Lhe/f0;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/f0<",
            "-TK;>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public T(D)Z
    .locals 1

    iget-object v0, p0, LYd/r0;->b:Lee/a0;

    invoke-interface {v0, p1, p2}, Lee/a0;->T(D)Z

    move-result p1

    return p1
.end method

.method public Z6(Lee/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lee/a0<",
            "+TK;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b0([D)[D
    .locals 1

    iget-object v0, p0, LYd/r0;->b:Lee/a0;

    invoke-interface {v0, p1}, Lee/a0;->b0([D)[D

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, LYd/r0;->b:Lee/a0;

    invoke-interface {v0, p1}, Lee/a0;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/r0;->b:Lee/a0;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public f8(Lhe/f0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/f0<",
            "-TK;>;)Z"
        }
    .end annotation

    iget-object v0, p0, LYd/r0;->b:Lee/a0;

    invoke-interface {v0, p1}, Lee/a0;->f8(Lhe/f0;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/Object;)D
    .locals 2

    iget-object v0, p0, LYd/r0;->b:Lee/a0;

    invoke-interface {v0, p1}, Lee/a0;->get(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/r0;->b:Lee/a0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()D
    .locals 2

    iget-object v0, p0, LYd/r0;->b:Lee/a0;

    invoke-interface {v0}, Lee/a0;->i()D

    move-result-wide v0

    return-wide v0
.end method

.method public i4(Ljava/lang/Object;D)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;D)D"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public i5(Ljava/lang/Object;D)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;D)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/r0;->b:Lee/a0;

    invoke-interface {v0}, Lee/a0;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/h0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LZd/h0<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, LYd/r0$a;

    invoke-direct {v0, p0}, LYd/r0$a;-><init>(LYd/r0;)V

    return-object v0
.end method

.method public j()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LYd/r0;->b:Lee/a0;

    invoke-interface {v0}, Lee/a0;->j()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/e;
    .locals 1

    iget-object v0, p0, LYd/r0;->d:LSd/e;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/r0;->b:Lee/a0;

    invoke-interface {v0}, Lee/a0;->k()LSd/e;

    move-result-object v0

    invoke-static {v0}, LSd/c;->d1(LSd/e;)LSd/e;

    move-result-object v0

    iput-object v0, p0, LYd/r0;->d:LSd/e;

    :cond_0
    iget-object v0, p0, LYd/r0;->d:LSd/e;

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, LYd/r0;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/r0;->b:Lee/a0;

    invoke-interface {v0}, Lee/a0;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, LYd/r0;->c:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, LYd/r0;->c:Ljava/util/Set;

    return-object v0
.end method

.method public p(LUd/c;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public sa(Ljava/lang/Object;D)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;D)D"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/r0;->b:Lee/a0;

    invoke-interface {v0}, Lee/a0;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/r0;->b:Lee/a0;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[D
    .locals 1

    iget-object v0, p0, LYd/r0;->b:Lee/a0;

    invoke-interface {v0}, Lee/a0;->values()[D

    move-result-object v0

    return-object v0
.end method

.method public x0(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

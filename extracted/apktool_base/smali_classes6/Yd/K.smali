.class public LYd/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/A;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/A;

.field public transient c:Lke/d;

.field public transient d:LSd/e;


# direct methods
.method public constructor <init>(Lee/A;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/K;->c:Lke/d;

    iput-object v0, p0, LYd/K;->d:LSd/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/K;->b:Lee/A;

    return-void
.end method

.method public static synthetic a(LYd/K;)Lee/A;
    .locals 0

    iget-object p0, p0, LYd/K;->b:Lee/A;

    return-object p0
.end method


# virtual methods
.method public G0(F)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public H(F)Z
    .locals 1

    iget-object v0, p0, LYd/K;->b:Lee/A;

    invoke-interface {v0, p1}, Lee/A;->H(F)Z

    move-result p1

    return p1
.end method

.method public H5(FD)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public I(Lhe/z;)Z
    .locals 1

    iget-object v0, p0, LYd/K;->b:Lee/A;

    invoke-interface {v0, p1}, Lee/A;->I(Lhe/z;)Z

    move-result p1

    return p1
.end method

.method public I9(FD)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public K5(Lhe/D;)Z
    .locals 1

    iget-object v0, p0, LYd/K;->b:Lee/A;

    invoke-interface {v0, p1}, Lee/A;->K5(Lhe/D;)Z

    move-result p1

    return p1
.end method

.method public M9(FDD)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public T(D)Z
    .locals 1

    iget-object v0, p0, LYd/K;->b:Lee/A;

    invoke-interface {v0, p1, p2}, Lee/A;->T(D)Z

    move-result p1

    return p1
.end method

.method public b0([D)[D
    .locals 1

    iget-object v0, p0, LYd/K;->b:Lee/A;

    invoke-interface {v0, p1}, Lee/A;->b0([D)[D

    move-result-object p1

    return-object p1
.end method

.method public c(F)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public cb(Lhe/D;)Z
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

.method public d0([F)[F
    .locals 1

    iget-object v0, p0, LYd/K;->b:Lee/A;

    invoke-interface {v0, p1}, Lee/A;->d0([F)[F

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/K;->b:Lee/A;

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

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/K;->b:Lee/A;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()D
    .locals 2

    iget-object v0, p0, LYd/K;->b:Lee/A;

    invoke-interface {v0}, Lee/A;->i()D

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/K;->b:Lee/A;

    invoke-interface {v0}, Lee/A;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/E;
    .locals 1

    new-instance v0, LYd/K$a;

    invoke-direct {v0, p0}, LYd/K$a;-><init>(LYd/K;)V

    return-object v0
.end method

.method public j()[F
    .locals 1

    iget-object v0, p0, LYd/K;->b:Lee/A;

    invoke-interface {v0}, Lee/A;->j()[F

    move-result-object v0

    return-object v0
.end method

.method public j0(Lhe/I;)Z
    .locals 1

    iget-object v0, p0, LYd/K;->b:Lee/A;

    invoke-interface {v0, p1}, Lee/A;->j0(Lhe/I;)Z

    move-result p1

    return p1
.end method

.method public k()LSd/e;
    .locals 1

    iget-object v0, p0, LYd/K;->d:LSd/e;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/K;->b:Lee/A;

    invoke-interface {v0}, Lee/A;->k()LSd/e;

    move-result-object v0

    invoke-static {v0}, LSd/c;->d1(LSd/e;)LSd/e;

    move-result-object v0

    iput-object v0, p0, LYd/K;->d:LSd/e;

    :cond_0
    iget-object v0, p0, LYd/K;->d:LSd/e;

    return-object v0
.end method

.method public keySet()Lke/d;
    .locals 1

    iget-object v0, p0, LYd/K;->c:Lke/d;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/K;->b:Lee/A;

    invoke-interface {v0}, Lee/A;->keySet()Lke/d;

    move-result-object v0

    invoke-static {v0}, LSd/c;->D2(Lke/d;)Lke/d;

    move-result-object v0

    iput-object v0, p0, LYd/K;->c:Lke/d;

    :cond_0
    iget-object v0, p0, LYd/K;->c:Lke/d;

    return-object v0
.end method

.method public l()F
    .locals 1

    iget-object v0, p0, LYd/K;->b:Lee/A;

    invoke-interface {v0}, Lee/A;->l()F

    move-result v0

    return v0
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
            "+",
            "Ljava/lang/Float;",
            "+",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public q0(F)D
    .locals 2

    iget-object v0, p0, LYd/K;->b:Lee/A;

    invoke-interface {v0, p1}, Lee/A;->q0(F)D

    move-result-wide v0

    return-wide v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/K;->b:Lee/A;

    invoke-interface {v0}, Lee/A;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/K;->b:Lee/A;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[D
    .locals 1

    iget-object v0, p0, LYd/K;->b:Lee/A;

    invoke-interface {v0}, Lee/A;->values()[D

    move-result-object v0

    return-object v0
.end method

.method public w5(Lee/A;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public ye(FD)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

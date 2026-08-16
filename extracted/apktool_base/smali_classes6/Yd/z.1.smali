.class public LYd/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/s;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/s;

.field public transient c:Lke/c;

.field public transient d:LSd/e;


# direct methods
.method public constructor <init>(Lee/s;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/z;->c:Lke/c;

    iput-object v0, p0, LYd/z;->d:LSd/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/z;->b:Lee/s;

    return-void
.end method

.method public static synthetic b(LYd/z;)Lee/s;
    .locals 0

    iget-object p0, p0, LYd/z;->b:Lee/s;

    return-object p0
.end method


# virtual methods
.method public A(D)Z
    .locals 1

    iget-object v0, p0, LYd/z;->b:Lee/s;

    invoke-interface {v0, p1, p2}, Lee/s;->A(D)Z

    move-result p1

    return p1
.end method

.method public Fa(DD)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public I(Lhe/z;)Z
    .locals 1

    iget-object v0, p0, LYd/z;->b:Lee/s;

    invoke-interface {v0, p1}, Lee/s;->I(Lhe/z;)Z

    move-result p1

    return p1
.end method

.method public J2(DD)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Rd(Lee/s;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public T(D)Z
    .locals 1

    iget-object v0, p0, LYd/z;->b:Lee/s;

    invoke-interface {v0, p1, p2}, Lee/s;->T(D)Z

    move-result p1

    return p1
.end method

.method public T9(Lhe/u;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public W([D)[D
    .locals 1

    iget-object v0, p0, LYd/z;->b:Lee/s;

    invoke-interface {v0, p1}, Lee/s;->W([D)[D

    move-result-object p1

    return-object p1
.end method

.method public a(D)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b0([D)[D
    .locals 1

    iget-object v0, p0, LYd/z;->b:Lee/s;

    invoke-interface {v0, p1}, Lee/s;->b0([D)[D

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/z;->b:Lee/s;

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

    iget-object v0, p0, LYd/z;->b:Lee/s;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()D
    .locals 2

    iget-object v0, p0, LYd/z;->b:Lee/s;

    invoke-interface {v0}, Lee/s;->i()D

    move-result-wide v0

    return-wide v0
.end method

.method public increment(D)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/z;->b:Lee/s;

    invoke-interface {v0}, Lee/s;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/v;
    .locals 1

    new-instance v0, LYd/z$a;

    invoke-direct {v0, p0}, LYd/z$a;-><init>(LYd/z;)V

    return-object v0
.end method

.method public j()[D
    .locals 1

    iget-object v0, p0, LYd/z;->b:Lee/s;

    invoke-interface {v0}, Lee/s;->j()[D

    move-result-object v0

    return-object v0
.end method

.method public j9(DD)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public k()LSd/e;
    .locals 1

    iget-object v0, p0, LYd/z;->d:LSd/e;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/z;->b:Lee/s;

    invoke-interface {v0}, Lee/s;->k()LSd/e;

    move-result-object v0

    invoke-static {v0}, LSd/c;->d1(LSd/e;)LSd/e;

    move-result-object v0

    iput-object v0, p0, LYd/z;->d:LSd/e;

    :cond_0
    iget-object v0, p0, LYd/z;->d:LSd/e;

    return-object v0
.end method

.method public k0(Lhe/z;)Z
    .locals 1

    iget-object v0, p0, LYd/z;->b:Lee/s;

    invoke-interface {v0, p1}, Lee/s;->k0(Lhe/z;)Z

    move-result p1

    return p1
.end method

.method public kd(DDD)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public keySet()Lke/c;
    .locals 1

    iget-object v0, p0, LYd/z;->c:Lke/c;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/z;->b:Lee/s;

    invoke-interface {v0}, Lee/s;->keySet()Lke/c;

    move-result-object v0

    invoke-static {v0}, LSd/c;->C2(Lke/c;)Lke/c;

    move-result-object v0

    iput-object v0, p0, LYd/z;->c:Lke/c;

    :cond_0
    iget-object v0, p0, LYd/z;->c:Lke/c;

    return-object v0
.end method

.method public l()D
    .locals 2

    iget-object v0, p0, LYd/z;->b:Lee/s;

    invoke-interface {v0}, Lee/s;->l()D

    move-result-wide v0

    return-wide v0
.end method

.method public mc(Lhe/u;)Z
    .locals 1

    iget-object v0, p0, LYd/z;->b:Lee/s;

    invoke-interface {v0, p1}, Lee/s;->mc(Lhe/u;)Z

    move-result p1

    return p1
.end method

.method public p(LUd/c;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public p0(D)D
    .locals 1

    iget-object v0, p0, LYd/z;->b:Lee/s;

    invoke-interface {v0, p1, p2}, Lee/s;->p0(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Double;",
            "+",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/z;->b:Lee/s;

    invoke-interface {v0}, Lee/s;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/z;->b:Lee/s;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[D
    .locals 1

    iget-object v0, p0, LYd/z;->b:Lee/s;

    invoke-interface {v0}, Lee/s;->values()[D

    move-result-object v0

    return-object v0
.end method

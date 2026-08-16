.class public LYd/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/r;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/r;

.field public transient c:Lke/c;

.field public transient d:LSd/b;


# direct methods
.method public constructor <init>(Lee/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/x;->c:Lke/c;

    iput-object v0, p0, LYd/x;->d:LSd/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/x;->b:Lee/r;

    return-void
.end method

.method public static synthetic b(LYd/x;)Lee/r;
    .locals 0

    iget-object p0, p0, LYd/x;->b:Lee/r;

    return-object p0
.end method


# virtual methods
.method public A(D)Z
    .locals 1

    iget-object v0, p0, LYd/x;->b:Lee/r;

    invoke-interface {v0, p1, p2}, Lee/r;->A(D)Z

    move-result p1

    return p1
.end method

.method public Ga(DC)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public I2(DC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public K(Lhe/q;)Z
    .locals 1

    iget-object v0, p0, LYd/x;->b:Lee/r;

    invoke-interface {v0, p1}, Lee/r;->K(Lhe/q;)Z

    move-result p1

    return p1
.end method

.method public O(C)Z
    .locals 1

    iget-object v0, p0, LYd/x;->b:Lee/r;

    invoke-interface {v0, p1}, Lee/r;->O(C)Z

    move-result p1

    return p1
.end method

.method public Qe(Lee/r;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Rc(DCC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public W([D)[D
    .locals 1

    iget-object v0, p0, LYd/x;->b:Lee/r;

    invoke-interface {v0, p1}, Lee/r;->W([D)[D

    move-result-object p1

    return-object p1
.end method

.method public Z([C)[C
    .locals 1

    iget-object v0, p0, LYd/x;->b:Lee/r;

    invoke-interface {v0, p1}, Lee/r;->Z([C)[C

    move-result-object p1

    return-object p1
.end method

.method public a(D)C
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

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/x;->b:Lee/r;

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

.method public g(LUd/b;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/x;->b:Lee/r;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()C
    .locals 1

    iget-object v0, p0, LYd/x;->b:Lee/r;

    invoke-interface {v0}, Lee/r;->i()C

    move-result v0

    return v0
.end method

.method public i9(DC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public increment(D)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/x;->b:Lee/r;

    invoke-interface {v0}, Lee/r;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/u;
    .locals 1

    new-instance v0, LYd/x$a;

    invoke-direct {v0, p0}, LYd/x$a;-><init>(LYd/x;)V

    return-object v0
.end method

.method public j()[D
    .locals 1

    iget-object v0, p0, LYd/x;->b:Lee/r;

    invoke-interface {v0}, Lee/r;->j()[D

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/b;
    .locals 1

    iget-object v0, p0, LYd/x;->d:LSd/b;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/x;->b:Lee/r;

    invoke-interface {v0}, Lee/r;->k()LSd/b;

    move-result-object v0

    invoke-static {v0}, LSd/c;->c1(LSd/b;)LSd/b;

    move-result-object v0

    iput-object v0, p0, LYd/x;->d:LSd/b;

    :cond_0
    iget-object v0, p0, LYd/x;->d:LSd/b;

    return-object v0
.end method

.method public k0(Lhe/z;)Z
    .locals 1

    iget-object v0, p0, LYd/x;->b:Lee/r;

    invoke-interface {v0, p1}, Lee/r;->k0(Lhe/z;)Z

    move-result p1

    return p1
.end method

.method public keySet()Lke/c;
    .locals 1

    iget-object v0, p0, LYd/x;->c:Lke/c;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/x;->b:Lee/r;

    invoke-interface {v0}, Lee/r;->keySet()Lke/c;

    move-result-object v0

    invoke-static {v0}, LSd/c;->C2(Lke/c;)Lke/c;

    move-result-object v0

    iput-object v0, p0, LYd/x;->c:Lke/c;

    :cond_0
    iget-object v0, p0, LYd/x;->c:Lke/c;

    return-object v0
.end method

.method public l()D
    .locals 2

    iget-object v0, p0, LYd/x;->b:Lee/r;

    invoke-interface {v0}, Lee/r;->l()D

    move-result-wide v0

    return-wide v0
.end method

.method public p0(D)C
    .locals 1

    iget-object v0, p0, LYd/x;->b:Lee/r;

    invoke-interface {v0, p1, p2}, Lee/r;->p0(D)C

    move-result p1

    return p1
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
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/x;->b:Lee/r;

    invoke-interface {v0}, Lee/r;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/x;->b:Lee/r;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u3(Lhe/t;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public values()[C
    .locals 1

    iget-object v0, p0, LYd/x;->b:Lee/r;

    invoke-interface {v0}, Lee/r;->values()[C

    move-result-object v0

    return-object v0
.end method

.method public y8(Lhe/t;)Z
    .locals 1

    iget-object v0, p0, LYd/x;->b:Lee/r;

    invoke-interface {v0, p1}, Lee/r;->y8(Lhe/t;)Z

    move-result p1

    return p1
.end method

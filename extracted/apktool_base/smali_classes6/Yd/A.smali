.class public LYd/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/t;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/t;

.field public transient c:Lke/c;

.field public transient d:LSd/f;


# direct methods
.method public constructor <init>(Lee/t;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/A;->c:Lke/c;

    iput-object v0, p0, LYd/A;->d:LSd/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/A;->b:Lee/t;

    return-void
.end method

.method public static synthetic b(LYd/A;)Lee/t;
    .locals 0

    iget-object p0, p0, LYd/A;->b:Lee/t;

    return-object p0
.end method


# virtual methods
.method public A(D)Z
    .locals 1

    iget-object v0, p0, LYd/A;->b:Lee/t;

    invoke-interface {v0, p1, p2}, Lee/t;->A(D)Z

    move-result p1

    return p1
.end method

.method public B(Lhe/I;)Z
    .locals 1

    iget-object v0, p0, LYd/A;->b:Lee/t;

    invoke-interface {v0, p1}, Lee/t;->B(Lhe/I;)Z

    move-result p1

    return p1
.end method

.method public Dc(DFF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public K2(DF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Ra(DF)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Sb(Lee/t;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public U(F)Z
    .locals 1

    iget-object v0, p0, LYd/A;->b:Lee/t;

    invoke-interface {v0, p1}, Lee/t;->U(F)Z

    move-result p1

    return p1
.end method

.method public W([D)[D
    .locals 1

    iget-object v0, p0, LYd/A;->b:Lee/t;

    invoke-interface {v0, p1}, Lee/t;->W([D)[D

    move-result-object p1

    return-object p1
.end method

.method public X6(Lhe/v;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a(D)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b9(DF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c0([F)[F
    .locals 1

    iget-object v0, p0, LYd/A;->b:Lee/t;

    invoke-interface {v0, p1}, Lee/t;->c0([F)[F

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

    iget-object v0, p0, LYd/A;->b:Lee/t;

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

    iget-object v0, p0, LYd/A;->b:Lee/t;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()F
    .locals 1

    iget-object v0, p0, LYd/A;->b:Lee/t;

    invoke-interface {v0}, Lee/t;->i()F

    move-result v0

    return v0
.end method

.method public increment(D)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/A;->b:Lee/t;

    invoke-interface {v0}, Lee/t;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/w;
    .locals 1

    new-instance v0, LYd/A$a;

    invoke-direct {v0, p0}, LYd/A$a;-><init>(LYd/A;)V

    return-object v0
.end method

.method public j()[D
    .locals 1

    iget-object v0, p0, LYd/A;->b:Lee/t;

    invoke-interface {v0}, Lee/t;->j()[D

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/f;
    .locals 1

    iget-object v0, p0, LYd/A;->d:LSd/f;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/A;->b:Lee/t;

    invoke-interface {v0}, Lee/t;->k()LSd/f;

    move-result-object v0

    invoke-static {v0}, LSd/c;->e1(LSd/f;)LSd/f;

    move-result-object v0

    iput-object v0, p0, LYd/A;->d:LSd/f;

    :cond_0
    iget-object v0, p0, LYd/A;->d:LSd/f;

    return-object v0
.end method

.method public k0(Lhe/z;)Z
    .locals 1

    iget-object v0, p0, LYd/A;->b:Lee/t;

    invoke-interface {v0, p1}, Lee/t;->k0(Lhe/z;)Z

    move-result p1

    return p1
.end method

.method public keySet()Lke/c;
    .locals 1

    iget-object v0, p0, LYd/A;->c:Lke/c;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/A;->b:Lee/t;

    invoke-interface {v0}, Lee/t;->keySet()Lke/c;

    move-result-object v0

    invoke-static {v0}, LSd/c;->C2(Lke/c;)Lke/c;

    move-result-object v0

    iput-object v0, p0, LYd/A;->c:Lke/c;

    :cond_0
    iget-object v0, p0, LYd/A;->c:Lke/c;

    return-object v0
.end method

.method public l()D
    .locals 2

    iget-object v0, p0, LYd/A;->b:Lee/t;

    invoke-interface {v0}, Lee/t;->l()D

    move-result-wide v0

    return-wide v0
.end method

.method public n(LUd/d;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public p0(D)F
    .locals 1

    iget-object v0, p0, LYd/A;->b:Lee/t;

    invoke-interface {v0, p1, p2}, Lee/t;->p0(D)F

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
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public q9(Lhe/v;)Z
    .locals 1

    iget-object v0, p0, LYd/A;->b:Lee/t;

    invoke-interface {v0, p1}, Lee/t;->q9(Lhe/v;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/A;->b:Lee/t;

    invoke-interface {v0}, Lee/t;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/A;->b:Lee/t;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[F
    .locals 1

    iget-object v0, p0, LYd/A;->b:Lee/t;

    invoke-interface {v0}, Lee/t;->values()[F

    move-result-object v0

    return-object v0
.end method

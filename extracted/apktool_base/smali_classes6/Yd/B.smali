.class public LYd/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/u;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/u;

.field public transient c:Lke/c;

.field public transient d:LSd/g;


# direct methods
.method public constructor <init>(Lee/u;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/B;->c:Lke/c;

    iput-object v0, p0, LYd/B;->d:LSd/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/B;->b:Lee/u;

    return-void
.end method

.method public static synthetic b(LYd/B;)Lee/u;
    .locals 0

    iget-object p0, p0, LYd/B;->b:Lee/u;

    return-object p0
.end method


# virtual methods
.method public A(D)Z
    .locals 1

    iget-object v0, p0, LYd/B;->b:Lee/u;

    invoke-interface {v0, p1, p2}, Lee/u;->A(D)Z

    move-result p1

    return p1
.end method

.method public N2(DI)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public N4(DII)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Pa(DI)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Q(I)Z
    .locals 1

    iget-object v0, p0, LYd/B;->b:Lee/u;

    invoke-interface {v0, p1}, Lee/u;->Q(I)Z

    move-result p1

    return p1
.end method

.method public S5(Lhe/w;)Z
    .locals 1

    iget-object v0, p0, LYd/B;->b:Lee/u;

    invoke-interface {v0, p1}, Lee/u;->S5(Lhe/w;)Z

    move-result p1

    return p1
.end method

.method public W([D)[D
    .locals 1

    iget-object v0, p0, LYd/B;->b:Lee/u;

    invoke-interface {v0, p1}, Lee/u;->W([D)[D

    move-result-object p1

    return-object p1
.end method

.method public W5(Lhe/w;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a(D)I
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

.method public e0([I)[I
    .locals 1

    iget-object v0, p0, LYd/B;->b:Lee/u;

    invoke-interface {v0, p1}, Lee/u;->e0([I)[I

    move-result-object p1

    return-object p1
.end method

.method public e9(DI)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/B;->b:Lee/u;

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

.method public f(LUd/e;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public g3(Lee/u;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/B;->b:Lee/u;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, LYd/B;->b:Lee/u;

    invoke-interface {v0}, Lee/u;->i()I

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

    iget-object v0, p0, LYd/B;->b:Lee/u;

    invoke-interface {v0}, Lee/u;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/x;
    .locals 1

    new-instance v0, LYd/B$a;

    invoke-direct {v0, p0}, LYd/B$a;-><init>(LYd/B;)V

    return-object v0
.end method

.method public j()[D
    .locals 1

    iget-object v0, p0, LYd/B;->b:Lee/u;

    invoke-interface {v0}, Lee/u;->j()[D

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/g;
    .locals 1

    iget-object v0, p0, LYd/B;->d:LSd/g;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/B;->b:Lee/u;

    invoke-interface {v0}, Lee/u;->k()LSd/g;

    move-result-object v0

    invoke-static {v0}, LSd/c;->f1(LSd/g;)LSd/g;

    move-result-object v0

    iput-object v0, p0, LYd/B;->d:LSd/g;

    :cond_0
    iget-object v0, p0, LYd/B;->d:LSd/g;

    return-object v0
.end method

.method public k0(Lhe/z;)Z
    .locals 1

    iget-object v0, p0, LYd/B;->b:Lee/u;

    invoke-interface {v0, p1}, Lee/u;->k0(Lhe/z;)Z

    move-result p1

    return p1
.end method

.method public keySet()Lke/c;
    .locals 1

    iget-object v0, p0, LYd/B;->c:Lke/c;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/B;->b:Lee/u;

    invoke-interface {v0}, Lee/u;->keySet()Lke/c;

    move-result-object v0

    invoke-static {v0}, LSd/c;->C2(Lke/c;)Lke/c;

    move-result-object v0

    iput-object v0, p0, LYd/B;->c:Lke/c;

    :cond_0
    iget-object v0, p0, LYd/B;->c:Lke/c;

    return-object v0
.end method

.method public l()D
    .locals 2

    iget-object v0, p0, LYd/B;->b:Lee/u;

    invoke-interface {v0}, Lee/u;->l()D

    move-result-wide v0

    return-wide v0
.end method

.method public m0(Lhe/S;)Z
    .locals 1

    iget-object v0, p0, LYd/B;->b:Lee/u;

    invoke-interface {v0, p1}, Lee/u;->m0(Lhe/S;)Z

    move-result p1

    return p1
.end method

.method public p0(D)I
    .locals 1

    iget-object v0, p0, LYd/B;->b:Lee/u;

    invoke-interface {v0, p1, p2}, Lee/u;->p0(D)I

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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/B;->b:Lee/u;

    invoke-interface {v0}, Lee/u;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/B;->b:Lee/u;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[I
    .locals 1

    iget-object v0, p0, LYd/B;->b:Lee/u;

    invoke-interface {v0}, Lee/u;->values()[I

    move-result-object v0

    return-object v0
.end method

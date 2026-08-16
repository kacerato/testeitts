.class public LYd/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/C;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/C;

.field public transient c:Lke/d;

.field public transient d:LSd/g;


# direct methods
.method public constructor <init>(Lee/C;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/M;->c:Lke/d;

    iput-object v0, p0, LYd/M;->d:LSd/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/M;->b:Lee/C;

    return-void
.end method

.method public static synthetic a(LYd/M;)Lee/C;
    .locals 0

    iget-object p0, p0, LYd/M;->b:Lee/C;

    return-object p0
.end method


# virtual methods
.method public D9(FI)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public G0(F)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public H(F)Z
    .locals 1

    iget-object v0, p0, LYd/M;->b:Lee/C;

    invoke-interface {v0, p1}, Lee/C;->H(F)Z

    move-result p1

    return p1
.end method

.method public L3(Lhe/F;)Z
    .locals 1

    iget-object v0, p0, LYd/M;->b:Lee/C;

    invoke-interface {v0, p1}, Lee/C;->L3(Lhe/F;)Z

    move-result p1

    return p1
.end method

.method public M5(FI)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Q(I)Z
    .locals 1

    iget-object v0, p0, LYd/M;->b:Lee/C;

    invoke-interface {v0, p1}, Lee/C;->Q(I)Z

    move-result p1

    return p1
.end method

.method public Sc(FII)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c(F)I
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

    iget-object v0, p0, LYd/M;->b:Lee/C;

    invoke-interface {v0, p1}, Lee/C;->d0([F)[F

    move-result-object p1

    return-object p1
.end method

.method public e0([I)[I
    .locals 1

    iget-object v0, p0, LYd/M;->b:Lee/C;

    invoke-interface {v0, p1}, Lee/C;->e0([I)[I

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/M;->b:Lee/C;

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

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/M;->b:Lee/C;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, LYd/M;->b:Lee/C;

    invoke-interface {v0}, Lee/C;->i()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/M;->b:Lee/C;

    invoke-interface {v0}, Lee/C;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/G;
    .locals 1

    new-instance v0, LYd/M$a;

    invoke-direct {v0, p0}, LYd/M$a;-><init>(LYd/M;)V

    return-object v0
.end method

.method public j()[F
    .locals 1

    iget-object v0, p0, LYd/M;->b:Lee/C;

    invoke-interface {v0}, Lee/C;->j()[F

    move-result-object v0

    return-object v0
.end method

.method public j0(Lhe/I;)Z
    .locals 1

    iget-object v0, p0, LYd/M;->b:Lee/C;

    invoke-interface {v0, p1}, Lee/C;->j0(Lhe/I;)Z

    move-result p1

    return p1
.end method

.method public k()LSd/g;
    .locals 1

    iget-object v0, p0, LYd/M;->d:LSd/g;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/M;->b:Lee/C;

    invoke-interface {v0}, Lee/C;->k()LSd/g;

    move-result-object v0

    invoke-static {v0}, LSd/c;->f1(LSd/g;)LSd/g;

    move-result-object v0

    iput-object v0, p0, LYd/M;->d:LSd/g;

    :cond_0
    iget-object v0, p0, LYd/M;->d:LSd/g;

    return-object v0
.end method

.method public keySet()Lke/d;
    .locals 1

    iget-object v0, p0, LYd/M;->c:Lke/d;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/M;->b:Lee/C;

    invoke-interface {v0}, Lee/C;->keySet()Lke/d;

    move-result-object v0

    invoke-static {v0}, LSd/c;->D2(Lke/d;)Lke/d;

    move-result-object v0

    iput-object v0, p0, LYd/M;->c:Lke/d;

    :cond_0
    iget-object v0, p0, LYd/M;->c:Lke/d;

    return-object v0
.end method

.method public l()F
    .locals 1

    iget-object v0, p0, LYd/M;->b:Lee/C;

    invoke-interface {v0}, Lee/C;->l()F

    move-result v0

    return v0
.end method

.method public m0(Lhe/S;)Z
    .locals 1

    iget-object v0, p0, LYd/M;->b:Lee/C;

    invoke-interface {v0, p1}, Lee/C;->m0(Lhe/S;)Z

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
            "Ljava/lang/Float;",
            "+",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public q0(F)I
    .locals 1

    iget-object v0, p0, LYd/M;->b:Lee/C;

    invoke-interface {v0, p1}, Lee/C;->q0(F)I

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/M;->b:Lee/C;

    invoke-interface {v0}, Lee/C;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/M;->b:Lee/C;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[I
    .locals 1

    iget-object v0, p0, LYd/M;->b:Lee/C;

    invoke-interface {v0}, Lee/C;->values()[I

    move-result-object v0

    return-object v0
.end method

.method public ve(FI)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public y9(Lee/C;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public yc(Lhe/F;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.class public LYd/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/F;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/F;

.field public transient c:Lke/d;

.field public transient d:LSd/i;


# direct methods
.method public constructor <init>(Lee/F;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/S;->c:Lke/d;

    iput-object v0, p0, LYd/S;->d:LSd/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/S;->b:Lee/F;

    return-void
.end method

.method public static synthetic a(LYd/S;)Lee/F;
    .locals 0

    iget-object p0, p0, LYd/S;->b:Lee/F;

    return-object p0
.end method


# virtual methods
.method public Ce(FS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public E2(FSS)S
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

    iget-object v0, p0, LYd/S;->b:Lee/F;

    invoke-interface {v0, p1}, Lee/F;->H(F)Z

    move-result p1

    return p1
.end method

.method public L(S)Z
    .locals 1

    iget-object v0, p0, LYd/S;->b:Lee/F;

    invoke-interface {v0, p1}, Lee/F;->L(S)Z

    move-result p1

    return p1
.end method

.method public N(Lhe/t0;)Z
    .locals 1

    iget-object v0, p0, LYd/S;->b:Lee/F;

    invoke-interface {v0, p1}, Lee/F;->N(Lhe/t0;)Z

    move-result p1

    return p1
.end method

.method public T5(FS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public V9(FS)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Yd(Lhe/J;)Z
    .locals 1

    iget-object v0, p0, LYd/S;->b:Lee/F;

    invoke-interface {v0, p1}, Lee/F;->Yd(Lhe/J;)Z

    move-result p1

    return p1
.end method

.method public c(F)S
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

    iget-object v0, p0, LYd/S;->b:Lee/F;

    invoke-interface {v0, p1}, Lee/F;->d0([F)[F

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/S;->b:Lee/F;

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

.method public g7(Lhe/J;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/S;->b:Lee/F;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()S
    .locals 1

    iget-object v0, p0, LYd/S;->b:Lee/F;

    invoke-interface {v0}, Lee/F;->i()S

    move-result v0

    return v0
.end method

.method public i0([S)[S
    .locals 1

    iget-object v0, p0, LYd/S;->b:Lee/F;

    invoke-interface {v0, p1}, Lee/F;->i0([S)[S

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/S;->b:Lee/F;

    invoke-interface {v0}, Lee/F;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/K;
    .locals 1

    new-instance v0, LYd/S$a;

    invoke-direct {v0, p0}, LYd/S$a;-><init>(LYd/S;)V

    return-object v0
.end method

.method public j()[F
    .locals 1

    iget-object v0, p0, LYd/S;->b:Lee/F;

    invoke-interface {v0}, Lee/F;->j()[F

    move-result-object v0

    return-object v0
.end method

.method public j0(Lhe/I;)Z
    .locals 1

    iget-object v0, p0, LYd/S;->b:Lee/F;

    invoke-interface {v0, p1}, Lee/F;->j0(Lhe/I;)Z

    move-result p1

    return p1
.end method

.method public k()LSd/i;
    .locals 1

    iget-object v0, p0, LYd/S;->d:LSd/i;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/S;->b:Lee/F;

    invoke-interface {v0}, Lee/F;->k()LSd/i;

    move-result-object v0

    invoke-static {v0}, LSd/c;->h1(LSd/i;)LSd/i;

    move-result-object v0

    iput-object v0, p0, LYd/S;->d:LSd/i;

    :cond_0
    iget-object v0, p0, LYd/S;->d:LSd/i;

    return-object v0
.end method

.method public keySet()Lke/d;
    .locals 1

    iget-object v0, p0, LYd/S;->c:Lke/d;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/S;->b:Lee/F;

    invoke-interface {v0}, Lee/F;->keySet()Lke/d;

    move-result-object v0

    invoke-static {v0}, LSd/c;->D2(Lke/d;)Lke/d;

    move-result-object v0

    iput-object v0, p0, LYd/S;->c:Lke/d;

    :cond_0
    iget-object v0, p0, LYd/S;->c:Lke/d;

    return-object v0
.end method

.method public l()F
    .locals 1

    iget-object v0, p0, LYd/S;->b:Lee/F;

    invoke-interface {v0}, Lee/F;->l()F

    move-result v0

    return v0
.end method

.method public lb(Lee/F;)V
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
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public q0(F)S
    .locals 1

    iget-object v0, p0, LYd/S;->b:Lee/F;

    invoke-interface {v0, p1}, Lee/F;->q0(F)S

    move-result p1

    return p1
.end method

.method public r(LUd/h;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/S;->b:Lee/F;

    invoke-interface {v0}, Lee/F;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/S;->b:Lee/F;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[S
    .locals 1

    iget-object v0, p0, LYd/S;->b:Lee/F;

    invoke-interface {v0}, Lee/F;->values()[S

    move-result-object v0

    return-object v0
.end method

.class public LYd/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/B;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/B;

.field public transient c:Lke/d;

.field public transient d:LSd/f;


# direct methods
.method public constructor <init>(Lee/B;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/L;->c:Lke/d;

    iput-object v0, p0, LYd/L;->d:LSd/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/L;->b:Lee/B;

    return-void
.end method

.method public static synthetic a(LYd/L;)Lee/B;
    .locals 0

    iget-object p0, p0, LYd/L;->b:Lee/B;

    return-object p0
.end method


# virtual methods
.method public B(Lhe/I;)Z
    .locals 1

    iget-object v0, p0, LYd/L;->b:Lee/B;

    invoke-interface {v0, p1}, Lee/B;->B(Lhe/I;)Z

    move-result p1

    return p1
.end method

.method public G0(F)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public G9(FF)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Gc(Lhe/E;)Z
    .locals 1

    iget-object v0, p0, LYd/L;->b:Lee/B;

    invoke-interface {v0, p1}, Lee/B;->Gc(Lhe/E;)Z

    move-result p1

    return p1
.end method

.method public H(F)Z
    .locals 1

    iget-object v0, p0, LYd/L;->b:Lee/B;

    invoke-interface {v0, p1}, Lee/B;->H(F)Z

    move-result p1

    return p1
.end method

.method public J5(FF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Se(FFF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public U(F)Z
    .locals 1

    iget-object v0, p0, LYd/L;->b:Lee/B;

    invoke-interface {v0, p1}, Lee/B;->U(F)Z

    move-result p1

    return p1
.end method

.method public U5(Lee/B;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c(F)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c0([F)[F
    .locals 1

    iget-object v0, p0, LYd/L;->b:Lee/B;

    invoke-interface {v0, p1}, Lee/B;->c0([F)[F

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public d0([F)[F
    .locals 1

    iget-object v0, p0, LYd/L;->b:Lee/B;

    invoke-interface {v0, p1}, Lee/B;->d0([F)[F

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/L;->b:Lee/B;

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

    iget-object v0, p0, LYd/L;->b:Lee/B;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()F
    .locals 1

    iget-object v0, p0, LYd/L;->b:Lee/B;

    invoke-interface {v0}, Lee/B;->i()F

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/L;->b:Lee/B;

    invoke-interface {v0}, Lee/B;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/F;
    .locals 1

    new-instance v0, LYd/L$a;

    invoke-direct {v0, p0}, LYd/L$a;-><init>(LYd/L;)V

    return-object v0
.end method

.method public j()[F
    .locals 1

    iget-object v0, p0, LYd/L;->b:Lee/B;

    invoke-interface {v0}, Lee/B;->j()[F

    move-result-object v0

    return-object v0
.end method

.method public j0(Lhe/I;)Z
    .locals 1

    iget-object v0, p0, LYd/L;->b:Lee/B;

    invoke-interface {v0, p1}, Lee/B;->j0(Lhe/I;)Z

    move-result p1

    return p1
.end method

.method public k()LSd/f;
    .locals 1

    iget-object v0, p0, LYd/L;->d:LSd/f;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/L;->b:Lee/B;

    invoke-interface {v0}, Lee/B;->k()LSd/f;

    move-result-object v0

    invoke-static {v0}, LSd/c;->e1(LSd/f;)LSd/f;

    move-result-object v0

    iput-object v0, p0, LYd/L;->d:LSd/f;

    :cond_0
    iget-object v0, p0, LYd/L;->d:LSd/f;

    return-object v0
.end method

.method public keySet()Lke/d;
    .locals 1

    iget-object v0, p0, LYd/L;->c:Lke/d;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/L;->b:Lee/B;

    invoke-interface {v0}, Lee/B;->keySet()Lke/d;

    move-result-object v0

    invoke-static {v0}, LSd/c;->D2(Lke/d;)Lke/d;

    move-result-object v0

    iput-object v0, p0, LYd/L;->c:Lke/d;

    :cond_0
    iget-object v0, p0, LYd/L;->c:Lke/d;

    return-object v0
.end method

.method public l()F
    .locals 1

    iget-object v0, p0, LYd/L;->b:Lee/B;

    invoke-interface {v0}, Lee/B;->l()F

    move-result v0

    return v0
.end method

.method public n(LUd/d;)V
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
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public q0(F)F
    .locals 1

    iget-object v0, p0, LYd/L;->b:Lee/B;

    invoke-interface {v0, p1}, Lee/B;->q0(F)F

    move-result p1

    return p1
.end method

.method public r3(Lhe/E;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public se(FF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/L;->b:Lee/B;

    invoke-interface {v0}, Lee/B;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/L;->b:Lee/B;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[F
    .locals 1

    iget-object v0, p0, LYd/L;->b:Lee/B;

    invoke-interface {v0}, Lee/B;->values()[F

    move-result-object v0

    return-object v0
.end method

.class public LYd/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/y;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/y;

.field public transient c:Lke/d;

.field public transient d:LSd/a;


# direct methods
.method public constructor <init>(Lee/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/H;->c:Lke/d;

    iput-object v0, p0, LYd/H;->d:LSd/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/H;->b:Lee/y;

    return-void
.end method

.method public static synthetic a(LYd/H;)Lee/y;
    .locals 0

    iget-object p0, p0, LYd/H;->b:Lee/y;

    return-object p0
.end method


# virtual methods
.method public D5(FB)B
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

    iget-object v0, p0, LYd/H;->b:Lee/y;

    invoke-interface {v0, p1}, Lee/y;->H(F)Z

    move-result p1

    return p1
.end method

.method public K9(FB)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public M(Lhe/h;)Z
    .locals 1

    iget-object v0, p0, LYd/H;->b:Lee/y;

    invoke-interface {v0, p1}, Lee/y;->M(Lhe/h;)Z

    move-result p1

    return p1
.end method

.method public Ma(Lee/y;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public P(B)Z
    .locals 1

    iget-object v0, p0, LYd/H;->b:Lee/y;

    invoke-interface {v0, p1}, Lee/y;->P(B)Z

    move-result p1

    return p1
.end method

.method public Qa(FBB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Za(Lhe/B;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a0([B)[B
    .locals 1

    iget-object v0, p0, LYd/H;->b:Lee/y;

    invoke-interface {v0, p1}, Lee/y;->a0([B)[B

    move-result-object p1

    return-object p1
.end method

.method public c(F)B
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

    iget-object v0, p0, LYd/H;->b:Lee/y;

    invoke-interface {v0, p1}, Lee/y;->d0([F)[F

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/H;->b:Lee/y;

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

    iget-object v0, p0, LYd/H;->b:Lee/y;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()B
    .locals 1

    iget-object v0, p0, LYd/H;->b:Lee/y;

    invoke-interface {v0}, Lee/y;->i()B

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/H;->b:Lee/y;

    invoke-interface {v0}, Lee/y;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/C;
    .locals 1

    new-instance v0, LYd/H$a;

    invoke-direct {v0, p0}, LYd/H$a;-><init>(LYd/H;)V

    return-object v0
.end method

.method public j()[F
    .locals 1

    iget-object v0, p0, LYd/H;->b:Lee/y;

    invoke-interface {v0}, Lee/y;->j()[F

    move-result-object v0

    return-object v0
.end method

.method public j0(Lhe/I;)Z
    .locals 1

    iget-object v0, p0, LYd/H;->b:Lee/y;

    invoke-interface {v0, p1}, Lee/y;->j0(Lhe/I;)Z

    move-result p1

    return p1
.end method

.method public k()LSd/a;
    .locals 1

    iget-object v0, p0, LYd/H;->d:LSd/a;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/H;->b:Lee/y;

    invoke-interface {v0}, Lee/y;->k()LSd/a;

    move-result-object v0

    invoke-static {v0}, LSd/c;->b1(LSd/a;)LSd/a;

    move-result-object v0

    iput-object v0, p0, LYd/H;->d:LSd/a;

    :cond_0
    iget-object v0, p0, LYd/H;->d:LSd/a;

    return-object v0
.end method

.method public kc(Lhe/B;)Z
    .locals 1

    iget-object v0, p0, LYd/H;->b:Lee/y;

    invoke-interface {v0, p1}, Lee/y;->kc(Lhe/B;)Z

    move-result p1

    return p1
.end method

.method public keySet()Lke/d;
    .locals 1

    iget-object v0, p0, LYd/H;->c:Lke/d;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/H;->b:Lee/y;

    invoke-interface {v0}, Lee/y;->keySet()Lke/d;

    move-result-object v0

    invoke-static {v0}, LSd/c;->D2(Lke/d;)Lke/d;

    move-result-object v0

    iput-object v0, p0, LYd/H;->c:Lke/d;

    :cond_0
    iget-object v0, p0, LYd/H;->c:Lke/d;

    return-object v0
.end method

.method public l()F
    .locals 1

    iget-object v0, p0, LYd/H;->b:Lee/y;

    invoke-interface {v0}, Lee/y;->l()F

    move-result v0

    return v0
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
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public q0(F)B
    .locals 1

    iget-object v0, p0, LYd/H;->b:Lee/y;

    invoke-interface {v0, p1}, Lee/y;->q0(F)B

    move-result p1

    return p1
.end method

.method public s(LUd/a;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/H;->b:Lee/y;

    invoke-interface {v0}, Lee/y;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/H;->b:Lee/y;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[B
    .locals 1

    iget-object v0, p0, LYd/H;->b:Lee/y;

    invoke-interface {v0}, Lee/y;->values()[B

    move-result-object v0

    return-object v0
.end method

.method public we(FB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.class public LYd/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/D;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/D;

.field public transient c:Lke/d;

.field public transient d:LSd/h;


# direct methods
.method public constructor <init>(Lee/D;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/O;->c:Lke/d;

    iput-object v0, p0, LYd/O;->d:LSd/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/O;->b:Lee/D;

    return-void
.end method

.method public static synthetic a(LYd/O;)Lee/D;
    .locals 0

    iget-object p0, p0, LYd/O;->b:Lee/D;

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

    iget-object v0, p0, LYd/O;->b:Lee/D;

    invoke-interface {v0, p1}, Lee/D;->H(F)Z

    move-result p1

    return p1
.end method

.method public O5(FJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public O9(FJ)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public R(J)Z
    .locals 1

    iget-object v0, p0, LYd/O;->b:Lee/D;

    invoke-interface {v0, p1, p2}, Lee/D;->R(J)Z

    move-result p1

    return p1
.end method

.method public c(F)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public ce(Lhe/G;)Z
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

    iget-object v0, p0, LYd/O;->b:Lee/D;

    invoke-interface {v0, p1}, Lee/D;->d0([F)[F

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/O;->b:Lee/D;

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

.method public g0([J)[J
    .locals 1

    iget-object v0, p0, LYd/O;->b:Lee/D;

    invoke-interface {v0, p1}, Lee/D;->g0([J)[J

    move-result-object p1

    return-object p1
.end method

.method public h(LUd/f;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/O;->b:Lee/D;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()J
    .locals 2

    iget-object v0, p0, LYd/O;->b:Lee/D;

    invoke-interface {v0}, Lee/D;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/O;->b:Lee/D;

    invoke-interface {v0}, Lee/D;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/I;
    .locals 1

    new-instance v0, LYd/O$a;

    invoke-direct {v0, p0}, LYd/O$a;-><init>(LYd/O;)V

    return-object v0
.end method

.method public j()[F
    .locals 1

    iget-object v0, p0, LYd/O;->b:Lee/D;

    invoke-interface {v0}, Lee/D;->j()[F

    move-result-object v0

    return-object v0
.end method

.method public j0(Lhe/I;)Z
    .locals 1

    iget-object v0, p0, LYd/O;->b:Lee/D;

    invoke-interface {v0, p1}, Lee/D;->j0(Lhe/I;)Z

    move-result p1

    return p1
.end method

.method public k()LSd/h;
    .locals 1

    iget-object v0, p0, LYd/O;->d:LSd/h;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/O;->b:Lee/D;

    invoke-interface {v0}, Lee/D;->k()LSd/h;

    move-result-object v0

    invoke-static {v0}, LSd/c;->g1(LSd/h;)LSd/h;

    move-result-object v0

    iput-object v0, p0, LYd/O;->d:LSd/h;

    :cond_0
    iget-object v0, p0, LYd/O;->d:LSd/h;

    return-object v0
.end method

.method public keySet()Lke/d;
    .locals 1

    iget-object v0, p0, LYd/O;->c:Lke/d;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/O;->b:Lee/D;

    invoke-interface {v0}, Lee/D;->keySet()Lke/d;

    move-result-object v0

    invoke-static {v0}, LSd/c;->D2(Lke/d;)Lke/d;

    move-result-object v0

    iput-object v0, p0, LYd/O;->c:Lke/d;

    :cond_0
    iget-object v0, p0, LYd/O;->c:Lke/d;

    return-object v0
.end method

.method public l()F
    .locals 1

    iget-object v0, p0, LYd/O;->b:Lee/D;

    invoke-interface {v0}, Lee/D;->l()F

    move-result v0

    return v0
.end method

.method public ld(FJJ)J
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
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public q0(F)J
    .locals 2

    iget-object v0, p0, LYd/O;->b:Lee/D;

    invoke-interface {v0, p1}, Lee/D;->q0(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public re(FJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public s7(Lhe/G;)Z
    .locals 1

    iget-object v0, p0, LYd/O;->b:Lee/D;

    invoke-interface {v0, p1}, Lee/D;->s7(Lhe/G;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/O;->b:Lee/D;

    invoke-interface {v0}, Lee/D;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/O;->b:Lee/D;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[J
    .locals 1

    iget-object v0, p0, LYd/O;->b:Lee/D;

    invoke-interface {v0}, Lee/D;->values()[J

    move-result-object v0

    return-object v0
.end method

.method public w7(Lee/D;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public x(Lhe/b0;)Z
    .locals 1

    iget-object v0, p0, LYd/O;->b:Lee/D;

    invoke-interface {v0, p1}, Lee/D;->x(Lhe/b0;)Z

    move-result p1

    return p1
.end method

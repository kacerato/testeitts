.class public LYd/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/U;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/U;

.field public transient c:Lke/f;

.field public transient d:LSd/h;


# direct methods
.method public constructor <init>(Lee/U;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/l0;->c:Lke/f;

    iput-object v0, p0, LYd/l0;->d:LSd/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/l0;->b:Lee/U;

    return-void
.end method

.method public static synthetic a(LYd/l0;)Lee/U;
    .locals 0

    iget-object p0, p0, LYd/l0;->b:Lee/U;

    return-object p0
.end method


# virtual methods
.method public E(J)Z
    .locals 1

    iget-object v0, p0, LYd/l0;->b:Lee/U;

    invoke-interface {v0, p1, p2}, Lee/U;->E(J)Z

    move-result p1

    return p1
.end method

.method public G5(Lhe/Z;)Z
    .locals 1

    iget-object v0, p0, LYd/l0;->b:Lee/U;

    invoke-interface {v0, p1}, Lee/U;->G5(Lhe/Z;)Z

    move-result p1

    return p1
.end method

.method public H0(J)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public P5(Lhe/Z;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Pc(JJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public R(J)Z
    .locals 1

    iget-object v0, p0, LYd/l0;->b:Lee/U;

    invoke-interface {v0, p1, p2}, Lee/U;->R(J)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public e(J)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/l0;->b:Lee/U;

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

    iget-object v0, p0, LYd/l0;->b:Lee/U;

    invoke-interface {v0, p1}, Lee/U;->g0([J)[J

    move-result-object p1

    return-object p1
.end method

.method public h(LUd/f;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public h0([J)[J
    .locals 1

    iget-object v0, p0, LYd/l0;->b:Lee/U;

    invoke-interface {v0, p1}, Lee/U;->h0([J)[J

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/l0;->b:Lee/U;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()J
    .locals 2

    iget-object v0, p0, LYd/l0;->b:Lee/U;

    invoke-interface {v0}, Lee/U;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/l0;->b:Lee/U;

    invoke-interface {v0}, Lee/U;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/c0;
    .locals 1

    new-instance v0, LYd/l0$a;

    invoke-direct {v0, p0}, LYd/l0$a;-><init>(LYd/l0;)V

    return-object v0
.end method

.method public j()[J
    .locals 1

    iget-object v0, p0, LYd/l0;->b:Lee/U;

    invoke-interface {v0}, Lee/U;->j()[J

    move-result-object v0

    return-object v0
.end method

.method public jc(JJJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public k()LSd/h;
    .locals 1

    iget-object v0, p0, LYd/l0;->d:LSd/h;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/l0;->b:Lee/U;

    invoke-interface {v0}, Lee/U;->k()LSd/h;

    move-result-object v0

    invoke-static {v0}, LSd/c;->g1(LSd/h;)LSd/h;

    move-result-object v0

    iput-object v0, p0, LYd/l0;->d:LSd/h;

    :cond_0
    iget-object v0, p0, LYd/l0;->d:LSd/h;

    return-object v0
.end method

.method public keySet()Lke/f;
    .locals 1

    iget-object v0, p0, LYd/l0;->c:Lke/f;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/l0;->b:Lee/U;

    invoke-interface {v0}, Lee/U;->keySet()Lke/f;

    move-result-object v0

    invoke-static {v0}, LSd/c;->F2(Lke/f;)Lke/f;

    move-result-object v0

    iput-object v0, p0, LYd/l0;->c:Lke/f;

    :cond_0
    iget-object v0, p0, LYd/l0;->c:Lke/f;

    return-object v0
.end method

.method public l()J
    .locals 2

    iget-object v0, p0, LYd/l0;->b:Lee/U;

    invoke-interface {v0}, Lee/U;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public l0(Lhe/b0;)Z
    .locals 1

    iget-object v0, p0, LYd/l0;->b:Lee/U;

    invoke-interface {v0, p1}, Lee/U;->l0(Lhe/b0;)Z

    move-result p1

    return p1
.end method

.method public n7(JJ)J
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
            "Ljava/lang/Long;",
            "+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public rb(JJ)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/l0;->b:Lee/U;

    invoke-interface {v0}, Lee/U;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/l0;->b:Lee/U;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(J)J
    .locals 1

    iget-object v0, p0, LYd/l0;->b:Lee/U;

    invoke-interface {v0, p1, p2}, Lee/U;->u(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public values()[J
    .locals 1

    iget-object v0, p0, LYd/l0;->b:Lee/U;

    invoke-interface {v0}, Lee/U;->values()[J

    move-result-object v0

    return-object v0
.end method

.method public x(Lhe/b0;)Z
    .locals 1

    iget-object v0, p0, LYd/l0;->b:Lee/U;

    invoke-interface {v0, p1}, Lee/U;->x(Lhe/b0;)Z

    move-result p1

    return p1
.end method

.method public zd(Lee/U;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

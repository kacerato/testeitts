.class public LYd/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/W;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/W;

.field public transient c:Lke/f;

.field public transient d:LSd/i;


# direct methods
.method public constructor <init>(Lee/W;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/o0;->c:Lke/f;

    iput-object v0, p0, LYd/o0;->d:LSd/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/o0;->b:Lee/W;

    return-void
.end method

.method public static synthetic a(LYd/o0;)Lee/W;
    .locals 0

    iget-object p0, p0, LYd/o0;->b:Lee/W;

    return-object p0
.end method


# virtual methods
.method public E(J)Z
    .locals 1

    iget-object v0, p0, LYd/o0;->b:Lee/W;

    invoke-interface {v0, p1, p2}, Lee/W;->E(J)Z

    move-result p1

    return p1
.end method

.method public E9(Lhe/c0;)Z
    .locals 1

    iget-object v0, p0, LYd/o0;->b:Lee/W;

    invoke-interface {v0, p1}, Lee/W;->E9(Lhe/c0;)Z

    move-result p1

    return p1
.end method

.method public H0(J)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public I6(Lhe/c0;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Kc(JS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public L(S)Z
    .locals 1

    iget-object v0, p0, LYd/o0;->b:Lee/W;

    invoke-interface {v0, p1}, Lee/W;->L(S)Z

    move-result p1

    return p1
.end method

.method public Md(JSS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public N(Lhe/t0;)Z
    .locals 1

    iget-object v0, p0, LYd/o0;->b:Lee/W;

    invoke-interface {v0, p1}, Lee/W;->N(Lhe/t0;)Z

    move-result p1

    return p1
.end method

.method public S9(Lee/W;)V
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

.method public e(J)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/o0;->b:Lee/W;

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

.method public h0([J)[J
    .locals 1

    iget-object v0, p0, LYd/o0;->b:Lee/W;

    invoke-interface {v0, p1}, Lee/W;->h0([J)[J

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/o0;->b:Lee/W;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()S
    .locals 1

    iget-object v0, p0, LYd/o0;->b:Lee/W;

    invoke-interface {v0}, Lee/W;->i()S

    move-result v0

    return v0
.end method

.method public i0([S)[S
    .locals 1

    iget-object v0, p0, LYd/o0;->b:Lee/W;

    invoke-interface {v0, p1}, Lee/W;->i0([S)[S

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/o0;->b:Lee/W;

    invoke-interface {v0}, Lee/W;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/e0;
    .locals 1

    new-instance v0, LYd/o0$a;

    invoke-direct {v0, p0}, LYd/o0$a;-><init>(LYd/o0;)V

    return-object v0
.end method

.method public j()[J
    .locals 1

    iget-object v0, p0, LYd/o0;->b:Lee/W;

    invoke-interface {v0}, Lee/W;->j()[J

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/i;
    .locals 1

    iget-object v0, p0, LYd/o0;->d:LSd/i;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/o0;->b:Lee/W;

    invoke-interface {v0}, Lee/W;->k()LSd/i;

    move-result-object v0

    invoke-static {v0}, LSd/c;->h1(LSd/i;)LSd/i;

    move-result-object v0

    iput-object v0, p0, LYd/o0;->d:LSd/i;

    :cond_0
    iget-object v0, p0, LYd/o0;->d:LSd/i;

    return-object v0
.end method

.method public keySet()Lke/f;
    .locals 1

    iget-object v0, p0, LYd/o0;->c:Lke/f;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/o0;->b:Lee/W;

    invoke-interface {v0}, Lee/W;->keySet()Lke/f;

    move-result-object v0

    invoke-static {v0}, LSd/c;->F2(Lke/f;)Lke/f;

    move-result-object v0

    iput-object v0, p0, LYd/o0;->c:Lke/f;

    :cond_0
    iget-object v0, p0, LYd/o0;->c:Lke/f;

    return-object v0
.end method

.method public l()J
    .locals 2

    iget-object v0, p0, LYd/o0;->b:Lee/W;

    invoke-interface {v0}, Lee/W;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public l0(Lhe/b0;)Z
    .locals 1

    iget-object v0, p0, LYd/o0;->b:Lee/W;

    invoke-interface {v0, p1}, Lee/W;->l0(Lhe/b0;)Z

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
            "Ljava/lang/Long;",
            "+",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public r(LUd/h;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/o0;->b:Lee/W;

    invoke-interface {v0}, Lee/W;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/o0;->b:Lee/W;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(J)S
    .locals 1

    iget-object v0, p0, LYd/o0;->b:Lee/W;

    invoke-interface {v0, p1, p2}, Lee/W;->u(J)S

    move-result p1

    return p1
.end method

.method public u7(JS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public values()[S
    .locals 1

    iget-object v0, p0, LYd/o0;->b:Lee/W;

    invoke-interface {v0}, Lee/W;->values()[S

    move-result-object v0

    return-object v0
.end method

.method public vb(JS)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

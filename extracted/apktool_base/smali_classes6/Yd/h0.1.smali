.class public LYd/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/Q;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/Q;

.field public transient c:Lke/f;

.field public transient d:LSd/e;


# direct methods
.method public constructor <init>(Lee/Q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/h0;->c:Lke/f;

    iput-object v0, p0, LYd/h0;->d:LSd/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/h0;->b:Lee/Q;

    return-void
.end method

.method public static synthetic a(LYd/h0;)Lee/Q;
    .locals 0

    iget-object p0, p0, LYd/h0;->b:Lee/Q;

    return-object p0
.end method


# virtual methods
.method public E(J)Z
    .locals 1

    iget-object v0, p0, LYd/h0;->b:Lee/Q;

    invoke-interface {v0, p1, p2}, Lee/Q;->E(J)Z

    move-result p1

    return p1
.end method

.method public G6(Lhe/W;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public H0(J)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public I(Lhe/z;)Z
    .locals 1

    iget-object v0, p0, LYd/h0;->b:Lee/Q;

    invoke-interface {v0, p1}, Lee/Q;->I(Lhe/z;)Z

    move-result p1

    return p1
.end method

.method public T(D)Z
    .locals 1

    iget-object v0, p0, LYd/h0;->b:Lee/Q;

    invoke-interface {v0, p1, p2}, Lee/Q;->T(D)Z

    move-result p1

    return p1
.end method

.method public b0([D)[D
    .locals 1

    iget-object v0, p0, LYd/h0;->b:Lee/Q;

    invoke-interface {v0, p1}, Lee/Q;->b0([D)[D

    move-result-object p1

    return-object p1
.end method

.method public c7(JDD)D
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

.method public e(J)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/h0;->b:Lee/Q;

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

    iget-object v0, p0, LYd/h0;->b:Lee/Q;

    invoke-interface {v0, p1}, Lee/Q;->h0([J)[J

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/h0;->b:Lee/Q;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()D
    .locals 2

    iget-object v0, p0, LYd/h0;->b:Lee/Q;

    invoke-interface {v0}, Lee/Q;->i()D

    move-result-wide v0

    return-wide v0
.end method

.method public ie(Lee/Q;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/h0;->b:Lee/Q;

    invoke-interface {v0}, Lee/Q;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/Y;
    .locals 1

    new-instance v0, LYd/h0$a;

    invoke-direct {v0, p0}, LYd/h0$a;-><init>(LYd/h0;)V

    return-object v0
.end method

.method public j()[J
    .locals 1

    iget-object v0, p0, LYd/h0;->b:Lee/Q;

    invoke-interface {v0}, Lee/Q;->j()[J

    move-result-object v0

    return-object v0
.end method

.method public j7(JD)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public jb(JD)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public k()LSd/e;
    .locals 1

    iget-object v0, p0, LYd/h0;->d:LSd/e;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/h0;->b:Lee/Q;

    invoke-interface {v0}, Lee/Q;->k()LSd/e;

    move-result-object v0

    invoke-static {v0}, LSd/c;->d1(LSd/e;)LSd/e;

    move-result-object v0

    iput-object v0, p0, LYd/h0;->d:LSd/e;

    :cond_0
    iget-object v0, p0, LYd/h0;->d:LSd/e;

    return-object v0
.end method

.method public keySet()Lke/f;
    .locals 1

    iget-object v0, p0, LYd/h0;->c:Lke/f;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/h0;->b:Lee/Q;

    invoke-interface {v0}, Lee/Q;->keySet()Lke/f;

    move-result-object v0

    invoke-static {v0}, LSd/c;->F2(Lke/f;)Lke/f;

    move-result-object v0

    iput-object v0, p0, LYd/h0;->c:Lke/f;

    :cond_0
    iget-object v0, p0, LYd/h0;->c:Lke/f;

    return-object v0
.end method

.method public l()J
    .locals 2

    iget-object v0, p0, LYd/h0;->b:Lee/Q;

    invoke-interface {v0}, Lee/Q;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public l0(Lhe/b0;)Z
    .locals 1

    iget-object v0, p0, LYd/h0;->b:Lee/Q;

    invoke-interface {v0, p1}, Lee/Q;->l0(Lhe/b0;)Z

    move-result p1

    return p1
.end method

.method public p(LUd/c;)V
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
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/h0;->b:Lee/Q;

    invoke-interface {v0}, Lee/Q;->size()I

    move-result v0

    return v0
.end method

.method public te(Lhe/W;)Z
    .locals 1

    iget-object v0, p0, LYd/h0;->b:Lee/Q;

    invoke-interface {v0, p1}, Lee/Q;->te(Lhe/W;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/h0;->b:Lee/Q;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(J)D
    .locals 1

    iget-object v0, p0, LYd/h0;->b:Lee/Q;

    invoke-interface {v0, p1, p2}, Lee/Q;->u(J)D

    move-result-wide p1

    return-wide p1
.end method

.method public values()[D
    .locals 1

    iget-object v0, p0, LYd/h0;->b:Lee/Q;

    invoke-interface {v0}, Lee/Q;->values()[D

    move-result-object v0

    return-object v0
.end method

.method public xd(JD)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

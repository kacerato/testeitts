.class public LYd/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/S;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/S;

.field public transient c:Lke/f;

.field public transient d:LSd/f;


# direct methods
.method public constructor <init>(Lee/S;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/i0;->c:Lke/f;

    iput-object v0, p0, LYd/i0;->d:LSd/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/i0;->b:Lee/S;

    return-void
.end method

.method public static synthetic a(LYd/i0;)Lee/S;
    .locals 0

    iget-object p0, p0, LYd/i0;->b:Lee/S;

    return-object p0
.end method


# virtual methods
.method public B(Lhe/I;)Z
    .locals 1

    iget-object v0, p0, LYd/i0;->b:Lee/S;

    invoke-interface {v0, p1}, Lee/S;->B(Lhe/I;)Z

    move-result p1

    return p1
.end method

.method public E(J)Z
    .locals 1

    iget-object v0, p0, LYd/i0;->b:Lee/S;

    invoke-interface {v0, p1, p2}, Lee/S;->E(J)Z

    move-result p1

    return p1
.end method

.method public H0(J)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public I7(JFF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public U(F)Z
    .locals 1

    iget-object v0, p0, LYd/i0;->b:Lee/S;

    invoke-interface {v0, p1}, Lee/S;->U(F)Z

    move-result p1

    return p1
.end method

.method public Y5(Lhe/X;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c0([F)[F
    .locals 1

    iget-object v0, p0, LYd/i0;->b:Lee/S;

    invoke-interface {v0, p1}, Lee/S;->c0([F)[F

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public d7(Lee/S;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public e(J)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/i0;->b:Lee/S;

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

    iget-object v0, p0, LYd/i0;->b:Lee/S;

    invoke-interface {v0, p1}, Lee/S;->h0([J)[J

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/i0;->b:Lee/S;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public hb(JF)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public i()F
    .locals 1

    iget-object v0, p0, LYd/i0;->b:Lee/S;

    invoke-interface {v0}, Lee/S;->i()F

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/i0;->b:Lee/S;

    invoke-interface {v0}, Lee/S;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/Z;
    .locals 1

    new-instance v0, LYd/i0$a;

    invoke-direct {v0, p0}, LYd/i0$a;-><init>(LYd/i0;)V

    return-object v0
.end method

.method public j()[J
    .locals 1

    iget-object v0, p0, LYd/i0;->b:Lee/S;

    invoke-interface {v0}, Lee/S;->j()[J

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/f;
    .locals 1

    iget-object v0, p0, LYd/i0;->d:LSd/f;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/i0;->b:Lee/S;

    invoke-interface {v0}, Lee/S;->k()LSd/f;

    move-result-object v0

    invoke-static {v0}, LSd/c;->e1(LSd/f;)LSd/f;

    move-result-object v0

    iput-object v0, p0, LYd/i0;->d:LSd/f;

    :cond_0
    iget-object v0, p0, LYd/i0;->d:LSd/f;

    return-object v0
.end method

.method public k7(JF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public keySet()Lke/f;
    .locals 1

    iget-object v0, p0, LYd/i0;->c:Lke/f;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/i0;->b:Lee/S;

    invoke-interface {v0}, Lee/S;->keySet()Lke/f;

    move-result-object v0

    invoke-static {v0}, LSd/c;->F2(Lke/f;)Lke/f;

    move-result-object v0

    iput-object v0, p0, LYd/i0;->c:Lke/f;

    :cond_0
    iget-object v0, p0, LYd/i0;->c:Lke/f;

    return-object v0
.end method

.method public l()J
    .locals 2

    iget-object v0, p0, LYd/i0;->b:Lee/S;

    invoke-interface {v0}, Lee/S;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public l0(Lhe/b0;)Z
    .locals 1

    iget-object v0, p0, LYd/i0;->b:Lee/S;

    invoke-interface {v0, p1}, Lee/S;->l0(Lhe/b0;)Z

    move-result p1

    return p1
.end method

.method public n(LUd/d;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public od(JF)F
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
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/i0;->b:Lee/S;

    invoke-interface {v0}, Lee/S;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/i0;->b:Lee/S;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(J)F
    .locals 1

    iget-object v0, p0, LYd/i0;->b:Lee/S;

    invoke-interface {v0, p1, p2}, Lee/S;->u(J)F

    move-result p1

    return p1
.end method

.method public values()[F
    .locals 1

    iget-object v0, p0, LYd/i0;->b:Lee/S;

    invoke-interface {v0}, Lee/S;->values()[F

    move-result-object v0

    return-object v0
.end method

.method public wc(Lhe/X;)Z
    .locals 1

    iget-object v0, p0, LYd/i0;->b:Lee/S;

    invoke-interface {v0, p1}, Lee/S;->wc(Lhe/X;)Z

    move-result p1

    return p1
.end method

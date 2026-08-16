.class public LYd/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/L;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/L;

.field public transient c:Lke/e;

.field public transient d:LSd/h;


# direct methods
.method public constructor <init>(Lee/L;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/a0;->c:Lke/e;

    iput-object v0, p0, LYd/a0;->d:LSd/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/a0;->b:Lee/L;

    return-void
.end method

.method public static synthetic a(LYd/a0;)Lee/L;
    .locals 0

    iget-object p0, p0, LYd/a0;->b:Lee/L;

    return-object p0
.end method


# virtual methods
.method public F(I)Z
    .locals 1

    iget-object v0, p0, LYd/a0;->b:Lee/L;

    invoke-interface {v0, p1}, Lee/L;->F(I)Z

    move-result p1

    return p1
.end method

.method public F0(I)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public J(Lhe/S;)Z
    .locals 1

    iget-object v0, p0, LYd/a0;->b:Lee/L;

    invoke-interface {v0, p1}, Lee/L;->J(Lhe/S;)Z

    move-result p1

    return p1
.end method

.method public Nb(IJ)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public R(J)Z
    .locals 1

    iget-object v0, p0, LYd/a0;->b:Lee/L;

    invoke-interface {v0, p1, p2}, Lee/L;->R(J)Z

    move-result p1

    return p1
.end method

.method public Ua(Lhe/P;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Va(Lee/L;)V
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

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/a0;->b:Lee/L;

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

.method public f0([I)[I
    .locals 1

    iget-object v0, p0, LYd/a0;->b:Lee/L;

    invoke-interface {v0, p1}, Lee/L;->f0([I)[I

    move-result-object p1

    return-object p1
.end method

.method public g0([J)[J
    .locals 1

    iget-object v0, p0, LYd/a0;->b:Lee/L;

    invoke-interface {v0, p1}, Lee/L;->g0([J)[J

    move-result-object p1

    return-object p1
.end method

.method public get(I)J
    .locals 2

    iget-object v0, p0, LYd/a0;->b:Lee/L;

    invoke-interface {v0, p1}, Lee/L;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public h(LUd/f;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public h5(IJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/a0;->b:Lee/L;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()J
    .locals 2

    iget-object v0, p0, LYd/a0;->b:Lee/L;

    invoke-interface {v0}, Lee/L;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/a0;->b:Lee/L;

    invoke-interface {v0}, Lee/L;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/S;
    .locals 1

    new-instance v0, LYd/a0$a;

    invoke-direct {v0, p0}, LYd/a0$a;-><init>(LYd/a0;)V

    return-object v0
.end method

.method public j()[I
    .locals 1

    iget-object v0, p0, LYd/a0;->b:Lee/L;

    invoke-interface {v0}, Lee/L;->j()[I

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/h;
    .locals 1

    iget-object v0, p0, LYd/a0;->d:LSd/h;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/a0;->b:Lee/L;

    invoke-interface {v0}, Lee/L;->k()LSd/h;

    move-result-object v0

    invoke-static {v0}, LSd/c;->g1(LSd/h;)LSd/h;

    move-result-object v0

    iput-object v0, p0, LYd/a0;->d:LSd/h;

    :cond_0
    iget-object v0, p0, LYd/a0;->d:LSd/h;

    return-object v0
.end method

.method public keySet()Lke/e;
    .locals 1

    iget-object v0, p0, LYd/a0;->c:Lke/e;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/a0;->b:Lee/L;

    invoke-interface {v0}, Lee/L;->keySet()Lke/e;

    move-result-object v0

    invoke-static {v0}, LSd/c;->E2(Lke/e;)Lke/e;

    move-result-object v0

    iput-object v0, p0, LYd/a0;->c:Lke/e;

    :cond_0
    iget-object v0, p0, LYd/a0;->c:Lke/e;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, LYd/a0;->b:Lee/L;

    invoke-interface {v0}, Lee/L;->l()I

    move-result v0

    return v0
.end method

.method public la(IJJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public nd(IJ)J
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
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(I)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public sc(Lhe/P;)Z
    .locals 1

    iget-object v0, p0, LYd/a0;->b:Lee/L;

    invoke-interface {v0, p1}, Lee/L;->sc(Lhe/P;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/a0;->b:Lee/L;

    invoke-interface {v0}, Lee/L;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/a0;->b:Lee/L;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[J
    .locals 1

    iget-object v0, p0, LYd/a0;->b:Lee/L;

    invoke-interface {v0}, Lee/L;->values()[J

    move-result-object v0

    return-object v0
.end method

.method public x(Lhe/b0;)Z
    .locals 1

    iget-object v0, p0, LYd/a0;->b:Lee/L;

    invoke-interface {v0, p1}, Lee/L;->x(Lhe/b0;)Z

    move-result p1

    return p1
.end method

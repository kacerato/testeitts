.class public LYd/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/v;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/v;

.field public transient c:Lke/c;

.field public transient d:LSd/h;


# direct methods
.method public constructor <init>(Lee/v;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/D;->c:Lke/c;

    iput-object v0, p0, LYd/D;->d:LSd/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/D;->b:Lee/v;

    return-void
.end method

.method public static synthetic b(LYd/D;)Lee/v;
    .locals 0

    iget-object p0, p0, LYd/D;->b:Lee/v;

    return-object p0
.end method


# virtual methods
.method public A(D)Z
    .locals 1

    iget-object v0, p0, LYd/D;->b:Lee/v;

    invoke-interface {v0, p1, p2}, Lee/v;->A(D)Z

    move-result p1

    return p1
.end method

.method public L2(Lhe/x;)Z
    .locals 1

    iget-object v0, p0, LYd/D;->b:Lee/v;

    invoke-interface {v0, p1}, Lee/v;->L2(Lhe/x;)Z

    move-result p1

    return p1
.end method

.method public O2(DJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Oa(DJ)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public R(J)Z
    .locals 1

    iget-object v0, p0, LYd/D;->b:Lee/v;

    invoke-interface {v0, p1, p2}, Lee/v;->R(J)Z

    move-result p1

    return p1
.end method

.method public U4(DJJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public W([D)[D
    .locals 1

    iget-object v0, p0, LYd/D;->b:Lee/v;

    invoke-interface {v0, p1}, Lee/v;->W([D)[D

    move-result-object p1

    return-object p1
.end method

.method public Y8(DJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a(D)J
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

    iget-object v0, p0, LYd/D;->b:Lee/v;

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

    iget-object v0, p0, LYd/D;->b:Lee/v;

    invoke-interface {v0, p1}, Lee/v;->g0([J)[J

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

    iget-object v0, p0, LYd/D;->b:Lee/v;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()J
    .locals 2

    iget-object v0, p0, LYd/D;->b:Lee/v;

    invoke-interface {v0}, Lee/v;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public increment(D)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/D;->b:Lee/v;

    invoke-interface {v0}, Lee/v;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/z;
    .locals 1

    new-instance v0, LYd/D$a;

    invoke-direct {v0, p0}, LYd/D$a;-><init>(LYd/D;)V

    return-object v0
.end method

.method public j()[D
    .locals 1

    iget-object v0, p0, LYd/D;->b:Lee/v;

    invoke-interface {v0}, Lee/v;->j()[D

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/h;
    .locals 1

    iget-object v0, p0, LYd/D;->d:LSd/h;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/D;->b:Lee/v;

    invoke-interface {v0}, Lee/v;->k()LSd/h;

    move-result-object v0

    invoke-static {v0}, LSd/c;->g1(LSd/h;)LSd/h;

    move-result-object v0

    iput-object v0, p0, LYd/D;->d:LSd/h;

    :cond_0
    iget-object v0, p0, LYd/D;->d:LSd/h;

    return-object v0
.end method

.method public k0(Lhe/z;)Z
    .locals 1

    iget-object v0, p0, LYd/D;->b:Lee/v;

    invoke-interface {v0, p1}, Lee/v;->k0(Lhe/z;)Z

    move-result p1

    return p1
.end method

.method public keySet()Lke/c;
    .locals 1

    iget-object v0, p0, LYd/D;->c:Lke/c;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/D;->b:Lee/v;

    invoke-interface {v0}, Lee/v;->keySet()Lke/c;

    move-result-object v0

    invoke-static {v0}, LSd/c;->C2(Lke/c;)Lke/c;

    move-result-object v0

    iput-object v0, p0, LYd/D;->c:Lke/c;

    :cond_0
    iget-object v0, p0, LYd/D;->c:Lke/c;

    return-object v0
.end method

.method public l()D
    .locals 2

    iget-object v0, p0, LYd/D;->b:Lee/v;

    invoke-interface {v0}, Lee/v;->l()D

    move-result-wide v0

    return-wide v0
.end method

.method public oc(Lhe/x;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public p0(D)J
    .locals 1

    iget-object v0, p0, LYd/D;->b:Lee/v;

    invoke-interface {v0, p1, p2}, Lee/v;->p0(D)J

    move-result-wide p1

    return-wide p1
.end method

.method public pe(Lee/v;)V
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
            "Ljava/lang/Double;",
            "+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/D;->b:Lee/v;

    invoke-interface {v0}, Lee/v;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/D;->b:Lee/v;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[J
    .locals 1

    iget-object v0, p0, LYd/D;->b:Lee/v;

    invoke-interface {v0}, Lee/v;->values()[J

    move-result-object v0

    return-object v0
.end method

.method public x(Lhe/b0;)Z
    .locals 1

    iget-object v0, p0, LYd/D;->b:Lee/v;

    invoke-interface {v0, p1}, Lee/v;->x(Lhe/b0;)Z

    move-result p1

    return p1
.end method

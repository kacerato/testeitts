.class public LYd/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/n;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/n;

.field public transient c:Lke/b;

.field public transient d:LSd/h;


# direct methods
.method public constructor <init>(Lee/n;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/s;->c:Lke/b;

    iput-object v0, p0, LYd/s;->d:LSd/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/s;->b:Lee/n;

    return-void
.end method

.method public static synthetic a(LYd/s;)Lee/n;
    .locals 0

    iget-object p0, p0, LYd/s;->b:Lee/n;

    return-object p0
.end method


# virtual methods
.method public C(C)Z
    .locals 1

    iget-object v0, p0, LYd/s;->b:Lee/n;

    invoke-interface {v0, p1}, Lee/n;->C(C)Z

    move-result p1

    return p1
.end method

.method public D0(C)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public D2(CJJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public G4(CJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Ke(Lhe/o;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Ld(CJ)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public R(J)Z
    .locals 1

    iget-object v0, p0, LYd/s;->b:Lee/n;

    invoke-interface {v0, p1, p2}, Lee/n;->R(J)Z

    move-result p1

    return p1
.end method

.method public V([C)[C
    .locals 1

    iget-object v0, p0, LYd/s;->b:Lee/n;

    invoke-interface {v0, p1}, Lee/n;->V([C)[C

    move-result-object p1

    return-object p1
.end method

.method public V7(Lhe/o;)Z
    .locals 1

    iget-object v0, p0, LYd/s;->b:Lee/n;

    invoke-interface {v0, p1}, Lee/n;->V7(Lhe/o;)Z

    move-result p1

    return p1
.end method

.method public b(C)J
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

    iget-object v0, p0, LYd/s;->b:Lee/n;

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

    iget-object v0, p0, LYd/s;->b:Lee/n;

    invoke-interface {v0, p1}, Lee/n;->g0([J)[J

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

    iget-object v0, p0, LYd/s;->b:Lee/n;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()J
    .locals 2

    iget-object v0, p0, LYd/s;->b:Lee/n;

    invoke-interface {v0}, Lee/n;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/s;->b:Lee/n;

    invoke-interface {v0}, Lee/n;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/q;
    .locals 1

    new-instance v0, LYd/s$a;

    invoke-direct {v0, p0}, LYd/s$a;-><init>(LYd/s;)V

    return-object v0
.end method

.method public j()[C
    .locals 1

    iget-object v0, p0, LYd/s;->b:Lee/n;

    invoke-interface {v0}, Lee/n;->j()[C

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/h;
    .locals 1

    iget-object v0, p0, LYd/s;->d:LSd/h;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/s;->b:Lee/n;

    invoke-interface {v0}, Lee/n;->k()LSd/h;

    move-result-object v0

    invoke-static {v0}, LSd/c;->g1(LSd/h;)LSd/h;

    move-result-object v0

    iput-object v0, p0, LYd/s;->d:LSd/h;

    :cond_0
    iget-object v0, p0, LYd/s;->d:LSd/h;

    return-object v0
.end method

.method public keySet()Lke/b;
    .locals 1

    iget-object v0, p0, LYd/s;->c:Lke/b;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/s;->b:Lee/n;

    invoke-interface {v0}, Lee/n;->keySet()Lke/b;

    move-result-object v0

    invoke-static {v0}, LSd/c;->B2(Lke/b;)Lke/b;

    move-result-object v0

    iput-object v0, p0, LYd/s;->c:Lke/b;

    :cond_0
    iget-object v0, p0, LYd/s;->c:Lke/b;

    return-object v0
.end method

.method public l()C
    .locals 1

    iget-object v0, p0, LYd/s;->b:Lee/n;

    invoke-interface {v0}, Lee/n;->l()C

    move-result v0

    return v0
.end method

.method public o0(C)J
    .locals 2

    iget-object v0, p0, LYd/s;->b:Lee/n;

    invoke-interface {v0, p1}, Lee/n;->o0(C)J

    move-result-wide v0

    return-wide v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Character;",
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

    iget-object v0, p0, LYd/s;->b:Lee/n;

    invoke-interface {v0}, Lee/n;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/s;->b:Lee/n;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[J
    .locals 1

    iget-object v0, p0, LYd/s;->b:Lee/n;

    invoke-interface {v0}, Lee/n;->values()[J

    move-result-object v0

    return-object v0
.end method

.method public x(Lhe/b0;)Z
    .locals 1

    iget-object v0, p0, LYd/s;->b:Lee/n;

    invoke-interface {v0, p1}, Lee/n;->x(Lhe/b0;)Z

    move-result p1

    return p1
.end method

.method public y(Lhe/q;)Z
    .locals 1

    iget-object v0, p0, LYd/s;->b:Lee/n;

    invoke-interface {v0, p1}, Lee/n;->y(Lhe/q;)Z

    move-result p1

    return p1
.end method

.method public z9(CJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public za(Lee/n;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

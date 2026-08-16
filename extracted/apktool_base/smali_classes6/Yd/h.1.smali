.class public LYd/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/f;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/f;

.field public transient c:Lke/a;

.field public transient d:LSd/h;


# direct methods
.method public constructor <init>(Lee/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/h;->c:Lke/a;

    iput-object v0, p0, LYd/h;->d:LSd/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/h;->b:Lee/f;

    return-void
.end method

.method public static synthetic a(LYd/h;)Lee/f;
    .locals 0

    iget-object p0, p0, LYd/h;->b:Lee/f;

    return-object p0
.end method


# virtual methods
.method public D(B)Z
    .locals 1

    iget-object v0, p0, LYd/h;->b:Lee/f;

    invoke-interface {v0, p1}, Lee/f;->D(B)Z

    move-result p1

    return p1
.end method

.method public E0(B)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public N8(BJJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public R(J)Z
    .locals 1

    iget-object v0, p0, LYd/h;->b:Lee/f;

    invoke-interface {v0, p1, p2}, Lee/f;->R(J)Z

    move-result p1

    return p1
.end method

.method public R4(Lee/f;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public V5(Lhe/f;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public X([B)[B
    .locals 1

    iget-object v0, p0, LYd/h;->b:Lee/f;

    invoke-interface {v0, p1}, Lee/f;->X([B)[B

    move-result-object p1

    return-object p1
.end method

.method public a9(Lhe/f;)Z
    .locals 1

    iget-object v0, p0, LYd/h;->b:Lee/f;

    invoke-interface {v0, p1}, Lee/f;->a9(Lhe/f;)Z

    move-result p1

    return p1
.end method

.method public b4(BJ)J
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

    iget-object v0, p0, LYd/h;->b:Lee/f;

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

    iget-object v0, p0, LYd/h;->b:Lee/f;

    invoke-interface {v0, p1}, Lee/f;->g0([J)[J

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

    iget-object v0, p0, LYd/h;->b:Lee/f;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()J
    .locals 2

    iget-object v0, p0, LYd/h;->b:Lee/f;

    invoke-interface {v0}, Lee/f;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/h;->b:Lee/f;

    invoke-interface {v0}, Lee/f;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/h;
    .locals 1

    new-instance v0, LYd/h$a;

    invoke-direct {v0, p0}, LYd/h$a;-><init>(LYd/h;)V

    return-object v0
.end method

.method public j()[B
    .locals 1

    iget-object v0, p0, LYd/h;->b:Lee/f;

    invoke-interface {v0}, Lee/f;->j()[B

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/h;
    .locals 1

    iget-object v0, p0, LYd/h;->d:LSd/h;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/h;->b:Lee/f;

    invoke-interface {v0}, Lee/f;->k()LSd/h;

    move-result-object v0

    invoke-static {v0}, LSd/c;->g1(LSd/h;)LSd/h;

    move-result-object v0

    iput-object v0, p0, LYd/h;->d:LSd/h;

    :cond_0
    iget-object v0, p0, LYd/h;->d:LSd/h;

    return-object v0
.end method

.method public keySet()Lke/a;
    .locals 1

    iget-object v0, p0, LYd/h;->c:Lke/a;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/h;->b:Lee/f;

    invoke-interface {v0}, Lee/f;->keySet()Lke/a;

    move-result-object v0

    invoke-static {v0}, LSd/c;->A2(Lke/a;)Lke/a;

    move-result-object v0

    iput-object v0, p0, LYd/h;->c:Lke/a;

    :cond_0
    iget-object v0, p0, LYd/h;->c:Lke/a;

    return-object v0
.end method

.method public l()B
    .locals 1

    iget-object v0, p0, LYd/h;->b:Lee/f;

    invoke-interface {v0}, Lee/f;->l()B

    move-result v0

    return v0
.end method

.method public m(B)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public oe(BJ)Z
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
            "Ljava/lang/Byte;",
            "+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public s0(B)J
    .locals 2

    iget-object v0, p0, LYd/h;->b:Lee/f;

    invoke-interface {v0, p1}, Lee/f;->s0(B)J

    move-result-wide v0

    return-wide v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/h;->b:Lee/f;

    invoke-interface {v0}, Lee/f;->size()I

    move-result v0

    return v0
.end method

.method public ta(BJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/h;->b:Lee/f;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[J
    .locals 1

    iget-object v0, p0, LYd/h;->b:Lee/f;

    invoke-interface {v0}, Lee/f;->values()[J

    move-result-object v0

    return-object v0
.end method

.method public w(Lhe/h;)Z
    .locals 1

    iget-object v0, p0, LYd/h;->b:Lee/f;

    invoke-interface {v0, p1}, Lee/f;->w(Lhe/h;)Z

    move-result p1

    return p1
.end method

.method public x(Lhe/b0;)Z
    .locals 1

    iget-object v0, p0, LYd/h;->b:Lee/f;

    invoke-interface {v0, p1}, Lee/f;->x(Lhe/b0;)Z

    move-result p1

    return p1
.end method

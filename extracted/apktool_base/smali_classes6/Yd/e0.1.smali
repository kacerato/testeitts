.class public LYd/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/O;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/O;

.field public transient c:Lke/f;

.field public transient d:LSd/a;


# direct methods
.method public constructor <init>(Lee/O;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/e0;->c:Lke/f;

    iput-object v0, p0, LYd/e0;->d:LSd/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/e0;->b:Lee/O;

    return-void
.end method

.method public static synthetic a(LYd/e0;)Lee/O;
    .locals 0

    iget-object p0, p0, LYd/e0;->b:Lee/O;

    return-object p0
.end method


# virtual methods
.method public E(J)Z
    .locals 1

    iget-object v0, p0, LYd/e0;->b:Lee/O;

    invoke-interface {v0, p1, p2}, Lee/O;->E(J)Z

    move-result p1

    return p1
.end method

.method public H0(J)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public K7(JBB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public M(Lhe/h;)Z
    .locals 1

    iget-object v0, p0, LYd/e0;->b:Lee/O;

    invoke-interface {v0, p1}, Lee/O;->M(Lhe/h;)Z

    move-result p1

    return p1
.end method

.method public M6(Lhe/U;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public P(B)Z
    .locals 1

    iget-object v0, p0, LYd/e0;->b:Lee/O;

    invoke-interface {v0, p1}, Lee/O;->P(B)Z

    move-result p1

    return p1
.end method

.method public a0([B)[B
    .locals 1

    iget-object v0, p0, LYd/e0;->b:Lee/O;

    invoke-interface {v0, p1}, Lee/O;->a0([B)[B

    move-result-object p1

    return-object p1
.end method

.method public aa(Lhe/U;)Z
    .locals 1

    iget-object v0, p0, LYd/e0;->b:Lee/O;

    invoke-interface {v0, p1}, Lee/O;->aa(Lhe/U;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public e(J)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/e0;->b:Lee/O;

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

.method public f7(JB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public h0([J)[J
    .locals 1

    iget-object v0, p0, LYd/e0;->b:Lee/O;

    invoke-interface {v0, p1}, Lee/O;->h0([J)[J

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/e0;->b:Lee/O;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()B
    .locals 1

    iget-object v0, p0, LYd/e0;->b:Lee/O;

    invoke-interface {v0}, Lee/O;->i()B

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/e0;->b:Lee/O;

    invoke-interface {v0}, Lee/O;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/W;
    .locals 1

    new-instance v0, LYd/e0$a;

    invoke-direct {v0, p0}, LYd/e0$a;-><init>(LYd/e0;)V

    return-object v0
.end method

.method public j()[J
    .locals 1

    iget-object v0, p0, LYd/e0;->b:Lee/O;

    invoke-interface {v0}, Lee/O;->j()[J

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/a;
    .locals 1

    iget-object v0, p0, LYd/e0;->d:LSd/a;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/e0;->b:Lee/O;

    invoke-interface {v0}, Lee/O;->k()LSd/a;

    move-result-object v0

    invoke-static {v0}, LSd/c;->b1(LSd/a;)LSd/a;

    move-result-object v0

    iput-object v0, p0, LYd/e0;->d:LSd/a;

    :cond_0
    iget-object v0, p0, LYd/e0;->d:LSd/a;

    return-object v0
.end method

.method public keySet()Lke/f;
    .locals 1

    iget-object v0, p0, LYd/e0;->c:Lke/f;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/e0;->b:Lee/O;

    invoke-interface {v0}, Lee/O;->keySet()Lke/f;

    move-result-object v0

    invoke-static {v0}, LSd/c;->F2(Lke/f;)Lke/f;

    move-result-object v0

    iput-object v0, p0, LYd/e0;->c:Lke/f;

    :cond_0
    iget-object v0, p0, LYd/e0;->c:Lke/f;

    return-object v0
.end method

.method public l()J
    .locals 2

    iget-object v0, p0, LYd/e0;->b:Lee/O;

    invoke-interface {v0}, Lee/O;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public l0(Lhe/b0;)Z
    .locals 1

    iget-object v0, p0, LYd/e0;->b:Lee/O;

    invoke-interface {v0, p1}, Lee/O;->l0(Lhe/b0;)Z

    move-result p1

    return p1
.end method

.method public mb(JB)Z
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
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public s(LUd/a;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/e0;->b:Lee/O;

    invoke-interface {v0}, Lee/O;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/e0;->b:Lee/O;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(J)B
    .locals 1

    iget-object v0, p0, LYd/e0;->b:Lee/O;

    invoke-interface {v0, p1, p2}, Lee/O;->u(J)B

    move-result p1

    return p1
.end method

.method public ud(JB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public values()[B
    .locals 1

    iget-object v0, p0, LYd/e0;->b:Lee/O;

    invoke-interface {v0}, Lee/O;->values()[B

    move-result-object v0

    return-object v0
.end method

.method public ya(Lee/O;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

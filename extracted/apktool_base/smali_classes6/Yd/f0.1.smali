.class public LYd/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/P;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/P;

.field public transient c:Lke/f;

.field public transient d:LSd/b;


# direct methods
.method public constructor <init>(Lee/P;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/f0;->c:Lke/f;

    iput-object v0, p0, LYd/f0;->d:LSd/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/f0;->b:Lee/P;

    return-void
.end method

.method public static synthetic a(LYd/f0;)Lee/P;
    .locals 0

    iget-object p0, p0, LYd/f0;->b:Lee/P;

    return-object p0
.end method


# virtual methods
.method public E(J)Z
    .locals 1

    iget-object v0, p0, LYd/f0;->b:Lee/P;

    invoke-interface {v0, p1, p2}, Lee/P;->E(J)Z

    move-result p1

    return p1
.end method

.method public H0(J)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public K(Lhe/q;)Z
    .locals 1

    iget-object v0, p0, LYd/f0;->b:Lee/P;

    invoke-interface {v0, p1}, Lee/P;->K(Lhe/q;)Z

    move-result p1

    return p1
.end method

.method public O(C)Z
    .locals 1

    iget-object v0, p0, LYd/f0;->b:Lee/P;

    invoke-interface {v0, p1}, Lee/P;->O(C)Z

    move-result p1

    return p1
.end method

.method public P4(Lee/P;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public X7(JCC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Xd(Lhe/V;)Z
    .locals 1

    iget-object v0, p0, LYd/f0;->b:Lee/P;

    invoke-interface {v0, p1}, Lee/P;->Xd(Lhe/V;)Z

    move-result p1

    return p1
.end method

.method public Z([C)[C
    .locals 1

    iget-object v0, p0, LYd/f0;->b:Lee/P;

    invoke-interface {v0, p1}, Lee/P;->Z([C)[C

    move-result-object p1

    return-object p1
.end method

.method public a8(Lhe/V;)Z
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

.method public e(J)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/f0;->b:Lee/P;

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

.method public g(LUd/b;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public h0([J)[J
    .locals 1

    iget-object v0, p0, LYd/f0;->b:Lee/P;

    invoke-interface {v0, p1}, Lee/P;->h0([J)[J

    move-result-object p1

    return-object p1
.end method

.method public h7(JC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/f0;->b:Lee/P;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()C
    .locals 1

    iget-object v0, p0, LYd/f0;->b:Lee/P;

    invoke-interface {v0}, Lee/P;->i()C

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/f0;->b:Lee/P;

    invoke-interface {v0}, Lee/P;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/X;
    .locals 1

    new-instance v0, LYd/f0$a;

    invoke-direct {v0, p0}, LYd/f0$a;-><init>(LYd/f0;)V

    return-object v0
.end method

.method public j()[J
    .locals 1

    iget-object v0, p0, LYd/f0;->b:Lee/P;

    invoke-interface {v0}, Lee/P;->j()[J

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/b;
    .locals 1

    iget-object v0, p0, LYd/f0;->d:LSd/b;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/f0;->b:Lee/P;

    invoke-interface {v0}, Lee/P;->k()LSd/b;

    move-result-object v0

    invoke-static {v0}, LSd/c;->c1(LSd/b;)LSd/b;

    move-result-object v0

    iput-object v0, p0, LYd/f0;->d:LSd/b;

    :cond_0
    iget-object v0, p0, LYd/f0;->d:LSd/b;

    return-object v0
.end method

.method public kb(JC)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public keySet()Lke/f;
    .locals 1

    iget-object v0, p0, LYd/f0;->c:Lke/f;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/f0;->b:Lee/P;

    invoke-interface {v0}, Lee/P;->keySet()Lke/f;

    move-result-object v0

    invoke-static {v0}, LSd/c;->F2(Lke/f;)Lke/f;

    move-result-object v0

    iput-object v0, p0, LYd/f0;->c:Lke/f;

    :cond_0
    iget-object v0, p0, LYd/f0;->c:Lke/f;

    return-object v0
.end method

.method public l()J
    .locals 2

    iget-object v0, p0, LYd/f0;->b:Lee/P;

    invoke-interface {v0}, Lee/P;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public l0(Lhe/b0;)Z
    .locals 1

    iget-object v0, p0, LYd/f0;->b:Lee/P;

    invoke-interface {v0, p1}, Lee/P;->l0(Lhe/b0;)Z

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
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/f0;->b:Lee/P;

    invoke-interface {v0}, Lee/P;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/f0;->b:Lee/P;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(J)C
    .locals 1

    iget-object v0, p0, LYd/f0;->b:Lee/P;

    invoke-interface {v0, p1, p2}, Lee/P;->u(J)C

    move-result p1

    return p1
.end method

.method public values()[C
    .locals 1

    iget-object v0, p0, LYd/f0;->b:Lee/P;

    invoke-interface {v0}, Lee/P;->values()[C

    move-result-object v0

    return-object v0
.end method

.method public wd(JC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

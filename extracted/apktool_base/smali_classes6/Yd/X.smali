.class public LYd/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/J;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/J;

.field public transient c:Lke/e;

.field public transient d:LSd/f;


# direct methods
.method public constructor <init>(Lee/J;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/X;->c:Lke/e;

    iput-object v0, p0, LYd/X;->d:LSd/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/X;->b:Lee/J;

    return-void
.end method

.method public static synthetic a(LYd/X;)Lee/J;
    .locals 0

    iget-object p0, p0, LYd/X;->b:Lee/J;

    return-object p0
.end method


# virtual methods
.method public B(Lhe/I;)Z
    .locals 1

    iget-object v0, p0, LYd/X;->b:Lee/J;

    invoke-interface {v0, p1}, Lee/J;->B(Lhe/I;)Z

    move-result p1

    return p1
.end method

.method public Db(IF)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public F(I)Z
    .locals 1

    iget-object v0, p0, LYd/X;->b:Lee/J;

    invoke-interface {v0, p1}, Lee/J;->F(I)Z

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

    iget-object v0, p0, LYd/X;->b:Lee/J;

    invoke-interface {v0, p1}, Lee/J;->J(Lhe/S;)Z

    move-result p1

    return p1
.end method

.method public Nd(IF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public U(F)Z
    .locals 1

    iget-object v0, p0, LYd/X;->b:Lee/J;

    invoke-interface {v0, p1}, Lee/J;->U(F)Z

    move-result p1

    return p1
.end method

.method public Yb(IFF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Z4(IF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c0([F)[F
    .locals 1

    iget-object v0, p0, LYd/X;->b:Lee/J;

    invoke-interface {v0, p1}, Lee/J;->c0([F)[F

    move-result-object p1

    return-object p1
.end method

.method public c9(Lee/J;)V
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

.method public db(Lhe/N;)Z
    .locals 1

    iget-object v0, p0, LYd/X;->b:Lee/J;

    invoke-interface {v0, p1}, Lee/J;->db(Lhe/N;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/X;->b:Lee/J;

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

    iget-object v0, p0, LYd/X;->b:Lee/J;

    invoke-interface {v0, p1}, Lee/J;->f0([I)[I

    move-result-object p1

    return-object p1
.end method

.method public get(I)F
    .locals 1

    iget-object v0, p0, LYd/X;->b:Lee/J;

    invoke-interface {v0, p1}, Lee/J;->get(I)F

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/X;->b:Lee/J;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()F
    .locals 1

    iget-object v0, p0, LYd/X;->b:Lee/J;

    invoke-interface {v0}, Lee/J;->i()F

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/X;->b:Lee/J;

    invoke-interface {v0}, Lee/J;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/O;
    .locals 1

    new-instance v0, LYd/X$a;

    invoke-direct {v0, p0}, LYd/X$a;-><init>(LYd/X;)V

    return-object v0
.end method

.method public j()[I
    .locals 1

    iget-object v0, p0, LYd/X;->b:Lee/J;

    invoke-interface {v0}, Lee/J;->j()[I

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/f;
    .locals 1

    iget-object v0, p0, LYd/X;->d:LSd/f;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/X;->b:Lee/J;

    invoke-interface {v0}, Lee/J;->k()LSd/f;

    move-result-object v0

    invoke-static {v0}, LSd/c;->e1(LSd/f;)LSd/f;

    move-result-object v0

    iput-object v0, p0, LYd/X;->d:LSd/f;

    :cond_0
    iget-object v0, p0, LYd/X;->d:LSd/f;

    return-object v0
.end method

.method public keySet()Lke/e;
    .locals 1

    iget-object v0, p0, LYd/X;->c:Lke/e;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/X;->b:Lee/J;

    invoke-interface {v0}, Lee/J;->keySet()Lke/e;

    move-result-object v0

    invoke-static {v0}, LSd/c;->E2(Lke/e;)Lke/e;

    move-result-object v0

    iput-object v0, p0, LYd/X;->c:Lke/e;

    :cond_0
    iget-object v0, p0, LYd/X;->c:Lke/e;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, LYd/X;->b:Lee/J;

    invoke-interface {v0}, Lee/J;->l()I

    move-result v0

    return v0
.end method

.method public n(LUd/d;)V
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
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(I)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/X;->b:Lee/J;

    invoke-interface {v0}, Lee/J;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/X;->b:Lee/J;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[F
    .locals 1

    iget-object v0, p0, LYd/X;->b:Lee/J;

    invoke-interface {v0}, Lee/J;->values()[F

    move-result-object v0

    return-object v0
.end method

.method public vd(Lhe/N;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

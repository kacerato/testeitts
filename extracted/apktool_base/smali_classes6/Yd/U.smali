.class public LYd/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/H;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/H;

.field public transient c:Lke/e;

.field public transient d:LSd/b;


# direct methods
.method public constructor <init>(Lee/H;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/U;->c:Lke/e;

    iput-object v0, p0, LYd/U;->d:LSd/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/U;->b:Lee/H;

    return-void
.end method

.method public static synthetic a(LYd/U;)Lee/H;
    .locals 0

    iget-object p0, p0, LYd/U;->b:Lee/H;

    return-object p0
.end method


# virtual methods
.method public F(I)Z
    .locals 1

    iget-object v0, p0, LYd/U;->b:Lee/H;

    invoke-interface {v0, p1}, Lee/H;->F(I)Z

    move-result p1

    return p1
.end method

.method public F0(I)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Gb(IC)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public J(Lhe/S;)Z
    .locals 1

    iget-object v0, p0, LYd/U;->b:Lee/H;

    invoke-interface {v0, p1}, Lee/H;->J(Lhe/S;)Z

    move-result p1

    return p1
.end method

.method public J7(ICC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public K(Lhe/q;)Z
    .locals 1

    iget-object v0, p0, LYd/U;->b:Lee/H;

    invoke-interface {v0, p1}, Lee/H;->K(Lhe/q;)Z

    move-result p1

    return p1
.end method

.method public O(C)Z
    .locals 1

    iget-object v0, p0, LYd/U;->b:Lee/H;

    invoke-interface {v0, p1}, Lee/H;->O(C)Z

    move-result p1

    return p1
.end method

.method public Vd(IC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public X4(IC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Z([C)[C
    .locals 1

    iget-object v0, p0, LYd/U;->b:Lee/H;

    invoke-interface {v0, p1}, Lee/H;->Z([C)[C

    move-result-object p1

    return-object p1
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

    iget-object v0, p0, LYd/U;->b:Lee/H;

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

    iget-object v0, p0, LYd/U;->b:Lee/H;

    invoke-interface {v0, p1}, Lee/H;->f0([I)[I

    move-result-object p1

    return-object p1
.end method

.method public f3(Lhe/L;)Z
    .locals 1

    iget-object v0, p0, LYd/U;->b:Lee/H;

    invoke-interface {v0, p1}, Lee/H;->f3(Lhe/L;)Z

    move-result p1

    return p1
.end method

.method public g(LUd/b;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public get(I)C
    .locals 1

    iget-object v0, p0, LYd/U;->b:Lee/H;

    invoke-interface {v0, p1}, Lee/H;->get(I)C

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/U;->b:Lee/H;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()C
    .locals 1

    iget-object v0, p0, LYd/U;->b:Lee/H;

    invoke-interface {v0}, Lee/H;->i()C

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/U;->b:Lee/H;

    invoke-interface {v0}, Lee/H;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/M;
    .locals 1

    new-instance v0, LYd/U$a;

    invoke-direct {v0, p0}, LYd/U$a;-><init>(LYd/U;)V

    return-object v0
.end method

.method public j()[I
    .locals 1

    iget-object v0, p0, LYd/U;->b:Lee/H;

    invoke-interface {v0}, Lee/H;->j()[I

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/b;
    .locals 1

    iget-object v0, p0, LYd/U;->d:LSd/b;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/U;->b:Lee/H;

    invoke-interface {v0}, Lee/H;->k()LSd/b;

    move-result-object v0

    invoke-static {v0}, LSd/c;->c1(LSd/b;)LSd/b;

    move-result-object v0

    iput-object v0, p0, LYd/U;->d:LSd/b;

    :cond_0
    iget-object v0, p0, LYd/U;->d:LSd/b;

    return-object v0
.end method

.method public keySet()Lke/e;
    .locals 1

    iget-object v0, p0, LYd/U;->c:Lke/e;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/U;->b:Lee/H;

    invoke-interface {v0}, Lee/H;->keySet()Lke/e;

    move-result-object v0

    invoke-static {v0}, LSd/c;->E2(Lke/e;)Lke/e;

    move-result-object v0

    iput-object v0, p0, LYd/U;->c:Lke/e;

    :cond_0
    iget-object v0, p0, LYd/U;->c:Lke/e;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, LYd/U;->b:Lee/H;

    invoke-interface {v0}, Lee/H;->l()I

    move-result v0

    return v0
.end method

.method public m4(Lee/H;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public nc(Lhe/L;)Z
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
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(I)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/U;->b:Lee/H;

    invoke-interface {v0}, Lee/H;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/U;->b:Lee/H;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[C
    .locals 1

    iget-object v0, p0, LYd/U;->b:Lee/H;

    invoke-interface {v0}, Lee/H;->values()[C

    move-result-object v0

    return-object v0
.end method

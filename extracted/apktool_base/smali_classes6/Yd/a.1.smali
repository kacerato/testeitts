.class public LYd/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/a;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/a;

.field public transient c:Lke/a;

.field public transient d:LSd/a;


# direct methods
.method public constructor <init>(Lee/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/a;->c:Lke/a;

    iput-object v0, p0, LYd/a;->d:LSd/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/a;->b:Lee/a;

    return-void
.end method

.method public static synthetic a(LYd/a;)Lee/a;
    .locals 0

    iget-object p0, p0, LYd/a;->b:Lee/a;

    return-object p0
.end method


# virtual methods
.method public D(B)Z
    .locals 1

    iget-object v0, p0, LYd/a;->b:Lee/a;

    invoke-interface {v0, p1}, Lee/a;->D(B)Z

    move-result p1

    return p1
.end method

.method public E0(B)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public G2(Lhe/a;)Z
    .locals 1

    iget-object v0, p0, LYd/a;->b:Lee/a;

    invoke-interface {v0, p1}, Lee/a;->G2(Lhe/a;)Z

    move-result p1

    return p1
.end method

.method public L8(Lee/a;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public M(Lhe/h;)Z
    .locals 1

    iget-object v0, p0, LYd/a;->b:Lee/a;

    invoke-interface {v0, p1}, Lee/a;->M(Lhe/h;)Z

    move-result p1

    return p1
.end method

.method public P(B)Z
    .locals 1

    iget-object v0, p0, LYd/a;->b:Lee/a;

    invoke-interface {v0, p1}, Lee/a;->P(B)Z

    move-result p1

    return p1
.end method

.method public P3(BB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Uc(Lhe/a;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public X([B)[B
    .locals 1

    iget-object v0, p0, LYd/a;->b:Lee/a;

    invoke-interface {v0, p1}, Lee/a;->X([B)[B

    move-result-object p1

    return-object p1
.end method

.method public X5(BBB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a0([B)[B
    .locals 1

    iget-object v0, p0, LYd/a;->b:Lee/a;

    invoke-interface {v0, p1}, Lee/a;->a0([B)[B

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public da(BB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/a;->b:Lee/a;

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

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/a;->b:Lee/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()B
    .locals 1

    iget-object v0, p0, LYd/a;->b:Lee/a;

    invoke-interface {v0}, Lee/a;->i()B

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/a;->b:Lee/a;

    invoke-interface {v0}, Lee/a;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/b;
    .locals 1

    new-instance v0, LYd/a$a;

    invoke-direct {v0, p0}, LYd/a$a;-><init>(LYd/a;)V

    return-object v0
.end method

.method public j()[B
    .locals 1

    iget-object v0, p0, LYd/a;->b:Lee/a;

    invoke-interface {v0}, Lee/a;->j()[B

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/a;
    .locals 1

    iget-object v0, p0, LYd/a;->d:LSd/a;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/a;->b:Lee/a;

    invoke-interface {v0}, Lee/a;->k()LSd/a;

    move-result-object v0

    invoke-static {v0}, LSd/c;->b1(LSd/a;)LSd/a;

    move-result-object v0

    iput-object v0, p0, LYd/a;->d:LSd/a;

    :cond_0
    iget-object v0, p0, LYd/a;->d:LSd/a;

    return-object v0
.end method

.method public keySet()Lke/a;
    .locals 1

    iget-object v0, p0, LYd/a;->c:Lke/a;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/a;->b:Lee/a;

    invoke-interface {v0}, Lee/a;->keySet()Lke/a;

    move-result-object v0

    invoke-static {v0}, LSd/c;->A2(Lke/a;)Lke/a;

    move-result-object v0

    iput-object v0, p0, LYd/a;->c:Lke/a;

    :cond_0
    iget-object v0, p0, LYd/a;->c:Lke/a;

    return-object v0
.end method

.method public l()B
    .locals 1

    iget-object v0, p0, LYd/a;->b:Lee/a;

    invoke-interface {v0}, Lee/a;->l()B

    move-result v0

    return v0
.end method

.method public m(B)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public me(BB)Z
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

.method public s0(B)B
    .locals 1

    iget-object v0, p0, LYd/a;->b:Lee/a;

    invoke-interface {v0, p1}, Lee/a;->s0(B)B

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/a;->b:Lee/a;

    invoke-interface {v0}, Lee/a;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/a;->b:Lee/a;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[B
    .locals 1

    iget-object v0, p0, LYd/a;->b:Lee/a;

    invoke-interface {v0}, Lee/a;->values()[B

    move-result-object v0

    return-object v0
.end method

.method public w(Lhe/h;)Z
    .locals 1

    iget-object v0, p0, LYd/a;->b:Lee/a;

    invoke-interface {v0, p1}, Lee/a;->w(Lhe/h;)Z

    move-result p1

    return p1
.end method

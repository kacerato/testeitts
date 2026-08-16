.class public LYd/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/e;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/e;

.field public transient c:Lke/a;

.field public transient d:LSd/g;


# direct methods
.method public constructor <init>(Lee/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/f;->c:Lke/a;

    iput-object v0, p0, LYd/f;->d:LSd/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/f;->b:Lee/e;

    return-void
.end method

.method public static synthetic a(LYd/f;)Lee/e;
    .locals 0

    iget-object p0, p0, LYd/f;->b:Lee/e;

    return-object p0
.end method


# virtual methods
.method public D(B)Z
    .locals 1

    iget-object v0, p0, LYd/f;->b:Lee/e;

    invoke-interface {v0, p1}, Lee/e;->D(B)Z

    move-result p1

    return p1
.end method

.method public E0(B)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Q(I)Z
    .locals 1

    iget-object v0, p0, LYd/f;->b:Lee/e;

    invoke-interface {v0, p1}, Lee/e;->Q(I)Z

    move-result p1

    return p1
.end method

.method public Vb(Lhe/e;)Z
    .locals 1

    iget-object v0, p0, LYd/f;->b:Lee/e;

    invoke-interface {v0, p1}, Lee/e;->Vb(Lhe/e;)Z

    move-result p1

    return p1
.end method

.method public X([B)[B
    .locals 1

    iget-object v0, p0, LYd/f;->b:Lee/e;

    invoke-interface {v0, p1}, Lee/e;->X([B)[B

    move-result-object p1

    return-object p1
.end method

.method public Y3(BI)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public ac(Lee/e;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bc(Lhe/e;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public ca(BI)I
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

.method public e0([I)[I
    .locals 1

    iget-object v0, p0, LYd/f;->b:Lee/e;

    invoke-interface {v0, p1}, Lee/e;->e0([I)[I

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/f;->b:Lee/e;

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

.method public f(LUd/e;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public ge(BI)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/f;->b:Lee/e;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, LYd/f;->b:Lee/e;

    invoke-interface {v0}, Lee/e;->i()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/f;->b:Lee/e;

    invoke-interface {v0}, Lee/e;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/f;
    .locals 1

    new-instance v0, LYd/f$a;

    invoke-direct {v0, p0}, LYd/f$a;-><init>(LYd/f;)V

    return-object v0
.end method

.method public j()[B
    .locals 1

    iget-object v0, p0, LYd/f;->b:Lee/e;

    invoke-interface {v0}, Lee/e;->j()[B

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/g;
    .locals 1

    iget-object v0, p0, LYd/f;->d:LSd/g;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/f;->b:Lee/e;

    invoke-interface {v0}, Lee/e;->k()LSd/g;

    move-result-object v0

    invoke-static {v0}, LSd/c;->f1(LSd/g;)LSd/g;

    move-result-object v0

    iput-object v0, p0, LYd/f;->d:LSd/g;

    :cond_0
    iget-object v0, p0, LYd/f;->d:LSd/g;

    return-object v0
.end method

.method public keySet()Lke/a;
    .locals 1

    iget-object v0, p0, LYd/f;->c:Lke/a;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/f;->b:Lee/e;

    invoke-interface {v0}, Lee/e;->keySet()Lke/a;

    move-result-object v0

    invoke-static {v0}, LSd/c;->A2(Lke/a;)Lke/a;

    move-result-object v0

    iput-object v0, p0, LYd/f;->c:Lke/a;

    :cond_0
    iget-object v0, p0, LYd/f;->c:Lke/a;

    return-object v0
.end method

.method public l()B
    .locals 1

    iget-object v0, p0, LYd/f;->b:Lee/e;

    invoke-interface {v0}, Lee/e;->l()B

    move-result v0

    return v0
.end method

.method public m(B)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public m0(Lhe/S;)Z
    .locals 1

    iget-object v0, p0, LYd/f;->b:Lee/e;

    invoke-interface {v0, p1}, Lee/e;->m0(Lhe/S;)Z

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
            "Ljava/lang/Byte;",
            "+",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public s0(B)I
    .locals 1

    iget-object v0, p0, LYd/f;->b:Lee/e;

    invoke-interface {v0, p1}, Lee/e;->s0(B)I

    move-result p1

    return p1
.end method

.method public s8(BII)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/f;->b:Lee/e;

    invoke-interface {v0}, Lee/e;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/f;->b:Lee/e;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[I
    .locals 1

    iget-object v0, p0, LYd/f;->b:Lee/e;

    invoke-interface {v0}, Lee/e;->values()[I

    move-result-object v0

    return-object v0
.end method

.method public w(Lhe/h;)Z
    .locals 1

    iget-object v0, p0, LYd/f;->b:Lee/e;

    invoke-interface {v0, p1}, Lee/e;->w(Lhe/h;)Z

    move-result p1

    return p1
.end method

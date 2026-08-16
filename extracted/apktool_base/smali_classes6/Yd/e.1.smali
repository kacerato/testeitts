.class public LYd/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/d;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/d;

.field public transient c:Lke/a;

.field public transient d:LSd/f;


# direct methods
.method public constructor <init>(Lee/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/e;->c:Lke/a;

    iput-object v0, p0, LYd/e;->d:LSd/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/e;->b:Lee/d;

    return-void
.end method

.method public static synthetic a(LYd/e;)Lee/d;
    .locals 0

    iget-object p0, p0, LYd/e;->b:Lee/d;

    return-object p0
.end method


# virtual methods
.method public B(Lhe/I;)Z
    .locals 1

    iget-object v0, p0, LYd/e;->b:Lee/d;

    invoke-interface {v0, p1}, Lee/d;->B(Lhe/I;)Z

    move-result p1

    return p1
.end method

.method public D(B)Z
    .locals 1

    iget-object v0, p0, LYd/e;->b:Lee/d;

    invoke-interface {v0, p1}, Lee/d;->D(B)Z

    move-result p1

    return p1
.end method

.method public E0(B)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public U(F)Z
    .locals 1

    iget-object v0, p0, LYd/e;->b:Lee/d;

    invoke-interface {v0, p1}, Lee/d;->U(F)Z

    move-result p1

    return p1
.end method

.method public V3(BF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public X([B)[B
    .locals 1

    iget-object v0, p0, LYd/e;->b:Lee/d;

    invoke-interface {v0, p1}, Lee/d;->X([B)[B

    move-result-object p1

    return-object p1
.end method

.method public X9(BF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c0([F)[F
    .locals 1

    iget-object v0, p0, LYd/e;->b:Lee/d;

    invoke-interface {v0, p1}, Lee/d;->c0([F)[F

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public d9(Lee/d;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/e;->b:Lee/d;

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

    iget-object v0, p0, LYd/e;->b:Lee/d;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public he(BF)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public i()F
    .locals 1

    iget-object v0, p0, LYd/e;->b:Lee/d;

    invoke-interface {v0}, Lee/d;->i()F

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/e;->b:Lee/d;

    invoke-interface {v0}, Lee/d;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/e;
    .locals 1

    new-instance v0, LYd/e$a;

    invoke-direct {v0, p0}, LYd/e$a;-><init>(LYd/e;)V

    return-object v0
.end method

.method public j()[B
    .locals 1

    iget-object v0, p0, LYd/e;->b:Lee/d;

    invoke-interface {v0}, Lee/d;->j()[B

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/f;
    .locals 1

    iget-object v0, p0, LYd/e;->d:LSd/f;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/e;->b:Lee/d;

    invoke-interface {v0}, Lee/d;->k()LSd/f;

    move-result-object v0

    invoke-static {v0}, LSd/c;->e1(LSd/f;)LSd/f;

    move-result-object v0

    iput-object v0, p0, LYd/e;->d:LSd/f;

    :cond_0
    iget-object v0, p0, LYd/e;->d:LSd/f;

    return-object v0
.end method

.method public keySet()Lke/a;
    .locals 1

    iget-object v0, p0, LYd/e;->c:Lke/a;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/e;->b:Lee/d;

    invoke-interface {v0}, Lee/d;->keySet()Lke/a;

    move-result-object v0

    invoke-static {v0}, LSd/c;->A2(Lke/a;)Lke/a;

    move-result-object v0

    iput-object v0, p0, LYd/e;->c:Lke/a;

    :cond_0
    iget-object v0, p0, LYd/e;->c:Lke/a;

    return-object v0
.end method

.method public l()B
    .locals 1

    iget-object v0, p0, LYd/e;->b:Lee/d;

    invoke-interface {v0}, Lee/d;->l()B

    move-result v0

    return v0
.end method

.method public m(B)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public n(LUd/d;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public n4(BFF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public ob(Lhe/d;)Z
    .locals 1

    iget-object v0, p0, LYd/e;->b:Lee/d;

    invoke-interface {v0, p1}, Lee/d;->ob(Lhe/d;)Z

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
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public s0(B)F
    .locals 1

    iget-object v0, p0, LYd/e;->b:Lee/d;

    invoke-interface {v0, p1}, Lee/d;->s0(B)F

    move-result p1

    return p1
.end method

.method public s3(Lhe/d;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/e;->b:Lee/d;

    invoke-interface {v0}, Lee/d;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/e;->b:Lee/d;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[F
    .locals 1

    iget-object v0, p0, LYd/e;->b:Lee/d;

    invoke-interface {v0}, Lee/d;->values()[F

    move-result-object v0

    return-object v0
.end method

.method public w(Lhe/h;)Z
    .locals 1

    iget-object v0, p0, LYd/e;->b:Lee/d;

    invoke-interface {v0, p1}, Lee/d;->w(Lhe/h;)Z

    move-result p1

    return p1
.end method

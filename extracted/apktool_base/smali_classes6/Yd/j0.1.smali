.class public LYd/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/T;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/T;

.field public transient c:Lke/f;

.field public transient d:LSd/g;


# direct methods
.method public constructor <init>(Lee/T;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/j0;->c:Lke/f;

    iput-object v0, p0, LYd/j0;->d:LSd/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/j0;->b:Lee/T;

    return-void
.end method

.method public static synthetic a(LYd/j0;)Lee/T;
    .locals 0

    iget-object p0, p0, LYd/j0;->b:Lee/T;

    return-object p0
.end method


# virtual methods
.method public Cb(Lhe/Y;)Z
    .locals 1

    iget-object v0, p0, LYd/j0;->b:Lee/T;

    invoke-interface {v0, p1}, Lee/T;->Cb(Lhe/Y;)Z

    move-result p1

    return p1
.end method

.method public E(J)Z
    .locals 1

    iget-object v0, p0, LYd/j0;->b:Lee/T;

    invoke-interface {v0, p1, p2}, Lee/T;->E(J)Z

    move-result p1

    return p1
.end method

.method public H0(J)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Q(I)Z
    .locals 1

    iget-object v0, p0, LYd/j0;->b:Lee/T;

    invoke-interface {v0, p1}, Lee/T;->Q(I)Z

    move-result p1

    return p1
.end method

.method public Xb(JII)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Y4(Lhe/Y;)Z
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

.method public e(J)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public e0([I)[I
    .locals 1

    iget-object v0, p0, LYd/j0;->b:Lee/T;

    invoke-interface {v0, p1}, Lee/T;->e0([I)[I

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/j0;->b:Lee/T;

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

.method public gb(JI)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public h0([J)[J
    .locals 1

    iget-object v0, p0, LYd/j0;->b:Lee/T;

    invoke-interface {v0, p1}, Lee/T;->h0([J)[J

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/j0;->b:Lee/T;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, LYd/j0;->b:Lee/T;

    invoke-interface {v0}, Lee/T;->i()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/j0;->b:Lee/T;

    invoke-interface {v0}, Lee/T;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/a0;
    .locals 1

    new-instance v0, LYd/j0$a;

    invoke-direct {v0, p0}, LYd/j0$a;-><init>(LYd/j0;)V

    return-object v0
.end method

.method public j()[J
    .locals 1

    iget-object v0, p0, LYd/j0;->b:Lee/T;

    invoke-interface {v0}, Lee/T;->j()[J

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/g;
    .locals 1

    iget-object v0, p0, LYd/j0;->d:LSd/g;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/j0;->b:Lee/T;

    invoke-interface {v0}, Lee/T;->k()LSd/g;

    move-result-object v0

    invoke-static {v0}, LSd/c;->f1(LSd/g;)LSd/g;

    move-result-object v0

    iput-object v0, p0, LYd/j0;->d:LSd/g;

    :cond_0
    iget-object v0, p0, LYd/j0;->d:LSd/g;

    return-object v0
.end method

.method public keySet()Lke/f;
    .locals 1

    iget-object v0, p0, LYd/j0;->c:Lke/f;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/j0;->b:Lee/T;

    invoke-interface {v0}, Lee/T;->keySet()Lke/f;

    move-result-object v0

    invoke-static {v0}, LSd/c;->F2(Lke/f;)Lke/f;

    move-result-object v0

    iput-object v0, p0, LYd/j0;->c:Lke/f;

    :cond_0
    iget-object v0, p0, LYd/j0;->c:Lke/f;

    return-object v0
.end method

.method public l()J
    .locals 2

    iget-object v0, p0, LYd/j0;->b:Lee/T;

    invoke-interface {v0}, Lee/T;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public l0(Lhe/b0;)Z
    .locals 1

    iget-object v0, p0, LYd/j0;->b:Lee/T;

    invoke-interface {v0, p1}, Lee/T;->l0(Lhe/b0;)Z

    move-result p1

    return p1
.end method

.method public m0(Lhe/S;)Z
    .locals 1

    iget-object v0, p0, LYd/j0;->b:Lee/T;

    invoke-interface {v0, p1}, Lee/T;->m0(Lhe/S;)Z

    move-result p1

    return p1
.end method

.method public m3(Lee/T;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public m7(JI)I
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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public sd(JI)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/j0;->b:Lee/T;

    invoke-interface {v0}, Lee/T;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/j0;->b:Lee/T;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(J)I
    .locals 1

    iget-object v0, p0, LYd/j0;->b:Lee/T;

    invoke-interface {v0, p1, p2}, Lee/T;->u(J)I

    move-result p1

    return p1
.end method

.method public values()[I
    .locals 1

    iget-object v0, p0, LYd/j0;->b:Lee/T;

    invoke-interface {v0}, Lee/T;->values()[I

    move-result-object v0

    return-object v0
.end method

.class public abstract Loh/M;
.super Loh/B;
.source "SourceFile"

# interfaces
.implements Loh/N;


# static fields
.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x3

.field public static final i:I = 0x4


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Loh/g;


# direct methods
.method public constructor <init>(IIILoh/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/B;-><init>()V

    if-eqz p4, :cond_2

    if-eqz p2, :cond_1

    and-int/lit16 v0, p2, 0xc0

    if-ne v0, p2, :cond_1

    instance-of v0, p4, Loh/f;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput p1, p0, Loh/M;->b:I

    iput p2, p0, Loh/M;->c:I

    iput p3, p0, Loh/M;->d:I

    iput-object p4, p0, Loh/M;->e:Loh/g;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "invalid tag class: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'obj\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(ZIILoh/g;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 2
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Loh/M;-><init>(IIILoh/g;)V

    return-void
.end method

.method public constructor <init>(ZILoh/g;)V
    .locals 1

    const/16 v0, 0x80

    .line 3
    invoke-direct {p0, p1, v0, p2, p3}, Loh/M;-><init>(ZIILoh/g;)V

    return-void
.end method

.method public static E(Ljava/lang/Object;)Loh/M;
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "\'obj\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static F(Loh/M;Z)Loh/M;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'taggedObject\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "this method not valid for implicitly tagged tagged objects"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static G(Loh/B;)Loh/M;
    .locals 3

    instance-of v0, p0, Loh/M;

    if-eqz v0, :cond_0

    check-cast p0, Loh/M;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static H(IILoh/h;)Loh/B;
    .locals 2

    invoke-virtual {p2}, Loh/h;->i()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Loh/Z0;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Loh/h;->g(I)Loh/g;

    move-result-object p2

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p1, p2}, Loh/Z0;-><init>(IIILoh/g;)V

    goto :goto_0

    :cond_0
    new-instance v0, Loh/Z0;

    const/4 v1, 0x4

    invoke-static {p2}, Loh/T0;->a(Loh/h;)Loh/V0;

    move-result-object p2

    invoke-direct {v0, v1, p0, p1, p2}, Loh/Z0;-><init>(IIILoh/g;)V

    :goto_0
    return-object v0
.end method

.method public static I(IILoh/h;)Loh/B;
    .locals 2

    invoke-virtual {p2}, Loh/h;->i()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Loh/l0;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Loh/h;->g(I)Loh/g;

    move-result-object p2

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p1, p2}, Loh/l0;-><init>(IIILoh/g;)V

    goto :goto_0

    :cond_0
    new-instance v0, Loh/l0;

    const/4 v1, 0x4

    invoke-static {p2}, Loh/a0;->a(Loh/h;)Loh/g0;

    move-result-object p2

    invoke-direct {v0, v1, p0, p1, p2}, Loh/l0;-><init>(IIILoh/g;)V

    :goto_0
    return-object v0
.end method

.method public static J(II[B)Loh/B;
    .locals 2

    new-instance v0, Loh/Z0;

    new-instance v1, Loh/C0;

    invoke-direct {v1, p2}, Loh/C0;-><init>([B)V

    const/4 p2, 0x4

    invoke-direct {v0, p2, p0, p1, v1}, Loh/Z0;-><init>(IIILoh/g;)V

    return-object v0
.end method

.method public static R(Ljava/lang/Object;)Loh/M;
    .locals 3

    if-eqz p0, :cond_3

    instance-of v0, p0, Loh/M;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Loh/g;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Loh/g;

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    instance-of v1, v0, Loh/M;

    if-eqz v1, :cond_2

    check-cast v0, Loh/M;

    return-object v0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Loh/B;->B([B)Loh/B;

    move-result-object p0

    invoke-static {p0}, Loh/M;->G(Loh/B;)Loh/M;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct tagged object from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    check-cast p0, Loh/M;

    return-object p0
.end method

.method public static S(Ljava/lang/Object;I)Loh/M;
    .locals 0

    invoke-static {p0}, Loh/M;->E(Ljava/lang/Object;)Loh/M;

    move-result-object p0

    invoke-static {p0, p1}, Loh/V;->g(Loh/M;I)Loh/M;

    move-result-object p0

    return-object p0
.end method

.method public static T(Ljava/lang/Object;II)Loh/M;
    .locals 0

    invoke-static {p0}, Loh/M;->E(Ljava/lang/Object;)Loh/M;

    move-result-object p0

    invoke-static {p0, p1, p2}, Loh/V;->e(Loh/M;II)Loh/M;

    move-result-object p0

    return-object p0
.end method

.method public static U(Loh/M;IIZ)Loh/M;
    .locals 0

    invoke-static {p0, p3}, Loh/M;->F(Loh/M;Z)Loh/M;

    move-result-object p0

    invoke-static {p0, p1, p2}, Loh/V;->m(Loh/M;II)Loh/M;

    move-result-object p0

    return-object p0
.end method

.method public static V(Loh/M;IZ)Loh/M;
    .locals 0

    invoke-static {p0, p2}, Loh/M;->F(Loh/M;Z)Loh/M;

    move-result-object p0

    invoke-static {p0, p1}, Loh/V;->l(Loh/M;I)Loh/M;

    move-result-object p0

    return-object p0
.end method

.method public static W(Loh/M;Z)Loh/M;
    .locals 0

    invoke-static {p0, p1}, Loh/M;->F(Loh/M;Z)Loh/M;

    move-result-object p0

    invoke-static {p0}, Loh/V;->o(Loh/M;)Loh/M;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public C()Loh/B;
    .locals 5

    new-instance v0, Loh/K0;

    iget v1, p0, Loh/M;->b:I

    iget v2, p0, Loh/M;->c:I

    iget v3, p0, Loh/M;->d:I

    iget-object v4, p0, Loh/M;->e:Loh/g;

    invoke-direct {v0, v1, v2, v3, v4}, Loh/K0;-><init>(IIILoh/g;)V

    return-object v0
.end method

.method public D()Loh/B;
    .locals 5

    new-instance v0, Loh/Z0;

    iget v1, p0, Loh/M;->b:I

    iget v2, p0, Loh/M;->c:I

    iget v3, p0, Loh/M;->d:I

    iget-object v4, p0, Loh/M;->e:Loh/g;

    invoke-direct {v0, v1, v2, v3, v4}, Loh/Z0;-><init>(IIILoh/g;)V

    return-object v0
.end method

.method public L()Loh/v;
    .locals 2

    iget-object v0, p0, Loh/M;->e:Loh/g;

    instance-of v1, v0, Loh/v;

    if-eqz v1, :cond_0

    check-cast v0, Loh/v;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public M(ZI)Loh/B;
    .locals 2

    invoke-static {p2}, Loh/U;->a(I)Loh/T;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Loh/M;->N(ZLoh/T;)Loh/B;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported UNIVERSAL tag number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public N(ZLoh/T;)Loh/B;
    .locals 2

    const-string v0, "object explicit - implicit expected."

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Loh/M;->X()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Loh/M;->e:Loh/g;

    invoke-interface {p1}, Loh/g;->r()Loh/B;

    move-result-object p1

    invoke-virtual {p2, p1}, Loh/T;->b(Loh/B;)Loh/B;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x1

    iget v1, p0, Loh/M;->b:I

    if-eq p1, v1, :cond_5

    iget-object p1, p0, Loh/M;->e:Loh/g;

    invoke-interface {p1}, Loh/g;->r()Loh/B;

    move-result-object p1

    iget v0, p0, Loh/M;->b:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    invoke-virtual {p2, p1}, Loh/T;->b(Loh/B;)Loh/B;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v0, p1, Loh/E;

    if-eqz v0, :cond_3

    check-cast p1, Loh/E;

    invoke-virtual {p2, p1}, Loh/T;->d(Loh/E;)Loh/B;

    move-result-object p1

    return-object p1

    :cond_3
    check-cast p1, Loh/C0;

    invoke-virtual {p2, p1}, Loh/T;->e(Loh/C0;)Loh/B;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p0, p1}, Loh/M;->Z(Loh/B;)Loh/E;

    move-result-object p1

    invoke-virtual {p2, p1}, Loh/T;->d(Loh/E;)Loh/B;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public O()Loh/v;
    .locals 2

    invoke-virtual {p0}, Loh/M;->X()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Loh/M;->e:Loh/g;

    instance-of v1, v0, Loh/v;

    if-eqz v1, :cond_0

    check-cast v0, Loh/v;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "object implicit - explicit expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public P()Loh/M;
    .locals 2

    invoke-virtual {p0}, Loh/M;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Loh/M;->e:Loh/g;

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    invoke-static {v0}, Loh/M;->G(Loh/B;)Loh/M;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "object implicit - explicit expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Q(II)Loh/M;
    .locals 2

    if-eqz p1, :cond_2

    and-int/lit16 v0, p1, 0xc0

    if-ne v0, p1, :cond_2

    iget v0, p0, Loh/M;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Loh/M;->a0(II)Loh/M;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Loh/M;->e:Loh/g;

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    invoke-static {v0}, Loh/M;->G(Loh/B;)Loh/M;

    move-result-object v0

    invoke-static {v0, p1, p2}, Loh/V;->e(Loh/M;II)Loh/M;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "object explicit - implicit expected."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid base tag class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public X()Z
    .locals 3

    iget v0, p0, Loh/M;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public Y()Z
    .locals 2

    iget v0, p0, Loh/M;->b:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public abstract Z(Loh/B;)Loh/E;
.end method

.method public abstract a0(II)Loh/M;
.end method

.method public b()Loh/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Loh/M;->O()Loh/v;

    move-result-object v0

    return-object v0
.end method

.method public final c()Loh/B;
    .locals 0

    return-object p0
.end method

.method public d(ZI)Loh/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Loh/M;->M(ZI)Loh/B;

    move-result-object p1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    const/16 v0, 0x10

    if-eq p2, v0, :cond_1

    const/16 v0, 0x11

    if-eq p2, v0, :cond_0

    return-object p1

    :cond_0
    check-cast p1, Loh/G;

    invoke-virtual {p1}, Loh/G;->L()Loh/H;

    move-result-object p1

    return-object p1

    :cond_1
    check-cast p1, Loh/E;

    invoke-virtual {p1}, Loh/E;->L()Loh/F;

    move-result-object p1

    return-object p1

    :cond_2
    check-cast p1, Loh/y;

    invoke-virtual {p1}, Loh/y;->J()Loh/z;

    move-result-object p1

    return-object p1

    :cond_3
    check-cast p1, Loh/c;

    invoke-virtual {p1}, Loh/c;->M()Loh/d;

    move-result-object p1

    return-object p1
.end method

.method public g()I
    .locals 1

    iget v0, p0, Loh/M;->d:I

    return v0
.end method

.method public h(II)Loh/N;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Loh/M;->Q(II)Loh/M;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Loh/M;->c:I

    mul-int/lit16 v0, v0, 0x1eef

    iget v1, p0, Loh/M;->d:I

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Loh/M;->X()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    goto :goto_0

    :cond_0
    const/16 v1, 0xf0

    :goto_0
    xor-int/2addr v0, v1

    iget-object v1, p0, Loh/M;->e:Loh/g;

    invoke-interface {v1}, Loh/g;->r()Loh/B;

    move-result-object v1

    invoke-virtual {v1}, Loh/B;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public j()Loh/N;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Loh/M;->P()Loh/M;

    move-result-object v0

    return-object v0
.end method

.method public k(I)Z
    .locals 1

    iget v0, p0, Loh/M;->c:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public l()I
    .locals 1

    iget v0, p0, Loh/M;->c:I

    return v0
.end method

.method public m(II)Z
    .locals 1

    iget v0, p0, Loh/M;->c:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Loh/M;->d:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public o()Z
    .locals 2

    iget v0, p0, Loh/M;->c:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p(I)Z
    .locals 2

    iget v0, p0, Loh/M;->c:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    iget v0, p0, Loh/M;->d:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Loh/M;->c:I

    iget v2, p0, Loh/M;->d:I

    invoke-static {v1, v2}, Loh/V;->w(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Loh/M;->e:Loh/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Loh/B;)Z
    .locals 4

    instance-of v0, p1, Loh/M;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Loh/M;

    iget v0, p0, Loh/M;->d:I

    iget v2, p1, Loh/M;->d:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Loh/M;->c:I

    iget v2, p1, Loh/M;->c:I

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Loh/M;->b:I

    iget v2, p1, Loh/M;->b:I

    if-eq v0, v2, :cond_2

    invoke-virtual {p0}, Loh/M;->X()Z

    move-result v0

    invoke-virtual {p1}, Loh/M;->X()Z

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Loh/M;->e:Loh/g;

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    iget-object v2, p1, Loh/M;->e:Loh/g;

    invoke-interface {v2}, Loh/g;->r()Loh/B;

    move-result-object v2

    if-ne v0, v2, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    invoke-virtual {p0}, Loh/M;->X()Z

    move-result v3

    if-nez v3, :cond_4

    :try_start_0
    invoke-virtual {p0}, Loh/v;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1}, Loh/v;->getEncoded()[B

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v1

    :cond_4
    invoke-virtual {v0, v2}, Loh/B;->u(Loh/B;)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v1
.end method

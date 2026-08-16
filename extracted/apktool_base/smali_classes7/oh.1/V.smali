.class public abstract Loh/V;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Loh/N;IIZI)Loh/g;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Loh/V;->f(Loh/N;II)Loh/N;

    move-result-object p0

    invoke-interface {p0, p3, p4}, Loh/N;->d(ZI)Loh/g;

    move-result-object p0

    return-object p0
.end method

.method public static B(Loh/N;IZI)Loh/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Loh/V;->A(Loh/N;IIZI)Loh/g;

    move-result-object p0

    return-object p0
.end method

.method public static C(Loh/N;II)Loh/g;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Loh/V;->f(Loh/N;II)Loh/N;

    move-result-object p0

    invoke-interface {p0}, Loh/N;->b()Loh/g;

    move-result-object p0

    return-object p0
.end method

.method public static D(Loh/N;I)Loh/N;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Loh/V;->h(Loh/N;I)Loh/N;

    move-result-object p0

    invoke-interface {p0}, Loh/N;->j()Loh/N;

    move-result-object p0

    return-object p0
.end method

.method public static E(Loh/N;II)Loh/N;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Loh/V;->f(Loh/N;II)Loh/N;

    move-result-object p0

    invoke-interface {p0}, Loh/N;->j()Loh/N;

    move-result-object p0

    return-object p0
.end method

.method public static F(Loh/N;I)Loh/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Loh/V;->C(Loh/N;II)Loh/g;

    move-result-object p0

    return-object p0
.end method

.method public static G(Loh/N;)Loh/N;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    invoke-static {p0, v0}, Loh/V;->D(Loh/N;I)Loh/N;

    move-result-object p0

    return-object p0
.end method

.method public static H(Loh/N;I)Loh/N;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Loh/V;->E(Loh/N;II)Loh/N;

    move-result-object p0

    return-object p0
.end method

.method public static I(Loh/N;IIII)Loh/N;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Loh/V;->f(Loh/N;II)Loh/N;

    move-result-object p0

    invoke-interface {p0, p3, p4}, Loh/N;->h(II)Loh/N;

    move-result-object p0

    return-object p0
.end method

.method public static J(Loh/N;III)Loh/N;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Loh/V;->I(Loh/N;IIII)Loh/N;

    move-result-object p0

    return-object p0
.end method

.method public static K(Loh/M;IIZI)Loh/B;
    .locals 0

    invoke-virtual {p0, p1, p2}, Loh/M;->m(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p3, p4}, Loh/M;->M(ZI)Loh/B;

    move-result-object p0

    return-object p0
.end method

.method public static L(Loh/M;IZI)Loh/B;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Loh/V;->K(Loh/M;IIZI)Loh/B;

    move-result-object p0

    return-object p0
.end method

.method public static M(Loh/M;II)Loh/v;
    .locals 0

    invoke-virtual {p0, p1, p2}, Loh/M;->m(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Loh/M;->O()Loh/v;

    move-result-object p0

    return-object p0
.end method

.method public static N(Loh/M;I)Loh/M;
    .locals 0

    invoke-virtual {p0, p1}, Loh/M;->k(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Loh/M;->P()Loh/M;

    move-result-object p0

    return-object p0
.end method

.method public static O(Loh/M;II)Loh/M;
    .locals 0

    invoke-virtual {p0, p1, p2}, Loh/M;->m(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Loh/M;->P()Loh/M;

    move-result-object p0

    return-object p0
.end method

.method public static P(Loh/M;I)Loh/v;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Loh/V;->M(Loh/M;II)Loh/v;

    move-result-object p0

    return-object p0
.end method

.method public static Q(Loh/M;)Loh/M;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0}, Loh/V;->N(Loh/M;I)Loh/M;

    move-result-object p0

    return-object p0
.end method

.method public static R(Loh/M;I)Loh/M;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Loh/V;->O(Loh/M;II)Loh/M;

    move-result-object p0

    return-object p0
.end method

.method public static S(Loh/M;IIII)Loh/M;
    .locals 0

    invoke-virtual {p0, p1, p2}, Loh/M;->m(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p3, p4}, Loh/M;->Q(II)Loh/M;

    move-result-object p0

    return-object p0
.end method

.method public static T(Loh/M;III)Loh/M;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Loh/V;->S(Loh/M;IIII)Loh/M;

    move-result-object p0

    return-object p0
.end method

.method public static U(Loh/N;IIZI)Loh/g;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Loh/N;->m(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p3, p4}, Loh/N;->d(ZI)Loh/g;

    move-result-object p0

    return-object p0
.end method

.method public static V(Loh/N;IZI)Loh/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Loh/V;->U(Loh/N;IIZI)Loh/g;

    move-result-object p0

    return-object p0
.end method

.method public static W(Loh/N;II)Loh/g;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Loh/N;->m(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Loh/N;->b()Loh/g;

    move-result-object p0

    return-object p0
.end method

.method public static X(Loh/N;I)Loh/N;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0, p1}, Loh/N;->k(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Loh/N;->j()Loh/N;

    move-result-object p0

    return-object p0
.end method

.method public static Y(Loh/N;II)Loh/N;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Loh/N;->m(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Loh/N;->j()Loh/N;

    move-result-object p0

    return-object p0
.end method

.method public static Z(Loh/N;I)Loh/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Loh/V;->W(Loh/N;II)Loh/g;

    move-result-object p0

    return-object p0
.end method

.method public static a(Loh/M;I)Loh/M;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Loh/V;->e(Loh/M;II)Loh/M;

    move-result-object p0

    return-object p0
.end method

.method public static a0(Loh/N;)Loh/N;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    invoke-static {p0, v0}, Loh/V;->X(Loh/N;I)Loh/N;

    move-result-object p0

    return-object p0
.end method

.method public static b(Loh/N;I)Loh/N;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Loh/V;->f(Loh/N;II)Loh/N;

    move-result-object p0

    return-object p0
.end method

.method public static b0(Loh/N;I)Loh/N;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Loh/V;->Y(Loh/N;II)Loh/N;

    move-result-object p0

    return-object p0
.end method

.method public static c(Loh/M;)Loh/M;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0}, Loh/V;->g(Loh/M;I)Loh/M;

    move-result-object p0

    return-object p0
.end method

.method public static c0(Loh/N;IIII)Loh/N;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Loh/N;->m(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p3, p4}, Loh/N;->h(II)Loh/N;

    move-result-object p0

    return-object p0
.end method

.method public static d(Loh/N;)Loh/N;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0}, Loh/V;->h(Loh/N;I)Loh/N;

    move-result-object p0

    return-object p0
.end method

.method public static d0(Loh/N;III)Loh/N;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Loh/V;->c0(Loh/N;IIII)Loh/N;

    move-result-object p0

    return-object p0
.end method

.method public static e(Loh/M;II)Loh/M;
    .locals 2

    invoke-virtual {p0, p1, p2}, Loh/M;->m(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1, p2}, Loh/V;->w(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Loh/V;->y(Loh/M;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " tag but found "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static f(Loh/N;II)Loh/N;
    .locals 2

    invoke-interface {p0, p1, p2}, Loh/N;->m(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1, p2}, Loh/V;->w(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Loh/V;->z(Loh/N;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " tag but found "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static g(Loh/M;I)Loh/M;
    .locals 3

    invoke-virtual {p0, p1}, Loh/M;->k(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Loh/V;->s(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Loh/V;->u(Loh/M;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " tag but found "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static h(Loh/N;I)Loh/N;
    .locals 3

    invoke-interface {p0, p1}, Loh/N;->k(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Loh/V;->s(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Loh/V;->v(Loh/N;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " tag but found "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static i(Loh/M;IIZI)Loh/B;
    .locals 0

    invoke-static {p0, p1, p2}, Loh/V;->e(Loh/M;II)Loh/M;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Loh/M;->M(ZI)Loh/B;

    move-result-object p0

    return-object p0
.end method

.method public static j(Loh/M;IZI)Loh/B;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Loh/V;->i(Loh/M;IIZI)Loh/B;

    move-result-object p0

    return-object p0
.end method

.method public static k(Loh/M;II)Loh/v;
    .locals 0

    invoke-static {p0, p1, p2}, Loh/V;->e(Loh/M;II)Loh/M;

    move-result-object p0

    invoke-virtual {p0}, Loh/M;->O()Loh/v;

    move-result-object p0

    return-object p0
.end method

.method public static l(Loh/M;I)Loh/M;
    .locals 0

    invoke-static {p0, p1}, Loh/V;->g(Loh/M;I)Loh/M;

    move-result-object p0

    invoke-virtual {p0}, Loh/M;->P()Loh/M;

    move-result-object p0

    return-object p0
.end method

.method public static m(Loh/M;II)Loh/M;
    .locals 0

    invoke-static {p0, p1, p2}, Loh/V;->e(Loh/M;II)Loh/M;

    move-result-object p0

    invoke-virtual {p0}, Loh/M;->P()Loh/M;

    move-result-object p0

    return-object p0
.end method

.method public static n(Loh/M;I)Loh/v;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Loh/V;->k(Loh/M;II)Loh/v;

    move-result-object p0

    return-object p0
.end method

.method public static o(Loh/M;)Loh/M;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0}, Loh/V;->l(Loh/M;I)Loh/M;

    move-result-object p0

    return-object p0
.end method

.method public static p(Loh/M;I)Loh/M;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Loh/V;->m(Loh/M;II)Loh/M;

    move-result-object p0

    return-object p0
.end method

.method public static q(Loh/M;IIII)Loh/M;
    .locals 0

    invoke-static {p0, p1, p2}, Loh/V;->e(Loh/M;II)Loh/M;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Loh/M;->Q(II)Loh/M;

    move-result-object p0

    return-object p0
.end method

.method public static r(Loh/M;III)Loh/M;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Loh/V;->q(Loh/M;IIII)Loh/M;

    move-result-object p0

    return-object p0
.end method

.method public static s(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x40

    if-eq p0, v0, :cond_2

    const/16 v0, 0x80

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc0

    if-eq p0, v0, :cond_0

    const-string p0, "UNIVERSAL"

    return-object p0

    :cond_0
    const-string p0, "PRIVATE"

    return-object p0

    :cond_1
    const-string p0, "CONTEXT"

    return-object p0

    :cond_2
    const-string p0, "APPLICATION"

    return-object p0
.end method

.method public static t(Loh/L;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Loh/L;->b()I

    move-result p0

    invoke-static {p0}, Loh/V;->s(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static u(Loh/M;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Loh/M;->l()I

    move-result p0

    invoke-static {p0}, Loh/V;->s(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static v(Loh/N;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Loh/N;->l()I

    move-result p0

    invoke-static {p0}, Loh/V;->s(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static w(II)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x40

    const-string v1, "]"

    if-eq p0, v0, :cond_2

    const/16 v0, 0x80

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc0

    if-eq p0, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[UNIVERSAL "

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[PRIVATE "

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[CONTEXT "

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[APPLICATION "

    goto :goto_0
.end method

.method public static x(Loh/L;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Loh/L;->b()I

    move-result v0

    invoke-virtual {p0}, Loh/L;->c()I

    move-result p0

    invoke-static {v0, p0}, Loh/V;->w(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static y(Loh/M;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Loh/M;->l()I

    move-result v0

    invoke-virtual {p0}, Loh/M;->g()I

    move-result p0

    invoke-static {v0, p0}, Loh/V;->w(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static z(Loh/N;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Loh/N;->l()I

    move-result v0

    invoke-interface {p0}, Loh/N;->g()I

    move-result p0

    invoke-static {v0, p0}, Loh/V;->w(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

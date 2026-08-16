.class public Loh/A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loh/A;->a:Ljava/io/OutputStream;

    return-void
.end method

.method public static b(Ljava/io/OutputStream;)Loh/A;
    .locals 1

    new-instance v0, Loh/A;

    invoke-direct {v0, p0}, Loh/A;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static c(Ljava/io/OutputStream;Ljava/lang/String;)Loh/A;
    .locals 1

    const-string v0, "DER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Loh/E0;

    invoke-direct {p1, p0}, Loh/E0;-><init>(Ljava/io/OutputStream;)V

    return-object p1

    :cond_0
    const-string v0, "DL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Loh/U0;

    invoke-direct {p1, p0}, Loh/U0;-><init>(Ljava/io/OutputStream;)V

    return-object p1

    :cond_1
    new-instance p1, Loh/A;

    invoke-direct {p1, p0}, Loh/A;-><init>(Ljava/io/OutputStream;)V

    return-object p1
.end method

.method public static h(I)I
    .locals 1

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    ushr-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static i(ZI)I
    .locals 1

    invoke-static {p1}, Loh/A;->h(I)I

    move-result v0

    add-int/2addr p0, v0

    add-int/2addr p0, p1

    return p0
.end method

.method public static j(I)I
    .locals 1

    const/16 v0, 0x1f

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    ushr-int/lit8 p0, p0, 0x7

    if-eqz p0, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public A([Loh/B;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Loh/B;->v(Loh/A;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Loh/A;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Loh/A;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public e()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public f()Loh/E0;
    .locals 2

    new-instance v0, Loh/E0;

    iget-object v1, p0, Loh/A;->a:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Loh/E0;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public g()Loh/U0;
    .locals 2

    new-instance v0, Loh/U0;

    iget-object v1, p0, Loh/A;->a:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Loh/U0;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public final k(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Loh/A;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public final l([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Loh/A;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public final m(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Loh/A;->k(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x5

    new-array v2, v1, [B

    :goto_0
    add-int/lit8 v3, v1, -0x1

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    ushr-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_1

    rsub-int/lit8 p1, v3, 0x5

    add-int/lit8 v1, v1, -0x2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v2, v1

    rsub-int/lit8 p1, v3, 0x6

    invoke-virtual {p0, v2, v1, p1}, Loh/A;->l([BII)V

    :goto_1
    return-void

    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method public n([Loh/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-interface {v2}, Loh/g;->r()Loh/B;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Loh/B;->v(Loh/A;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final o(ZIB)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Loh/A;->v(ZI)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Loh/A;->m(I)V

    invoke-virtual {p0, p3}, Loh/A;->k(I)V

    return-void
.end method

.method public final p(ZIB[BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Loh/A;->v(ZI)V

    add-int/lit8 p1, p6, 0x1

    invoke-virtual {p0, p1}, Loh/A;->m(I)V

    invoke-virtual {p0, p3}, Loh/A;->k(I)V

    invoke-virtual {p0, p4, p5, p6}, Loh/A;->l([BII)V

    return-void
.end method

.method public final q(ZII[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Loh/A;->w(ZII)V

    array-length p1, p4

    invoke-virtual {p0, p1}, Loh/A;->m(I)V

    const/4 p1, 0x0

    array-length p2, p4

    invoke-virtual {p0, p4, p1, p2}, Loh/A;->l([BII)V

    return-void
.end method

.method public final r(ZI[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Loh/A;->v(ZI)V

    array-length p1, p3

    invoke-virtual {p0, p1}, Loh/A;->m(I)V

    const/4 p1, 0x0

    array-length p2, p3

    invoke-virtual {p0, p3, p1, p2}, Loh/A;->l([BII)V

    return-void
.end method

.method public final s(ZI[BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Loh/A;->v(ZI)V

    invoke-virtual {p0, p5}, Loh/A;->m(I)V

    invoke-virtual {p0, p3, p4, p5}, Loh/A;->l([BII)V

    return-void
.end method

.method public final t(ZI[BIIB)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Loh/A;->v(ZI)V

    add-int/lit8 p1, p5, 0x1

    invoke-virtual {p0, p1}, Loh/A;->m(I)V

    invoke-virtual {p0, p3, p4, p5}, Loh/A;->l([BII)V

    invoke-virtual {p0, p6}, Loh/A;->k(I)V

    return-void
.end method

.method public final u(ZI[Loh/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Loh/A;->v(ZI)V

    const/16 p1, 0x80

    invoke-virtual {p0, p1}, Loh/A;->k(I)V

    invoke-virtual {p0, p3}, Loh/A;->n([Loh/g;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Loh/A;->k(I)V

    invoke-virtual {p0, p1}, Loh/A;->k(I)V

    return-void
.end method

.method public final v(ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Loh/A;->k(I)V

    :cond_0
    return-void
.end method

.method public final w(ZII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/16 p1, 0x1f

    if-ge p3, p1, :cond_1

    or-int p1, p2, p3

    invoke-virtual {p0, p1}, Loh/A;->k(I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x6

    new-array v0, v0, [B

    and-int/lit8 v1, p3, 0x7f

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    :goto_0
    const/16 v1, 0x7f

    if-le p3, v1, :cond_2

    ushr-int/lit8 p3, p3, 0x7

    add-int/lit8 v2, v2, -0x1

    and-int/lit8 v1, p3, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, -0x1

    or-int/2addr p1, p2

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    rsub-int/lit8 p1, v2, 0x6

    invoke-virtual {p0, v0, v2, p1}, Loh/A;->l([BII)V

    :goto_1
    return-void
.end method

.method public final x(Loh/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Loh/g;->r()Loh/B;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Loh/A;->z(Loh/B;Z)V

    invoke-virtual {p0}, Loh/A;->e()V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "null object detected"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final y(Loh/B;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Loh/A;->z(Loh/B;Z)V

    invoke-virtual {p0}, Loh/A;->e()V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "null object detected"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public z(Loh/B;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0, p2}, Loh/B;->v(Loh/A;Z)V

    return-void
.end method

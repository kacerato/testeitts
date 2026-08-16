.class public Lli/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/Set;

.field public static b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lli/c;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lli/c;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lhi/D;Loh/x;ZLoh/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/CertIOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lhi/D;->c(Loh/x;ZLoh/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/cert/CertIOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cannot encode extension: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static b(Loh/c;)[Z
    .locals 7

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Loh/c;->F()[B

    move-result-object v0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {p0}, Loh/c;->n()I

    move-result p0

    sub-int/2addr v1, p0

    new-array p0, v1, [Z

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-eq v3, v1, :cond_1

    div-int/lit8 v4, v3, 0x8

    aget-byte v4, v0, v4

    rem-int/lit8 v5, v3, 0x8

    const/16 v6, 0x80

    ushr-int v5, v6, v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    aput-boolean v4, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c([Z)Loh/r0;
    .locals 7

    array-length v0, p0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-eq v2, v3, :cond_1

    div-int/lit8 v3, v2, 0x8

    aget-byte v4, v0, v3

    aget-boolean v5, p0, v2

    if-eqz v5, :cond_0

    rem-int/lit8 v5, v2, 0x8

    rsub-int/lit8 v5, v5, 0x7

    const/4 v6, 0x1

    shl-int v5, v6, v5

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length p0, p0

    rem-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_2

    new-instance p0, Loh/r0;

    invoke-direct {p0, v0}, Loh/r0;-><init>([B)V

    return-object p0

    :cond_2
    new-instance v1, Loh/r0;

    rsub-int/lit8 p0, p0, 0x8

    invoke-direct {v1, v0, p0}, Loh/r0;-><init>([BI)V

    return-object v1
.end method

.method public static d(Lhi/D;Loh/x;)Lhi/D;
    .locals 5

    invoke-virtual {p0}, Lhi/D;->e()Lhi/C;

    move-result-object p0

    new-instance v0, Lhi/D;

    invoke-direct {v0}, Lhi/D;-><init>()V

    invoke-virtual {p0}, Lhi/C;->F()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Loh/x;

    invoke-virtual {v3, p1}, Loh/B;->A(Loh/B;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Lhi/C;->x(Loh/x;)Lhi/B;

    move-result-object v3

    invoke-virtual {v0, v3}, Lhi/D;->a(Lhi/B;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove - extension (OID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") not found"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Lhi/D;Lhi/B;)Lhi/D;
    .locals 5

    invoke-virtual {p0}, Lhi/D;->e()Lhi/C;

    move-result-object p0

    new-instance v0, Lhi/D;

    invoke-direct {v0}, Lhi/D;-><init>()V

    invoke-virtual {p0}, Lhi/C;->F()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Loh/x;

    invoke-virtual {p1}, Lhi/B;->x()Loh/x;

    move-result-object v4

    invoke-virtual {v3, v4}, Loh/B;->A(Loh/B;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, p1}, Lhi/D;->a(Lhi/B;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Lhi/C;->x(Loh/x;)Lhi/B;

    move-result-object v3

    invoke-virtual {v0, v3}, Lhi/D;->a(Lhi/B;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "replace - original extension (OID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lhi/B;->x()Loh/x;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") not found"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Lhi/i;Lhi/b;[B)Lhi/h;
    .locals 1

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    invoke-virtual {v0, p0}, Loh/h;->a(Loh/g;)V

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    new-instance p0, Loh/r0;

    invoke-direct {p0, p2}, Loh/r0;-><init>([B)V

    invoke-virtual {v0, p0}, Loh/h;->a(Loh/g;)V

    new-instance p0, Loh/G0;

    invoke-direct {p0, v0}, Loh/G0;-><init>(Loh/h;)V

    invoke-static {p0}, Lhi/h;->v(Ljava/lang/Object;)Lhi/h;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lhi/i0;Lhi/b;[B)Lhi/r;
    .locals 1

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    invoke-virtual {v0, p0}, Loh/h;->a(Loh/g;)V

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    new-instance p0, Loh/r0;

    invoke-direct {p0, p2}, Loh/r0;-><init>([B)V

    invoke-virtual {v0, p0}, Loh/h;->a(Loh/g;)V

    new-instance p0, Loh/G0;

    invoke-direct {p0, v0}, Loh/G0;-><init>(Loh/h;)V

    invoke-static {p0}, Lhi/r;->u(Ljava/lang/Object;)Lhi/r;

    move-result-object p0

    return-object p0
.end method

.method public static h(LQk/f;Lhi/i;)Lli/e;
    .locals 2

    :try_start_0
    new-instance v0, Lli/e;

    invoke-interface {p0}, LQk/f;->a()Lhi/b;

    move-result-object v1

    invoke-static {p0, p1}, Lli/c;->j(LQk/f;Loh/v;)[B

    move-result-object p0

    invoke-static {p1, v1, p0}, Lli/c;->f(Lhi/i;Lhi/b;[B)Lhi/h;

    move-result-object p0

    invoke-direct {v0, p0}, Lli/e;-><init>(Lhi/h;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "cannot produce attribute certificate signature"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static i(LQk/f;Lhi/j0;)Lli/h;
    .locals 2

    :try_start_0
    new-instance v0, Lli/h;

    invoke-interface {p0}, LQk/f;->a()Lhi/b;

    move-result-object v1

    invoke-static {p0, p1}, Lli/c;->j(LQk/f;Loh/v;)[B

    move-result-object p0

    invoke-static {p1, v1, p0}, Lli/c;->k(Lhi/j0;Lhi/b;[B)Lhi/q;

    move-result-object p0

    invoke-direct {v0, p0}, Lli/h;-><init>(Lhi/q;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "cannot produce certificate signature"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j(LQk/f;Loh/v;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, LQk/f;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {p1, v0, v1}, Loh/v;->f(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-interface {p0}, LQk/f;->getSignature()[B

    move-result-object p0

    return-object p0
.end method

.method public static k(Lhi/j0;Lhi/b;[B)Lhi/q;
    .locals 1

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    invoke-virtual {v0, p0}, Loh/h;->a(Loh/g;)V

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    new-instance p0, Loh/r0;

    invoke-direct {p0, p2}, Loh/r0;-><init>([B)V

    invoke-virtual {v0, p0}, Loh/h;->a(Loh/g;)V

    new-instance p0, Loh/G0;

    invoke-direct {p0, v0}, Loh/G0;-><init>(Loh/h;)V

    invoke-static {p0}, Lhi/q;->v(Ljava/lang/Object;)Lhi/q;

    move-result-object p0

    return-object p0
.end method

.method public static l(Lhi/C;)Ljava/util/Set;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lli/c;->a:Ljava/util/Set;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lhi/C;->v()[Loh/x;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static m(Lhi/C;)Ljava/util/List;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lli/c;->b:Ljava/util/List;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lhi/C;->y()[Loh/x;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lhi/C;)Ljava/util/Set;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lli/c;->a:Ljava/util/Set;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lhi/C;->E()[Loh/x;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static o(Lhi/b;Lhi/b;)Z
    .locals 3

    invoke-virtual {p0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "org.bouncycastle.x509.allow_absent_equiv_NULL"

    invoke-static {v0}, Lorg/bouncycastle/util/q;->f(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object p0

    sget-object p1, Loh/A0;->c:Loh/A0;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lhi/b;->x()Loh/g;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lhi/b;->x()Loh/g;

    move-result-object p0

    sget-object p1, Loh/A0;->c:Loh/A0;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    return v2

    :cond_4
    invoke-virtual {p0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lhi/b;->x()Loh/g;

    move-result-object p0

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object p1

    invoke-virtual {p0}, Lhi/b;->x()Loh/g;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_6
    return v2
.end method

.method public static p([B)Loh/B;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Loh/B;->B([B)Loh/B;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "no content found"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static q(Loh/n;)Ljava/util/Date;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Loh/n;->I()Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to recover date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static r(ILhi/C;)Loh/M;
    .locals 6

    invoke-virtual {p1}, Lhi/C;->r()Loh/B;

    move-result-object p1

    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v3

    sget-object v4, Lhi/B;->M:Loh/x;

    invoke-virtual {v3, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v5

    invoke-virtual {v4, v5}, Loh/B;->z(Loh/g;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Loh/K0;

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0, v1}, Loh/K0;-><init>(ZILoh/g;)V

    return-object p1
.end method

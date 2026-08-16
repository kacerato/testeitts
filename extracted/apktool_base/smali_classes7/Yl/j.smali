.class public LYl/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LYl/i;


# instance fields
.field public a:LYl/l;

.field public b:LYl/l;

.field public c:LYl/l;


# direct methods
.method public constructor <init>(LYl/l;LYl/l;LYl/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LYl/j;->a:LYl/l;

    iput-object p2, p0, LYl/j;->b:LYl/l;

    iput-object p3, p0, LYl/j;->c:LYl/l;

    return-void
.end method

.method public static g(Ljava/io/InputStream;IIIII)LYl/j;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p2}, LYl/l;->g(Ljava/io/InputStream;III)LYl/l;

    move-result-object p2

    invoke-static {p0, p1, p3, p3}, LYl/l;->g(Ljava/io/InputStream;III)LYl/l;

    move-result-object p3

    invoke-static {p0, p1, p4, p5}, LYl/l;->g(Ljava/io/InputStream;III)LYl/l;

    move-result-object p0

    new-instance p1, LYl/j;

    invoke-direct {p1, p2, p3, p0}, LYl/j;-><init>(LYl/l;LYl/l;LYl/l;)V

    return-object p1
.end method

.method public static h([BIIIII)LYl/j;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, LYl/j;->g(Ljava/io/InputStream;IIIII)LYl/j;

    move-result-object p0

    return-object p0
.end method

.method public static i(IIIIILjava/security/SecureRandom;)LYl/j;
    .locals 0

    invoke-static {p0, p1, p1, p5}, LYl/l;->h(IIILjava/security/SecureRandom;)LYl/l;

    move-result-object p1

    invoke-static {p0, p2, p2, p5}, LYl/l;->h(IIILjava/security/SecureRandom;)LYl/l;

    move-result-object p2

    invoke-static {p0, p3, p4, p5}, LYl/l;->h(IIILjava/security/SecureRandom;)LYl/l;

    move-result-object p0

    new-instance p3, LYl/j;

    invoke-direct {p3, p1, p2, p0}, LYl/j;-><init>(LYl/l;LYl/l;LYl/l;)V

    return-object p3
.end method


# virtual methods
.method public a(LYl/e;)LYl/e;
    .locals 2

    iget-object v0, p0, LYl/j;->a:LYl/l;

    invoke-virtual {v0, p1}, LYl/l;->a(LYl/e;)LYl/e;

    move-result-object v0

    iget-object v1, p0, LYl/j;->b:LYl/l;

    invoke-virtual {v1, v0}, LYl/l;->a(LYl/e;)LYl/e;

    move-result-object v0

    iget-object v1, p0, LYl/j;->c:LYl/l;

    invoke-virtual {v1, p1}, LYl/l;->a(LYl/e;)LYl/e;

    move-result-object p1

    invoke-virtual {v0, p1}, LYl/e;->h(LYl/e;)V

    return-object v0
.end method

.method public b()LYl/e;
    .locals 2

    iget-object v0, p0, LYl/j;->a:LYl/l;

    iget-object v1, p0, LYl/j;->b:LYl/l;

    invoke-virtual {v1}, LYl/l;->b()LYl/e;

    move-result-object v1

    invoke-virtual {v0, v1}, LYl/l;->a(LYl/e;)LYl/e;

    move-result-object v0

    iget-object v1, p0, LYl/j;->c:LYl/l;

    invoke-virtual {v1}, LYl/l;->b()LYl/e;

    move-result-object v1

    invoke-virtual {v0, v1}, LYl/e;->h(LYl/e;)V

    return-object v0
.end method

.method public c(LYl/b;)LYl/b;
    .locals 2

    iget-object v0, p0, LYl/j;->a:LYl/l;

    invoke-virtual {v0, p1}, LYl/l;->c(LYl/b;)LYl/b;

    move-result-object v0

    iget-object v1, p0, LYl/j;->b:LYl/l;

    invoke-virtual {v1, v0}, LYl/l;->c(LYl/b;)LYl/b;

    move-result-object v0

    iget-object v1, p0, LYl/j;->c:LYl/l;

    invoke-virtual {v1, p1}, LYl/l;->c(LYl/b;)LYl/b;

    move-result-object p1

    invoke-virtual {v0, p1}, LYl/b;->a(LYl/b;)V

    return-object v0
.end method

.method public e(LYl/e;I)LYl/e;
    .locals 0

    invoke-virtual {p0, p1}, LYl/j;->a(LYl/e;)LYl/e;

    move-result-object p1

    invoke-virtual {p1, p2}, LYl/e;->z(I)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, LYl/j;

    iget-object v2, p0, LYl/j;->a:LYl/l;

    if-nez v2, :cond_3

    iget-object v2, p1, LYl/j;->a:LYl/l;

    if-eqz v2, :cond_4

    return v1

    :cond_3
    iget-object v3, p1, LYl/j;->a:LYl/l;

    invoke-virtual {v2, v3}, LYl/l;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, LYl/j;->b:LYl/l;

    if-nez v2, :cond_5

    iget-object v2, p1, LYl/j;->b:LYl/l;

    if-eqz v2, :cond_6

    return v1

    :cond_5
    iget-object v3, p1, LYl/j;->b:LYl/l;

    invoke-virtual {v2, v3}, LYl/l;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, LYl/j;->c:LYl/l;

    iget-object p1, p1, LYl/j;->c:LYl/l;

    if-nez v2, :cond_7

    if-eqz p1, :cond_8

    return v1

    :cond_7
    invoke-virtual {v2, p1}, LYl/l;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, LYl/j;->a:LYl/l;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LYl/l;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    iget-object v3, p0, LYl/j;->b:LYl/l;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, LYl/l;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v2, p0, LYl/j;->c:LYl/l;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, LYl/l;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public j()[B
    .locals 7

    iget-object v0, p0, LYl/j;->a:LYl/l;

    invoke-virtual {v0}, LYl/l;->i()[B

    move-result-object v0

    iget-object v1, p0, LYl/j;->b:LYl/l;

    invoke-virtual {v1}, LYl/l;->i()[B

    move-result-object v1

    iget-object v2, p0, LYl/j;->c:LYl/l;

    invoke-virtual {v2}, LYl/l;->i()[B

    move-result-object v2

    array-length v3, v0

    array-length v4, v1

    add-int/2addr v3, v4

    array-length v4, v2

    add-int/2addr v3, v4

    invoke-static {v0, v3}, Lorg/bouncycastle/util/a;->Q([BI)[B

    move-result-object v3

    array-length v4, v0

    array-length v5, v1

    const/4 v6, 0x0

    invoke-static {v1, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v1, v1

    add-int/2addr v0, v1

    array-length v1, v2

    invoke-static {v2, v6, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3
.end method

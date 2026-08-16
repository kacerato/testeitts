.class public abstract Loh/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loh/g;
.implements Lorg/bouncycastle/util/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static t(Ljava/lang/Object;I)Z
    .locals 2

    instance-of v0, p0, [B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, [B

    aget-byte p0, p0, v1

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public e(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Loh/v;->r()Loh/B;

    move-result-object v0

    invoke-virtual {v0, p1}, Loh/B;->e(Ljava/io/OutputStream;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Loh/g;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Loh/g;

    invoke-virtual {p0}, Loh/v;->r()Loh/B;

    move-result-object v0

    invoke-interface {p1}, Loh/g;->r()Loh/B;

    move-result-object p1

    invoke-virtual {v0, p1}, Loh/B;->A(Loh/B;)Z

    move-result p1

    return p1
.end method

.method public f(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Loh/v;->r()Loh/B;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Loh/B;->f(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public getEncoded()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Loh/v;->r()Loh/B;

    move-result-object v1

    invoke-virtual {v1, v0}, Loh/B;->e(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Loh/v;->r()Loh/B;

    move-result-object v0

    invoke-virtual {v0}, Loh/B;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract r()Loh/B;
.end method

.method public s(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Loh/v;->r()Loh/B;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Loh/B;->f(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

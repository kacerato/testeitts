.class public Lorg/bouncycastle/pqc/crypto/lms/w;
.super Lorg/bouncycastle/pqc/crypto/lms/t;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/lms/q;


# instance fields
.field public final c:Lorg/bouncycastle/pqc/crypto/lms/A;

.field public final d:Lorg/bouncycastle/pqc/crypto/lms/j;

.field public final e:[B

.field public final f:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/lms/A;Lorg/bouncycastle/pqc/crypto/lms/j;[B[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/lms/t;-><init>(Z)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/w;->c:Lorg/bouncycastle/pqc/crypto/lms/A;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/w;->d:Lorg/bouncycastle/pqc/crypto/lms/j;

    invoke-static {p4}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/w;->e:[B

    invoke-static {p3}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/w;->f:[B

    return-void
.end method

.method public static f(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/w;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/lms/w;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/pqc/crypto/lms/w;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/io/DataInputStream;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/lms/A;->e(I)Lorg/bouncycastle/pqc/crypto/lms/A;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/lms/j;->f(I)Lorg/bouncycastle/pqc/crypto/lms/j;

    move-result-object v1

    const/16 v2, 0x10

    new-array v2, v2, [B

    invoke-virtual {p0, v2}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/A;->d()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {p0, v3}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance p0, Lorg/bouncycastle/pqc/crypto/lms/w;

    invoke-direct {p0, v0, v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/lms/w;-><init>(Lorg/bouncycastle/pqc/crypto/lms/A;Lorg/bouncycastle/pqc/crypto/lms/j;[B[B)V

    return-object p0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    check-cast p0, [B

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/lms/w;->f(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/w;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_2
    throw p0

    :cond_3
    instance-of v0, p0, Ljava/io/InputStream;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/io/InputStream;

    invoke-static {p0}, Lfm/d;->e(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/lms/w;->f(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/w;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot parse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lorg/bouncycastle/pqc/crypto/lms/o;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/lms/n;->d(Lorg/bouncycastle/pqc/crypto/lms/w;Lorg/bouncycastle/pqc/crypto/lms/o;)Z

    move-result p1

    return p1
.end method

.method public b([B)Lorg/bouncycastle/pqc/crypto/lms/o;
    .locals 3

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/lms/x;->a(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/lms/w;->d(Lorg/bouncycastle/pqc/crypto/lms/x;)Lorg/bouncycastle/pqc/crypto/lms/o;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot parse signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Lorg/bouncycastle/pqc/crypto/lms/x;)Lorg/bouncycastle/pqc/crypto/lms/o;
    .locals 5

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/w;->h()Lorg/bouncycastle/pqc/crypto/lms/j;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/j;->h()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/lms/x;->b()Lorg/bouncycastle/pqc/crypto/lms/m;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/m;->c()Lorg/bouncycastle/pqc/crypto/lms/j;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/j;->h()I

    move-result v1

    if-ne v1, v0, :cond_0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/lms/l;

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/lms/j;->f(I)Lorg/bouncycastle/pqc/crypto/lms/j;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/w;->e:[B

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/lms/x;->d()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/lms/l;-><init>(Lorg/bouncycastle/pqc/crypto/lms/j;[BI[B)V

    invoke-virtual {v1, p1}, Lorg/bouncycastle/pqc/crypto/lms/l;->b(Lorg/bouncycastle/pqc/crypto/lms/x;)Lorg/bouncycastle/pqc/crypto/lms/o;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ots type from lsm signature does not match ots signature type from embedded ots signature"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/w;->e:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/bouncycastle/pqc/crypto/lms/w;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/w;->c:Lorg/bouncycastle/pqc/crypto/lms/A;

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/lms/w;->c:Lorg/bouncycastle/pqc/crypto/lms/A;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/w;->d:Lorg/bouncycastle/pqc/crypto/lms/j;

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/lms/w;->d:Lorg/bouncycastle/pqc/crypto/lms/j;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/w;->e:[B

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/lms/w;->e:[B

    invoke-static {v1, v2}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/w;->f:[B

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/lms/w;->f:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v0
.end method

.method public g()Lorg/bouncycastle/pqc/crypto/lms/u;
    .locals 3

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/u;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/w;->i()Lorg/bouncycastle/pqc/crypto/lms/A;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/w;->h()Lorg/bouncycastle/pqc/crypto/lms/j;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/lms/u;-><init>(Lorg/bouncycastle/pqc/crypto/lms/A;Lorg/bouncycastle/pqc/crypto/lms/j;)V

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/w;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public h()Lorg/bouncycastle/pqc/crypto/lms/j;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/w;->d:Lorg/bouncycastle/pqc/crypto/lms/j;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/w;->c:Lorg/bouncycastle/pqc/crypto/lms/A;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/w;->d:Lorg/bouncycastle/pqc/crypto/lms/j;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/w;->e:[B

    invoke-static {v1}, Lorg/bouncycastle/util/a;->t0([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/w;->f:[B

    invoke-static {v1}, Lorg/bouncycastle/util/a;->t0([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i()Lorg/bouncycastle/pqc/crypto/lms/A;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/w;->c:Lorg/bouncycastle/pqc/crypto/lms/A;

    return-object v0
.end method

.method public j()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/w;->f:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public k([B)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/w;->f:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->I([B[B)Z

    move-result p1

    return p1
.end method

.method public l()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/w;->e:[B

    return-object v0
.end method

.method public toByteArray()[B
    .locals 2

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/a;->i()Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/w;->c:Lorg/bouncycastle/pqc/crypto/lms/A;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/A;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->m(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/w;->d:Lorg/bouncycastle/pqc/crypto/lms/j;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/j;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->m(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/w;->e:[B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->d([B)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/w;->f:[B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->d([B)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/a;->b()[B

    move-result-object v0

    return-object v0
.end method

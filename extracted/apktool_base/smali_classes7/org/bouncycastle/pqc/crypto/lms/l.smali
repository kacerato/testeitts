.class public Lorg/bouncycastle/pqc/crypto/lms/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/g;


# instance fields
.field public final b:Lorg/bouncycastle/pqc/crypto/lms/j;

.field public final c:[B

.field public final d:I

.field public final e:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/lms/j;[BI[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->b:Lorg/bouncycastle/pqc/crypto/lms/j;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->c:[B

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->d:I

    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->e:[B

    return-void
.end method

.method public static d(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/l;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/lms/l;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/pqc/crypto/lms/l;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/io/DataInputStream;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/lms/j;->f(I)Lorg/bouncycastle/pqc/crypto/lms/j;

    move-result-object v0

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/j;->d()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {p0, v3}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance p0, Lorg/bouncycastle/pqc/crypto/lms/l;

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/lms/l;-><init>(Lorg/bouncycastle/pqc/crypto/lms/j;[BI[B)V

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
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/lms/l;->d(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/l;

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

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/lms/l;->d(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/l;

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
.method public a(Lorg/bouncycastle/pqc/crypto/lms/m;)Lorg/bouncycastle/pqc/crypto/lms/o;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->b:Lorg/bouncycastle/pqc/crypto/lms/j;

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/lms/b;->c(Lorg/bouncycastle/pqc/crypto/lms/j;)LBi/y;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->c:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/crypto/lms/C;->b([BLBi/y;)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->d:I

    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/crypto/lms/C;->e(ILBi/y;)V

    const/16 v1, -0x7e7f

    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/crypto/lms/C;->d(SLBi/y;)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/lms/m;->a()[B

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/crypto/lms/C;->b([BLBi/y;)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/lms/o;

    invoke-direct {v1, p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/lms/o;-><init>(Lorg/bouncycastle/pqc/crypto/lms/l;Ljava/lang/Object;LBi/y;)V

    return-object v1
.end method

.method public b(Lorg/bouncycastle/pqc/crypto/lms/x;)Lorg/bouncycastle/pqc/crypto/lms/o;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->b:Lorg/bouncycastle/pqc/crypto/lms/j;

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/lms/b;->c(Lorg/bouncycastle/pqc/crypto/lms/j;)LBi/y;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->c:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/crypto/lms/C;->b([BLBi/y;)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->d:I

    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/crypto/lms/C;->e(ILBi/y;)V

    const/16 v1, -0x7e7f

    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/crypto/lms/C;->d(SLBi/y;)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/lms/x;->b()Lorg/bouncycastle/pqc/crypto/lms/m;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/m;->a()[B

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/crypto/lms/C;->b([BLBi/y;)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/lms/o;

    invoke-direct {v1, p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/lms/o;-><init>(Lorg/bouncycastle/pqc/crypto/lms/l;Ljava/lang/Object;LBi/y;)V

    return-object v1
.end method

.method public c()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->c:[B

    return-object v0
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->e:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/bouncycastle/pqc/crypto/lms/l;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->d:I

    iget v3, p1, Lorg/bouncycastle/pqc/crypto/lms/l;->d:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->b:Lorg/bouncycastle/pqc/crypto/lms/j;

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/lms/l;->b:Lorg/bouncycastle/pqc/crypto/lms/j;

    invoke-static {v2, v3}, Lorg/bouncycastle/util/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->c:[B

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/lms/l;->c:[B

    invoke-static {v2, v3}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->e:[B

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/lms/l;->e:[B

    invoke-static {v2, p1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public f()Lorg/bouncycastle/pqc/crypto/lms/j;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->b:Lorg/bouncycastle/pqc/crypto/lms/j;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->d:I

    return v0
.end method

.method public getEncoded()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/a;->i()Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->b:Lorg/bouncycastle/pqc/crypto/lms/j;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/j;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->m(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->c:[B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->d([B)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->d:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->m(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->e:[B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->d([B)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/a;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->d:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->b:Lorg/bouncycastle/pqc/crypto/lms/j;

    invoke-static {v1}, Lorg/bouncycastle/util/o;->b(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->c:[B

    invoke-static {v1}, Lorg/bouncycastle/util/a;->t0([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/l;->e:[B

    invoke-static {v1}, Lorg/bouncycastle/util/a;->t0([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

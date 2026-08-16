.class public Lorg/bouncycastle/pqc/crypto/lms/v;
.super Lorg/bouncycastle/pqc/crypto/lms/t;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/lms/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/lms/v$a;
    }
.end annotation


# static fields
.field public static m:Lorg/bouncycastle/pqc/crypto/lms/v$a;

.field public static n:[Lorg/bouncycastle/pqc/crypto/lms/v$a;


# instance fields
.field public final c:[B

.field public final d:Lorg/bouncycastle/pqc/crypto/lms/A;

.field public final e:Lorg/bouncycastle/pqc/crypto/lms/j;

.field public final f:I

.field public final g:[B

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bouncycastle/pqc/crypto/lms/v$a;",
            "[B>;"
        }
    .end annotation
.end field

.field public final i:I

.field public final j:LBi/y;

.field public k:I

.field public l:Lorg/bouncycastle/pqc/crypto/lms/w;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/v$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/v$a;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/v;->m:Lorg/bouncycastle/pqc/crypto/lms/v$a;

    const/16 v2, 0x81

    new-array v2, v2, [Lorg/bouncycastle/pqc/crypto/lms/v$a;

    sput-object v2, Lorg/bouncycastle/pqc/crypto/lms/v;->n:[Lorg/bouncycastle/pqc/crypto/lms/v$a;

    aput-object v0, v2, v1

    const/4 v0, 0x2

    :goto_0
    sget-object v1, Lorg/bouncycastle/pqc/crypto/lms/v;->n:[Lorg/bouncycastle/pqc/crypto/lms/v$a;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/lms/v$a;

    invoke-direct {v2, v0}, Lorg/bouncycastle/pqc/crypto/lms/v$a;-><init>(I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/lms/A;Lorg/bouncycastle/pqc/crypto/lms/j;I[BI[B)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/lms/t;-><init>(Z)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->d:Lorg/bouncycastle/pqc/crypto/lms/A;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->e:Lorg/bouncycastle/pqc/crypto/lms/j;

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->k:I

    invoke-static {p4}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->c:[B

    iput p5, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->f:I

    invoke-static {p6}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->g:[B

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/lms/A;->c()I

    move-result p2

    add-int/2addr p2, v0

    shl-int p2, v0, p2

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->i:I

    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->h:Ljava/util/Map;

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/lms/b;->d(Lorg/bouncycastle/pqc/crypto/lms/A;)LBi/y;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->j:LBi/y;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/lms/v;II)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/lms/t;-><init>(Z)V

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/lms/v;->d:Lorg/bouncycastle/pqc/crypto/lms/A;

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->d:Lorg/bouncycastle/pqc/crypto/lms/A;

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/lms/v;->e:Lorg/bouncycastle/pqc/crypto/lms/j;

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->e:Lorg/bouncycastle/pqc/crypto/lms/j;

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->k:I

    iget-object p2, p1, Lorg/bouncycastle/pqc/crypto/lms/v;->c:[B

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->c:[B

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->f:I

    iget-object p2, p1, Lorg/bouncycastle/pqc/crypto/lms/v;->g:[B

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->g:[B

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/A;->c()I

    move-result p2

    shl-int p2, v0, p2

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->i:I

    iget-object p2, p1, Lorg/bouncycastle/pqc/crypto/lms/v;->h:Ljava/util/Map;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->h:Ljava/util/Map;

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/lms/b;->d(Lorg/bouncycastle/pqc/crypto/lms/A;)LBi/y;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->j:LBi/y;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/lms/v;->l:Lorg/bouncycastle/pqc/crypto/lms/w;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->l:Lorg/bouncycastle/pqc/crypto/lms/w;

    return-void
.end method

.method public static k(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/v;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/lms/v;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/pqc/crypto/lms/v;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/io/DataInputStream;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/lms/A;->e(I)Lorg/bouncycastle/pqc/crypto/lms/A;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/lms/j;->f(I)Lorg/bouncycastle/pqc/crypto/lms/j;

    move-result-object v3

    const/16 v0, 0x10

    new-array v5, v0, [B

    invoke-virtual {p0, v5}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    if-gt v0, v1, :cond_1

    new-array v7, v0, [B

    invoke-virtual {p0, v7}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance p0, Lorg/bouncycastle/pqc/crypto/lms/v;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/lms/v;-><init>(Lorg/bouncycastle/pqc/crypto/lms/A;Lorg/bouncycastle/pqc/crypto/lms/j;I[BI[B)V

    return-object p0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secret length exceeded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "secret length less than zero"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "expected version 0 lms private key"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    instance-of v0, p0, [B

    if-eqz v0, :cond_6

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
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/lms/v;->k(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/v;

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
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_5
    throw p0

    :cond_6
    instance-of v0, p0, Ljava/io/InputStream;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/io/InputStream;

    invoke-static {p0}, Lfm/d;->e(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/lms/v;->k(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/v;

    move-result-object p0

    return-object p0

    :cond_7
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

.method public static l([B[B)Lorg/bouncycastle/pqc/crypto/lms/v;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/lms/v;->k(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/v;

    move-result-object p0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/lms/w;->f(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/w;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->l:Lorg/bouncycastle/pqc/crypto/lms/w;

    return-object p0
.end method


# virtual methods
.method public S0()J
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->f:I

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/v;->j()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public T0()Lorg/bouncycastle/pqc/crypto/lms/o;
    .locals 7

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/v;->q()Lorg/bouncycastle/pqc/crypto/lms/A;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/A;->c()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/v;->j()I

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/v;->n()Lorg/bouncycastle/pqc/crypto/lms/k;

    move-result-object v2

    const/4 v3, 0x1

    shl-int v4, v3, v0

    add-int/2addr v4, v1

    new-array v1, v0, [[B

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_0

    shl-int v6, v3, v5

    div-int v6, v4, v6

    xor-int/2addr v6, v3

    invoke-virtual {p0, v6}, Lorg/bouncycastle/pqc/crypto/lms/v;->f(I)[B

    move-result-object v6

    aput-object v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/v;->q()Lorg/bouncycastle/pqc/crypto/lms/A;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/k;->f(Lorg/bouncycastle/pqc/crypto/lms/A;[[B)Lorg/bouncycastle/pqc/crypto/lms/o;

    move-result-object v0

    return-object v0
.end method

.method public U0(Lorg/bouncycastle/pqc/crypto/lms/o;)[B
    .locals 3

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/lms/n;->b(Lorg/bouncycastle/pqc/crypto/lms/o;)Lorg/bouncycastle/pqc/crypto/lms/x;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/lms/x;->getEncoded()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to encode signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final d(I)[B
    .locals 5

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/v;->q()Lorg/bouncycastle/pqc/crypto/lms/A;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/A;->c()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    const/4 v2, 0x0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/v;->i()[B

    move-result-object v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->j:LBi/y;

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/crypto/lms/C;->b([BLBi/y;)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->j:LBi/y;

    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/crypto/lms/C;->e(ILBi/y;)V

    const/16 v1, -0x7d7e

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->j:LBi/y;

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/crypto/lms/C;->d(SLBi/y;)V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/v;->o()Lorg/bouncycastle/pqc/crypto/lms/j;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/v;->i()[B

    move-result-object v3

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/v;->m()[B

    move-result-object v0

    invoke-static {v1, v3, p1, v0}, Lorg/bouncycastle/pqc/crypto/lms/B;->i(Lorg/bouncycastle/pqc/crypto/lms/j;[BI[B)[B

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->j:LBi/y;

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/crypto/lms/C;->b([BLBi/y;)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->j:LBi/y;

    invoke-interface {p1}, LBi/y;->f()I

    move-result p1

    new-array p1, p1, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->j:LBi/y;

    invoke-interface {v0, p1, v2}, LBi/y;->c([BI)I

    return-object p1

    :cond_0
    mul-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/lms/v;->f(I)[B

    move-result-object v3

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/lms/v;->f(I)[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/v;->i()[B

    move-result-object v1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->j:LBi/y;

    invoke-static {v1, v4}, Lorg/bouncycastle/pqc/crypto/lms/C;->b([BLBi/y;)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->j:LBi/y;

    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/crypto/lms/C;->e(ILBi/y;)V

    const/16 p1, -0x7c7d

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->j:LBi/y;

    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/crypto/lms/C;->d(SLBi/y;)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->j:LBi/y;

    invoke-static {v3, p1}, Lorg/bouncycastle/pqc/crypto/lms/C;->b([BLBi/y;)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->j:LBi/y;

    invoke-static {v0, p1}, Lorg/bouncycastle/pqc/crypto/lms/C;->b([BLBi/y;)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->j:LBi/y;

    invoke-interface {p1}, LBi/y;->f()I

    move-result p1

    new-array p1, p1, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->j:LBi/y;

    invoke-interface {v0, p1, v2}, LBi/y;->c([BI)I

    return-object p1
.end method

.method public e(I)Lorg/bouncycastle/pqc/crypto/lms/v;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->k:I

    add-int v1, v0, p1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->f:I

    if-ge v1, v2, :cond_0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/lms/v;

    add-int v2, v0, p1

    invoke-direct {v1, p0, v0, v2}, Lorg/bouncycastle/pqc/crypto/lms/v;-><init>(Lorg/bouncycastle/pqc/crypto/lms/v;II)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->k:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->k:I

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "usageCount exceeds usages remaining"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lorg/bouncycastle/pqc/crypto/lms/v;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->k:I

    iget v3, p1, Lorg/bouncycastle/pqc/crypto/lms/v;->k:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->f:I

    iget v3, p1, Lorg/bouncycastle/pqc/crypto/lms/v;->f:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->c:[B

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/lms/v;->c:[B

    invoke-static {v2, v3}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->d:Lorg/bouncycastle/pqc/crypto/lms/A;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/lms/v;->d:Lorg/bouncycastle/pqc/crypto/lms/A;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/lms/v;->d:Lorg/bouncycastle/pqc/crypto/lms/A;

    if-eqz v2, :cond_6

    :goto_0
    return v1

    :cond_6
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->e:Lorg/bouncycastle/pqc/crypto/lms/j;

    if-eqz v2, :cond_7

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/lms/v;->e:Lorg/bouncycastle/pqc/crypto/lms/j;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_7
    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/lms/v;->e:Lorg/bouncycastle/pqc/crypto/lms/j;

    if-eqz v2, :cond_8

    :goto_1
    return v1

    :cond_8
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->g:[B

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/lms/v;->g:[B

    invoke-static {v2, p1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p1

    if-nez p1, :cond_9

    return v1

    :cond_9
    return v0

    :cond_a
    :goto_2
    return v1
.end method

.method public f(I)[B
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->i:I

    if-ge p1, v0, :cond_1

    sget-object v0, Lorg/bouncycastle/pqc/crypto/lms/v;->n:[Lorg/bouncycastle/pqc/crypto/lms/v$a;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/v$a;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/crypto/lms/v$a;-><init>(I)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/lms/v;->g(Lorg/bouncycastle/pqc/crypto/lms/v$a;)[B

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/lms/v;->d(I)[B

    move-result-object p1

    return-object p1
.end method

.method public final g(Lorg/bouncycastle/pqc/crypto/lms/v$a;)[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->h:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/lms/v$a;->a(Lorg/bouncycastle/pqc/crypto/lms/v$a;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/lms/v;->d(I)[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->h:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
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

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->m(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->d:Lorg/bouncycastle/pqc/crypto/lms/A;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/A;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->m(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->e:Lorg/bouncycastle/pqc/crypto/lms/j;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/j;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->m(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->c:[B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->d([B)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->k:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->m(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->f:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->m(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->g:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->m(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->g:[B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->d([B)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/a;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public h()Lorg/bouncycastle/pqc/crypto/lms/k;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->k:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->f:I

    if-ge v0, v1, :cond_0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/lms/k;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->e:Lorg/bouncycastle/pqc/crypto/lms/j;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->c:[B

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->g:[B

    invoke-direct {v1, v2, v3, v0, v4}, Lorg/bouncycastle/pqc/crypto/lms/k;-><init>(Lorg/bouncycastle/pqc/crypto/lms/j;[BI[B)V

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/ExhaustedPrivateKeyException;

    const-string v1, "ots private keys expired"

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/ExhaustedPrivateKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->k:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->c:[B

    invoke-static {v1}, Lorg/bouncycastle/util/a;->t0([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->d:Lorg/bouncycastle/pqc/crypto/lms/A;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->e:Lorg/bouncycastle/pqc/crypto/lms/j;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->g:[B

    invoke-static {v1}, Lorg/bouncycastle/util/a;->t0([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->c:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized j()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public m()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->g:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public n()Lorg/bouncycastle/pqc/crypto/lms/k;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->k:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->f:I

    if-ge v0, v1, :cond_0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/lms/k;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->e:Lorg/bouncycastle/pqc/crypto/lms/j;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->c:[B

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->g:[B

    invoke-direct {v1, v2, v3, v0, v4}, Lorg/bouncycastle/pqc/crypto/lms/k;-><init>(Lorg/bouncycastle/pqc/crypto/lms/j;[BI[B)V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/v;->r()V

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/ExhaustedPrivateKeyException;

    const-string v1, "ots private key exhausted"

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/ExhaustedPrivateKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public o()Lorg/bouncycastle/pqc/crypto/lms/j;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->e:Lorg/bouncycastle/pqc/crypto/lms/j;

    return-object v0
.end method

.method public p()Lorg/bouncycastle/pqc/crypto/lms/w;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->l:Lorg/bouncycastle/pqc/crypto/lms/w;

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/w;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->d:Lorg/bouncycastle/pqc/crypto/lms/A;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->e:Lorg/bouncycastle/pqc/crypto/lms/j;

    sget-object v3, Lorg/bouncycastle/pqc/crypto/lms/v;->m:Lorg/bouncycastle/pqc/crypto/lms/v$a;

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/lms/v;->g(Lorg/bouncycastle/pqc/crypto/lms/v$a;)[B

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->c:[B

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/lms/w;-><init>(Lorg/bouncycastle/pqc/crypto/lms/A;Lorg/bouncycastle/pqc/crypto/lms/j;[B[B)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->l:Lorg/bouncycastle/pqc/crypto/lms/w;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->l:Lorg/bouncycastle/pqc/crypto/lms/w;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public q()Lorg/bouncycastle/pqc/crypto/lms/A;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->d:Lorg/bouncycastle/pqc/crypto/lms/A;

    return-object v0
.end method

.method public declared-synchronized r()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/lms/v;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

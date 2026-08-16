.class public final LXi/O;
.super LXi/c;
.source "SourceFile"


# static fields
.field public static final e:I = 0x20

.field public static final f:I = 0x40


# instance fields
.field public final c:[B

.field public d:LXi/P;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, LXi/c;-><init>(Z)V

    const/16 v0, 0x20

    new-array v1, v0, [B

    iput-object v1, p0, LXi/O;->c:[B

    invoke-static {p1, v1}, Lfm/d;->g(Ljava/io/InputStream;[B)I

    move-result p1

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "EOF encountered in middle of Ed25519 private key"

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, LXi/c;-><init>(Z)V

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, LXi/O;->c:[B

    invoke-static {p1, v0}, Lpk/b;->q(Ljava/security/SecureRandom;[B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 3
    invoke-static {p1}, LXi/O;->h([B)[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LXi/O;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, LXi/c;-><init>(Z)V

    const/16 v0, 0x20

    new-array v1, v0, [B

    iput-object v1, p0, LXi/O;->c:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static h([B)[B
    .locals 2

    array-length v0, p0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'buf\' must have length 32"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public d([BI)V
    .locals 3

    iget-object v0, p0, LXi/O;->c:[B

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public e()LXi/P;
    .locals 4

    iget-object v0, p0, LXi/O;->c:[B

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LXi/O;->d:LXi/P;

    if-nez v1, :cond_0

    new-instance v1, LXi/P;

    iget-object v2, p0, LXi/O;->c:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lpk/b;->r([BI)Lpk/b$j;

    move-result-object v2

    invoke-direct {v1, v2}, LXi/P;-><init>(Lpk/b$j;)V

    iput-object v1, p0, LXi/O;->d:LXi/P;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LXi/O;->d:LXi/P;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f(ILXi/P;[B[BII[BI)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, LXi/O;->g(I[B[BII[BI)V

    return-void
.end method

.method public g(I[B[BII[BI)V
    .locals 13

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    invoke-virtual {p0}, LXi/O;->e()LXi/P;

    move-result-object v2

    const/16 v3, 0x20

    new-array v6, v3, [B

    const/4 v3, 0x0

    invoke-virtual {v2, v6, v3}, LXi/P;->d([BI)V

    const-string v2, "ctx"

    if-eqz v1, :cond_7

    const/4 v3, 0x1

    const/16 v4, 0xff

    const-string v7, "\'ctx\' cannot be null"

    if-eq v1, v3, :cond_4

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    if-eqz v5, :cond_2

    array-length v1, v5

    if-gt v1, v4, :cond_1

    const/16 v1, 0x40

    move/from16 v10, p5

    if-ne v1, v10, :cond_0

    iget-object v1, v0, LXi/O;->c:[B

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v3, v6

    move-object v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v1 .. v9}, Lpk/b;->f0([BI[BI[B[BI[BI)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "msgLen"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "algorithm"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move/from16 v10, p5

    if-eqz v5, :cond_6

    array-length v1, v5

    if-gt v1, v4, :cond_5

    iget-object v1, v0, LXi/O;->c:[B

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v3, v6

    move-object v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v1 .. v10}, Lpk/b;->c0([BI[BI[B[BII[BI)V

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    move/from16 v10, p5

    if-nez v5, :cond_8

    iget-object v4, v0, LXi/O;->c:[B

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    invoke-static/range {v4 .. v12}, Lpk/b;->b0([BI[BI[BII[BI)V

    :goto_0
    return-void

    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, LXi/O;->c:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

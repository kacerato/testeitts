.class public final LXi/Q0;
.super LXi/c;
.source "SourceFile"


# static fields
.field public static final d:I = 0x38

.field public static final e:I = 0x38


# instance fields
.field public final c:[B


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

    const/16 v0, 0x38

    new-array v1, v0, [B

    iput-object v1, p0, LXi/Q0;->c:[B

    invoke-static {p1, v1}, Lfm/d;->g(Ljava/io/InputStream;[B)I

    move-result p1

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "EOF encountered in middle of X448 private key"

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, LXi/c;-><init>(Z)V

    const/16 v0, 0x38

    new-array v0, v0, [B

    iput-object v0, p0, LXi/Q0;->c:[B

    invoke-static {p1, v0}, Lok/c;->d(Ljava/security/SecureRandom;[B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 3
    invoke-static {p1}, LXi/Q0;->g([B)[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LXi/Q0;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, LXi/c;-><init>(Z)V

    const/16 v0, 0x38

    new-array v1, v0, [B

    iput-object v1, p0, LXi/Q0;->c:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private static g([B)[B
    .locals 2

    array-length v0, p0

    const/16 v1, 0x38

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'buf\' must have length 56"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public d([BI)V
    .locals 3

    iget-object v0, p0, LXi/Q0;->c:[B

    const/4 v1, 0x0

    const/16 v2, 0x38

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public e()LXi/R0;
    .locals 3

    const/16 v0, 0x38

    new-array v0, v0, [B

    iget-object v1, p0, LXi/Q0;->c:[B

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Lok/c;->e([BI[BI)V

    new-instance v1, LXi/R0;

    invoke-direct {v1, v0, v2}, LXi/R0;-><init>([BI)V

    return-object v1
.end method

.method public f(LXi/R0;[BI)V
    .locals 7

    const/16 v0, 0x38

    new-array v3, v0, [B

    const/4 v0, 0x0

    invoke-virtual {p1, v3, v0}, LXi/R0;->d([BI)V

    iget-object v1, p0, LXi/Q0;->c:[B

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Lok/c;->a([BI[BI[BI)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "X448 agreement failed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, LXi/Q0;->c:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

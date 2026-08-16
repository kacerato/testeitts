.class public LTi/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTi/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LTi/t$b;,
        LTi/t$c;
    }
.end annotation


# static fields
.field public static final n:I = 0x10

.field public static final o:I = 0x8

.field public static final p:I = 0xc

.field public static final q:I = 0x7fffffe7

.field public static final r:B = -0x80t

.field public static final s:B = -0x1ft

.field public static final t:I = 0x1

.field public static final u:I = 0x2


# instance fields
.field public final a:LBi/f;

.field public final b:LUi/d;

.field public final c:[B

.field public final d:[B

.field public final e:LTi/t$c;

.field public final f:LTi/t$c;

.field public g:LTi/t$b;

.field public h:LTi/t$b;

.field public i:Z

.field public j:[B

.field public k:[B

.field public l:I

.field public m:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, LLi/a;->r()LBi/K;

    move-result-object v0

    invoke-direct {p0, v0}, LTi/t;-><init>(LBi/f;)V

    return-void
.end method

.method public constructor <init>(LBi/f;)V
    .locals 1

    .line 2
    new-instance v0, LUi/g;

    invoke-direct {v0}, LUi/g;-><init>()V

    invoke-direct {p0, p1, v0}, LTi/t;-><init>(LBi/f;LUi/d;)V

    return-void
.end method

.method public constructor <init>(LBi/f;LUi/d;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, LTi/t;->c:[B

    new-array v1, v0, [B

    iput-object v1, p0, LTi/t;->d:[B

    new-array v1, v0, [B

    iput-object v1, p0, LTi/t;->m:[B

    invoke-interface {p1}, LBi/f;->c()I

    move-result v1

    if-ne v1, v0, :cond_0

    iput-object p1, p0, LTi/t;->a:LBi/f;

    iput-object p2, p0, LTi/t;->b:LUi/d;

    new-instance p1, LTi/t$c;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, LTi/t$c;-><init>(LTi/t;LTi/t$a;)V

    iput-object p1, p0, LTi/t;->e:LTi/t$c;

    new-instance p1, LTi/t$c;

    invoke-direct {p1, p0, p2}, LTi/t$c;-><init>(LTi/t;LTi/t$a;)V

    iput-object p1, p0, LTi/t;->f:LTi/t$c;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cipher required with a block size of 16."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static A([B)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    aget-byte v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static B([B)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/16 v3, 0x10

    if-ge v1, v3, :cond_1

    aget-byte v3, p0, v1

    shr-int/lit8 v4, v3, 0x1

    and-int/lit8 v4, v4, 0x7f

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    and-int/lit8 v2, v3, 0x1

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_1

    :cond_0
    const/16 v2, -0x80

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    aget-byte v1, p0, v0

    xor-int/lit8 v1, v1, -0x1f

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    :cond_2
    return-void
.end method

.method public static D([B[B)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static E([B[BII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    aget-byte v1, p0, v0

    add-int v2, v0, p2

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic l(LTi/t;)[B
    .locals 0

    iget-object p0, p0, LTi/t;->d:[B

    return-object p0
.end method

.method public static synthetic m([BII[B)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, LTi/t;->x([BII[B)V

    return-void
.end method

.method public static synthetic n(LTi/t;[B)V
    .locals 0

    invoke-virtual {p0, p1}, LTi/t;->y([B)V

    return-void
.end method

.method public static o([B)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    array-length p0, p0

    :goto_0
    return p0
.end method

.method public static r([BIIZ)V
    .locals 1

    invoke-static {p0}, LTi/t;->o([B)I

    move-result p0

    add-int v0, p1, p2

    if-ltz p2, :cond_2

    if-ltz p1, :cond_2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    if-le v0, p0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    new-instance p0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p1, "Output buffer too short."

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance p0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p1, "Input buffer too short."

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    :goto_1
    throw p0
.end method

.method public static x([BII[B)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xf

    :goto_0
    if-ge v0, p2, :cond_0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aput-byte v2, p3, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final C()V
    .locals 4

    iget-object v0, p0, LTi/t;->g:LTi/t$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LTi/t$b;->c()V

    :cond_0
    iget-object v0, p0, LTi/t;->e:LTi/t$c;

    invoke-virtual {v0}, LTi/t$c;->c()V

    iget-object v0, p0, LTi/t;->f:LTi/t$c;

    invoke-virtual {v0}, LTi/t$c;->c()V

    new-instance v0, LTi/t$b;

    invoke-direct {v0}, LTi/t$b;-><init>()V

    iput-object v0, p0, LTi/t;->g:LTi/t$b;

    iget-boolean v0, p0, LTi/t;->i:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, LTi/t$b;

    invoke-direct {v0}, LTi/t$b;-><init>()V

    :goto_0
    iput-object v0, p0, LTi/t;->h:LTi/t$b;

    iget v0, p0, LTi/t;->l:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, LTi/t;->l:I

    iget-object v0, p0, LTi/t;->c:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->e0([BB)V

    iget-object v0, p0, LTi/t;->j:[B

    if-eqz v0, :cond_2

    iget-object v2, p0, LTi/t;->e:LTi/t$c;

    array-length v3, v0

    invoke-virtual {v2, v0, v1, v3}, LTi/t$c;->e([BII)V

    :cond_2
    return-void
.end method

.method public a(ZLBi/k;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p2, LXi/a;

    if-eqz v0, :cond_0

    check-cast p2, LXi/a;

    invoke-virtual {p2}, LXi/a;->a()[B

    move-result-object v0

    invoke-virtual {p2}, LXi/a;->d()[B

    move-result-object v1

    invoke-virtual {p2}, LXi/a;->b()LXi/o0;

    move-result-object p2

    goto :goto_0

    :cond_0
    instance-of v0, p2, LXi/w0;

    if-eqz v0, :cond_4

    check-cast p2, LXi/w0;

    invoke-virtual {p2}, LXi/w0;->a()[B

    move-result-object v1

    invoke-virtual {p2}, LXi/w0;->b()LBi/k;

    move-result-object p2

    check-cast p2, LXi/o0;

    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_3

    array-length v2, v1

    const/16 v3, 0xc

    if-ne v2, v3, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p2}, LXi/o0;->c()I

    move-result v2

    const/16 v3, 0x10

    if-eq v2, v3, :cond_1

    invoke-virtual {p2}, LXi/o0;->c()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    :cond_1
    iput-boolean p1, p0, LTi/t;->i:Z

    iput-object v0, p0, LTi/t;->j:[B

    iput-object v1, p0, LTi/t;->k:[B

    invoke-virtual {p0, p2}, LTi/t;->v(LXi/o0;)V

    invoke-virtual {p0}, LTi/t;->C()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid nonce"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid parameters passed to GCM-SIV"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LTi/t;->a:LBi/f;

    invoke-interface {v1}, LBi/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-GCM-SIV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c([BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LTi/t;->s(I)V

    invoke-virtual {p0, v0}, LTi/t;->h(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, p2, v1, v2}, LTi/t;->r([BIIZ)V

    iget-boolean v1, p0, LTi/t;->i:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, LTi/t;->p()[B

    move-result-object v1

    invoke-virtual {p0, v1, p1, p2}, LTi/t;->w([B[BI)I

    move-result v2

    const/16 v3, 0x10

    add-int/2addr v2, v3

    iget-object v4, p0, LTi/t;->g:LTi/t$b;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    add-int/2addr p2, v4

    invoke-static {v1, v0, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, LTi/t;->m:[B

    array-length p2, p1

    invoke-static {v1, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, LTi/t;->C()V

    return v2

    :cond_0
    invoke-virtual {p0}, LTi/t;->u()V

    iget-object v1, p0, LTi/t;->g:LTi/t$b;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    iget-object v2, p0, LTi/t;->g:LTi/t$b;

    invoke-virtual {v2}, LTi/t$b;->d()[B

    move-result-object v2

    invoke-static {v2, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, LTi/t;->C()V

    return v1
.end method

.method public d()LBi/f;
    .locals 1

    iget-object v0, p0, LTi/t;->a:LBi/f;

    return-object v0
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, LTi/t;->m:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public f([BII[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    invoke-virtual {p0, p3}, LTi/t;->s(I)V

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4}, LTi/t;->r([BIIZ)V

    iget-boolean p5, p0, LTi/t;->i:Z

    if-eqz p5, :cond_0

    iget-object p5, p0, LTi/t;->g:LTi/t$b;

    invoke-virtual {p5, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-object p5, p0, LTi/t;->f:LTi/t$c;

    invoke-virtual {p5, p1, p2, p3}, LTi/t$c;->e([BII)V

    goto :goto_0

    :cond_0
    iget-object p5, p0, LTi/t;->h:LTi/t$b;

    invoke-virtual {p5, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    return p4
.end method

.method public g(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public h(I)I
    .locals 2

    iget-boolean v0, p0, LTi/t;->i:Z

    const/16 v1, 0x10

    if-eqz v0, :cond_0

    iget-object v0, p0, LTi/t;->g:LTi/t$b;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr p1, v1

    return p1

    :cond_0
    iget-object v0, p0, LTi/t;->h:LTi/t$b;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr p1, v0

    if-le p1, v1, :cond_1

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public i(B[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, LTi/t;->s(I)V

    iget-boolean p2, p0, LTi/t;->i:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, LTi/t;->g:LTi/t$b;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    iget-object p2, p0, LTi/t;->f:LTi/t$c;

    invoke-virtual {p2, p1}, LTi/t$c;->d(B)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, LTi/t;->h:LTi/t$b;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public j([BII)V
    .locals 1

    invoke-virtual {p0, p3}, LTi/t;->q(I)V

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, LTi/t;->r([BIIZ)V

    iget-object v0, p0, LTi/t;->e:LTi/t$c;

    invoke-virtual {v0, p1, p2, p3}, LTi/t$c;->e([BII)V

    return-void
.end method

.method public k(B)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LTi/t;->q(I)V

    iget-object v0, p0, LTi/t;->e:LTi/t$c;

    invoke-virtual {v0, p1}, LTi/t$c;->d(B)V

    return-void
.end method

.method public final p()[B
    .locals 6

    iget-object v0, p0, LTi/t;->f:LTi/t$c;

    invoke-virtual {v0}, LTi/t$c;->a()V

    invoke-virtual {p0}, LTi/t;->t()[B

    move-result-object v0

    const/16 v1, 0x10

    new-array v1, v1, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0xc

    if-ge v3, v4, :cond_0

    aget-byte v4, v0, v3

    iget-object v5, p0, LTi/t;->k:[B

    aget-byte v5, v5, v3

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0xf

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, -0x81

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    iget-object v3, p0, LTi/t;->a:LBi/f;

    invoke-interface {v3, v0, v2, v1, v2}, LBi/f;->g([BI[BI)I

    return-object v1
.end method

.method public final q(I)V
    .locals 6

    iget v0, p0, LTi/t;->l:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    iget-object v0, p0, LTi/t;->e:LTi/t$c;

    invoke-virtual {v0}, LTi/t$c;->b()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    add-long/2addr v0, v2

    const v4, 0x7fffffe7

    sub-int/2addr v4, p1

    int-to-long v4, v4

    add-long/2addr v4, v2

    cmp-long p1, v0, v4

    if-gtz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "AEAD byte count exceeded"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "AEAD data cannot be processed after ordinary data"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cipher is not initialised"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 0

    invoke-virtual {p0}, LTi/t;->C()V

    return-void
.end method

.method public final s(I)V
    .locals 8

    iget v0, p0, LTi/t;->l:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_3

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, LTi/t;->e:LTi/t$c;

    invoke-virtual {v0}, LTi/t$c;->a()V

    iget v0, p0, LTi/t;->l:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, LTi/t;->l:I

    :cond_0
    iget-object v0, p0, LTi/t;->g:LTi/t$b;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v0, v0

    iget-boolean v2, p0, LTi/t;->i:Z

    if-nez v2, :cond_1

    iget-object v0, p0, LTi/t;->h:LTi/t$b;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x7ffffff7

    goto :goto_0

    :cond_1
    const-wide/32 v2, 0x7fffffe7

    :goto_0
    const-wide/high16 v4, -0x8000000000000000L

    add-long/2addr v0, v4

    int-to-long v6, p1

    sub-long/2addr v2, v6

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gtz p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "byte count exceeded"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cipher is not initialised"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final t()[B
    .locals 4

    const/16 v0, 0x10

    new-array v1, v0, [B

    invoke-virtual {p0}, LTi/t;->z()V

    iget-object v2, p0, LTi/t;->c:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, LTi/t;->x([BII[B)V

    return-object v1
.end method

.method public final u()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-object v0, p0, LTi/t;->h:LTi/t$b;

    invoke-virtual {v0}, LTi/t$b;->d()[B

    move-result-object v0

    iget-object v1, p0, LTi/t;->h:LTi/t$b;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x10

    if-ltz v2, :cond_2

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v3

    const/16 v4, 0xf

    aget-byte v5, v3, v4

    or-int/lit8 v5, v5, -0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    const/16 v4, 0x10

    new-array v5, v4, [B

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-lez v2, :cond_0

    iget-object v8, p0, LTi/t;->a:LBi/f;

    invoke-interface {v8, v3, v6, v5, v6}, LBi/f;->g([BI[BI)I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v5, v0, v7, v8}, LTi/t;->E([B[BII)V

    iget-object v9, p0, LTi/t;->g:LTi/t$b;

    invoke-virtual {v9, v5, v6, v8}, Ljava/io/OutputStream;->write([BII)V

    iget-object v9, p0, LTi/t;->f:LTi/t$c;

    invoke-virtual {v9, v5, v6, v8}, LTi/t$c;->e([BII)V

    sub-int/2addr v2, v8

    add-int/2addr v7, v8

    invoke-static {v3}, LTi/t;->A([B)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LTi/t;->p()[B

    move-result-object v0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->I([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LTi/t;->m:[B

    array-length v2, v1

    invoke-static {v0, v6, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_1
    invoke-virtual {p0}, LTi/t;->reset()V

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "mac check failed"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "Data too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final v(LXi/o0;)V
    .locals 10

    const/16 v0, 0x10

    new-array v1, v0, [B

    new-array v2, v0, [B

    new-array v3, v0, [B

    invoke-virtual {p1}, LXi/o0;->c()I

    move-result v4

    new-array v5, v4, [B

    iget-object v6, p0, LTi/t;->k:[B

    const/4 v7, 0x4

    const/16 v8, 0xc

    const/4 v9, 0x0

    invoke-static {v6, v9, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, LTi/t;->a:LBi/f;

    const/4 v7, 0x1

    invoke-interface {v6, v7, p1}, LBi/f;->a(ZLBi/k;)V

    iget-object p1, p0, LTi/t;->a:LBi/f;

    invoke-interface {p1, v1, v9, v2, v9}, LBi/f;->g([BI[BI)I

    const/16 p1, 0x8

    invoke-static {v2, v9, v3, v9, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v6, v1, v9

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v9

    iget-object v6, p0, LTi/t;->a:LBi/f;

    invoke-interface {v6, v1, v9, v2, v9}, LBi/f;->g([BI[BI)I

    invoke-static {v2, v9, v3, p1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v6, v1, v9

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v9

    iget-object v6, p0, LTi/t;->a:LBi/f;

    invoke-interface {v6, v1, v9, v2, v9}, LBi/f;->g([BI[BI)I

    invoke-static {v2, v9, v5, v9, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v6, v1, v9

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v9

    iget-object v6, p0, LTi/t;->a:LBi/f;

    invoke-interface {v6, v1, v9, v2, v9}, LBi/f;->g([BI[BI)I

    invoke-static {v2, v9, v5, p1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v6, 0x20

    if-ne v4, v6, :cond_0

    aget-byte v4, v1, v9

    add-int/2addr v4, v7

    int-to-byte v4, v4

    aput-byte v4, v1, v9

    iget-object v4, p0, LTi/t;->a:LBi/f;

    invoke-interface {v4, v1, v9, v2, v9}, LBi/f;->g([BI[BI)I

    invoke-static {v2, v9, v5, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v4, v1, v9

    add-int/2addr v4, v7

    int-to-byte v4, v4

    aput-byte v4, v1, v9

    iget-object v4, p0, LTi/t;->a:LBi/f;

    invoke-interface {v4, v1, v9, v2, v9}, LBi/f;->g([BI[BI)I

    const/16 v1, 0x18

    invoke-static {v2, v9, v5, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object p1, p0, LTi/t;->a:LBi/f;

    new-instance v1, LXi/o0;

    invoke-direct {v1, v5}, LXi/o0;-><init>([B)V

    invoke-interface {p1, v7, v1}, LBi/f;->a(ZLBi/k;)V

    invoke-static {v3, v9, v0, v2}, LTi/t;->x([BII[B)V

    invoke-static {v2}, LTi/t;->B([B)V

    iget-object p1, p0, LTi/t;->b:LUi/d;

    invoke-interface {p1, v2}, LUi/d;->a([B)V

    iget p1, p0, LTi/t;->l:I

    or-int/2addr p1, v7

    iput p1, p0, LTi/t;->l:I

    return-void
.end method

.method public final w([B[BI)I
    .locals 8

    iget-object v0, p0, LTi/t;->g:LTi/t$b;

    invoke-virtual {v0}, LTi/t$b;->d()[B

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    const/16 v1, 0xf

    aget-byte v2, p1, v1

    or-int/lit8 v2, v2, -0x80

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    const/16 v1, 0x10

    new-array v2, v1, [B

    iget-object v3, p0, LTi/t;->g:LTi/t$b;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lez v3, :cond_0

    iget-object v6, p0, LTi/t;->a:LBi/f;

    invoke-interface {v6, p1, v4, v2, v4}, LBi/f;->g([BI[BI)I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v2, v0, v5, v6}, LTi/t;->E([B[BII)V

    add-int v7, p3, v5

    invoke-static {v2, v4, p2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v3, v6

    add-int/2addr v5, v6

    invoke-static {p1}, LTi/t;->A([B)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LTi/t;->g:LTi/t$b;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    return p1
.end method

.method public final y([B)V
    .locals 1

    iget-object v0, p0, LTi/t;->c:[B

    invoke-static {v0, p1}, LTi/t;->D([B[B)V

    iget-object p1, p0, LTi/t;->b:LUi/d;

    iget-object v0, p0, LTi/t;->c:[B

    invoke-interface {p1, v0}, LUi/d;->b([B)V

    return-void
.end method

.method public final z()V
    .locals 6

    const/16 v0, 0x10

    new-array v0, v0, [B

    iget-object v1, p0, LTi/t;->f:LTi/t$c;

    invoke-virtual {v1}, LTi/t$c;->b()J

    move-result-wide v1

    const-wide/16 v3, 0x8

    mul-long/2addr v1, v3

    const/4 v5, 0x0

    invoke-static {v1, v2, v0, v5}, Lorg/bouncycastle/util/p;->D(J[BI)V

    iget-object v1, p0, LTi/t;->e:LTi/t$c;

    invoke-virtual {v1}, LTi/t$c;->b()J

    move-result-wide v1

    mul-long/2addr v1, v3

    const/16 v3, 0x8

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/util/p;->D(J[BI)V

    invoke-virtual {p0, v0}, LTi/t;->y([B)V

    return-void
.end method

.class public LXk/z;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final c:I

.field public final d:[B

.field public final e:[B

.field public final f:[B

.field public final g:[B

.field public final h:I

.field public final i:[B


# direct methods
.method public constructor <init>(I[B[B[B[B[B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LXk/z;->b:I

    iput p1, p0, LXk/z;->c:I

    invoke-static {p2}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LXk/z;->d:[B

    invoke-static {p3}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LXk/z;->e:[B

    invoke-static {p4}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LXk/z;->f:[B

    invoke-static {p5}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LXk/z;->g:[B

    invoke-static {p6}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LXk/z;->i:[B

    const/4 p1, -0x1

    iput p1, p0, LXk/z;->h:I

    return-void
.end method

.method public constructor <init>(I[B[B[B[B[BI)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, LXk/z;->b:I

    iput p1, p0, LXk/z;->c:I

    invoke-static {p2}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LXk/z;->d:[B

    invoke-static {p3}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LXk/z;->e:[B

    invoke-static {p4}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LXk/z;->f:[B

    invoke-static {p5}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LXk/z;->g:[B

    invoke-static {p6}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LXk/z;->i:[B

    iput p7, p0, LXk/z;->h:I

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 8

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Loh/s;->J(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-virtual {v1, v3}, Loh/s;->J(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown version of sequence"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {v1}, Loh/s;->O()I

    move-result v1

    iput v1, p0, LXk/z;->b:I

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v1

    const/4 v2, 0x3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key sequence wrong size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v1

    invoke-virtual {v1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v5

    invoke-static {v5}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v5

    invoke-virtual {v5}, Loh/s;->O()I

    move-result v5

    iput v5, p0, LXk/z;->c:I

    invoke-virtual {v1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v5

    invoke-static {v5}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v5

    invoke-virtual {v5}, Loh/y;->H()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v5

    iput-object v5, p0, LXk/z;->d:[B

    invoke-virtual {v1, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v5

    invoke-static {v5}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v5

    invoke-virtual {v5}, Loh/y;->H()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v5

    iput-object v5, p0, LXk/z;->e:[B

    invoke-virtual {v1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v5

    invoke-static {v5}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v5

    invoke-virtual {v5}, Loh/y;->H()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v5

    iput-object v5, p0, LXk/z;->f:[B

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Loh/E;->I(I)Loh/g;

    move-result-object v5

    invoke-static {v5}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v5

    invoke-virtual {v5}, Loh/y;->H()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v5

    iput-object v5, p0, LXk/z;->g:[B

    invoke-virtual {v1}, Loh/E;->size()I

    move-result v5

    const/4 v6, 0x6

    const/4 v7, 0x5

    if-ne v5, v6, :cond_5

    invoke-virtual {v1, v7}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object v1

    invoke-virtual {v1}, Loh/M;->g()I

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v1, v0}, Loh/s;->G(Loh/M;Z)Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->O()I

    move-result v0

    :goto_2
    iput v0, p0, LXk/z;->h:I

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag in XMSSPrivateKey"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-virtual {v1}, Loh/E;->size()I

    move-result v0

    if-ne v0, v7, :cond_7

    const/4 v0, -0x1

    goto :goto_2

    :goto_3
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-ne v0, v2, :cond_6

    invoke-virtual {p1, v4}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object p1

    invoke-static {p1, v3}, Loh/y;->G(Loh/M;Z)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LXk/z;->i:[B

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    iput-object p1, p0, LXk/z;->i:[B

    :goto_4
    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "keySeq should be 5 or 6 in length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static w(Ljava/lang/Object;)LXk/z;
    .locals 1

    instance-of v0, p0, LXk/z;

    if-eqz v0, :cond_0

    check-cast p0, LXk/z;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LXk/z;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LXk/z;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()[B
    .locals 1

    iget-object v0, p0, LXk/z;->e:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public B()[B
    .locals 1

    iget-object v0, p0, LXk/z;->d:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public C()I
    .locals 1

    iget v0, p0, LXk/z;->b:I

    return v0
.end method

.method public r()Loh/B;
    .locals 7

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    iget v1, p0, LXk/z;->h:I

    if-ltz v1, :cond_0

    new-instance v1, Loh/s;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v2, v3}, Loh/s;-><init>(J)V

    :goto_0
    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    goto :goto_1

    :cond_0
    new-instance v1, Loh/s;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Loh/s;-><init>(J)V

    goto :goto_0

    :goto_1
    new-instance v1, Loh/h;

    invoke-direct {v1}, Loh/h;-><init>()V

    new-instance v2, Loh/s;

    iget v3, p0, LXk/z;->c:I

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Loh/s;-><init>(J)V

    invoke-virtual {v1, v2}, Loh/h;->a(Loh/g;)V

    new-instance v2, Loh/C0;

    iget-object v3, p0, LXk/z;->d:[B

    invoke-direct {v2, v3}, Loh/C0;-><init>([B)V

    invoke-virtual {v1, v2}, Loh/h;->a(Loh/g;)V

    new-instance v2, Loh/C0;

    iget-object v3, p0, LXk/z;->e:[B

    invoke-direct {v2, v3}, Loh/C0;-><init>([B)V

    invoke-virtual {v1, v2}, Loh/h;->a(Loh/g;)V

    new-instance v2, Loh/C0;

    iget-object v3, p0, LXk/z;->f:[B

    invoke-direct {v2, v3}, Loh/C0;-><init>([B)V

    invoke-virtual {v1, v2}, Loh/h;->a(Loh/g;)V

    new-instance v2, Loh/C0;

    iget-object v3, p0, LXk/z;->g:[B

    invoke-direct {v2, v3}, Loh/C0;-><init>([B)V

    invoke-virtual {v1, v2}, Loh/h;->a(Loh/g;)V

    iget v2, p0, LXk/z;->h:I

    const/4 v3, 0x0

    if-ltz v2, :cond_1

    new-instance v2, Loh/K0;

    new-instance v4, Loh/s;

    iget v5, p0, LXk/z;->h:I

    int-to-long v5, v5

    invoke-direct {v4, v5, v6}, Loh/s;-><init>(J)V

    invoke-direct {v2, v3, v3, v4}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v1, v2}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v2, Loh/G0;

    invoke-direct {v2, v1}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/K0;

    new-instance v2, Loh/C0;

    iget-object v4, p0, LXk/z;->i:[B

    invoke-direct {v2, v4}, Loh/C0;-><init>([B)V

    const/4 v4, 0x1

    invoke-direct {v1, v4, v3, v2}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()[B
    .locals 1

    iget-object v0, p0, LXk/z;->i:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, LXk/z;->c:I

    return v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, LXk/z;->h:I

    return v0
.end method

.method public y()[B
    .locals 1

    iget-object v0, p0, LXk/z;->f:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public z()[B
    .locals 1

    iget-object v0, p0, LXk/z;->g:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

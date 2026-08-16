.class public LXk/g;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:[B

.field public d:LXk/h;

.field public e:[B

.field public f:[B


# direct methods
.method public constructor <init>(I[B[B[B)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, LXk/g;-><init>(I[B[B[BLXk/h;)V

    return-void
.end method

.method public constructor <init>(I[B[B[BLXk/h;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput p1, p0, LXk/g;->b:I

    iput-object p2, p0, LXk/g;->c:[B

    iput-object p5, p0, LXk/g;->d:LXk/h;

    iput-object p3, p0, LXk/g;->e:[B

    iput-object p4, p0, LXk/g;->f:[B

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v1

    invoke-virtual {v1}, Loh/s;->O()I

    move-result v1

    iput v1, p0, LXk/g;->b:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v2

    invoke-virtual {v2}, Loh/y;->H()[B

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v2

    iput-object v2, p0, LXk/g;->c:[B

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, LXk/h;->u(Ljava/lang/Object;)LXk/h;

    move-result-object v1

    iput-object v1, p0, LXk/g;->d:LXk/h;

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    rsub-int/lit8 v1, v0, 0x3

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v1

    invoke-virtual {v1}, Loh/y;->H()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v1

    iput-object v1, p0, LXk/g;->e:[B

    rsub-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LXk/g;->f:[B

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unrecognized version"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static v(Ljava/lang/Object;)LXk/g;
    .locals 1

    instance-of v0, p0, LXk/g;

    if-eqz v0, :cond_0

    check-cast p0, LXk/g;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LXk/g;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LXk/g;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()I
    .locals 1

    iget v0, p0, LXk/g;->b:I

    return v0
.end method

.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    new-instance v1, Loh/s;

    iget v2, p0, LXk/g;->b:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Loh/s;-><init>(J)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/C0;

    iget-object v2, p0, LXk/g;->c:[B

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXk/g;->d:LXk/h;

    if-eqz v1, :cond_0

    new-instance v2, LXk/h;

    invoke-virtual {v1}, LXk/h;->x()[B

    move-result-object v1

    iget-object v3, p0, LXk/g;->d:LXk/h;

    invoke-virtual {v3}, LXk/h;->v()[B

    move-result-object v3

    invoke-direct {v2, v1, v3}, LXk/h;-><init>([B[B)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/C0;

    iget-object v2, p0, LXk/g;->e:[B

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/C0;

    iget-object v2, p0, LXk/g;->f:[B

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()[B
    .locals 1

    iget-object v0, p0, LXk/g;->e:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public x()[B
    .locals 1

    iget-object v0, p0, LXk/g;->f:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public y()LXk/h;
    .locals 1

    iget-object v0, p0, LXk/g;->d:LXk/h;

    return-object v0
.end method

.method public z()[B
    .locals 1

    iget-object v0, p0, LXk/g;->c:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

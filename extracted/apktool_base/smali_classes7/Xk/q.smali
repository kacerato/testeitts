.class public LXk/q;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:[B

.field public d:[B

.field public e:[B

.field public f:LXk/r;


# direct methods
.method public constructor <init>(I[B[B[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput p1, p0, LXk/q;->b:I

    if-nez p1, :cond_0

    iput-object p2, p0, LXk/q;->c:[B

    iput-object p3, p0, LXk/q;->d:[B

    iput-object p4, p0, LXk/q;->e:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unrecognized version"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(I[B[B[BLXk/r;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput p1, p0, LXk/q;->b:I

    if-nez p1, :cond_0

    iput-object p2, p0, LXk/q;->c:[B

    iput-object p3, p0, LXk/q;->d:[B

    iput-object p4, p0, LXk/q;->e:[B

    iput-object p5, p0, LXk/q;->f:LXk/r;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unrecognized version"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Loh/E;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->O()I

    move-result v0

    iput v0, p0, LXk/q;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    iput-object v0, p0, LXk/q;->c:[B

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    iput-object v0, p0, LXk/q;->d:[B

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LXk/r;->v(Ljava/lang/Object;)LXk/r;

    move-result-object v0

    iput-object v0, p0, LXk/q;->f:LXk/r;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LXk/q;->e:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unrecognized version"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static v(Ljava/lang/Object;)LXk/q;
    .locals 1

    instance-of v0, p0, LXk/q;

    if-eqz v0, :cond_0

    check-cast p0, LXk/q;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LXk/q;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LXk/q;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()[B
    .locals 1

    iget-object v0, p0, LXk/q;->c:[B

    return-object v0
.end method

.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    new-instance v1, Loh/s;

    iget v2, p0, LXk/q;->b:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Loh/s;-><init>(J)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/C0;

    iget-object v2, p0, LXk/q;->c:[B

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/C0;

    iget-object v2, p0, LXk/q;->d:[B

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/C0;

    iget-object v2, p0, LXk/q;->e:[B

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()[B
    .locals 1

    iget-object v0, p0, LXk/q;->e:[B

    return-object v0
.end method

.method public x()LXk/r;
    .locals 1

    iget-object v0, p0, LXk/q;->f:LXk/r;

    return-object v0
.end method

.method public y()[B
    .locals 1

    iget-object v0, p0, LXk/q;->d:[B

    return-object v0
.end method

.method public z()I
    .locals 1

    iget v0, p0, LXk/q;->b:I

    return v0
.end method

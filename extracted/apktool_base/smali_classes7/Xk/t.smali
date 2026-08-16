.class public LXk/t;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:[B

.field public d:[B

.field public e:LXk/u;


# direct methods
.method public constructor <init>(I[B[B)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, LXk/t;-><init>(I[B[BLXk/u;)V

    return-void
.end method

.method public constructor <init>(I[B[BLXk/u;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput p1, p0, LXk/t;->b:I

    iput-object p2, p0, LXk/t;->c:[B

    iput-object p3, p0, LXk/t;->d:[B

    iput-object p4, p0, LXk/t;->e:LXk/u;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->O()I

    move-result v0

    iput v0, p0, LXk/t;->b:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    iput-object v0, p0, LXk/t;->c:[B

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    iput-object v0, p0, LXk/t;->d:[B

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, LXk/u;->u(Ljava/lang/Object;)LXk/u;

    move-result-object p1

    iput-object p1, p0, LXk/t;->e:LXk/u;

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unrecognized version"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u(Ljava/lang/Object;)LXk/t;
    .locals 1

    instance-of v0, p0, LXk/t;

    if-eqz v0, :cond_0

    check-cast p0, LXk/t;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LXk/t;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LXk/t;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    new-instance v1, Loh/s;

    iget v2, p0, LXk/t;->b:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Loh/s;-><init>(J)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/C0;

    iget-object v2, p0, LXk/t;->c:[B

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/C0;

    iget-object v2, p0, LXk/t;->d:[B

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXk/t;->e:LXk/u;

    if-eqz v1, :cond_0

    new-instance v2, LXk/u;

    invoke-virtual {v1}, LXk/u;->x()[B

    move-result-object v1

    iget-object v3, p0, LXk/t;->e:LXk/u;

    invoke-virtual {v3}, LXk/u;->v()[B

    move-result-object v3

    invoke-direct {v2, v1, v3}, LXk/u;-><init>([B[B)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()LXk/u;
    .locals 1

    iget-object v0, p0, LXk/t;->e:LXk/u;

    return-object v0
.end method

.method public x()[B
    .locals 1

    iget-object v0, p0, LXk/t;->d:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public y()[B
    .locals 1

    iget-object v0, p0, LXk/t;->c:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public z()I
    .locals 1

    iget v0, p0, LXk/t;->b:I

    return v0
.end method

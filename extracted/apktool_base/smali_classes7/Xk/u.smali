.class public LXk/u;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:[B

.field public c:[B


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    iput-object v0, p0, LXk/u;->b:[B

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LXk/u;->c:[B

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LXk/u;->b:[B

    iput-object p2, p0, LXk/u;->c:[B

    return-void
.end method

.method public static u(Ljava/lang/Object;)LXk/u;
    .locals 1

    instance-of v0, p0, LXk/u;

    if-eqz v0, :cond_0

    check-cast p0, LXk/u;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LXk/u;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LXk/u;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 3

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    new-instance v1, Loh/C0;

    iget-object v2, p0, LXk/u;->b:[B

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/C0;

    iget-object v2, p0, LXk/u;->c:[B

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()[B
    .locals 1

    iget-object v0, p0, LXk/u;->c:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public x()[B
    .locals 1

    iget-object v0, p0, LXk/u;->b:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

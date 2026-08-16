.class public LXk/i;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[B

.field public e:[B

.field public f:[B

.field public g:Lhi/b;


# direct methods
.method public constructor <init>(IILWl/h;LWl/y;LWl/x;Lhi/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput p1, p0, LXk/i;->b:I

    iput p2, p0, LXk/i;->c:I

    invoke-virtual {p3}, LWl/h;->e()[B

    move-result-object p1

    iput-object p1, p0, LXk/i;->d:[B

    invoke-virtual {p4}, LWl/y;->o()[B

    move-result-object p1

    iput-object p1, p0, LXk/i;->e:[B

    invoke-virtual {p5}, LWl/x;->b()[B

    move-result-object p1

    iput-object p1, p0, LXk/i;->f:[B

    iput-object p6, p0, LXk/i;->g:Lhi/b;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/s;

    invoke-virtual {v0}, Loh/s;->O()I

    move-result v0

    iput v0, p0, LXk/i;->b:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/s;

    invoke-virtual {v0}, Loh/s;->O()I

    move-result v0

    iput v0, p0, LXk/i;->c:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/y;

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    iput-object v0, p0, LXk/i;->d:[B

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/y;

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    iput-object v0, p0, LXk/i;->e:[B

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/y;

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    iput-object v0, p0, LXk/i;->f:[B

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object p1

    iput-object p1, p0, LXk/i;->g:Lhi/b;

    return-void
.end method

.method public static y(Ljava/lang/Object;)LXk/i;
    .locals 1

    instance-of v0, p0, LXk/i;

    if-eqz v0, :cond_0

    check-cast p0, LXk/i;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LXk/i;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LXk/i;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()I
    .locals 1

    iget v0, p0, LXk/i;->b:I

    return v0
.end method

.method public B()LWl/x;
    .locals 2

    new-instance v0, LWl/x;

    iget-object v1, p0, LXk/i;->f:[B

    invoke-direct {v0, v1}, LWl/x;-><init>([B)V

    return-object v0
.end method

.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    new-instance v1, Loh/s;

    iget v2, p0, LXk/i;->b:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Loh/s;-><init>(J)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/s;

    iget v2, p0, LXk/i;->c:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Loh/s;-><init>(J)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/C0;

    iget-object v2, p0, LXk/i;->d:[B

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/C0;

    iget-object v2, p0, LXk/i;->e:[B

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/C0;

    iget-object v2, p0, LXk/i;->f:[B

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXk/i;->g:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lhi/b;
    .locals 1

    iget-object v0, p0, LXk/i;->g:Lhi/b;

    return-object v0
.end method

.method public v()LWl/h;
    .locals 2

    new-instance v0, LWl/h;

    iget-object v1, p0, LXk/i;->d:[B

    invoke-direct {v0, v1}, LWl/h;-><init>([B)V

    return-object v0
.end method

.method public x()LWl/y;
    .locals 3

    new-instance v0, LWl/y;

    invoke-virtual {p0}, LXk/i;->v()LWl/h;

    move-result-object v1

    iget-object v2, p0, LXk/i;->e:[B

    invoke-direct {v0, v1, v2}, LWl/y;-><init>(LWl/h;[B)V

    return-object v0
.end method

.method public z()I
    .locals 1

    iget v0, p0, LXk/i;->c:I

    return v0
.end method

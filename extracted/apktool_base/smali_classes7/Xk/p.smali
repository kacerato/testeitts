.class public LXk/p;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/s;

.field public c:Loh/x;

.field public d:Loh/s;

.field public e:[[B

.field public f:[[B

.field public g:[B


# direct methods
.method public constructor <init>(I[[S[[S[S)V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, LXk/p;->b:Loh/s;

    new-instance v0, Loh/s;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, LXk/p;->d:Loh/s;

    invoke-static {p2}, LVl/c;->c([[S)[[B

    move-result-object p1

    iput-object p1, p0, LXk/p;->e:[[B

    invoke-static {p3}, LVl/c;->c([[S)[[B

    move-result-object p1

    iput-object p1, p0, LXk/p;->f:[[B

    invoke-static {p4}, LVl/c;->a([S)[B

    move-result-object p1

    iput-object p1, p0, LXk/p;->g:[B

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    instance-of v1, v1, Loh/s;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v1

    iput-object v1, p0, LXk/p;->b:Loh/s;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object v1

    iput-object v1, p0, LXk/p;->c:Loh/x;

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v1

    iput-object v1, p0, LXk/p;->d:Loh/s;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v1

    invoke-virtual {v1}, Loh/E;->size()I

    move-result v2

    new-array v2, v2, [[B

    iput-object v2, p0, LXk/p;->e:[[B

    move v2, v0

    :goto_1
    invoke-virtual {v1}, Loh/E;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, LXk/p;->e:[[B

    invoke-virtual {v1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    invoke-static {v4}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v4

    invoke-virtual {v4}, Loh/y;->H()[B

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    check-cast v1, Loh/E;

    invoke-virtual {v1}, Loh/E;->size()I

    move-result v2

    new-array v2, v2, [[B

    iput-object v2, p0, LXk/p;->f:[[B

    move v2, v0

    :goto_2
    invoke-virtual {v1}, Loh/E;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, LXk/p;->f:[[B

    invoke-virtual {v1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    invoke-static {v4}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v4

    invoke-virtual {v4}, Loh/y;->H()[B

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/E;

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    iput-object p1, p0, LXk/p;->g:[B

    return-void
.end method

.method public static z(Ljava/lang/Object;)LXk/p;
    .locals 1

    instance-of v0, p0, LXk/p;

    if-eqz v0, :cond_0

    check-cast p0, LXk/p;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LXk/p;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LXk/p;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()Loh/s;
    .locals 1

    iget-object v0, p0, LXk/p;->b:Loh/s;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 6

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    iget-object v1, p0, LXk/p;->b:Loh/s;

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, LXk/p;->c:Loh/x;

    goto :goto_0

    :goto_1
    iget-object v1, p0, LXk/p;->d:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/h;

    invoke-direct {v1}, Loh/h;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    iget-object v4, p0, LXk/p;->e:[[B

    array-length v4, v4

    if-ge v3, v4, :cond_1

    new-instance v4, Loh/C0;

    iget-object v5, p0, LXk/p;->e:[[B

    aget-object v5, v5, v3

    invoke-direct {v4, v5}, Loh/C0;-><init>([B)V

    invoke-virtual {v1, v4}, Loh/h;->a(Loh/g;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    new-instance v3, Loh/G0;

    invoke-direct {v3, v1}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/h;

    invoke-direct {v1}, Loh/h;-><init>()V

    :goto_3
    iget-object v3, p0, LXk/p;->f:[[B

    array-length v3, v3

    if-ge v2, v3, :cond_2

    new-instance v3, Loh/C0;

    iget-object v4, p0, LXk/p;->f:[[B

    aget-object v4, v4, v2

    invoke-direct {v3, v4}, Loh/C0;-><init>([B)V

    invoke-virtual {v1, v3}, Loh/h;->a(Loh/g;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    new-instance v2, Loh/G0;

    invoke-direct {v2, v1}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/h;

    invoke-direct {v1}, Loh/h;-><init>()V

    new-instance v2, Loh/C0;

    iget-object v3, p0, LXk/p;->g:[B

    invoke-direct {v2, v3}, Loh/C0;-><init>([B)V

    invoke-virtual {v1, v2}, Loh/h;->a(Loh/g;)V

    new-instance v2, Loh/G0;

    invoke-direct {v2, v1}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()[[S
    .locals 1

    iget-object v0, p0, LXk/p;->e:[[B

    invoke-static {v0}, LVl/c;->d([[B)[[S

    move-result-object v0

    return-object v0
.end method

.method public v()[S
    .locals 1

    iget-object v0, p0, LXk/p;->g:[B

    invoke-static {v0}, LVl/c;->b([B)[S

    move-result-object v0

    return-object v0
.end method

.method public x()[[S
    .locals 1

    iget-object v0, p0, LXk/p;->f:[[B

    invoke-static {v0}, LVl/c;->d([[B)[[S

    move-result-object v0

    return-object v0
.end method

.method public y()I
    .locals 1

    iget-object v0, p0, LXk/p;->d:Loh/s;

    invoke-virtual {v0}, Loh/s;->O()I

    move-result v0

    return v0
.end method

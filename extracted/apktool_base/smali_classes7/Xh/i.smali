.class public LXh/i;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/E;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    check-cast v1, Loh/s;

    invoke-virtual {v1, v0}, Loh/s;->J(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    iput-object p1, p0, LXh/i;->b:Loh/E;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sequence not version 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Loh/x;Lhi/b;Loh/g;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    invoke-virtual {p2}, Lhi/b;->r()Loh/B;

    move-result-object p1

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    new-instance p1, Loh/l0;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p3}, Loh/l0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    new-instance p1, Loh/g0;

    invoke-direct {p1, v0}, Loh/g0;-><init>(Loh/h;)V

    iput-object p1, p0, LXh/i;->b:Loh/E;

    return-void
.end method

.method public static y(Ljava/lang/Object;)LXh/i;
    .locals 1

    instance-of v0, p0, LXh/i;

    if-eqz v0, :cond_0

    check-cast p0, LXh/i;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LXh/i;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LXh/i;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    new-instance v1, Loh/s;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Loh/s;-><init>(J)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXh/i;->b:Loh/E;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/g0;

    invoke-direct {v1, v0}, Loh/g0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/y;
    .locals 2

    iget-object v0, p0, LXh/i;->b:Loh/E;

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LXh/i;->b:Loh/E;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Loh/y;->G(Loh/M;Z)Loh/y;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public v()Loh/x;
    .locals 2

    iget-object v0, p0, LXh/i;->b:Loh/E;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object v0

    return-object v0
.end method

.method public x()Lhi/b;
    .locals 2

    iget-object v0, p0, LXh/i;->b:Loh/E;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    return-object v0
.end method

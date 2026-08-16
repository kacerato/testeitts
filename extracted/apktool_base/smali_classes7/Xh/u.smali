.class public LXh/u;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements LXh/t;


# instance fields
.field public b:LXh/g;

.field public c:LXh/n;


# direct methods
.method public constructor <init>(LXh/g;LXh/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LXh/u;->b:LXh/g;

    iput-object p2, p0, LXh/u;->c:LXh/n;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LXh/u;->c:LXh/n;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Loh/s;->J(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LXh/g;->w(Ljava/lang/Object;)LXh/g;

    move-result-object v0

    iput-object v0, p0, LXh/u;->b:LXh/g;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, LXh/n;->u(Ljava/lang/Object;)LXh/n;

    move-result-object p1

    iput-object p1, p0, LXh/u;->c:LXh/n;

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "wrong version for PFX PDU"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static v(Ljava/lang/Object;)LXh/u;
    .locals 1

    instance-of v0, p0, LXh/u;

    if-eqz v0, :cond_0

    check-cast p0, LXh/u;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LXh/u;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LXh/u;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    new-instance v1, Loh/s;

    const-wide/16 v2, 0x3

    invoke-direct {v1, v2, v3}, Loh/s;-><init>(J)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXh/u;->b:LXh/g;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXh/u;->c:LXh/n;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/g0;

    invoke-direct {v1, v0}, Loh/g0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()LXh/g;
    .locals 1

    iget-object v0, p0, LXh/u;->b:LXh/g;

    return-object v0
.end method

.method public x()LXh/n;
    .locals 1

    iget-object v0, p0, LXh/u;->c:LXh/n;

    return-object v0
.end method

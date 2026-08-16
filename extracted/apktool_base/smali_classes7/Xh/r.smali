.class public LXh/r;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements LXh/t;


# instance fields
.field public b:Lhi/b;

.field public c:Lhi/b;


# direct methods
.method public constructor <init>(Lhi/b;Lhi/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LXh/r;->b:Lhi/b;

    iput-object p2, p0, LXh/r;->c:Lhi/b;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/g;

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    invoke-static {v0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    sget-object v2, LXh/t;->h1:Loh/x;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lhi/b;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LXh/q;->u(Ljava/lang/Object;)LXh/q;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    iput-object v1, p0, LXh/r;->b:Lhi/b;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, LXh/r;->b:Lhi/b;

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object p1

    iput-object p1, p0, LXh/r;->c:Lhi/b;

    return-void
.end method

.method public static u(Ljava/lang/Object;)LXh/r;
    .locals 1

    instance-of v0, p0, LXh/r;

    if-eqz v0, :cond_0

    check-cast p0, LXh/r;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LXh/r;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LXh/r;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LXh/r;->b:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXh/r;->c:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Lhi/b;
    .locals 1

    iget-object v0, p0, LXh/r;->b:Lhi/b;

    return-object v0
.end method

.method public x()Lhi/b;
    .locals 1

    iget-object v0, p0, LXh/r;->c:Lhi/b;

    return-object v0
.end method

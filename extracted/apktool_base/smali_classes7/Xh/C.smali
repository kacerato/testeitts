.class public LXh/C;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/x;

.field public c:Loh/g;

.field public d:Loh/G;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/x;

    iput-object v0, p0, LXh/C;->b:Loh/x;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/M;

    invoke-virtual {v0}, Loh/M;->O()Loh/v;

    move-result-object v0

    iput-object v0, p0, LXh/C;->c:Loh/g;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/G;

    iput-object p1, p0, LXh/C;->d:Loh/G;

    :cond_0
    return-void
.end method

.method public constructor <init>(Loh/x;Loh/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LXh/C;->b:Loh/x;

    iput-object p2, p0, LXh/C;->c:Loh/g;

    const/4 p1, 0x0

    iput-object p1, p0, LXh/C;->d:Loh/G;

    return-void
.end method

.method public constructor <init>(Loh/x;Loh/g;Loh/G;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LXh/C;->b:Loh/x;

    iput-object p2, p0, LXh/C;->c:Loh/g;

    iput-object p3, p0, LXh/C;->d:Loh/G;

    return-void
.end method

.method public static y(Ljava/lang/Object;)LXh/C;
    .locals 1

    instance-of v0, p0, LXh/C;

    if-eqz v0, :cond_0

    check-cast p0, LXh/C;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LXh/C;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LXh/C;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LXh/C;->b:Loh/x;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/Z0;

    const/4 v2, 0x0

    iget-object v3, p0, LXh/C;->c:Loh/g;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Loh/Z0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXh/C;->d:Loh/G;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/V0;

    invoke-direct {v1, v0}, Loh/V0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/G;
    .locals 1

    iget-object v0, p0, LXh/C;->d:Loh/G;

    return-object v0
.end method

.method public v()Loh/x;
    .locals 1

    iget-object v0, p0, LXh/C;->b:Loh/x;

    return-object v0
.end method

.method public x()Loh/g;
    .locals 1

    iget-object v0, p0, LXh/C;->c:Loh/g;

    return-object v0
.end method

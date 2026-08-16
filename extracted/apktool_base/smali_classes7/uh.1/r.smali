.class public Luh/r;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/x;

.field public c:Lhi/b;

.field public d:Loh/y;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    check-cast v2, Loh/x;

    iput-object v2, p0, Luh/r;->b:Loh/x;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v2

    iput-object v2, p0, Luh/r;->c:Lhi/b;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/M;

    invoke-static {p1, v0}, Loh/y;->G(Loh/M;Z)Loh/y;

    move-result-object p1

    iput-object p1, p0, Luh/r;->d:Loh/y;

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Truncated Sequence Found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Loh/x;Lhi/b;Loh/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Luh/r;->b:Loh/x;

    iput-object p2, p0, Luh/r;->c:Lhi/b;

    iput-object p3, p0, Luh/r;->d:Loh/y;

    return-void
.end method

.method public static y(Ljava/lang/Object;)Luh/r;
    .locals 1

    instance-of v0, p0, Luh/r;

    if-eqz v0, :cond_0

    check-cast p0, Luh/r;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Luh/r;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Luh/r;-><init>(Loh/E;)V

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

    iget-object v1, p0, Luh/r;->b:Loh/x;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/r;->c:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/r;->d:Loh/y;

    if-eqz v1, :cond_0

    new-instance v2, Loh/l0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1}, Loh/l0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/g0;

    invoke-direct {v1, v0}, Loh/g0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lhi/b;
    .locals 1

    iget-object v0, p0, Luh/r;->c:Lhi/b;

    return-object v0
.end method

.method public v()Loh/x;
    .locals 1

    iget-object v0, p0, Luh/r;->b:Loh/x;

    return-object v0
.end method

.method public x()Loh/y;
    .locals 1

    iget-object v0, p0, Luh/r;->d:Loh/y;

    return-object v0
.end method

.class public Luh/t;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/s;

.field public c:Luh/r;

.field public d:Loh/G;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v1

    iput-object v1, p0, Luh/t;->b:Loh/s;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Luh/r;->y(Ljava/lang/Object;)Luh/r;

    move-result-object v1

    iput-object v1, p0, Luh/t;->c:Luh/r;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/M;

    invoke-static {p1, v0}, Loh/G;->G(Loh/M;Z)Loh/G;

    move-result-object p1

    iput-object p1, p0, Luh/t;->d:Loh/G;

    :cond_0
    return-void
.end method

.method public constructor <init>(Luh/r;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Luh/t;-><init>(Luh/r;Loh/G;)V

    return-void
.end method

.method public constructor <init>(Luh/r;Loh/G;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/s;

    if-nez p2, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x2

    :goto_0
    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, Luh/t;->b:Loh/s;

    iput-object p1, p0, Luh/t;->c:Luh/r;

    iput-object p2, p0, Luh/t;->d:Loh/G;

    return-void
.end method

.method public static v(Ljava/lang/Object;)Luh/t;
    .locals 1

    instance-of v0, p0, Luh/t;

    if-eqz v0, :cond_0

    check-cast p0, Luh/t;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Luh/t;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Luh/t;-><init>(Loh/E;)V

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

    iget-object v1, p0, Luh/t;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/t;->c:Luh/r;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/t;->d:Loh/G;

    if-eqz v1, :cond_0

    new-instance v2, Loh/l0;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v1}, Loh/l0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/g0;

    invoke-direct {v1, v0}, Loh/g0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Luh/r;
    .locals 1

    iget-object v0, p0, Luh/t;->c:Luh/r;

    return-object v0
.end method

.method public x()Loh/G;
    .locals 1

    iget-object v0, p0, Luh/t;->d:Loh/G;

    return-object v0
.end method

.method public y()Loh/s;
    .locals 1

    iget-object v0, p0, Luh/t;->b:Loh/s;

    return-object v0
.end method

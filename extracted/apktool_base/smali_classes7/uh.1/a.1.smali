.class public Luh/a;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/x;

.field public c:Loh/G;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/x;

    iput-object v0, p0, Luh/a;->b:Loh/x;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/G;

    iput-object p1, p0, Luh/a;->c:Loh/G;

    return-void
.end method

.method public constructor <init>(Loh/x;Loh/G;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Luh/a;->b:Loh/x;

    iput-object p2, p0, Luh/a;->c:Loh/G;

    return-void
.end method

.method public static y(Ljava/lang/Object;)Luh/a;
    .locals 1

    instance-of v0, p0, Luh/a;

    if-eqz v0, :cond_0

    check-cast p0, Luh/a;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Luh/a;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Luh/a;-><init>(Loh/E;)V

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

    iget-object v1, p0, Luh/a;->b:Loh/x;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/a;->c:Loh/G;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/x;
    .locals 1

    iget-object v0, p0, Luh/a;->b:Loh/x;

    return-object v0
.end method

.method public v()Loh/G;
    .locals 1

    iget-object v0, p0, Luh/a;->c:Loh/G;

    return-object v0
.end method

.method public x()[Loh/g;
    .locals 1

    iget-object v0, p0, Luh/a;->c:Loh/G;

    invoke-virtual {v0}, Loh/G;->N()[Loh/g;

    move-result-object v0

    return-object v0
.end method

.class public Luh/O;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Luh/D;

.field public c:Loh/y;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Luh/D;->u(Ljava/lang/Object;)Luh/D;

    move-result-object v0

    iput-object v0, p0, Luh/O;->b:Luh/D;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/y;

    iput-object p1, p0, Luh/O;->c:Loh/y;

    return-void
.end method

.method public constructor <init>(Luh/D;Loh/y;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Luh/O;->b:Luh/D;

    iput-object p2, p0, Luh/O;->c:Loh/y;

    return-void
.end method

.method public static w(Ljava/lang/Object;)Luh/O;
    .locals 1

    instance-of v0, p0, Luh/O;

    if-eqz v0, :cond_0

    check-cast p0, Luh/O;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Luh/O;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Luh/O;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x(Loh/M;Z)Luh/O;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Luh/O;->w(Ljava/lang/Object;)Luh/O;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Luh/O;->b:Luh/D;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/O;->c:Loh/y;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/y;
    .locals 1

    iget-object v0, p0, Luh/O;->c:Loh/y;

    return-object v0
.end method

.method public v()Luh/D;
    .locals 1

    iget-object v0, p0, Luh/O;->b:Luh/D;

    return-object v0
.end method

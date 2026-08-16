.class public Luh/M;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/x;

.field public c:Loh/g;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object v0

    iput-object v0, p0, Luh/M;->b:Loh/x;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    iput-object p1, p0, Luh/M;->c:Loh/g;

    return-void
.end method

.method public constructor <init>(Loh/x;Loh/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Luh/M;->b:Loh/x;

    iput-object p2, p0, Luh/M;->c:Loh/g;

    return-void
.end method

.method public static w(Ljava/lang/Object;)Luh/M;
    .locals 1

    instance-of v0, p0, Luh/M;

    if-eqz v0, :cond_0

    check-cast p0, Luh/M;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Luh/M;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Luh/M;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x(Loh/M;Z)Luh/M;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Luh/M;->w(Ljava/lang/Object;)Luh/M;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Luh/M;->b:Loh/x;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/M;->c:Loh/g;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/g;
    .locals 1

    iget-object v0, p0, Luh/M;->c:Loh/g;

    return-object v0
.end method

.method public v()Loh/x;
    .locals 1

    iget-object v0, p0, Luh/M;->b:Loh/x;

    return-object v0
.end method

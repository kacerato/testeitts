.class public Luh/m;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/s;

.field public c:Lhi/b;

.field public d:Luh/o;


# direct methods
.method public constructor <init>(Lhi/b;Luh/o;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, Luh/m;->b:Loh/s;

    iput-object p1, p0, Luh/m;->c:Lhi/b;

    iput-object p2, p0, Luh/m;->d:Luh/o;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/s;

    iput-object v0, p0, Luh/m;->b:Loh/s;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Luh/m;->c:Lhi/b;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Luh/o;->w(Ljava/lang/Object;)Luh/o;

    move-result-object p1

    iput-object p1, p0, Luh/m;->d:Luh/o;

    return-void
.end method

.method public static w(Ljava/lang/Object;)Luh/m;
    .locals 1

    instance-of v0, p0, Luh/m;

    if-eqz v0, :cond_0

    check-cast p0, Luh/m;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Luh/m;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Luh/m;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x(Loh/M;Z)Luh/m;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Luh/m;->w(Ljava/lang/Object;)Luh/m;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Luh/m;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/m;->c:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/m;->d:Luh/o;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/g0;

    invoke-direct {v1, v0}, Loh/g0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lhi/b;
    .locals 1

    iget-object v0, p0, Luh/m;->c:Lhi/b;

    return-object v0
.end method

.method public v()Luh/o;
    .locals 1

    iget-object v0, p0, Luh/m;->d:Luh/o;

    return-object v0
.end method

.method public y()Loh/s;
    .locals 1

    iget-object v0, p0, Luh/m;->b:Loh/s;

    return-object v0
.end method

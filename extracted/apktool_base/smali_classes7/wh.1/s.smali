.class public Lwh/s;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Lwh/t;

.field public c:Lhi/b;

.field public d:Loh/c;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    instance-of v1, v1, Loh/M;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    check-cast v1, Loh/M;

    const/16 v2, 0x10

    invoke-static {v1, v0, v0, v2}, Loh/V;->j(Loh/M;IZI)Loh/B;

    move-result-object v0

    invoke-static {v0}, Lwh/t;->u(Ljava/lang/Object;)Lwh/t;

    move-result-object v0

    iput-object v0, p0, Lwh/s;->b:Lwh/t;

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Lwh/s;->c:Lhi/b;

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object p1

    iput-object p1, p0, Lwh/s;->d:Loh/c;

    return-void
.end method

.method public constructor <init>(Lwh/t;Lhi/b;Loh/c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lwh/s;->b:Lwh/t;

    iput-object p2, p0, Lwh/s;->c:Lhi/b;

    iput-object p3, p0, Lwh/s;->d:Loh/c;

    return-void
.end method

.method public static v(Ljava/lang/Object;)Lwh/s;
    .locals 1

    instance-of v0, p0, Lwh/s;

    if-eqz v0, :cond_0

    check-cast p0, Lwh/s;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lwh/s;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lwh/s;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static w(Loh/M;Z)Lwh/s;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lwh/s;->v(Ljava/lang/Object;)Lwh/s;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lwh/s;->b:Lwh/t;

    if-eqz v1, :cond_0

    new-instance v2, Loh/K0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lwh/s;->c:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lwh/s;->d:Loh/c;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lhi/b;
    .locals 1

    iget-object v0, p0, Lwh/s;->c:Lhi/b;

    return-object v0
.end method

.method public x()Lwh/t;
    .locals 1

    iget-object v0, p0, Lwh/s;->b:Lwh/t;

    return-object v0
.end method

.method public y()Loh/c;
    .locals 1

    iget-object v0, p0, Lwh/s;->d:Loh/c;

    return-object v0
.end method

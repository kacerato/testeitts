.class public Lth/U;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Loh/E;

.field public c:Loh/E;

.field public d:Loh/E;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 3

    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v0

    iput-object v0, p0, Lth/U;->b:Loh/E;

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Loh/M;->p(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-static {v0, v2}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object v0

    iput-object v0, p0, Lth/U;->c:Loh/E;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Loh/M;->p(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, v2}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object v0

    iput-object v0, p0, Lth/U;->d:Loh/E;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private u(Loh/h;ILoh/g;)V
    .locals 2

    if-eqz p3, :cond_0

    new-instance v0, Loh/K0;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p3}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {p1, v0}, Loh/h;->a(Loh/g;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Object;)Lth/U;
    .locals 1

    instance-of v0, p0, Lth/U;

    if-eqz v0, :cond_0

    check-cast p0, Lth/U;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lth/U;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lth/U;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 3

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lth/U;->b:Loh/E;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lth/U;->c:Loh/E;

    invoke-direct {p0, v0, v1, v2}, Lth/U;->u(Loh/h;ILoh/g;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lth/U;->d:Loh/E;

    invoke-direct {p0, v0, v1, v2}, Lth/U;->u(Loh/h;ILoh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()[Lhi/r;
    .locals 4

    iget-object v0, p0, Lth/U;->d:Loh/E;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    new-array v1, v0, [Lhi/r;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_1

    iget-object v3, p0, Lth/U;->d:Loh/E;

    invoke-virtual {v3, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lhi/r;->u(Ljava/lang/Object;)Lhi/r;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public x()[Lwh/c;
    .locals 4

    iget-object v0, p0, Lth/U;->c:Loh/E;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    new-array v1, v0, [Lwh/c;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_1

    iget-object v3, p0, Lth/U;->c:Loh/E;

    invoke-virtual {v3, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lwh/c;->u(Ljava/lang/Object;)Lwh/c;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public y()[Lth/L;
    .locals 4

    iget-object v0, p0, Lth/U;->b:Loh/E;

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    new-array v1, v0, [Lth/L;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    iget-object v3, p0, Lth/U;->b:Loh/E;

    invoke-virtual {v3, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lth/L;->v(Ljava/lang/Object;)Lth/L;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

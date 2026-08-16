.class public Lwh/e;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Lwh/f;

.field public c:Lwh/u;

.field public d:Loh/E;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lwh/f;->y(Ljava/lang/Object;)Lwh/f;

    move-result-object v0

    iput-object v0, p0, Lwh/e;->b:Lwh/f;

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Loh/M;

    if-nez v1, :cond_1

    instance-of v1, v0, Lwh/u;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v0

    iput-object v0, p0, Lwh/e;->d:Loh/E;

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {v0}, Lwh/u;->u(Ljava/lang/Object;)Lwh/u;

    move-result-object v0

    iput-object v0, p0, Lwh/e;->c:Lwh/u;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>(Lwh/f;Lwh/u;[Lwh/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lwh/e;->b:Lwh/f;

    iput-object p2, p0, Lwh/e;->c:Lwh/u;

    if-eqz p3, :cond_0

    new-instance p1, Loh/G0;

    invoke-direct {p1, p3}, Loh/G0;-><init>([Loh/g;)V

    iput-object p1, p0, Lwh/e;->d:Loh/E;

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'certReq\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private u(Loh/h;Loh/g;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Loh/h;->a(Loh/g;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Object;)Lwh/e;
    .locals 1

    instance-of v0, p0, Lwh/e;

    if-eqz v0, :cond_0

    check-cast p0, Lwh/e;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lwh/e;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lwh/e;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x(Loh/M;Z)Lwh/e;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lwh/e;->w(Ljava/lang/Object;)Lwh/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()[Lwh/a;
    .locals 4

    iget-object v0, p0, Lwh/e;->d:Loh/E;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    new-array v1, v0, [Lwh/a;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_1

    iget-object v3, p0, Lwh/e;->d:Loh/E;

    invoke-virtual {v3, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lwh/a;->u(Ljava/lang/Object;)Lwh/a;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lwh/e;->b:Lwh/f;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lwh/e;->c:Lwh/u;

    invoke-direct {p0, v0, v1}, Lwh/e;->u(Loh/h;Loh/g;)V

    iget-object v1, p0, Lwh/e;->d:Loh/E;

    invoke-direct {p0, v0, v1}, Lwh/e;->u(Loh/h;Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Lwh/f;
    .locals 1

    iget-object v0, p0, Lwh/e;->b:Lwh/f;

    return-object v0
.end method

.method public y()Lwh/u;
    .locals 1

    iget-object v0, p0, Lwh/e;->c:Lwh/u;

    return-object v0
.end method

.method public z()Lwh/u;
    .locals 1

    iget-object v0, p0, Lwh/e;->c:Lwh/u;

    return-object v0
.end method

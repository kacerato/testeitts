.class public Lyh/g;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/x;

.field public c:Loh/x;

.field public d:Loh/x;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object v0

    iput-object v0, p0, Lyh/g;->b:Loh/x;

    sget-object v1, LCj/a;->o:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-le v0, v1, :cond_3

    :goto_0
    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object v0

    iput-object v0, p0, Lyh/g;->c:Loh/x;

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lyh/g;->b:Loh/x;

    sget-object v2, LCj/a;->p:Loh/x;

    invoke-virtual {v0, v2}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lyh/g;->b:Loh/x;

    sget-object v2, LCj/a;->q:Loh/x;

    invoke-virtual {v0, v2}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lyh/g;->b:Loh/x;

    sget-object v2, LCj/a;->r:Loh/x;

    invoke-virtual {v0, v2}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-le v0, v1, :cond_3

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-gt v0, v1, :cond_5

    :cond_3
    :goto_2
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_4

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/x;

    iput-object p1, p0, Lyh/g;->d:Loh/x;

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "digestParamSet expected to be absent"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Loh/x;Loh/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lyh/g;->b:Loh/x;

    iput-object p2, p0, Lyh/g;->c:Loh/x;

    const/4 p1, 0x0

    iput-object p1, p0, Lyh/g;->d:Loh/x;

    return-void
.end method

.method public constructor <init>(Loh/x;Loh/x;Loh/x;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lyh/g;->b:Loh/x;

    iput-object p2, p0, Lyh/g;->c:Loh/x;

    iput-object p3, p0, Lyh/g;->d:Loh/x;

    return-void
.end method

.method public static w(Ljava/lang/Object;)Lyh/g;
    .locals 1

    instance-of v0, p0, Lyh/g;

    if-eqz v0, :cond_0

    check-cast p0, Lyh/g;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lyh/g;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lyh/g;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x(Loh/M;Z)Lyh/g;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lyh/g;->w(Ljava/lang/Object;)Lyh/g;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lyh/g;->b:Loh/x;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lyh/g;->c:Loh/x;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lyh/g;->d:Loh/x;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/x;
    .locals 1

    iget-object v0, p0, Lyh/g;->c:Loh/x;

    return-object v0
.end method

.method public v()Loh/x;
    .locals 1

    iget-object v0, p0, Lyh/g;->d:Loh/x;

    return-object v0
.end method

.method public y()Loh/x;
    .locals 1

    iget-object v0, p0, Lyh/g;->b:Loh/x;

    return-object v0
.end method

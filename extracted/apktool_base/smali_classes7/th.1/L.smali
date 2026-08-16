.class public Lth/L;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/s;

.field public c:Lth/F;

.field public d:Loh/c;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    iput-object v0, p0, Lth/L;->b:Loh/s;

    const/4 v0, 0x0

    iput-object v0, p0, Lth/L;->c:Lth/F;

    iput-object v0, p0, Lth/L;->d:Loh/c;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lth/F;->u(Ljava/lang/Object;)Lth/F;

    move-result-object v0

    iput-object v0, p0, Lth/L;->c:Lth/F;

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object p1

    iput-object p1, p0, Lth/L;->d:Loh/c;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    instance-of v0, p1, Loh/c;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lth/F;->u(Ljava/lang/Object;)Lth/F;

    move-result-object p1

    iput-object p1, p0, Lth/L;->c:Lth/F;

    :cond_2
    :goto_1
    return-void
.end method

.method public constructor <init>(Lth/K;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Lth/K;->r()Loh/B;

    move-result-object p1

    invoke-static {p1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p1

    iput-object p1, p0, Lth/L;->b:Loh/s;

    return-void
.end method

.method public constructor <init>(Lth/K;Lth/F;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Lth/K;->r()Loh/B;

    move-result-object p1

    invoke-static {p1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p1

    iput-object p1, p0, Lth/L;->b:Loh/s;

    iput-object p2, p0, Lth/L;->c:Lth/F;

    return-void
.end method

.method public constructor <init>(Lth/K;Lth/F;Lth/E;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Lth/K;->r()Loh/B;

    move-result-object p1

    invoke-static {p1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p1

    iput-object p1, p0, Lth/L;->b:Loh/s;

    iput-object p2, p0, Lth/L;->c:Lth/F;

    iput-object p3, p0, Lth/L;->d:Loh/c;

    return-void
.end method

.method public static v(Ljava/lang/Object;)Lth/L;
    .locals 1

    instance-of v0, p0, Lth/L;

    if-eqz v0, :cond_0

    check-cast p0, Lth/L;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lth/L;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lth/L;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static w(Loh/M;Z)Lth/L;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lth/L;->v(Ljava/lang/Object;)Lth/L;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lth/L;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lth/L;->c:Lth/F;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lth/L;->d:Loh/c;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/c;
    .locals 1

    iget-object v0, p0, Lth/L;->d:Loh/c;

    return-object v0
.end method

.method public x()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lth/L;->b:Loh/s;

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public y()Lth/F;
    .locals 1

    iget-object v0, p0, Lth/L;->c:Lth/F;

    return-object v0
.end method

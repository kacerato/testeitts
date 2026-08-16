.class public Lwh/f;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/s;

.field public c:Lwh/g;

.field public d:Lwh/i;


# direct methods
.method public constructor <init>(ILwh/g;Lwh/i;)V
    .locals 3

    .line 1
    new-instance v0, Loh/s;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    invoke-direct {p0, v0, p2, p3}, Lwh/f;-><init>(Loh/s;Lwh/g;Lwh/i;)V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/s;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v1

    invoke-virtual {v1}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lwh/f;->b:Loh/s;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lwh/g;->v(Ljava/lang/Object;)Lwh/g;

    move-result-object v0

    iput-object v0, p0, Lwh/f;->c:Lwh/g;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Lwh/i;->u(Ljava/lang/Object;)Lwh/i;

    move-result-object p1

    iput-object p1, p0, Lwh/f;->d:Lwh/i;

    :cond_0
    return-void
.end method

.method public constructor <init>(Loh/s;Lwh/g;Lwh/i;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lwh/f;->b:Loh/s;

    iput-object p2, p0, Lwh/f;->c:Lwh/g;

    iput-object p3, p0, Lwh/f;->d:Lwh/i;

    return-void
.end method

.method public static y(Ljava/lang/Object;)Lwh/f;
    .locals 1

    instance-of v0, p0, Lwh/f;

    if-eqz v0, :cond_0

    check-cast p0, Lwh/f;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lwh/f;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lwh/f;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lwh/f;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lwh/f;->c:Lwh/g;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lwh/f;->d:Lwh/i;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/s;
    .locals 1

    iget-object v0, p0, Lwh/f;->b:Loh/s;

    return-object v0
.end method

.method public v()Lwh/g;
    .locals 1

    iget-object v0, p0, Lwh/f;->c:Lwh/g;

    return-object v0
.end method

.method public x()Lwh/i;
    .locals 1

    iget-object v0, p0, Lwh/f;->d:Lwh/i;

    return-object v0
.end method

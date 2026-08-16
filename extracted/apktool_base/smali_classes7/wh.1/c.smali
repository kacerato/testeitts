.class public Lwh/c;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Lhi/E;

.field public c:Loh/s;


# direct methods
.method public constructor <init>(Lhi/E;Ljava/math/BigInteger;)V
    .locals 1

    .line 1
    new-instance v0, Loh/s;

    invoke-direct {v0, p2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {p0, p1, v0}, Lwh/c;-><init>(Lhi/E;Loh/s;)V

    return-void
.end method

.method public constructor <init>(Lhi/E;Loh/s;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lwh/c;->b:Lhi/E;

    iput-object p2, p0, Lwh/c;->c:Loh/s;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/E;->v(Ljava/lang/Object;)Lhi/E;

    move-result-object v0

    iput-object v0, p0, Lwh/c;->b:Lhi/E;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p1

    iput-object p1, p0, Lwh/c;->c:Loh/s;

    return-void
.end method

.method public static u(Ljava/lang/Object;)Lwh/c;
    .locals 1

    instance-of v0, p0, Lwh/c;

    if-eqz v0, :cond_0

    check-cast p0, Lwh/c;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lwh/c;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lwh/c;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static v(Loh/M;Z)Lwh/c;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lwh/c;->u(Ljava/lang/Object;)Lwh/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lwh/c;->b:Lhi/E;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lwh/c;->c:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public x()Lhi/E;
    .locals 1

    iget-object v0, p0, Lwh/c;->b:Lhi/E;

    return-object v0
.end method

.method public y()Loh/s;
    .locals 1

    iget-object v0, p0, Lwh/c;->c:Loh/s;

    return-object v0
.end method

.class public Lth/Q;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Lth/G;

.field public final c:Lth/C;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lth/G;->y(Ljava/lang/Object;)Lth/G;

    move-result-object v0

    iput-object v0, p0, Lth/Q;->b:Lth/G;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Lth/C;->w(Ljava/lang/Object;)Lth/C;

    move-result-object p1

    iput-object p1, p0, Lth/Q;->c:Lth/C;

    return-void
.end method

.method public constructor <init>(Lth/G;Lth/C;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lth/Q;->b:Lth/G;

    iput-object p2, p0, Lth/Q;->c:Lth/C;

    return-void
.end method

.method public static w(Ljava/lang/Object;)Lth/Q;
    .locals 1

    instance-of v0, p0, Lth/Q;

    if-eqz v0, :cond_0

    check-cast p0, Lth/Q;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lth/Q;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lth/Q;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lth/Q;->b:Lth/G;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lth/Q;->c:Lth/C;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lth/C;
    .locals 1

    iget-object v0, p0, Lth/Q;->c:Lth/C;

    return-object v0
.end method

.method public v()Lth/G;
    .locals 1

    iget-object v0, p0, Lth/Q;->b:Lth/G;

    return-object v0
.end method

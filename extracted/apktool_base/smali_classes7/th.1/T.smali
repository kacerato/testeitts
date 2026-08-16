.class public Lth/T;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Lwh/g;

.field public c:Lhi/C;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lwh/g;->v(Ljava/lang/Object;)Lwh/g;

    move-result-object v0

    iput-object v0, p0, Lth/T;->b:Lwh/g;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Lhi/C;->C(Ljava/lang/Object;)Lhi/C;

    move-result-object p1

    iput-object p1, p0, Lth/T;->c:Lhi/C;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lwh/g;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lth/T;->b:Lwh/g;

    return-void
.end method

.method public constructor <init>(Lwh/g;Lhi/C;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lth/T;->b:Lwh/g;

    iput-object p2, p0, Lth/T;->c:Lhi/C;

    return-void
.end method

.method public constructor <init>(Lwh/g;Lhi/z0;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lth/T;->b:Lwh/g;

    invoke-virtual {p2}, Lhi/z0;->r()Loh/B;

    move-result-object p1

    invoke-static {p1}, Lhi/C;->C(Ljava/lang/Object;)Lhi/C;

    move-result-object p1

    iput-object p1, p0, Lth/T;->c:Lhi/C;

    return-void
.end method

.method public static w(Ljava/lang/Object;)Lth/T;
    .locals 1

    instance-of v0, p0, Lth/T;

    if-eqz v0, :cond_0

    check-cast p0, Lth/T;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lth/T;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lth/T;-><init>(Loh/E;)V

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

    iget-object v1, p0, Lth/T;->b:Lwh/g;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lth/T;->c:Lhi/C;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lwh/g;
    .locals 1

    iget-object v0, p0, Lth/T;->b:Lwh/g;

    return-object v0
.end method

.method public v()Lhi/C;
    .locals 1

    iget-object v0, p0, Lth/T;->c:Lhi/C;

    return-object v0
.end method

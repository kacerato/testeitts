.class public Luh/U;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Luh/o;

.field public final c:Luh/o;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    instance-of v1, v1, Loh/M;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Luh/o;->x(Loh/M;Z)Luh/o;

    move-result-object v0

    iput-object v0, p0, Luh/U;->b:Luh/o;

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Luh/o;->w(Ljava/lang/Object;)Luh/o;

    move-result-object p1

    iput-object p1, p0, Luh/U;->c:Luh/o;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Luh/U;->b:Luh/o;

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Luh/o;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Luh/U;->b:Luh/o;

    iput-object p1, p0, Luh/U;->c:Luh/o;

    return-void
.end method

.method public constructor <init>(Luh/o;Luh/o;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Luh/U;->b:Luh/o;

    iput-object p2, p0, Luh/U;->c:Luh/o;

    return-void
.end method

.method public static u(Ljava/lang/Object;)Luh/U;
    .locals 1

    instance-of v0, p0, Luh/U;

    if-eqz v0, :cond_0

    check-cast p0, Luh/U;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Luh/U;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Luh/U;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Luh/U;->b:Luh/o;

    if-eqz v1, :cond_0

    new-instance v2, Loh/K0;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Luh/U;->c:Luh/o;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Luh/o;
    .locals 1

    iget-object v0, p0, Luh/U;->b:Luh/o;

    return-object v0
.end method

.method public x()Luh/o;
    .locals 1

    iget-object v0, p0, Luh/U;->c:Luh/o;

    return-object v0
.end method

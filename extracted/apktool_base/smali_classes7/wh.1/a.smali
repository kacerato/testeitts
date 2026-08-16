.class public Lwh/a;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/x;

.field public c:Loh/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;Loh/g;)V
    .locals 1

    .line 1
    new-instance v0, Loh/x;

    invoke-direct {v0, p1}, Loh/x;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lwh/a;-><init>(Loh/x;Loh/g;)V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/x;

    iput-object v0, p0, Lwh/a;->b:Loh/x;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    iput-object p1, p0, Lwh/a;->c:Loh/g;

    return-void
.end method

.method public constructor <init>(Loh/x;Loh/g;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lwh/a;->b:Loh/x;

    iput-object p2, p0, Lwh/a;->c:Loh/g;

    return-void
.end method

.method public static u(Ljava/lang/Object;)Lwh/a;
    .locals 1

    instance-of v0, p0, Lwh/a;

    if-eqz v0, :cond_0

    check-cast p0, Lwh/a;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lwh/a;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lwh/a;-><init>(Loh/E;)V

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

    iget-object v1, p0, Lwh/a;->b:Loh/x;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lwh/a;->c:Loh/g;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Loh/x;
    .locals 1

    iget-object v0, p0, Lwh/a;->b:Loh/x;

    return-object v0
.end method

.method public x()Loh/g;
    .locals 1

    iget-object v0, p0, Lwh/a;->c:Loh/g;

    return-object v0
.end method

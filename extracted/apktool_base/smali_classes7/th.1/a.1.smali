.class public Lth/a;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Lth/b;

.field public final c:Lth/b;

.field public final d:Lth/b;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lth/b;->u(Ljava/lang/Object;)Lth/b;

    move-result-object v0

    iput-object v0, p0, Lth/a;->b:Lth/b;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lth/b;->u(Ljava/lang/Object;)Lth/b;

    move-result-object v0

    iput-object v0, p0, Lth/a;->c:Lth/b;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Lth/b;->u(Ljava/lang/Object;)Lth/b;

    move-result-object p1

    iput-object p1, p0, Lth/a;->d:Lth/b;

    return-void
.end method

.method public constructor <init>(Lth/b;Lth/b;Lth/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lth/a;->b:Lth/b;

    iput-object p2, p0, Lth/a;->c:Lth/b;

    iput-object p3, p0, Lth/a;->d:Lth/b;

    return-void
.end method

.method public static u(Ljava/lang/Object;)Lth/a;
    .locals 1

    instance-of v0, p0, Lth/a;

    if-eqz v0, :cond_0

    check-cast p0, Lth/a;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lth/a;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lth/a;-><init>(Loh/E;)V

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

    iget-object v1, p0, Lth/a;->b:Lth/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lth/a;->c:Lth/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lth/a;->d:Lth/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Lth/b;
    .locals 1

    iget-object v0, p0, Lth/a;->d:Lth/b;

    return-object v0
.end method

.method public x()Lth/b;
    .locals 1

    iget-object v0, p0, Lth/a;->c:Lth/b;

    return-object v0
.end method

.method public y()Lth/b;
    .locals 1

    iget-object v0, p0, Lth/a;->b:Lth/b;

    return-object v0
.end method

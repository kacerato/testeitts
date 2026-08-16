.class public Lth/S;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Lth/K;

.field public final c:Lwh/c;

.field public final d:Loh/n;

.field public final e:Loh/n;

.field public f:Lhi/C;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lth/K;->u(Ljava/lang/Object;)Lth/K;

    move-result-object v0

    iput-object v0, p0, Lth/S;->b:Lth/K;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lwh/c;->u(Ljava/lang/Object;)Lwh/c;

    move-result-object v0

    iput-object v0, p0, Lth/S;->c:Lwh/c;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/n;->J(Ljava/lang/Object;)Loh/n;

    move-result-object v0

    iput-object v0, p0, Lth/S;->d:Loh/n;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/n;->J(Ljava/lang/Object;)Loh/n;

    move-result-object v0

    iput-object v0, p0, Lth/S;->e:Loh/n;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Lhi/C;->C(Ljava/lang/Object;)Lhi/C;

    move-result-object p1

    iput-object p1, p0, Lth/S;->f:Lhi/C;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lth/K;Lwh/c;Loh/n;Loh/n;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lth/S;-><init>(Lth/K;Lwh/c;Loh/n;Loh/n;Lhi/C;)V

    return-void
.end method

.method public constructor <init>(Lth/K;Lwh/c;Loh/n;Loh/n;Lhi/C;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lth/S;->b:Lth/K;

    iput-object p2, p0, Lth/S;->c:Lwh/c;

    iput-object p3, p0, Lth/S;->d:Loh/n;

    iput-object p4, p0, Lth/S;->e:Loh/n;

    iput-object p5, p0, Lth/S;->f:Lhi/C;

    return-void
.end method

.method public static y(Ljava/lang/Object;)Lth/S;
    .locals 1

    instance-of v0, p0, Lth/S;

    if-eqz v0, :cond_0

    check-cast p0, Lth/S;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lth/S;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lth/S;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()Loh/n;
    .locals 1

    iget-object v0, p0, Lth/S;->d:Loh/n;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lth/S;->b:Lth/K;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lth/S;->c:Lwh/c;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lth/S;->d:Loh/n;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lth/S;->e:Loh/n;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lth/S;->f:Lhi/C;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/n;
    .locals 1

    iget-object v0, p0, Lth/S;->e:Loh/n;

    return-object v0
.end method

.method public v()Lwh/c;
    .locals 1

    iget-object v0, p0, Lth/S;->c:Lwh/c;

    return-object v0
.end method

.method public x()Lhi/C;
    .locals 1

    iget-object v0, p0, Lth/S;->f:Lhi/C;

    return-object v0
.end method

.method public z()Lth/K;
    .locals 1

    iget-object v0, p0, Lth/S;->b:Lth/K;

    return-object v0
.end method

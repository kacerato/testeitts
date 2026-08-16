.class public Lth/B;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Loh/y;

.field public final c:Lhi/b;

.field public final d:Loh/s;

.field public final e:Lhi/b;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    iput-object v0, p0, Lth/B;->b:Loh/y;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Lth/B;->c:Lhi/b;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    iput-object v0, p0, Lth/B;->d:Loh/s;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object p1

    iput-object p1, p0, Lth/B;->e:Lhi/b;

    return-void
.end method

.method public constructor <init>(Loh/y;Lhi/b;Loh/s;Lhi/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lth/B;->b:Loh/y;

    iput-object p2, p0, Lth/B;->c:Lhi/b;

    iput-object p3, p0, Lth/B;->d:Loh/s;

    iput-object p4, p0, Lth/B;->e:Lhi/b;

    return-void
.end method

.method public constructor <init>([BLhi/b;ILhi/b;)V
    .locals 3

    .line 3
    new-instance v0, Loh/C0;

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    new-instance p1, Loh/s;

    int-to-long v1, p3

    invoke-direct {p1, v1, v2}, Loh/s;-><init>(J)V

    invoke-direct {p0, v0, p2, p1, p4}, Lth/B;-><init>(Loh/y;Lhi/b;Loh/s;Lhi/b;)V

    return-void
.end method

.method public static u(Ljava/lang/Object;)Lth/B;
    .locals 1

    instance-of v0, p0, Lth/B;

    if-eqz v0, :cond_0

    check-cast p0, Lth/B;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lth/B;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lth/B;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lth/B;->b:Loh/y;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lth/B;->c:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lth/B;->d:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lth/B;->e:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Loh/s;
    .locals 1

    iget-object v0, p0, Lth/B;->d:Loh/s;

    return-object v0
.end method

.method public x()Lhi/b;
    .locals 1

    iget-object v0, p0, Lth/B;->e:Lhi/b;

    return-object v0
.end method

.method public y()Lhi/b;
    .locals 1

    iget-object v0, p0, Lth/B;->c:Lhi/b;

    return-object v0
.end method

.method public z()Loh/y;
    .locals 1

    iget-object v0, p0, Lth/B;->b:Loh/y;

    return-object v0
.end method

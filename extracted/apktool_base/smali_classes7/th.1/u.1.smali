.class public Lth/u;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Lhi/b;

.field public final c:Loh/s;

.field public final d:Lhi/b;


# direct methods
.method public constructor <init>(Lhi/b;JLhi/b;)V
    .locals 1

    .line 1
    new-instance v0, Loh/s;

    invoke-direct {v0, p2, p3}, Loh/s;-><init>(J)V

    invoke-direct {p0, p1, v0, p4}, Lth/u;-><init>(Lhi/b;Loh/s;Lhi/b;)V

    return-void
.end method

.method public constructor <init>(Lhi/b;Loh/s;Lhi/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lth/u;->b:Lhi/b;

    iput-object p2, p0, Lth/u;->c:Loh/s;

    iput-object p3, p0, Lth/u;->d:Lhi/b;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Lth/u;->b:Lhi/b;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    iput-object v0, p0, Lth/u;->c:Loh/s;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object p1

    iput-object p1, p0, Lth/u;->d:Lhi/b;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sequence size should 3"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u(Ljava/lang/Object;)Lth/u;
    .locals 1

    instance-of v0, p0, Lth/u;

    if-eqz v0, :cond_0

    check-cast p0, Lth/u;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lth/u;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lth/u;-><init>(Loh/E;)V

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

    iget-object v1, p0, Lth/u;->b:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lth/u;->c:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lth/u;->d:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Lhi/b;
    .locals 1

    iget-object v0, p0, Lth/u;->b:Lhi/b;

    return-object v0
.end method

.method public x()Loh/s;
    .locals 1

    iget-object v0, p0, Lth/u;->c:Loh/s;

    return-object v0
.end method

.method public y()Lhi/b;
    .locals 1

    iget-object v0, p0, Lth/u;->d:Lhi/b;

    return-object v0
.end method

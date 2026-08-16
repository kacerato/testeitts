.class public Luh/E;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/s;

.field public c:Luh/H;

.field public d:Loh/y;

.field public e:Lhi/b;

.field public f:Loh/E;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/s;

    iput-object v0, p0, Luh/E;->b:Loh/s;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    check-cast v1, Loh/M;

    invoke-static {v1, v0}, Luh/H;->w(Loh/M;Z)Luh/H;

    move-result-object v1

    iput-object v1, p0, Luh/E;->c:Luh/H;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    instance-of v2, v2, Loh/M;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    check-cast v1, Loh/M;

    invoke-static {v1, v0}, Loh/y;->G(Loh/M;Z)Loh/y;

    move-result-object v0

    iput-object v0, p0, Luh/E;->d:Loh/y;

    const/4 v1, 0x3

    :cond_0
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v1

    iput-object v1, p0, Luh/E;->e:Lhi/b;

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/E;

    iput-object p1, p0, Luh/E;->f:Loh/E;

    return-void
.end method

.method public constructor <init>(Luh/H;Loh/y;Lhi/b;Loh/E;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, Luh/E;->b:Loh/s;

    iput-object p1, p0, Luh/E;->c:Luh/H;

    iput-object p2, p0, Luh/E;->d:Loh/y;

    iput-object p3, p0, Luh/E;->e:Lhi/b;

    iput-object p4, p0, Luh/E;->f:Loh/E;

    return-void
.end method

.method public static u(Ljava/lang/Object;)Luh/E;
    .locals 1

    instance-of v0, p0, Luh/E;

    if-eqz v0, :cond_0

    check-cast p0, Luh/E;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Luh/E;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Luh/E;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static v(Loh/M;Z)Luh/E;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Luh/E;->u(Ljava/lang/Object;)Luh/E;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Loh/y;
    .locals 1

    iget-object v0, p0, Luh/E;->d:Loh/y;

    return-object v0
.end method

.method public B()Loh/s;
    .locals 1

    iget-object v0, p0, Luh/E;->b:Loh/s;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Luh/E;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/K0;

    const/4 v2, 0x0

    iget-object v3, p0, Luh/E;->c:Luh/H;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/E;->d:Loh/y;

    if-eqz v1, :cond_0

    new-instance v2, Loh/K0;

    invoke-direct {v2, v4, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Luh/E;->e:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/E;->f:Loh/E;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public x()Lhi/b;
    .locals 1

    iget-object v0, p0, Luh/E;->e:Lhi/b;

    return-object v0
.end method

.method public y()Luh/H;
    .locals 1

    iget-object v0, p0, Luh/E;->c:Luh/H;

    return-object v0
.end method

.method public z()Loh/E;
    .locals 1

    iget-object v0, p0, Luh/E;->f:Loh/E;

    return-object v0
.end method

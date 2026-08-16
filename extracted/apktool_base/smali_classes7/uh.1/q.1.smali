.class public Luh/q;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/s;

.field public c:Lhi/b;

.field public d:Luh/o;

.field public e:Loh/y;


# direct methods
.method public constructor <init>(Lhi/b;Luh/o;[B)V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, Luh/q;->b:Loh/s;

    iput-object p1, p0, Luh/q;->c:Lhi/b;

    iput-object p2, p0, Luh/q;->d:Luh/o;

    new-instance p1, Loh/C0;

    invoke-static {p3}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p2

    invoke-direct {p1, p2}, Loh/C0;-><init>([B)V

    iput-object p1, p0, Luh/q;->e:Loh/y;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/s;

    iput-object v0, p0, Luh/q;->b:Loh/s;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Luh/q;->c:Lhi/b;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Luh/o;->w(Ljava/lang/Object;)Luh/o;

    move-result-object v0

    iput-object v0, p0, Luh/q;->d:Luh/o;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    iput-object p1, p0, Luh/q;->e:Loh/y;

    return-void
.end method

.method public static y(Ljava/lang/Object;)Luh/q;
    .locals 1

    instance-of v0, p0, Luh/q;

    if-eqz v0, :cond_0

    check-cast p0, Luh/q;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Luh/q;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Luh/q;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static z(Loh/M;Z)Luh/q;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Luh/q;->y(Ljava/lang/Object;)Luh/q;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Loh/s;
    .locals 1

    iget-object v0, p0, Luh/q;->b:Loh/s;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Luh/q;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/q;->c:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/q;->d:Luh/o;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/q;->e:Loh/y;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/g0;

    invoke-direct {v1, v0}, Loh/g0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()[B
    .locals 1

    iget-object v0, p0, Luh/q;->e:Loh/y;

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public v()Lhi/b;
    .locals 1

    iget-object v0, p0, Luh/q;->c:Lhi/b;

    return-object v0
.end method

.method public x()Luh/o;
    .locals 1

    iget-object v0, p0, Luh/q;->d:Luh/o;

    return-object v0
.end method

.class public Lqh/l;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Lhi/b;

.field public final c:LXh/m;

.field public final d:Loh/y;


# direct methods
.method public constructor <init>(Lhi/b;LXh/m;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lqh/l;->b:Lhi/b;

    iput-object p2, p0, Lqh/l;->c:LXh/m;

    new-instance p1, Loh/C0;

    invoke-static {p3}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p2

    invoke-direct {p1, p2}, Loh/C0;-><init>([B)V

    iput-object p1, p0, Lqh/l;->d:Loh/y;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Lqh/l;->b:Lhi/b;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LXh/m;->v(Ljava/lang/Object;)LXh/m;

    move-result-object v0

    iput-object v0, p0, Lqh/l;->c:LXh/m;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    iput-object p1, p0, Lqh/l;->d:Loh/y;

    return-void
.end method

.method public static u(Ljava/lang/Object;)Lqh/l;
    .locals 1

    instance-of v0, p0, Lqh/l;

    if-eqz v0, :cond_0

    check-cast p0, Lqh/l;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lqh/l;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lqh/l;-><init>(Loh/E;)V

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

    iget-object v1, p0, Lqh/l;->b:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lqh/l;->c:LXh/m;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lqh/l;->d:Loh/y;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()[B
    .locals 1

    iget-object v0, p0, Lqh/l;->d:Loh/y;

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public x()Lhi/b;
    .locals 1

    iget-object v0, p0, Lqh/l;->b:Lhi/b;

    return-object v0
.end method

.method public y()LXh/m;
    .locals 1

    iget-object v0, p0, Lqh/l;->c:LXh/m;

    return-object v0
.end method

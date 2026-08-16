.class public LVh/a;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:LVh/l;

.field public c:Lhi/b;

.field public d:Loh/r0;

.field public e:Loh/E;


# direct methods
.method public constructor <init>(LVh/l;Lhi/b;Loh/r0;Loh/E;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LVh/a;->b:LVh/l;

    iput-object p2, p0, LVh/a;->c:Lhi/b;

    iput-object p3, p0, LVh/a;->d:Loh/r0;

    iput-object p4, p0, LVh/a;->e:Loh/E;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LVh/l;->u(Ljava/lang/Object;)LVh/l;

    move-result-object v0

    iput-object v0, p0, LVh/a;->b:LVh/l;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v1

    iput-object v1, p0, LVh/a;->c:Lhi/b;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    check-cast v1, Loh/r0;

    iput-object v1, p0, LVh/a;->d:Loh/r0;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/M;

    invoke-static {p1, v0}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p1

    iput-object p1, p0, LVh/a;->e:Loh/E;

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/Object;)LVh/a;
    .locals 1

    instance-of v0, p0, LVh/a;

    if-eqz v0, :cond_0

    check-cast p0, LVh/a;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LVh/a;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LVh/a;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static w(Loh/M;Z)LVh/a;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, LVh/a;->v(Ljava/lang/Object;)LVh/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LVh/a;->b:LVh/l;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LVh/a;->c:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LVh/a;->d:Loh/r0;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LVh/a;->e:Loh/E;

    if-eqz v1, :cond_0

    new-instance v2, Loh/K0;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/E;
    .locals 1

    iget-object v0, p0, LVh/a;->e:Loh/E;

    return-object v0
.end method

.method public x()Loh/r0;
    .locals 1

    iget-object v0, p0, LVh/a;->d:Loh/r0;

    return-object v0
.end method

.method public y()Lhi/b;
    .locals 1

    iget-object v0, p0, LVh/a;->c:Lhi/b;

    return-object v0
.end method

.method public z()LVh/l;
    .locals 1

    iget-object v0, p0, LVh/a;->b:LVh/l;

    return-object v0
.end method

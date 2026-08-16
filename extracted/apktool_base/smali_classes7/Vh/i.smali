.class public LVh/i;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:LVh/b;

.field public c:Lhi/C;


# direct methods
.method public constructor <init>(LVh/b;Lhi/C;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LVh/i;->b:LVh/b;

    iput-object p2, p0, LVh/i;->c:Lhi/C;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LVh/b;->v(Ljava/lang/Object;)LVh/b;

    move-result-object v0

    iput-object v0, p0, LVh/i;->b:LVh/b;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/M;

    invoke-static {p1, v0}, Lhi/C;->D(Loh/M;Z)Lhi/C;

    move-result-object p1

    iput-object p1, p0, LVh/i;->c:Lhi/C;

    :cond_0
    return-void
.end method

.method public static u(Ljava/lang/Object;)LVh/i;
    .locals 1

    instance-of v0, p0, LVh/i;

    if-eqz v0, :cond_0

    check-cast p0, LVh/i;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LVh/i;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LVh/i;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static v(Loh/M;Z)LVh/i;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, LVh/i;->u(Ljava/lang/Object;)LVh/i;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LVh/i;->b:LVh/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LVh/i;->c:Lhi/C;

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

.method public x()LVh/b;
    .locals 1

    iget-object v0, p0, LVh/i;->b:LVh/b;

    return-object v0
.end method

.method public y()Lhi/C;
    .locals 1

    iget-object v0, p0, LVh/i;->c:Lhi/C;

    return-object v0
.end method

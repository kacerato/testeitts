.class public LUk/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ldk/f;

.field public b:Z

.field public c:LQk/I;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldk/d;

    invoke-direct {v0}, Ldk/d;-><init>()V

    iput-object v0, p0, LUk/i;->a:Ldk/f;

    const/4 v0, 0x0

    iput-boolean v0, p0, LUk/i;->b:Z

    sget-object v0, LQk/l;->a:LQk/I;

    iput-object v0, p0, LUk/i;->c:LQk/I;

    return-void
.end method

.method public static synthetic a(LUk/i;)Ldk/f;
    .locals 0

    iget-object p0, p0, LUk/i;->a:Ldk/f;

    return-object p0
.end method

.method public static synthetic b(LUk/i;)Z
    .locals 0

    iget-boolean p0, p0, LUk/i;->b:Z

    return p0
.end method

.method public static synthetic c(LUk/i;)LQk/I;
    .locals 0

    iget-object p0, p0, LUk/i;->c:LQk/I;

    return-object p0
.end method

.method public static synthetic d(LUk/i;Loh/g;)Z
    .locals 0

    invoke-virtual {p0, p1}, LUk/i;->f(Loh/g;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public e([C)LQk/u;
    .locals 1

    new-instance v0, LUk/i$a;

    invoke-direct {v0, p0, p1}, LUk/i$a;-><init>(LUk/i;[C)V

    return-object v0
.end method

.method public final f(Loh/g;)Z
    .locals 2

    invoke-static {p1}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object p1

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object p1

    instance-of v0, p1, Loh/E;

    if-eqz v0, :cond_0

    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    instance-of p1, p1, Loh/s;

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public g(LQk/I;)LUk/i;
    .locals 0

    iput-object p1, p0, LUk/i;->c:LQk/I;

    return-object p0
.end method

.method public h(Ljava/lang/String;)LUk/i;
    .locals 1

    new-instance v0, Ldk/i;

    invoke-direct {v0, p1}, Ldk/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LUk/i;->a:Ldk/f;

    return-object p0
.end method

.method public i(Ljava/security/Provider;)LUk/i;
    .locals 1

    new-instance v0, Ldk/k;

    invoke-direct {v0, p1}, Ldk/k;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, LUk/i;->a:Ldk/f;

    return-object p0
.end method

.method public j(Z)LUk/i;
    .locals 0

    iput-boolean p1, p0, LUk/i;->b:Z

    return-object p0
.end method

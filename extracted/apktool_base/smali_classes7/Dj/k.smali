.class public LDj/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LEk/K$a;

.field public final b:LDj/j;

.field public c:LFk/w0;

.field public d:LFk/w;

.field public e:LFk/h;


# direct methods
.method public constructor <init>(LDj/j;LEk/K$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LFk/w0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LFk/w0;-><init>(I)V

    iput-object v0, p0, LDj/k;->c:LFk/w0;

    new-instance v0, LFk/w;

    new-array v1, v1, [B

    invoke-direct {v0, v1}, LFk/w;-><init>([B)V

    iput-object v0, p0, LDj/k;->d:LFk/w;

    new-instance v0, LFk/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LFk/h;-><init>(I)V

    iput-object v0, p0, LDj/k;->e:LFk/h;

    iput-object p1, p0, LDj/k;->b:LDj/j;

    iput-object p2, p0, LDj/k;->a:LEk/K$a;

    iget-object p1, p0, LDj/k;->d:LFk/w;

    invoke-virtual {p2, p1}, LEk/K$a;->g(LFk/w;)LEk/K$a;

    iget-object p1, p0, LDj/k;->e:LFk/h;

    invoke-virtual {p2, p1}, LEk/K$a;->h(LFk/h;)LEk/K$a;

    return-void
.end method

.method public constructor <init>(LEk/K$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, LDj/k;-><init>(LDj/j;LEk/K$a;)V

    return-void
.end method


# virtual methods
.method public a()LDj/j;
    .locals 1

    iget-object v0, p0, LDj/k;->b:LDj/j;

    return-object v0
.end method

.method public varargs b([LFk/P;)LDj/k;
    .locals 3

    invoke-static {}, LFk/c0;->u()LFk/c0$a;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_0

    aget-object v2, p1, v1

    filled-new-array {v2}, [LFk/P;

    move-result-object v2

    invoke-virtual {v0, v2}, LFk/c0$a;->b([LFk/P;)LFk/c0$a;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, LDj/k;->a:LEk/K$a;

    invoke-virtual {v0}, LFk/c0$a;->a()LFk/c0;

    move-result-object v0

    invoke-virtual {p1, v0}, LEk/K$a;->b(LFk/c0;)LEk/K$a;

    return-object p0
.end method

.method public varargs c([LEk/z;)LDj/k;
    .locals 2

    iget-object v0, p0, LDj/k;->a:LEk/K$a;

    invoke-static {}, LEk/C;->u()LEk/C$a;

    move-result-object v1

    invoke-virtual {v1, p1}, LEk/C$a;->a([LEk/z;)LEk/C$a;

    move-result-object p1

    invoke-virtual {p1}, LEk/C$a;->b()LEk/C;

    move-result-object p1

    invoke-virtual {v0, p1}, LEk/K$a;->e(LEk/C;)LEk/K$a;

    return-object p0
.end method

.method public d([B)LDj/k;
    .locals 1

    new-instance v0, LFk/w;

    invoke-direct {v0, p1}, LFk/w;-><init>([B)V

    iput-object v0, p0, LDj/k;->d:LFk/w;

    iget-object p1, p0, LDj/k;->a:LEk/K$a;

    invoke-virtual {p1, v0}, LEk/K$a;->g(LFk/w;)LEk/K$a;

    return-object p0
.end method

.method public e(I)LDj/k;
    .locals 1

    new-instance v0, LFk/h;

    invoke-direct {v0, p1}, LFk/h;-><init>(I)V

    iput-object v0, p0, LDj/k;->e:LFk/h;

    iget-object p1, p0, LDj/k;->a:LEk/K$a;

    invoke-virtual {p1, v0}, LEk/K$a;->h(LFk/h;)LEk/K$a;

    return-object p0
.end method

.method public f(LDj/p;)LDj/k;
    .locals 1

    iget-object v0, p0, LDj/k;->a:LEk/K$a;

    invoke-virtual {p1}, LDj/p;->c()LFk/A0;

    move-result-object p1

    invoke-virtual {v0, p1}, LEk/K$a;->l(LFk/A0;)LEk/K$a;

    return-object p0
.end method

.method public g(I)LDj/k;
    .locals 1

    new-instance v0, LFk/w0;

    invoke-direct {v0, p1}, LFk/w0;-><init>(I)V

    iput-object v0, p0, LDj/k;->c:LFk/w0;

    return-object p0
.end method

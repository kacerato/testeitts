.class public final Li1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/u;


# instance fields
.field public final a:Li1/k;

.field public final b:Li1/j;

.field public final c:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Li1/K;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Li1/E;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Li1/z;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Li1/p0;

.field public final g:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Li1/I;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Li1/k;Li1/E;Li1/g;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Li1/j;->b:Li1/j;

    iput-object p1, p0, Li1/j;->a:Li1/k;

    invoke-static {p1}, Li1/k;->e(Li1/k;)Li1/p0;

    move-result-object p3

    new-instance v0, Li1/L;

    invoke-direct {v0, p3}, Li1/L;-><init>(Li1/p0;)V

    invoke-static {v0}, Li1/k0;->a(Li1/p0;)Li1/p0;

    move-result-object p3

    iput-object p3, p0, Li1/j;->c:Li1/p0;

    invoke-static {p2}, Li1/m0;->a(Ljava/lang/Object;)Li1/l0;

    move-result-object p2

    iput-object p2, p0, Li1/j;->d:Li1/p0;

    new-instance v0, Li1/j0;

    invoke-direct {v0}, Li1/j0;-><init>()V

    iput-object v0, p0, Li1/j;->e:Li1/p0;

    invoke-static {p1}, Li1/k;->e(Li1/k;)Li1/p0;

    move-result-object v2

    invoke-static {}, Li1/p;->a()Li1/q;

    move-result-object v4

    invoke-static {}, Li1/r;->a()Li1/s;

    move-result-object v5

    invoke-static {p1}, Li1/k;->f(Li1/k;)Li1/p0;

    move-result-object v6

    invoke-static {p1}, Li1/k;->g(Li1/k;)Li1/p0;

    move-result-object v7

    invoke-static {p1}, Li1/k;->h(Li1/k;)Li1/p0;

    move-result-object v9

    new-instance v10, Li1/P;

    move-object v1, v10

    move-object v3, p3

    move-object v8, v0

    invoke-direct/range {v1 .. v9}, Li1/P;-><init>(Li1/p0;Li1/p0;Li1/p0;Li1/p0;Li1/p0;Li1/p0;Li1/p0;Li1/p0;)V

    iput-object v10, p0, Li1/j;->f:Li1/p0;

    invoke-static {}, Li1/p;->a()Li1/q;

    move-result-object v1

    new-instance v7, Li1/J;

    invoke-direct {v7, p3, v1, v10}, Li1/J;-><init>(Li1/p0;Li1/p0;Li1/p0;)V

    iput-object v7, p0, Li1/j;->g:Li1/p0;

    invoke-static {p1}, Li1/k;->e(Li1/k;)Li1/p0;

    move-result-object v2

    invoke-static {p1}, Li1/k;->i(Li1/k;)Li1/p0;

    move-result-object v3

    invoke-static {p1}, Li1/k;->h(Li1/k;)Li1/p0;

    move-result-object v5

    new-instance p1, Li1/A;

    move-object v1, p1

    move-object v4, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Li1/A;-><init>(Li1/p0;Li1/p0;Li1/p0;Li1/p0;Li1/p0;Li1/p0;)V

    invoke-static {p1}, Li1/k0;->a(Li1/p0;)Li1/p0;

    move-result-object p1

    invoke-static {v0, p1}, Li1/j0;->a(Li1/p0;Li1/p0;)V

    return-void
.end method


# virtual methods
.method public final N1()Li1/z;
    .locals 1

    iget-object v0, p0, Li1/j;->e:Li1/p0;

    invoke-interface {v0}, Li1/p0;->O1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li1/z;

    return-object v0
.end method

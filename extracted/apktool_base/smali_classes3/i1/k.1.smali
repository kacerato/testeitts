.class public final Li1/k;
.super Li1/q0;
.source "SourceFile"


# instance fields
.field public final b:Li1/k;

.field public final c:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Li1/n;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Li1/d;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Li1/t;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Li1/C;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Li1/B;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Li1/z0;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Li1/u0;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Li1/l;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Li1/O0;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Li1/K0;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Li1/w0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Landroid/app/Application;Li1/g;)V
    .locals 11

    invoke-direct {p0}, Li1/q0;-><init>()V

    iput-object p0, p0, Li1/k;->b:Li1/k;

    invoke-static {p1}, Li1/m0;->a(Ljava/lang/Object;)Li1/l0;

    move-result-object v1

    iput-object v1, p0, Li1/k;->c:Li1/p0;

    new-instance p1, Li1/o;

    invoke-direct {p1, v1}, Li1/o;-><init>(Li1/p0;)V

    invoke-static {p1}, Li1/k0;->a(Li1/p0;)Li1/p0;

    move-result-object p1

    iput-object p1, p0, Li1/k;->d:Li1/p0;

    invoke-static {}, Li1/e;->a()Li1/f;

    move-result-object p2

    invoke-static {p2}, Li1/k0;->a(Li1/p0;)Li1/p0;

    move-result-object v2

    iput-object v2, p0, Li1/k;->e:Li1/p0;

    new-instance p2, Li1/g;

    invoke-direct {p2, p0}, Li1/g;-><init>(Li1/k;)V

    iput-object p2, p0, Li1/k;->f:Li1/p0;

    new-instance v0, Li1/D;

    invoke-direct {v0, p2}, Li1/D;-><init>(Li1/p0;)V

    invoke-static {v0}, Li1/k0;->a(Li1/p0;)Li1/p0;

    move-result-object p2

    iput-object p2, p0, Li1/k;->g:Li1/p0;

    new-instance v0, Li1/d0;

    invoke-direct {v0, v1}, Li1/d0;-><init>(Li1/p0;)V

    iput-object v0, p0, Li1/k;->h:Li1/p0;

    new-instance v7, Li1/E0;

    invoke-direct {v7, v1, v0, p1}, Li1/E0;-><init>(Li1/p0;Li1/p0;Li1/p0;)V

    iput-object v7, p0, Li1/k;->i:Li1/p0;

    invoke-static {}, Li1/r;->a()Li1/s;

    move-result-object v0

    new-instance v3, Li1/v0;

    invoke-direct {v3, v0}, Li1/v0;-><init>(Li1/p0;)V

    invoke-static {v3}, Li1/k0;->a(Li1/p0;)Li1/p0;

    move-result-object v9

    iput-object v9, p0, Li1/k;->j:Li1/p0;

    invoke-static {}, Li1/r;->a()Li1/s;

    move-result-object v0

    new-instance v3, Li1/m;

    invoke-direct {v3, v1, p1, v0}, Li1/m;-><init>(Li1/p0;Li1/p0;Li1/p0;)V

    iput-object v3, p0, Li1/k;->k:Li1/p0;

    new-instance v8, Li1/c;

    invoke-direct {v8, v9, v3, p1}, Li1/c;-><init>(Li1/p0;Li1/p0;Li1/p0;)V

    iput-object v8, p0, Li1/k;->l:Li1/p0;

    invoke-static {}, Li1/p;->a()Li1/q;

    move-result-object v3

    invoke-static {}, Li1/r;->a()Li1/s;

    move-result-object v4

    new-instance v10, Li1/L0;

    move-object v0, v10

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v9}, Li1/L0;-><init>(Li1/p0;Li1/p0;Li1/p0;Li1/p0;Li1/p0;Li1/p0;Li1/p0;Li1/p0;Li1/p0;)V

    iput-object v10, p0, Li1/k;->m:Li1/p0;

    new-instance v0, Li1/x0;

    invoke-direct {v0, p1, v10, p2}, Li1/x0;-><init>(Li1/p0;Li1/p0;Li1/p0;)V

    invoke-static {v0}, Li1/k0;->a(Li1/p0;)Li1/p0;

    move-result-object p1

    iput-object p1, p0, Li1/k;->n:Li1/p0;

    return-void
.end method

.method public static synthetic d(Li1/k;)Li1/k;
    .locals 0

    iget-object p0, p0, Li1/k;->b:Li1/k;

    return-object p0
.end method

.method public static synthetic e(Li1/k;)Li1/p0;
    .locals 0

    iget-object p0, p0, Li1/k;->c:Li1/p0;

    return-object p0
.end method

.method public static synthetic f(Li1/k;)Li1/p0;
    .locals 0

    iget-object p0, p0, Li1/k;->j:Li1/p0;

    return-object p0
.end method

.method public static synthetic g(Li1/k;)Li1/p0;
    .locals 0

    iget-object p0, p0, Li1/k;->k:Li1/p0;

    return-object p0
.end method

.method public static synthetic h(Li1/k;)Li1/p0;
    .locals 0

    iget-object p0, p0, Li1/k;->d:Li1/p0;

    return-object p0
.end method

.method public static synthetic i(Li1/k;)Li1/p0;
    .locals 0

    iget-object p0, p0, Li1/k;->e:Li1/p0;

    return-object p0
.end method


# virtual methods
.method public final b()Li1/w0;
    .locals 1

    iget-object v0, p0, Li1/k;->n:Li1/p0;

    invoke-interface {v0}, Li1/p0;->O1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li1/w0;

    return-object v0
.end method

.method public final c()Li1/C;
    .locals 1

    iget-object v0, p0, Li1/k;->g:Li1/p0;

    invoke-interface {v0}, Li1/p0;->O1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li1/C;

    return-object v0
.end method

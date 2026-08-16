.class public Lhi/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Loh/K0;

.field public b:Loh/s;

.field public c:Lhi/b;

.field public d:Lfi/d;

.field public e:Lhi/o0;

.field public f:Lhi/o0;

.field public g:Lfi/d;

.field public h:Lhi/h0;

.field public i:Lhi/C;

.field public j:Z

.field public k:Loh/r0;

.field public l:Loh/r0;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Loh/K0;

    new-instance v1, Loh/s;

    const-wide/16 v2, 0x2

    invoke-direct {v1, v2, v3}, Loh/s;-><init>(J)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Loh/K0;-><init>(ZILoh/g;)V

    iput-object v0, p0, Lhi/u0;->a:Loh/K0;

    return-void
.end method


# virtual methods
.method public a()Loh/E;
    .locals 2

    iget-object v0, p0, Lhi/u0;->c:Lhi/b;

    if-nez v0, :cond_2

    iget-object v0, p0, Lhi/u0;->b:Loh/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhi/u0;->d:Lfi/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhi/u0;->e:Lhi/o0;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhi/u0;->f:Lhi/o0;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhi/u0;->g:Lfi/d;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lhi/u0;->j:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lhi/u0;->h:Lhi/h0;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lhi/u0;->c()Loh/E;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not all mandatory fields set in V3 TBScertificate generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "signature field should not be set in PreTBSCertificate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Lhi/j0;
    .locals 2

    iget-object v0, p0, Lhi/u0;->b:Loh/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhi/u0;->c:Lhi/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhi/u0;->d:Lfi/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhi/u0;->e:Lhi/o0;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhi/u0;->f:Lhi/o0;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhi/u0;->g:Lfi/d;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lhi/u0;->j:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lhi/u0;->h:Lhi/h0;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lhi/u0;->c()Loh/E;

    move-result-object v0

    invoke-static {v0}, Lhi/j0;->w(Ljava/lang/Object;)Lhi/j0;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not all mandatory fields set in V3 TBScertificate generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Loh/E;
    .locals 6

    new-instance v0, Loh/h;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lhi/u0;->a:Loh/K0;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/u0;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/u0;->c:Lhi/b;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lhi/u0;->d:Lfi/d;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/h;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Loh/h;-><init>(I)V

    iget-object v3, p0, Lhi/u0;->e:Lhi/o0;

    invoke-virtual {v1, v3}, Loh/h;->a(Loh/g;)V

    iget-object v3, p0, Lhi/u0;->f:Lhi/o0;

    invoke-virtual {v1, v3}, Loh/h;->a(Loh/g;)V

    new-instance v3, Loh/G0;

    invoke-direct {v3, v1}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/u0;->g:Lfi/d;

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    goto :goto_1

    :cond_1
    new-instance v1, Loh/G0;

    invoke-direct {v1}, Loh/G0;-><init>()V

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lhi/u0;->h:Lhi/h0;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/u0;->k:Loh/r0;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    new-instance v5, Loh/K0;

    invoke-direct {v5, v4, v3, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v5}, Loh/h;->a(Loh/g;)V

    :cond_2
    iget-object v1, p0, Lhi/u0;->l:Loh/r0;

    if-eqz v1, :cond_3

    new-instance v5, Loh/K0;

    invoke-direct {v5, v4, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v5}, Loh/h;->a(Loh/g;)V

    :cond_3
    iget-object v1, p0, Lhi/u0;->i:Lhi/C;

    if-eqz v1, :cond_4

    new-instance v2, Loh/K0;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    :cond_4
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public d(Lhi/o0;)V
    .locals 0

    iput-object p1, p0, Lhi/u0;->f:Lhi/o0;

    return-void
.end method

.method public e(Loh/P;)V
    .locals 1

    new-instance v0, Lhi/o0;

    invoke-direct {v0, p1}, Lhi/o0;-><init>(Loh/B;)V

    iput-object v0, p0, Lhi/u0;->f:Lhi/o0;

    return-void
.end method

.method public f(Lhi/C;)V
    .locals 1

    iput-object p1, p0, Lhi/u0;->i:Lhi/C;

    if-eqz p1, :cond_0

    sget-object v0, Lhi/B;->i:Loh/x;

    invoke-virtual {p1, v0}, Lhi/C;->x(Loh/x;)Lhi/B;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lhi/B;->B()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lhi/u0;->j:Z

    :cond_0
    return-void
.end method

.method public g(Lhi/z0;)V
    .locals 0

    invoke-static {p1}, Lhi/C;->C(Ljava/lang/Object;)Lhi/C;

    move-result-object p1

    invoke-virtual {p0, p1}, Lhi/u0;->f(Lhi/C;)V

    return-void
.end method

.method public h(Lfi/d;)V
    .locals 0

    iput-object p1, p0, Lhi/u0;->d:Lfi/d;

    return-void
.end method

.method public i(Lhi/B0;)V
    .locals 0

    invoke-static {p1}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object p1

    iput-object p1, p0, Lhi/u0;->d:Lfi/d;

    return-void
.end method

.method public j(Loh/r0;)V
    .locals 0

    iput-object p1, p0, Lhi/u0;->k:Loh/r0;

    return-void
.end method

.method public k(Loh/s;)V
    .locals 0

    iput-object p1, p0, Lhi/u0;->b:Loh/s;

    return-void
.end method

.method public l(Lhi/b;)V
    .locals 0

    iput-object p1, p0, Lhi/u0;->c:Lhi/b;

    return-void
.end method

.method public m(Lhi/o0;)V
    .locals 0

    iput-object p1, p0, Lhi/u0;->e:Lhi/o0;

    return-void
.end method

.method public n(Loh/P;)V
    .locals 1

    new-instance v0, Lhi/o0;

    invoke-direct {v0, p1}, Lhi/o0;-><init>(Loh/B;)V

    iput-object v0, p0, Lhi/u0;->e:Lhi/o0;

    return-void
.end method

.method public o(Lfi/d;)V
    .locals 0

    iput-object p1, p0, Lhi/u0;->g:Lfi/d;

    return-void
.end method

.method public p(Lhi/B0;)V
    .locals 0

    invoke-virtual {p1}, Lhi/B0;->r()Loh/B;

    move-result-object p1

    invoke-static {p1}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object p1

    iput-object p1, p0, Lhi/u0;->g:Lfi/d;

    return-void
.end method

.method public q(Lhi/h0;)V
    .locals 0

    iput-object p1, p0, Lhi/u0;->h:Lhi/h0;

    return-void
.end method

.method public r(Loh/r0;)V
    .locals 0

    iput-object p1, p0, Lhi/u0;->l:Loh/r0;

    return-void
.end method

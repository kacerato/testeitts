.class public Lth/H;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Loh/s;

.field public final b:Lhi/E;

.field public final c:Lhi/E;

.field public d:Loh/n;

.field public e:Lhi/b;

.field public f:Loh/y;

.field public g:Loh/y;

.field public h:Loh/y;

.field public i:Loh/y;

.field public j:Loh/y;

.field public k:Lth/F;

.field public l:Loh/E;


# direct methods
.method public constructor <init>(ILhi/E;Lhi/E;)V
    .locals 3

    .line 1
    new-instance v0, Loh/s;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    invoke-direct {p0, v0, p2, p3}, Lth/H;-><init>(Loh/s;Lhi/E;Lhi/E;)V

    return-void
.end method

.method public constructor <init>(Loh/s;Lhi/E;Lhi/E;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lth/H;->a:Loh/s;

    iput-object p2, p0, Lth/H;->b:Lhi/E;

    iput-object p3, p0, Lth/H;->c:Lhi/E;

    return-void
.end method

.method public static d(Lth/t;)Loh/E;
    .locals 1

    new-instance v0, Loh/G0;

    invoke-direct {v0, p0}, Loh/G0;-><init>(Loh/g;)V

    return-object v0
.end method

.method public static e([Lth/t;)Loh/E;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Loh/G0;

    invoke-direct {v0, p0}, Loh/G0;-><init>([Loh/g;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a(Loh/h;ILoh/g;)V
    .locals 2

    if-eqz p3, :cond_0

    new-instance v0, Loh/K0;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p3}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {p1, v0}, Loh/h;->a(Loh/g;)V

    :cond_0
    return-void
.end method

.method public b()Lth/G;
    .locals 3

    new-instance v0, Loh/h;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lth/H;->a:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lth/H;->b:Lhi/E;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lth/H;->c:Lhi/E;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lth/H;->d:Loh/n;

    invoke-virtual {p0, v0, v1, v2}, Lth/H;->a(Loh/h;ILoh/g;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lth/H;->e:Lhi/b;

    invoke-virtual {p0, v0, v1, v2}, Lth/H;->a(Loh/h;ILoh/g;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lth/H;->f:Loh/y;

    invoke-virtual {p0, v0, v1, v2}, Lth/H;->a(Loh/h;ILoh/g;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lth/H;->g:Loh/y;

    invoke-virtual {p0, v0, v1, v2}, Lth/H;->a(Loh/h;ILoh/g;)V

    const/4 v1, 0x4

    iget-object v2, p0, Lth/H;->h:Loh/y;

    invoke-virtual {p0, v0, v1, v2}, Lth/H;->a(Loh/h;ILoh/g;)V

    const/4 v1, 0x5

    iget-object v2, p0, Lth/H;->i:Loh/y;

    invoke-virtual {p0, v0, v1, v2}, Lth/H;->a(Loh/h;ILoh/g;)V

    const/4 v1, 0x6

    iget-object v2, p0, Lth/H;->j:Loh/y;

    invoke-virtual {p0, v0, v1, v2}, Lth/H;->a(Loh/h;ILoh/g;)V

    const/4 v1, 0x7

    iget-object v2, p0, Lth/H;->k:Lth/F;

    invoke-virtual {p0, v0, v1, v2}, Lth/H;->a(Loh/h;ILoh/g;)V

    const/16 v1, 0x8

    iget-object v2, p0, Lth/H;->l:Loh/E;

    invoke-virtual {p0, v0, v1, v2}, Lth/H;->a(Loh/h;ILoh/g;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lth/H;->d:Loh/n;

    iput-object v1, p0, Lth/H;->e:Lhi/b;

    iput-object v1, p0, Lth/H;->f:Loh/y;

    iput-object v1, p0, Lth/H;->g:Loh/y;

    iput-object v1, p0, Lth/H;->h:Loh/y;

    iput-object v1, p0, Lth/H;->i:Loh/y;

    iput-object v1, p0, Lth/H;->j:Loh/y;

    iput-object v1, p0, Lth/H;->k:Lth/F;

    iput-object v1, p0, Lth/H;->l:Loh/E;

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    invoke-static {v1}, Lth/G;->y(Ljava/lang/Object;)Lth/G;

    move-result-object v0

    return-object v0
.end method

.method public final c([B)Loh/C0;
    .locals 1

    new-instance v0, Loh/C0;

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    return-object v0
.end method

.method public f(Lth/F;)Lth/H;
    .locals 0

    iput-object p1, p0, Lth/H;->k:Lth/F;

    return-object p0
.end method

.method public g(Loh/E;)Lth/H;
    .locals 0

    iput-object p1, p0, Lth/H;->l:Loh/E;

    return-object p0
.end method

.method public h(Lth/t;)Lth/H;
    .locals 0

    invoke-static {p1}, Lth/H;->d(Lth/t;)Loh/E;

    move-result-object p1

    invoke-virtual {p0, p1}, Lth/H;->g(Loh/E;)Lth/H;

    move-result-object p1

    return-object p1
.end method

.method public i([Lth/t;)Lth/H;
    .locals 0

    invoke-static {p1}, Lth/H;->e([Lth/t;)Loh/E;

    move-result-object p1

    invoke-virtual {p0, p1}, Lth/H;->g(Loh/E;)Lth/H;

    move-result-object p1

    return-object p1
.end method

.method public j(Loh/n;)Lth/H;
    .locals 0

    iput-object p1, p0, Lth/H;->d:Loh/n;

    return-object p0
.end method

.method public k(Lhi/b;)Lth/H;
    .locals 0

    iput-object p1, p0, Lth/H;->e:Lhi/b;

    return-object p0
.end method

.method public l(Loh/y;)Lth/H;
    .locals 0

    iput-object p1, p0, Lth/H;->g:Loh/y;

    return-object p0
.end method

.method public m([B)Lth/H;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lth/H;->c([B)Loh/C0;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lth/H;->l(Loh/y;)Lth/H;

    move-result-object p1

    return-object p1
.end method

.method public n(Loh/y;)Lth/H;
    .locals 0

    iput-object p1, p0, Lth/H;->j:Loh/y;

    return-object p0
.end method

.method public o([B)Lth/H;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lth/H;->c([B)Loh/C0;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lth/H;->n(Loh/y;)Lth/H;

    move-result-object p1

    return-object p1
.end method

.method public p(Loh/y;)Lth/H;
    .locals 0

    iput-object p1, p0, Lth/H;->f:Loh/y;

    return-object p0
.end method

.method public q([B)Lth/H;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lth/H;->c([B)Loh/C0;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lth/H;->p(Loh/y;)Lth/H;

    move-result-object p1

    return-object p1
.end method

.method public r(Loh/y;)Lth/H;
    .locals 0

    iput-object p1, p0, Lth/H;->i:Loh/y;

    return-object p0
.end method

.method public s([B)Lth/H;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lth/H;->c([B)Loh/C0;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lth/H;->r(Loh/y;)Lth/H;

    move-result-object p1

    return-object p1
.end method

.method public t(Loh/y;)Lth/H;
    .locals 0

    iput-object p1, p0, Lth/H;->h:Loh/y;

    return-object p0
.end method

.method public u([B)Lth/H;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lth/H;->c([B)Loh/C0;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lth/H;->t(Loh/y;)Lth/H;

    move-result-object p1

    return-object p1
.end method

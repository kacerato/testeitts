.class public Lxd/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Lxd/c;

.field public final c:Lxd/c;

.field public final d:Lxd/c;

.field public final e:Lxd/c;

.field public f:F

.field public g:F

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lxd/c;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lxd/c;-><init>(FFF)V

    iput-object v0, p0, Lxd/e;->b:Lxd/c;

    .line 3
    new-instance v0, Lxd/c;

    invoke-direct {v0, v1, v1, v1}, Lxd/c;-><init>(FFF)V

    iput-object v0, p0, Lxd/e;->c:Lxd/c;

    .line 4
    new-instance v0, Lxd/c;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2}, Lxd/c;-><init>(FFF)V

    iput-object v0, p0, Lxd/e;->d:Lxd/c;

    .line 5
    new-instance v0, Lxd/c;

    invoke-direct {v0, v2, v2, v2}, Lxd/c;-><init>(FFF)V

    iput-object v0, p0, Lxd/e;->e:Lxd/c;

    .line 6
    iput v2, p0, Lxd/e;->f:F

    .line 7
    iput v1, p0, Lxd/e;->g:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lxd/c;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lxd/c;-><init>(FFF)V

    iput-object v0, p0, Lxd/e;->b:Lxd/c;

    .line 10
    new-instance v0, Lxd/c;

    invoke-direct {v0, v1, v1, v1}, Lxd/c;-><init>(FFF)V

    iput-object v0, p0, Lxd/e;->c:Lxd/c;

    .line 11
    new-instance v0, Lxd/c;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2}, Lxd/c;-><init>(FFF)V

    iput-object v0, p0, Lxd/e;->d:Lxd/c;

    .line 12
    new-instance v0, Lxd/c;

    invoke-direct {v0, v2, v2, v2}, Lxd/c;-><init>(FFF)V

    iput-object v0, p0, Lxd/e;->e:Lxd/c;

    .line 13
    iput v2, p0, Lxd/e;->f:F

    .line 14
    iput v1, p0, Lxd/e;->g:F

    .line 15
    iput-object p1, p0, Lxd/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lxd/e;)V
    .locals 6

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lxd/c;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lxd/c;-><init>(FFF)V

    iput-object v0, p0, Lxd/e;->b:Lxd/c;

    .line 18
    new-instance v2, Lxd/c;

    invoke-direct {v2, v1, v1, v1}, Lxd/c;-><init>(FFF)V

    iput-object v2, p0, Lxd/e;->c:Lxd/c;

    .line 19
    new-instance v3, Lxd/c;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v4}, Lxd/c;-><init>(FFF)V

    iput-object v3, p0, Lxd/e;->d:Lxd/c;

    .line 20
    new-instance v5, Lxd/c;

    invoke-direct {v5, v4, v4, v4}, Lxd/c;-><init>(FFF)V

    iput-object v5, p0, Lxd/e;->e:Lxd/c;

    .line 21
    iput v4, p0, Lxd/e;->f:F

    .line 22
    iput v1, p0, Lxd/e;->g:F

    .line 23
    iget-object v1, p1, Lxd/e;->b:Lxd/c;

    invoke-virtual {v0, v1}, Lxd/c;->b(Lxd/c;)V

    .line 24
    iget-object v0, p1, Lxd/e;->c:Lxd/c;

    invoke-virtual {v2, v0}, Lxd/c;->b(Lxd/c;)V

    .line 25
    iget-object v0, p1, Lxd/e;->d:Lxd/c;

    invoke-virtual {v3, v0}, Lxd/c;->b(Lxd/c;)V

    .line 26
    iget-object v0, p1, Lxd/e;->e:Lxd/c;

    invoke-virtual {v5, v0}, Lxd/c;->b(Lxd/c;)V

    .line 27
    iget v0, p1, Lxd/e;->f:F

    iput v0, p0, Lxd/e;->f:F

    .line 28
    iget v0, p1, Lxd/e;->g:F

    iput v0, p0, Lxd/e;->g:F

    .line 29
    iget-object v0, p1, Lxd/e;->h:Ljava/lang/String;

    iput-object v0, p0, Lxd/e;->h:Ljava/lang/String;

    .line 30
    iget-object v0, p1, Lxd/e;->l:Ljava/lang/String;

    iput-object v0, p0, Lxd/e;->i:Ljava/lang/String;

    .line 31
    iget-object v1, p1, Lxd/e;->j:Ljava/lang/String;

    iput-object v1, p0, Lxd/e;->j:Ljava/lang/String;

    .line 32
    iget-object p1, p1, Lxd/e;->k:Ljava/lang/String;

    iput-object p1, p0, Lxd/e;->k:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lxd/e;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lxd/c;
    .locals 1

    iget-object v0, p0, Lxd/e;->b:Lxd/c;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lxd/e;->h:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lxd/c;
    .locals 1

    iget-object v0, p0, Lxd/e;->c:Lxd/c;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lxd/e;->i:Ljava/lang/String;

    return-object v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lxd/e;->g:F

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lxd/e;->l:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lxd/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lxd/c;
    .locals 1

    iget-object v0, p0, Lxd/e;->d:Lxd/c;

    return-object v0
.end method

.method public i()F
    .locals 1

    iget v0, p0, Lxd/e;->f:F

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lxd/e;->k:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lxd/e;->j:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lxd/c;
    .locals 1

    iget-object v0, p0, Lxd/e;->e:Lxd/c;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lxd/e;->h:Ljava/lang/String;

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lxd/e;->i:Ljava/lang/String;

    return-void
.end method

.method public o(F)V
    .locals 0

    iput p1, p0, Lxd/e;->g:F

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lxd/e;->l:Ljava/lang/String;

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lxd/e;->a:Ljava/lang/String;

    return-void
.end method

.method public r(F)V
    .locals 0

    iput p1, p0, Lxd/e;->f:F

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lxd/e;->k:Ljava/lang/String;

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lxd/e;->j:Ljava/lang/String;

    return-void
.end method

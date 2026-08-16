.class public LEk/K$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LEk/K;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LEk/d;

.field public b:LFk/w;

.field public c:LFk/h;

.field public d:LFk/A0;

.field public e:LFk/r;

.field public f:LFk/l0;

.field public g:LFk/c0;

.field public h:LEk/C;

.field public i:LEk/C;

.field public j:Loh/t;

.field public k:LFk/S;

.field public l:LEk/M;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LEk/K$a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, LEk/K$a;->a:LEk/d;

    iput-object v0, p0, LEk/K$a;->a:LEk/d;

    iget-object v0, p1, LEk/K$a;->b:LFk/w;

    iput-object v0, p0, LEk/K$a;->b:LFk/w;

    iget-object v0, p1, LEk/K$a;->c:LFk/h;

    iput-object v0, p0, LEk/K$a;->c:LFk/h;

    iget-object v0, p1, LEk/K$a;->d:LFk/A0;

    iput-object v0, p0, LEk/K$a;->d:LFk/A0;

    iget-object v0, p1, LEk/K$a;->e:LFk/r;

    iput-object v0, p0, LEk/K$a;->e:LFk/r;

    iget-object v0, p1, LEk/K$a;->f:LFk/l0;

    iput-object v0, p0, LEk/K$a;->f:LFk/l0;

    iget-object v0, p1, LEk/K$a;->g:LFk/c0;

    iput-object v0, p0, LEk/K$a;->g:LFk/c0;

    iget-object v0, p1, LEk/K$a;->h:LEk/C;

    iput-object v0, p0, LEk/K$a;->h:LEk/C;

    iget-object v0, p1, LEk/K$a;->i:LEk/C;

    iput-object v0, p0, LEk/K$a;->i:LEk/C;

    iget-object v0, p1, LEk/K$a;->j:Loh/t;

    iput-object v0, p0, LEk/K$a;->j:Loh/t;

    iget-object v0, p1, LEk/K$a;->k:LFk/S;

    iput-object v0, p0, LEk/K$a;->k:LFk/S;

    iget-object p1, p1, LEk/K$a;->l:LEk/M;

    iput-object p1, p0, LEk/K$a;->l:LEk/M;

    return-void
.end method

.method public constructor <init>(LEk/K;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LEk/K;->u(LEk/K;)LEk/d;

    move-result-object v0

    iput-object v0, p0, LEk/K$a;->a:LEk/d;

    invoke-static {p1}, LEk/K;->v(LEk/K;)LFk/w;

    move-result-object v0

    iput-object v0, p0, LEk/K$a;->b:LFk/w;

    invoke-static {p1}, LEk/K;->y(LEk/K;)LFk/h;

    move-result-object v0

    iput-object v0, p0, LEk/K$a;->c:LFk/h;

    invoke-static {p1}, LEk/K;->z(LEk/K;)LFk/A0;

    move-result-object v0

    iput-object v0, p0, LEk/K$a;->d:LFk/A0;

    invoke-static {p1}, LEk/K;->A(LEk/K;)LFk/r;

    move-result-object v0

    iput-object v0, p0, LEk/K$a;->e:LFk/r;

    invoke-static {p1}, LEk/K;->B(LEk/K;)LFk/l0;

    move-result-object v0

    iput-object v0, p0, LEk/K$a;->f:LFk/l0;

    invoke-static {p1}, LEk/K;->C(LEk/K;)LFk/c0;

    move-result-object v0

    iput-object v0, p0, LEk/K$a;->g:LFk/c0;

    invoke-static {p1}, LEk/K;->D(LEk/K;)LEk/C;

    move-result-object v0

    iput-object v0, p0, LEk/K$a;->h:LEk/C;

    invoke-static {p1}, LEk/K;->E(LEk/K;)LEk/C;

    move-result-object v0

    iput-object v0, p0, LEk/K$a;->i:LEk/C;

    invoke-static {p1}, LEk/K;->F(LEk/K;)Loh/t;

    move-result-object v0

    iput-object v0, p0, LEk/K$a;->j:Loh/t;

    invoke-static {p1}, LEk/K;->w(LEk/K;)LFk/S;

    move-result-object v0

    iput-object v0, p0, LEk/K$a;->k:LFk/S;

    invoke-static {p1}, LEk/K;->x(LEk/K;)LEk/M;

    move-result-object p1

    iput-object p1, p0, LEk/K$a;->l:LEk/M;

    return-void
.end method


# virtual methods
.method public a()LEk/K;
    .locals 14

    new-instance v13, LEk/K;

    iget-object v1, p0, LEk/K$a;->a:LEk/d;

    iget-object v2, p0, LEk/K$a;->b:LFk/w;

    iget-object v3, p0, LEk/K$a;->c:LFk/h;

    iget-object v4, p0, LEk/K$a;->d:LFk/A0;

    iget-object v5, p0, LEk/K$a;->e:LFk/r;

    iget-object v6, p0, LEk/K$a;->f:LFk/l0;

    iget-object v7, p0, LEk/K$a;->g:LFk/c0;

    iget-object v8, p0, LEk/K$a;->h:LEk/C;

    iget-object v9, p0, LEk/K$a;->i:LEk/C;

    iget-object v10, p0, LEk/K$a;->j:Loh/t;

    iget-object v11, p0, LEk/K$a;->k:LFk/S;

    iget-object v12, p0, LEk/K$a;->l:LEk/M;

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, LEk/K;-><init>(LEk/d;LFk/w;LFk/h;LFk/A0;LFk/r;LFk/l0;LFk/c0;LEk/C;LEk/C;Loh/t;LFk/S;LEk/M;)V

    return-object v13
.end method

.method public b(LFk/c0;)LEk/K$a;
    .locals 0

    iput-object p1, p0, LEk/K$a;->g:LFk/c0;

    return-object p0
.end method

.method public c(LFk/l0;)LEk/K$a;
    .locals 0

    iput-object p1, p0, LEk/K$a;->f:LFk/l0;

    return-object p0
.end method

.method public d()LEk/K$a;
    .locals 1

    sget-object v0, Loh/A0;->c:Loh/A0;

    iput-object v0, p0, LEk/K$a;->j:Loh/t;

    return-object p0
.end method

.method public e(LEk/C;)LEk/K$a;
    .locals 0

    iput-object p1, p0, LEk/K$a;->h:LEk/C;

    return-object p0
.end method

.method public f(LEk/C;)LEk/K$a;
    .locals 0

    iput-object p1, p0, LEk/K$a;->i:LEk/C;

    return-object p0
.end method

.method public g(LFk/w;)LEk/K$a;
    .locals 0

    iput-object p1, p0, LEk/K$a;->b:LFk/w;

    return-object p0
.end method

.method public h(LFk/h;)LEk/K$a;
    .locals 0

    iput-object p1, p0, LEk/K$a;->c:LFk/h;

    return-object p0
.end method

.method public i(LFk/S;)LEk/K$a;
    .locals 0

    iput-object p1, p0, LEk/K$a;->k:LFk/S;

    return-object p0
.end method

.method public j(LEk/d;)LEk/K$a;
    .locals 0

    iput-object p1, p0, LEk/K$a;->a:LEk/d;

    return-object p0
.end method

.method public k(LFk/r;)LEk/K$a;
    .locals 0

    iput-object p1, p0, LEk/K$a;->e:LFk/r;

    return-object p0
.end method

.method public l(LFk/A0;)LEk/K$a;
    .locals 0

    iput-object p1, p0, LEk/K$a;->d:LFk/A0;

    return-object p0
.end method

.method public m(LEk/M;)LEk/K$a;
    .locals 0

    iput-object p1, p0, LEk/K$a;->l:LEk/M;

    return-object p0
.end method

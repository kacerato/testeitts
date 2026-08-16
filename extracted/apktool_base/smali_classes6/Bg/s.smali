.class public LBg/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LBg/s$a;
    }
.end annotation


# instance fields
.field public a:LCg/d;

.field public b:LCg/c;

.field public c:Z

.field public d:LCg/e;

.field public e:Z

.field public f:Z

.field public g:LCg/a;

.field public h:LCg/b;

.field public i:Z

.field public j:J

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:J

.field public n:J

.field public o:Z

.field public p:Z

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:LBg/s$a;

.field public t:LBg/h;

.field public u:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, LCg/d;->DEFLATE:LCg/d;

    iput-object v0, p0, LBg/s;->a:LCg/d;

    .line 3
    sget-object v0, LCg/c;->NORMAL:LCg/c;

    iput-object v0, p0, LBg/s;->b:LCg/c;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, LBg/s;->c:Z

    .line 5
    sget-object v0, LCg/e;->NONE:LCg/e;

    iput-object v0, p0, LBg/s;->d:LCg/e;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, LBg/s;->e:Z

    .line 7
    iput-boolean v0, p0, LBg/s;->f:Z

    .line 8
    sget-object v1, LCg/a;->KEY_STRENGTH_256:LCg/a;

    iput-object v1, p0, LBg/s;->g:LCg/a;

    .line 9
    sget-object v1, LCg/b;->TWO:LCg/b;

    iput-object v1, p0, LBg/s;->h:LCg/b;

    .line 10
    iput-boolean v0, p0, LBg/s;->i:Z

    const-wide/16 v1, 0x0

    .line 11
    iput-wide v1, p0, LBg/s;->m:J

    const-wide/16 v1, -0x1

    .line 12
    iput-wide v1, p0, LBg/s;->n:J

    .line 13
    iput-boolean v0, p0, LBg/s;->o:Z

    .line 14
    iput-boolean v0, p0, LBg/s;->p:Z

    .line 15
    sget-object v0, LBg/s$a;->INCLUDE_LINKED_FILE_ONLY:LBg/s$a;

    iput-object v0, p0, LBg/s;->s:LBg/s$a;

    return-void
.end method

.method public constructor <init>(LBg/s;)V
    .locals 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, LCg/d;->DEFLATE:LCg/d;

    iput-object v0, p0, LBg/s;->a:LCg/d;

    .line 18
    sget-object v0, LCg/c;->NORMAL:LCg/c;

    iput-object v0, p0, LBg/s;->b:LCg/c;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, LBg/s;->c:Z

    .line 20
    sget-object v0, LCg/e;->NONE:LCg/e;

    iput-object v0, p0, LBg/s;->d:LCg/e;

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, LBg/s;->e:Z

    .line 22
    iput-boolean v0, p0, LBg/s;->f:Z

    .line 23
    sget-object v1, LCg/a;->KEY_STRENGTH_256:LCg/a;

    iput-object v1, p0, LBg/s;->g:LCg/a;

    .line 24
    sget-object v1, LCg/b;->TWO:LCg/b;

    iput-object v1, p0, LBg/s;->h:LCg/b;

    .line 25
    iput-boolean v0, p0, LBg/s;->i:Z

    const-wide/16 v1, 0x0

    .line 26
    iput-wide v1, p0, LBg/s;->m:J

    const-wide/16 v1, -0x1

    .line 27
    iput-wide v1, p0, LBg/s;->n:J

    .line 28
    iput-boolean v0, p0, LBg/s;->o:Z

    .line 29
    iput-boolean v0, p0, LBg/s;->p:Z

    .line 30
    sget-object v0, LBg/s$a;->INCLUDE_LINKED_FILE_ONLY:LBg/s$a;

    iput-object v0, p0, LBg/s;->s:LBg/s$a;

    .line 31
    invoke-virtual {p1}, LBg/s;->d()LCg/d;

    move-result-object v0

    iput-object v0, p0, LBg/s;->a:LCg/d;

    .line 32
    invoke-virtual {p1}, LBg/s;->c()LCg/c;

    move-result-object v0

    iput-object v0, p0, LBg/s;->b:LCg/c;

    .line 33
    invoke-virtual {p1}, LBg/s;->o()Z

    move-result v0

    iput-boolean v0, p0, LBg/s;->c:Z

    .line 34
    invoke-virtual {p1}, LBg/s;->f()LCg/e;

    move-result-object v0

    iput-object v0, p0, LBg/s;->d:LCg/e;

    .line 35
    invoke-virtual {p1}, LBg/s;->r()Z

    move-result v0

    iput-boolean v0, p0, LBg/s;->e:Z

    .line 36
    invoke-virtual {p1}, LBg/s;->s()Z

    move-result v0

    iput-boolean v0, p0, LBg/s;->f:Z

    .line 37
    invoke-virtual {p1}, LBg/s;->a()LCg/a;

    move-result-object v0

    iput-object v0, p0, LBg/s;->g:LCg/a;

    .line 38
    invoke-virtual {p1}, LBg/s;->b()LCg/b;

    move-result-object v0

    iput-object v0, p0, LBg/s;->h:LCg/b;

    .line 39
    invoke-virtual {p1}, LBg/s;->p()Z

    move-result v0

    iput-boolean v0, p0, LBg/s;->i:Z

    .line 40
    invoke-virtual {p1}, LBg/s;->g()J

    move-result-wide v0

    iput-wide v0, p0, LBg/s;->j:J

    .line 41
    invoke-virtual {p1}, LBg/s;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LBg/s;->k:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, LBg/s;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LBg/s;->l:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, LBg/s;->l()J

    move-result-wide v0

    iput-wide v0, p0, LBg/s;->m:J

    .line 44
    invoke-virtual {p1}, LBg/s;->h()J

    move-result-wide v0

    iput-wide v0, p0, LBg/s;->n:J

    .line 45
    invoke-virtual {p1}, LBg/s;->u()Z

    move-result v0

    iput-boolean v0, p0, LBg/s;->o:Z

    .line 46
    invoke-virtual {p1}, LBg/s;->q()Z

    move-result v0

    iput-boolean v0, p0, LBg/s;->p:Z

    .line 47
    invoke-virtual {p1}, LBg/s;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LBg/s;->q:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, LBg/s;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LBg/s;->r:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, LBg/s;->n()LBg/s$a;

    move-result-object v0

    iput-object v0, p0, LBg/s;->s:LBg/s$a;

    .line 50
    invoke-virtual {p1}, LBg/s;->i()LBg/h;

    move-result-object v0

    iput-object v0, p0, LBg/s;->t:LBg/h;

    .line 51
    invoke-virtual {p1}, LBg/s;->t()Z

    move-result p1

    iput-boolean p1, p0, LBg/s;->u:Z

    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 0

    iput-boolean p1, p0, LBg/s;->c:Z

    return-void
.end method

.method public B(LCg/e;)V
    .locals 0

    iput-object p1, p0, LBg/s;->d:LCg/e;

    return-void
.end method

.method public C(J)V
    .locals 0

    iput-wide p1, p0, LBg/s;->j:J

    return-void
.end method

.method public D(J)V
    .locals 0

    iput-wide p1, p0, LBg/s;->n:J

    return-void
.end method

.method public E(LBg/h;)V
    .locals 0

    iput-object p1, p0, LBg/s;->t:LBg/h;

    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LBg/s;->r:Ljava/lang/String;

    return-void
.end method

.method public G(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LBg/s;->l:Ljava/lang/String;

    return-void
.end method

.method public H(Z)V
    .locals 0

    iput-boolean p1, p0, LBg/s;->i:Z

    return-void
.end method

.method public I(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    iput-wide v0, p0, LBg/s;->m:J

    return-void

    :cond_0
    iput-wide p1, p0, LBg/s;->m:J

    return-void
.end method

.method public J(Z)V
    .locals 0

    iput-boolean p1, p0, LBg/s;->p:Z

    return-void
.end method

.method public K(Z)V
    .locals 0

    iput-boolean p1, p0, LBg/s;->e:Z

    return-void
.end method

.method public L(Z)V
    .locals 0

    iput-boolean p1, p0, LBg/s;->f:Z

    return-void
.end method

.method public M(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LBg/s;->q:Ljava/lang/String;

    return-void
.end method

.method public N(LBg/s$a;)V
    .locals 0

    iput-object p1, p0, LBg/s;->s:LBg/s$a;

    return-void
.end method

.method public O(Z)V
    .locals 0

    iput-boolean p1, p0, LBg/s;->u:Z

    return-void
.end method

.method public P(Z)V
    .locals 0

    iput-boolean p1, p0, LBg/s;->o:Z

    return-void
.end method

.method public a()LCg/a;
    .locals 1

    iget-object v0, p0, LBg/s;->g:LCg/a;

    return-object v0
.end method

.method public b()LCg/b;
    .locals 1

    iget-object v0, p0, LBg/s;->h:LCg/b;

    return-object v0
.end method

.method public c()LCg/c;
    .locals 1

    iget-object v0, p0, LBg/s;->b:LCg/c;

    return-object v0
.end method

.method public d()LCg/d;
    .locals 1

    iget-object v0, p0, LBg/s;->a:LCg/d;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LBg/s;->k:Ljava/lang/String;

    return-object v0
.end method

.method public f()LCg/e;
    .locals 1

    iget-object v0, p0, LBg/s;->d:LCg/e;

    return-object v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, LBg/s;->j:J

    return-wide v0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, LBg/s;->n:J

    return-wide v0
.end method

.method public i()LBg/h;
    .locals 1

    iget-object v0, p0, LBg/s;->t:LBg/h;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LBg/s;->r:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LBg/s;->l:Ljava/lang/String;

    return-object v0
.end method

.method public l()J
    .locals 2

    iget-wide v0, p0, LBg/s;->m:J

    return-wide v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LBg/s;->q:Ljava/lang/String;

    return-object v0
.end method

.method public n()LBg/s$a;
    .locals 1

    iget-object v0, p0, LBg/s;->s:LBg/s$a;

    return-object v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, LBg/s;->c:Z

    return v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, LBg/s;->i:Z

    return v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, LBg/s;->p:Z

    return v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, LBg/s;->e:Z

    return v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, LBg/s;->f:Z

    return v0
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, LBg/s;->u:Z

    return v0
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, LBg/s;->o:Z

    return v0
.end method

.method public v(LCg/a;)V
    .locals 0

    iput-object p1, p0, LBg/s;->g:LCg/a;

    return-void
.end method

.method public w(LCg/b;)V
    .locals 0

    iput-object p1, p0, LBg/s;->h:LCg/b;

    return-void
.end method

.method public x(LCg/c;)V
    .locals 0

    iput-object p1, p0, LBg/s;->b:LCg/c;

    return-void
.end method

.method public y(LCg/d;)V
    .locals 0

    iput-object p1, p0, LBg/s;->a:LCg/d;

    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LBg/s;->k:Ljava/lang/String;

    return-void
.end method

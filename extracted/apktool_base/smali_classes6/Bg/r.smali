.class public LBg/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LBg/k;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LBg/e;",
            ">;"
        }
    .end annotation
.end field

.field public d:LBg/c;

.field public e:LBg/d;

.field public f:LBg/g;

.field public g:LBg/n;

.field public h:LBg/o;

.field public i:Z

.field public j:J

.field public k:Ljava/io/File;

.field public l:Z

.field public m:Z

.field public n:J

.field public o:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LBg/r;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LBg/r;->c:Ljava/util/List;

    new-instance v0, LBg/c;

    invoke-direct {v0}, LBg/c;-><init>()V

    iput-object v0, p0, LBg/r;->d:LBg/c;

    new-instance v0, LBg/d;

    invoke-direct {v0}, LBg/d;-><init>()V

    iput-object v0, p0, LBg/r;->e:LBg/d;

    new-instance v0, LBg/g;

    invoke-direct {v0}, LBg/g;-><init>()V

    iput-object v0, p0, LBg/r;->f:LBg/g;

    new-instance v0, LBg/n;

    invoke-direct {v0}, LBg/n;-><init>()V

    iput-object v0, p0, LBg/r;->g:LBg/n;

    new-instance v0, LBg/o;

    invoke-direct {v0}, LBg/o;-><init>()V

    iput-object v0, p0, LBg/r;->h:LBg/o;

    const/4 v0, 0x0

    iput-boolean v0, p0, LBg/r;->l:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LBg/r;->j:J

    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 0

    iput-boolean p1, p0, LBg/r;->l:Z

    return-void
.end method

.method public B(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, LBg/r;->k:Ljava/io/File;

    return-void
.end method

.method public a()LBg/c;
    .locals 1

    iget-object v0, p0, LBg/r;->d:LBg/c;

    return-object v0
.end method

.method public b()LBg/d;
    .locals 1

    iget-object v0, p0, LBg/r;->e:LBg/d;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LBg/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LBg/r;->c:Ljava/util/List;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, LBg/r;->o:J

    return-wide v0
.end method

.method public e()LBg/g;
    .locals 1

    iget-object v0, p0, LBg/r;->f:LBg/g;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LBg/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LBg/r;->b:Ljava/util/List;

    return-object v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, LBg/r;->j:J

    return-wide v0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, LBg/r;->n:J

    return-wide v0
.end method

.method public i()LBg/n;
    .locals 1

    iget-object v0, p0, LBg/r;->g:LBg/n;

    return-object v0
.end method

.method public j()LBg/o;
    .locals 1

    iget-object v0, p0, LBg/r;->h:LBg/o;

    return-object v0
.end method

.method public k()Ljava/io/File;
    .locals 1

    iget-object v0, p0, LBg/r;->k:Ljava/io/File;

    return-object v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, LBg/r;->m:Z

    return v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, LBg/r;->i:Z

    return v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, LBg/r;->l:Z

    return v0
.end method

.method public o(LBg/c;)V
    .locals 0

    iput-object p1, p0, LBg/r;->d:LBg/c;

    return-void
.end method

.method public p(LBg/d;)V
    .locals 0

    iput-object p1, p0, LBg/r;->e:LBg/d;

    return-void
.end method

.method public q(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LBg/e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LBg/r;->c:Ljava/util/List;

    return-void
.end method

.method public r(J)V
    .locals 0

    iput-wide p1, p0, LBg/r;->o:J

    return-void
.end method

.method public s(LBg/g;)V
    .locals 0

    iput-object p1, p0, LBg/r;->f:LBg/g;

    return-void
.end method

.method public t(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LBg/k;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LBg/r;->b:Ljava/util/List;

    return-void
.end method

.method public u(Z)V
    .locals 0

    iput-boolean p1, p0, LBg/r;->m:Z

    return-void
.end method

.method public v(Z)V
    .locals 0

    iput-boolean p1, p0, LBg/r;->i:Z

    return-void
.end method

.method public w(J)V
    .locals 0

    iput-wide p1, p0, LBg/r;->j:J

    return-void
.end method

.method public x(J)V
    .locals 0

    iput-wide p1, p0, LBg/r;->n:J

    return-void
.end method

.method public y(LBg/n;)V
    .locals 0

    iput-object p1, p0, LBg/r;->g:LBg/n;

    return-void
.end method

.method public z(LBg/o;)V
    .locals 0

    iput-object p1, p0, LBg/r;->h:LBg/o;

    return-void
.end method

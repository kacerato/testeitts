.class public Lorg/bouncycastle/cms/M0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LQk/o;

.field public b:LQk/q;

.field public c:Z

.field public d:Lorg/bouncycastle/cms/d;

.field public e:Lorg/bouncycastle/cms/d;

.field public f:Lorg/bouncycastle/cms/N;

.field public g:Lhi/b;


# direct methods
.method public constructor <init>(LQk/q;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/cms/a0;

    invoke-direct {v0}, Lorg/bouncycastle/cms/a0;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/M0;-><init>(LQk/q;Lorg/bouncycastle/cms/N;)V

    return-void
.end method

.method public constructor <init>(LQk/q;Lorg/bouncycastle/cms/N;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LQk/j;

    invoke-direct {v0}, LQk/j;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/M0;->a:LQk/o;

    iput-object p1, p0, Lorg/bouncycastle/cms/M0;->b:LQk/q;

    iput-object p2, p0, Lorg/bouncycastle/cms/M0;->f:Lorg/bouncycastle/cms/N;

    return-void
.end method


# virtual methods
.method public a(LQk/f;Lli/h;)Lorg/bouncycastle/cms/L0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    new-instance v0, Luh/X;

    new-instance v1, Luh/z;

    invoke-virtual {p2}, Lli/h;->x()Lhi/q;

    move-result-object v2

    invoke-direct {v1, v2}, Luh/z;-><init>(Lhi/q;)V

    invoke-direct {v0, v1}, Luh/X;-><init>(Luh/z;)V

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/cms/M0;->c(LQk/f;Luh/X;)Lorg/bouncycastle/cms/L0;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/bouncycastle/cms/L0;->m(Lli/h;)V

    return-object p1
.end method

.method public b(LQk/f;[B)Lorg/bouncycastle/cms/L0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    new-instance v0, Luh/X;

    new-instance v1, Loh/C0;

    invoke-direct {v1, p2}, Loh/C0;-><init>([B)V

    invoke-direct {v0, v1}, Luh/X;-><init>(Loh/y;)V

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/cms/M0;->c(LQk/f;Luh/X;)Lorg/bouncycastle/cms/L0;

    move-result-object p1

    return-object p1
.end method

.method public final c(LQk/f;Luh/X;)Lorg/bouncycastle/cms/L0;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/M0;->g:Lhi/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/cms/M0;->b:LQk/q;

    invoke-interface {v1, v0}, LQk/q;->a(Lhi/b;)LQk/p;

    move-result-object v0

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/M0;->b:LQk/q;

    iget-object v1, p0, Lorg/bouncycastle/cms/M0;->a:LQk/o;

    invoke-interface {p1}, LQk/f;->a()Lhi/b;

    move-result-object v2

    invoke-interface {v1, v2}, LQk/o;->c(Lhi/b;)Lhi/b;

    move-result-object v1

    invoke-interface {v0, v1}, LQk/q;->a(Lhi/b;)LQk/p;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-boolean v0, p0, Lorg/bouncycastle/cms/M0;->c:Z

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/cms/L0;

    invoke-interface {v4}, LQk/p;->a()Lhi/b;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/cms/M0;->f:Lorg/bouncycastle/cms/N;

    invoke-direct {v0, p2, p1, v1, v2}, Lorg/bouncycastle/cms/L0;-><init>(Luh/X;LQk/f;Lhi/b;Lorg/bouncycastle/cms/N;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/cms/M0;->d:Lorg/bouncycastle/cms/d;

    if-nez v0, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/cms/M0;->e:Lorg/bouncycastle/cms/d;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Lorg/bouncycastle/cms/L0;

    iget-object v5, p0, Lorg/bouncycastle/cms/M0;->f:Lorg/bouncycastle/cms/N;

    new-instance v6, Lorg/bouncycastle/cms/b0;

    invoke-direct {v6}, Lorg/bouncycastle/cms/b0;-><init>()V

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/cms/L0;-><init>(Luh/X;LQk/f;LQk/p;Lorg/bouncycastle/cms/N;Lorg/bouncycastle/cms/d;Lorg/bouncycastle/cms/d;)V

    return-object v0

    :cond_3
    :goto_2
    if-nez v0, :cond_4

    new-instance v0, Lorg/bouncycastle/cms/b0;

    invoke-direct {v0}, Lorg/bouncycastle/cms/b0;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/M0;->d:Lorg/bouncycastle/cms/d;

    :cond_4
    new-instance v0, Lorg/bouncycastle/cms/L0;

    iget-object v5, p0, Lorg/bouncycastle/cms/M0;->f:Lorg/bouncycastle/cms/N;

    iget-object v6, p0, Lorg/bouncycastle/cms/M0;->d:Lorg/bouncycastle/cms/d;

    iget-object v7, p0, Lorg/bouncycastle/cms/M0;->e:Lorg/bouncycastle/cms/d;

    move-object v1, v0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/cms/L0;-><init>(Luh/X;LQk/f;LQk/p;Lorg/bouncycastle/cms/N;Lorg/bouncycastle/cms/d;Lorg/bouncycastle/cms/d;)V

    return-object v0
.end method

.method public d(Lhi/b;)Lorg/bouncycastle/cms/M0;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/M0;->g:Lhi/b;

    return-object p0
.end method

.method public e(Z)Lorg/bouncycastle/cms/M0;
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/cms/M0;->c:Z

    return-object p0
.end method

.method public f(Lorg/bouncycastle/cms/d;)Lorg/bouncycastle/cms/M0;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/M0;->d:Lorg/bouncycastle/cms/d;

    return-object p0
.end method

.method public g(Lorg/bouncycastle/cms/d;)Lorg/bouncycastle/cms/M0;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/M0;->e:Lorg/bouncycastle/cms/d;

    return-object p0
.end method

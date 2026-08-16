.class public final LXg/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LXg/k;


# instance fields
.field public A:Ljava/lang/Float;

.field public B:Ljava/lang/Float;

.field public C:LXg/i;

.field public D:LXg/B;

.field public E:Ljava/lang/Float;

.field public F:Ljava/lang/Float;

.field public G:LXg/B;

.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Float;

.field public d:LXg/i;

.field public e:Ljava/lang/Float;

.field public f:LXg/i;

.field public g:LXg/B;

.field public h:LXg/i;

.field public i:LXg/B;

.field public j:LXg/i;

.field public k:LXg/B;

.field public l:Ljava/lang/Float;

.field public m:LXg/B;

.field public n:Ljava/lang/Float;

.field public o:Ljava/lang/Boolean;

.field public p:LXg/B;

.field public q:LXg/B;

.field public r:LXg/B;

.field public s:LXg/B;

.field public final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LXg/B;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljava/lang/Float;

.field public v:LXg/B;

.field public w:Ljava/lang/Float;

.field public x:LXg/B;

.field public y:Ljava/lang/Float;

.field public z:LXg/B;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LXg/d;->a:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LXg/d;->t:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public A1(LXg/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    iput-object p1, p0, LXg/d;->q:LXg/B;

    return-void
.end method

.method public A2(Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pr"
        }
    .end annotation

    iput-object p1, p0, LXg/d;->u:Ljava/lang/Float;

    return-void
.end method

.method public B1()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, LXg/d;->E:Ljava/lang/Float;

    return-object v0
.end method

.method public B2(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapPr"
        }
    .end annotation

    iget-object v0, p0, LXg/d;->v:LXg/B;

    if-nez v0, :cond_0

    new-instance v0, LXg/h;

    invoke-direct {v0}, LXg/h;-><init>()V

    iput-object v0, p0, LXg/d;->v:LXg/B;

    :cond_0
    iget-object v0, p0, LXg/d;->v:LXg/B;

    invoke-interface {v0, p1}, LXg/B;->h(Ljava/lang/String;)V

    return-void
.end method

.method public C1()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, LXg/d;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public C2()LXg/B;
    .locals 1

    iget-object v0, p0, LXg/d;->i:LXg/B;

    return-object v0
.end method

.method public D1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LXg/d;->D:LXg/B;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, LXg/B;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public D2(Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ps"
        }
    .end annotation

    iput-object p1, p0, LXg/d;->y:Ljava/lang/Float;

    return-void
.end method

.method public E1(Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pcr"
        }
    .end annotation

    iput-object p1, p0, LXg/d;->B:Ljava/lang/Float;

    return-void
.end method

.method public E2(LXg/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    iput-object p1, p0, LXg/d;->v:LXg/B;

    return-void
.end method

.method public F1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LXg/d;->z:LXg/B;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, LXg/B;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public F2(LXg/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    iput-object p1, p0, LXg/d;->p:LXg/B;

    return-void
.end method

.method public G1(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapNs"
        }
    .end annotation

    iget-object v0, p0, LXg/d;->m:LXg/B;

    if-nez v0, :cond_0

    new-instance v0, LXg/h;

    invoke-direct {v0}, LXg/h;-><init>()V

    iput-object v0, p0, LXg/d;->m:LXg/B;

    :cond_0
    iget-object v0, p0, LXg/d;->m:LXg/B;

    invoke-interface {v0, p1}, LXg/B;->h(Ljava/lang/String;)V

    return-void
.end method

.method public G2()LXg/B;
    .locals 1

    iget-object v0, p0, LXg/d;->x:LXg/B;

    return-object v0
.end method

.method public H1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LXg/d;->i:LXg/B;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, LXg/B;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public H2()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, LXg/d;->e:Ljava/lang/Float;

    return-object v0
.end method

.method public I1(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "norm"
        }
    .end annotation

    iget-object v0, p0, LXg/d;->G:LXg/B;

    if-nez v0, :cond_0

    new-instance v0, LXg/h;

    invoke-direct {v0}, LXg/h;-><init>()V

    iput-object v0, p0, LXg/d;->G:LXg/B;

    :cond_0
    iget-object v0, p0, LXg/d;->G:LXg/B;

    invoke-interface {v0, p1}, LXg/B;->h(Ljava/lang/String;)V

    return-void
.end method

.method public I2(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapKe"
        }
    .end annotation

    iget-object v0, p0, LXg/d;->D:LXg/B;

    if-nez v0, :cond_0

    new-instance v0, LXg/h;

    invoke-direct {v0}, LXg/h;-><init>()V

    iput-object v0, p0, LXg/d;->D:LXg/B;

    :cond_0
    iget-object v0, p0, LXg/d;->D:LXg/B;

    invoke-interface {v0, p1}, LXg/B;->h(Ljava/lang/String;)V

    return-void
.end method

.method public J1(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "g",
            "b"
        }
    .end annotation

    invoke-static {p1, p2, p3}, LXg/C;->a(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)LXg/i;

    move-result-object p1

    iput-object p1, p0, LXg/d;->C:LXg/i;

    return-void
.end method

.method public J2(LXg/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    iput-object p1, p0, LXg/d;->k:LXg/B;

    return-void
.end method

.method public K1(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bump"
        }
    .end annotation

    iget-object v0, p0, LXg/d;->q:LXg/B;

    if-nez v0, :cond_0

    new-instance v0, LXg/h;

    invoke-direct {v0}, LXg/h;-><init>()V

    iput-object v0, p0, LXg/d;->q:LXg/B;

    :cond_0
    iget-object v0, p0, LXg/d;->q:LXg/B;

    invoke-interface {v0, p1}, LXg/B;->h(Ljava/lang/String;)V

    return-void
.end method

.method public K2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LXg/d;->q:LXg/B;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, LXg/B;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public L1(LXg/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    iput-object p1, p0, LXg/d;->G:LXg/B;

    return-void
.end method

.method public L2()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, LXg/d;->o:Ljava/lang/Boolean;

    return-object v0
.end method

.method public M1(LXg/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    iput-object p1, p0, LXg/d;->z:LXg/B;

    return-void
.end method

.method public M2()LXg/B;
    .locals 1

    iget-object v0, p0, LXg/d;->G:LXg/B;

    return-object v0
.end method

.method public N1(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "g",
            "b"
        }
    .end annotation

    invoke-static {p1, p2, p3}, LXg/C;->a(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)LXg/i;

    move-result-object p1

    iput-object p1, p0, LXg/d;->h:LXg/i;

    return-void
.end method

.method public N2(Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aniso"
        }
    .end annotation

    iput-object p1, p0, LXg/d;->E:Ljava/lang/Float;

    return-void
.end method

.method public O1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LXg/B;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LXg/d;->t:Ljava/util/List;

    return-object v0
.end method

.method public O2(LXg/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    iput-object p1, p0, LXg/d;->x:LXg/B;

    return-void
.end method

.method public P1()LXg/B;
    .locals 1

    iget-object v0, p0, LXg/d;->g:LXg/B;

    return-object v0
.end method

.method public P2(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "illum"
        }
    .end annotation

    iput-object p1, p0, LXg/d;->b:Ljava/lang/Integer;

    return-void
.end method

.method public Q1(LXg/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    iput-object p1, p0, LXg/d;->m:LXg/B;

    return-void
.end method

.method public Q2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LXg/d;->s:LXg/B;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, LXg/B;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public R1()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, LXg/d;->l:Ljava/lang/Float;

    return-object v0
.end method

.method public R2(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "g",
            "b"
        }
    .end annotation

    invoke-static {p1, p2, p3}, LXg/C;->a(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)LXg/i;

    move-result-object p1

    iput-object p1, p0, LXg/d;->j:LXg/i;

    return-void
.end method

.method public S1(Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pc"
        }
    .end annotation

    iput-object p1, p0, LXg/d;->A:Ljava/lang/Float;

    return-void
.end method

.method public S2(Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ns"
        }
    .end annotation

    iput-object p1, p0, LXg/d;->l:Ljava/lang/Float;

    return-void
.end method

.method public T1(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "g",
            "b"
        }
    .end annotation

    invoke-static {p1, p2, p3}, LXg/C;->a(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)LXg/i;

    move-result-object p1

    iput-object p1, p0, LXg/d;->f:LXg/i;

    return-void
.end method

.method public T2(LXg/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    iput-object p1, p0, LXg/d;->i:LXg/B;

    return-void
.end method

.method public U1()LXg/i;
    .locals 1

    iget-object v0, p0, LXg/d;->d:LXg/i;

    return-object v0
.end method

.method public U2()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, LXg/d;->w:Ljava/lang/Float;

    return-object v0
.end method

.method public V1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LXg/d;->m:LXg/B;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, LXg/B;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public V2(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapKa"
        }
    .end annotation

    iget-object v0, p0, LXg/d;->g:LXg/B;

    if-nez v0, :cond_0

    new-instance v0, LXg/h;

    invoke-direct {v0}, LXg/h;-><init>()V

    iput-object v0, p0, LXg/d;->g:LXg/B;

    :cond_0
    iget-object v0, p0, LXg/d;->g:LXg/B;

    invoke-interface {v0, p1}, LXg/B;->h(Ljava/lang/String;)V

    return-void
.end method

.method public W1()LXg/B;
    .locals 1

    iget-object v0, p0, LXg/d;->p:LXg/B;

    return-object v0
.end method

.method public X1(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapKs"
        }
    .end annotation

    iget-object v0, p0, LXg/d;->k:LXg/B;

    if-nez v0, :cond_0

    new-instance v0, LXg/h;

    invoke-direct {v0}, LXg/h;-><init>()V

    iput-object v0, p0, LXg/d;->k:LXg/B;

    :cond_0
    iget-object v0, p0, LXg/d;->k:LXg/B;

    invoke-interface {v0, p1}, LXg/B;->h(Ljava/lang/String;)V

    return-void
.end method

.method public Y1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LXg/d;->p:LXg/B;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, LXg/B;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Z1()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, LXg/d;->F:Ljava/lang/Float;

    return-object v0
.end method

.method public a2()LXg/B;
    .locals 1

    iget-object v0, p0, LXg/d;->m:LXg/B;

    return-object v0
.end method

.method public b2()LXg/B;
    .locals 1

    iget-object v0, p0, LXg/d;->q:LXg/B;

    return-object v0
.end method

.method public c2(Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sharpness"
        }
    .end annotation

    iput-object p1, p0, LXg/d;->e:Ljava/lang/Float;

    return-void
.end method

.method public d2()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, LXg/d;->c:Ljava/lang/Float;

    return-object v0
.end method

.method public e2(Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anisor"
        }
    .end annotation

    iput-object p1, p0, LXg/d;->F:Ljava/lang/Float;

    return-void
.end method

.method public f2()LXg/B;
    .locals 1

    iget-object v0, p0, LXg/d;->v:LXg/B;

    return-object v0
.end method

.method public g2()LXg/i;
    .locals 1

    iget-object v0, p0, LXg/d;->f:LXg/i;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LXg/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getNorm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LXg/d;->G:LXg/B;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, LXg/B;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h2(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapPm"
        }
    .end annotation

    iget-object v0, p0, LXg/d;->x:LXg/B;

    if-nez v0, :cond_0

    new-instance v0, LXg/h;

    invoke-direct {v0}, LXg/h;-><init>()V

    iput-object v0, p0, LXg/d;->x:LXg/B;

    :cond_0
    iget-object v0, p0, LXg/d;->x:LXg/B;

    invoke-interface {v0, p1}, LXg/B;->h(Ljava/lang/String;)V

    return-void
.end method

.method public i2()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, LXg/d;->u:Ljava/lang/Float;

    return-object v0
.end method

.method public j2()LXg/B;
    .locals 1

    iget-object v0, p0, LXg/d;->r:LXg/B;

    return-object v0
.end method

.method public k2()LXg/B;
    .locals 1

    iget-object v0, p0, LXg/d;->z:LXg/B;

    return-object v0
.end method

.method public l2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LXg/d;->r:LXg/B;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, LXg/B;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m1()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, LXg/d;->n:Ljava/lang/Float;

    return-object v0
.end method

.method public m2(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "halo"
        }
    .end annotation

    iput-object p1, p0, LXg/d;->o:Ljava/lang/Boolean;

    return-void
.end method

.method public n1(LXg/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    iput-object p1, p0, LXg/d;->D:LXg/B;

    return-void
.end method

.method public n2(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapD"
        }
    .end annotation

    iget-object v0, p0, LXg/d;->p:LXg/B;

    if-nez v0, :cond_0

    new-instance v0, LXg/h;

    invoke-direct {v0}, LXg/h;-><init>()V

    iput-object v0, p0, LXg/d;->p:LXg/B;

    :cond_0
    iget-object v0, p0, LXg/d;->p:LXg/B;

    invoke-interface {v0, p1}, LXg/B;->h(Ljava/lang/String;)V

    return-void
.end method

.method public o1(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "g",
            "b"
        }
    .end annotation

    invoke-static {p1, p2, p3}, LXg/C;->a(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)LXg/i;

    move-result-object p1

    iput-object p1, p0, LXg/d;->d:LXg/i;

    return-void
.end method

.method public o2(Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pm"
        }
    .end annotation

    iput-object p1, p0, LXg/d;->w:Ljava/lang/Float;

    return-void
.end method

.method public p1()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, LXg/d;->B:Ljava/lang/Float;

    return-object v0
.end method

.method public p2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LXg/d;->k:LXg/B;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, LXg/B;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LXg/d;->x:LXg/B;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, LXg/B;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q2()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, LXg/d;->y:Ljava/lang/Float;

    return-object v0
.end method

.method public r1(LXg/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    iput-object p1, p0, LXg/d;->g:LXg/B;

    return-void
.end method

.method public r2()LXg/B;
    .locals 1

    iget-object v0, p0, LXg/d;->k:LXg/B;

    return-object v0
.end method

.method public s1()LXg/B;
    .locals 1

    iget-object v0, p0, LXg/d;->s:LXg/B;

    return-object v0
.end method

.method public s2(LXg/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    iput-object p1, p0, LXg/d;->s:LXg/B;

    return-void
.end method

.method public t1(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decal"
        }
    .end annotation

    iget-object v0, p0, LXg/d;->s:LXg/B;

    if-nez v0, :cond_0

    new-instance v0, LXg/h;

    invoke-direct {v0}, LXg/h;-><init>()V

    iput-object v0, p0, LXg/d;->s:LXg/B;

    :cond_0
    iget-object v0, p0, LXg/d;->s:LXg/B;

    invoke-interface {v0, p1}, LXg/B;->h(Ljava/lang/String;)V

    return-void
.end method

.method public t2()LXg/i;
    .locals 1

    iget-object v0, p0, LXg/d;->h:LXg/i;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mtl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LXg/d;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u1()LXg/i;
    .locals 1

    iget-object v0, p0, LXg/d;->j:LXg/i;

    return-object v0
.end method

.method public u2(Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ni"
        }
    .end annotation

    iput-object p1, p0, LXg/d;->c:Ljava/lang/Float;

    return-void
.end method

.method public v1(LXg/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    iput-object p1, p0, LXg/d;->r:LXg/B;

    return-void
.end method

.method public v2(Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    iput-object p1, p0, LXg/d;->n:Ljava/lang/Float;

    return-void
.end method

.method public w1(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disp"
        }
    .end annotation

    iget-object v0, p0, LXg/d;->r:LXg/B;

    if-nez v0, :cond_0

    new-instance v0, LXg/h;

    invoke-direct {v0}, LXg/h;-><init>()V

    iput-object v0, p0, LXg/d;->r:LXg/B;

    :cond_0
    iget-object v0, p0, LXg/d;->r:LXg/B;

    invoke-interface {v0, p1}, LXg/B;->h(Ljava/lang/String;)V

    return-void
.end method

.method public w2()LXg/B;
    .locals 1

    iget-object v0, p0, LXg/d;->D:LXg/B;

    return-object v0
.end method

.method public x1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LXg/d;->v:LXg/B;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, LXg/B;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x2()LXg/i;
    .locals 1

    iget-object v0, p0, LXg/d;->C:LXg/i;

    return-object v0
.end method

.method public y1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LXg/d;->g:LXg/B;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, LXg/B;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y2(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapPs"
        }
    .end annotation

    iget-object v0, p0, LXg/d;->z:LXg/B;

    if-nez v0, :cond_0

    new-instance v0, LXg/h;

    invoke-direct {v0}, LXg/h;-><init>()V

    iput-object v0, p0, LXg/d;->z:LXg/B;

    :cond_0
    iget-object v0, p0, LXg/d;->z:LXg/B;

    invoke-interface {v0, p1}, LXg/B;->h(Ljava/lang/String;)V

    return-void
.end method

.method public z1()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, LXg/d;->A:Ljava/lang/Float;

    return-object v0
.end method

.method public z2(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapKd"
        }
    .end annotation

    iget-object v0, p0, LXg/d;->i:LXg/B;

    if-nez v0, :cond_0

    new-instance v0, LXg/h;

    invoke-direct {v0}, LXg/h;-><init>()V

    iput-object v0, p0, LXg/d;->i:LXg/B;

    :cond_0
    iget-object v0, p0, LXg/d;->i:LXg/B;

    invoke-interface {v0, p1}, LXg/B;->h(Ljava/lang/String;)V

    return-void
.end method

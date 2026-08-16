.class public Lcom/android/tools/r8/shaking/l1;
.super Lcom/android/tools/r8/shaking/t1;
.source "SourceFile"


# static fields
.field public static final s:Lcom/android/tools/r8/shaking/l1;

.field public static final t:Lcom/android/tools/r8/shaking/l1;

.field public static final synthetic u:Z = true


# instance fields
.field public final k:Z

.field public final l:Z

.field public final m:Z

.field public final n:Z

.field public final o:Z

.field public final p:Z

.field public final q:Z

.field public final r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/shaking/j1;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/j1;-><init>()V

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/j1;->m()Lcom/android/tools/r8/shaking/j1;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->k:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/j1;->n()Lcom/android/tools/r8/shaking/j1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->l:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/j1;->n()Lcom/android/tools/r8/shaking/j1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->m:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/j1;->n()Lcom/android/tools/r8/shaking/j1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->n:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/j1;->n()Lcom/android/tools/r8/shaking/j1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->p:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/j1;->n()Lcom/android/tools/r8/shaking/j1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->q:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/j1;->n()Lcom/android/tools/r8/shaking/j1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r1;->a()Lcom/android/tools/r8/shaking/t1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/l1;

    sput-object v0, Lcom/android/tools/r8/shaking/l1;->s:Lcom/android/tools/r8/shaking/l1;

    new-instance v0, Lcom/android/tools/r8/shaking/j1;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/j1;-><init>()V

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/j1;->l()Lcom/android/tools/r8/shaking/j1;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->k:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/j1;->n()Lcom/android/tools/r8/shaking/j1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->l:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/j1;->n()Lcom/android/tools/r8/shaking/j1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->m:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/j1;->n()Lcom/android/tools/r8/shaking/j1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->n:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/j1;->n()Lcom/android/tools/r8/shaking/j1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->p:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/j1;->n()Lcom/android/tools/r8/shaking/j1;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/tools/r8/shaking/j1;->q:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/j1;->n()Lcom/android/tools/r8/shaking/j1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r1;->a()Lcom/android/tools/r8/shaking/t1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/l1;

    sput-object v0, Lcom/android/tools/r8/shaking/l1;->t:Lcom/android/tools/r8/shaking/l1;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/j1;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/shaking/t1;-><init>(Lcom/android/tools/r8/shaking/r1;)V

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/j1;->k:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/l1;->k:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/j1;->l:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/l1;->l:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/j1;->m:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/l1;->m:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/j1;->n:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/l1;->n:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/j1;->o:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/l1;->o:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/j1;->p:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/l1;->p:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/j1;->q:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/l1;->q:Z

    iget-boolean p1, p1, Lcom/android/tools/r8/shaking/j1;->r:Z

    iput-boolean p1, p0, Lcom/android/tools/r8/shaking/l1;->r:Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/nJ;Ljava/util/function/Function;Ljava/util/function/Function;)Z
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->F3:Lcom/android/tools/r8/graph/M2;

    .line 26
    invoke-interface {p2, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/E0;

    if-eqz p0, :cond_1

    .line 27
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->v1()Z

    move-result p2

    if-nez p2, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/shaking/l1;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static e()Lcom/android/tools/r8/shaking/k1;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/shaking/l1;->t:Lcom/android/tools/r8/shaking/l1;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/l1;->d()Lcom/android/tools/r8/shaking/k1;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/nJ;Z)Z
    .locals 0

    if-eqz p2, :cond_1

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/t1;->d(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 19
    iget-object p2, p1, Lcom/android/tools/r8/internal/nJ;->i:Lcom/android/tools/r8/shaking/o3;

    .line 20
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/o3;->f()Lcom/android/tools/r8/shaking/I3;

    move-result-object p2

    iget-boolean p2, p2, Lcom/android/tools/r8/shaking/I3;->k:Z

    if-eqz p2, :cond_1

    .line 21
    iget-boolean p1, p1, Lcom/android/tools/r8/internal/nJ;->d1:Z

    if-nez p1, :cond_0

    .line 22
    iget-object p1, p0, Lcom/android/tools/r8/shaking/t1;->h:Lcom/android/tools/r8/shaking/i1;

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    instance-of p1, p1, Lcom/android/tools/r8/shaking/c1;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/shaking/t1;)Z
    .locals 2

    .line 1
    check-cast p1, Lcom/android/tools/r8/shaking/l1;

    .line 2
    invoke-super {p0, p1}, Lcom/android/tools/r8/shaking/t1;->a(Lcom/android/tools/r8/shaking/t1;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/l1;->k:Z

    .line 3
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/l1;->k:Z

    if-ne v0, v1, :cond_0

    .line 4
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/l1;->l:Z

    .line 5
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/l1;->l:Z

    if-ne v0, v1, :cond_0

    .line 6
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/l1;->m:Z

    .line 7
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/l1;->m:Z

    if-ne v0, v1, :cond_0

    .line 8
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/l1;->n:Z

    .line 9
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/l1;->n:Z

    if-ne v0, v1, :cond_0

    .line 10
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/l1;->o:Z

    .line 11
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/l1;->o:Z

    if-ne v0, v1, :cond_0

    .line 12
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/l1;->p:Z

    .line 13
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/l1;->p:Z

    if-ne v0, v1, :cond_0

    .line 14
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/l1;->q:Z

    .line 15
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/l1;->q:Z

    if-ne v0, v1, :cond_0

    .line 16
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/l1;->r:Z

    .line 17
    iget-boolean p1, p1, Lcom/android/tools/r8/shaking/l1;->r:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()I
    .locals 3

    invoke-super {p0}, Lcom/android/tools/r8/shaking/t1;->b()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/l1;->k:Z

    const/16 v2, 0x9

    invoke-static {v2, v1}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v1

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/l1;->l:Z

    const/16 v2, 0xa

    invoke-static {v2, v0}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v0

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/l1;->m:Z

    const/16 v2, 0xb

    invoke-static {v2, v1}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v1

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/l1;->n:Z

    const/16 v2, 0xc

    invoke-static {v2, v0}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v0

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/l1;->o:Z

    const/16 v2, 0xd

    invoke-static {v2, v1}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v1

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/l1;->p:Z

    const/16 v2, 0xe

    invoke-static {v2, v0}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v0

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/l1;->q:Z

    const/16 v2, 0xf

    invoke-static {v2, v1}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v1

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/l1;->r:Z

    const/16 v2, 0x10

    invoke-static {v2, v0}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public c()Lcom/android/tools/r8/shaking/j1;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/shaking/j1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/j1;-><init>(Lcom/android/tools/r8/shaking/l1;)V

    return-object v0
.end method

.method public d()Lcom/android/tools/r8/shaking/k1;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/shaking/l1;->u:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/tools/r8/shaking/l1;->s:Lcom/android/tools/r8/shaking/l1;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/shaking/k1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/k1;-><init>(Lcom/android/tools/r8/shaking/l1;)V

    return-object v0
.end method

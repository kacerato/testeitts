.class public Lcom/android/tools/r8/shaking/I1;
.super Lcom/android/tools/r8/shaking/F1;
.source "SourceFile"


# static fields
.field public static final C:Lcom/android/tools/r8/shaking/I1;

.field public static final D:Lcom/android/tools/r8/shaking/I1;

.field public static final synthetic E:Z = true


# instance fields
.field public final A:Z

.field public final B:Lcom/android/tools/r8/shaking/i1;

.field public final l:Z

.field public final m:Z

.field public final n:Z

.field public final o:Z

.field public final p:Z

.field public final q:Z

.field public final r:Z

.field public final s:Z

.field public final t:Z

.field public final u:Z

.field public final v:Z

.field public final w:Z

.field public final x:Z

.field public final y:Z

.field public final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/shaking/G1;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/G1;-><init>()V

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->n()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r1;->a()Lcom/android/tools/r8/shaking/t1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/I1;

    sput-object v0, Lcom/android/tools/r8/shaking/I1;->C:Lcom/android/tools/r8/shaking/I1;

    new-instance v0, Lcom/android/tools/r8/shaking/G1;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/G1;-><init>()V

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/G1;->m()Lcom/android/tools/r8/shaking/G1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r1;->a()Lcom/android/tools/r8/shaking/t1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/I1;

    sput-object v0, Lcom/android/tools/r8/shaking/I1;->D:Lcom/android/tools/r8/shaking/I1;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/G1;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/shaking/F1;-><init>(Lcom/android/tools/r8/shaking/D1;)V

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/G1;->l:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->l:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/G1;->m:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->m:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/G1;->n:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->n:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/G1;->o:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->o:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/G1;->p:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->p:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/G1;->q:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->q:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/G1;->r:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->r:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/G1;->s:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->s:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/G1;->t:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->t:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/G1;->u:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->u:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/G1;->v:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->v:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/G1;->w:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->w:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/G1;->x:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->x:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/G1;->y:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->y:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/G1;->z:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->z:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/G1;->A:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->A:Z

    iget-object p1, p1, Lcom/android/tools/r8/shaking/G1;->B:Lcom/android/tools/r8/shaking/d1;

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/d1;->a()Lcom/android/tools/r8/shaking/i1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/shaking/I1;->B:Lcom/android/tools/r8/shaking/i1;

    return-void
.end method

.method public static e()Lcom/android/tools/r8/shaking/H1;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/shaking/I1;->D:Lcom/android/tools/r8/shaking/I1;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/I1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/shaking/I1;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 38
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/TW;->w()Z

    move-result p1

    if-nez p1, :cond_0

    .line 39
    iget-boolean p1, p0, Lcom/android/tools/r8/shaking/I1;->v:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/shaking/t1;)Z
    .locals 2

    .line 2
    check-cast p1, Lcom/android/tools/r8/shaking/I1;

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/shaking/I1;->E:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/I1;->B:Lcom/android/tools/r8/shaking/i1;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/i1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/F1;->a(Lcom/android/tools/r8/shaking/F1;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->l:Z

    .line 5
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/I1;->l:Z

    if-ne v0, v1, :cond_2

    .line 6
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->m:Z

    .line 7
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/I1;->m:Z

    if-ne v0, v1, :cond_2

    .line 8
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->n:Z

    .line 9
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/I1;->n:Z

    if-ne v0, v1, :cond_2

    .line 10
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->o:Z

    .line 11
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/I1;->o:Z

    if-ne v0, v1, :cond_2

    .line 12
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->p:Z

    .line 13
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/I1;->p:Z

    if-ne v0, v1, :cond_2

    .line 14
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->q:Z

    .line 15
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/I1;->q:Z

    if-ne v0, v1, :cond_2

    .line 16
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->r:Z

    .line 17
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/I1;->r:Z

    if-ne v0, v1, :cond_2

    .line 18
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->s:Z

    .line 19
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/I1;->s:Z

    if-ne v0, v1, :cond_2

    .line 20
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->t:Z

    .line 21
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/I1;->t:Z

    if-ne v0, v1, :cond_2

    .line 22
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->u:Z

    .line 23
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/I1;->u:Z

    if-ne v0, v1, :cond_2

    .line 24
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->v:Z

    .line 25
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/I1;->v:Z

    if-ne v0, v1, :cond_2

    .line 26
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->w:Z

    .line 27
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/I1;->w:Z

    if-ne v0, v1, :cond_2

    .line 28
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->x:Z

    .line 29
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/I1;->x:Z

    if-ne v0, v1, :cond_2

    .line 30
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->y:Z

    .line 31
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/I1;->y:Z

    if-ne v0, v1, :cond_2

    .line 32
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->z:Z

    .line 33
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/I1;->z:Z

    if-ne v0, v1, :cond_2

    .line 34
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->A:Z

    .line 35
    iget-boolean v1, p1, Lcom/android/tools/r8/shaking/I1;->A:Z

    if-ne v0, v1, :cond_2

    .line 36
    iget-object v0, p0, Lcom/android/tools/r8/shaking/I1;->B:Lcom/android/tools/r8/shaking/i1;

    .line 37
    iget-object p1, p1, Lcom/android/tools/r8/shaking/I1;->B:Lcom/android/tools/r8/shaking/i1;

    if-ne v0, p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final b()I
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/shaking/I1;->E:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/I1;->B:Lcom/android/tools/r8/shaking/i1;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/i1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/android/tools/r8/shaking/F1;->b()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I1;->l:Z

    const/16 v2, 0xa

    invoke-static {v2, v1}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v1

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->m:Z

    const/16 v2, 0xb

    invoke-static {v2, v0}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v0

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I1;->n:Z

    const/16 v2, 0xc

    invoke-static {v2, v1}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v1

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->o:Z

    const/16 v2, 0xd

    invoke-static {v2, v0}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v0

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I1;->p:Z

    const/16 v2, 0xe

    invoke-static {v2, v1}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v1

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->q:Z

    const/16 v2, 0xf

    invoke-static {v2, v0}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v0

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I1;->r:Z

    const/16 v2, 0x10

    invoke-static {v2, v1}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v1

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->s:Z

    const/16 v2, 0x11

    invoke-static {v2, v0}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v0

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I1;->t:Z

    const/16 v2, 0x12

    invoke-static {v2, v1}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v1

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->u:Z

    const/16 v2, 0x13

    invoke-static {v2, v0}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v0

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I1;->v:Z

    const/16 v2, 0x14

    invoke-static {v2, v1}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v1

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->w:Z

    const/16 v2, 0x15

    invoke-static {v2, v0}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v0

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I1;->x:Z

    const/16 v2, 0x16

    invoke-static {v2, v1}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v1

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->y:Z

    const/16 v2, 0x17

    invoke-static {v2, v0}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v0

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/I1;->z:Z

    const/16 v2, 0x18

    invoke-static {v2, v1}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v1

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/I1;->A:Z

    const/16 v2, 0x19

    invoke-static {v2, v0}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/tools/r8/shaking/I1;->B:Lcom/android/tools/r8/shaking/i1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v1, Lcom/android/tools/r8/shaking/h1;

    const/16 v2, 0x1a

    invoke-static {v2, v1}, Lcom/android/tools/r8/shaking/t1;->a(IZ)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public c()Lcom/android/tools/r8/shaking/G1;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/shaking/G1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/G1;-><init>(Lcom/android/tools/r8/shaking/I1;)V

    return-object v0
.end method

.method public d()Lcom/android/tools/r8/shaking/H1;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/shaking/I1;->E:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/tools/r8/shaking/I1;->C:Lcom/android/tools/r8/shaking/I1;

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
    new-instance v0, Lcom/android/tools/r8/shaking/H1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/H1;-><init>(Lcom/android/tools/r8/shaking/I1;)V

    return-object v0
.end method

.method public final g(Lcom/android/tools/r8/shaking/Q0;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/tools/r8/shaking/I1;->n:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final h(Lcom/android/tools/r8/shaking/Q0;)Z
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->F()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->J:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    iget-boolean p1, p0, Lcom/android/tools/r8/shaking/I1;->o:Z

    return p1
.end method

.method public final i(Lcom/android/tools/r8/shaking/Q0;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/I1;->g(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/tools/r8/shaking/t1;->g:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/tools/r8/shaking/I1;->s:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

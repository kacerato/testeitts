.class public final Lcom/android/tools/r8/internal/la0;
.super Lcom/android/tools/r8/shaking/x;
.source "SourceFile"


# static fields
.field public static final r:Lcom/android/tools/r8/shaking/i0;


# instance fields
.field public final q:Lcom/android/tools/r8/internal/La0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Ri1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ri1;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/la0;->r:Lcom/android/tools/r8/shaking/i0;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/androidapi/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/shaking/x;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/androidapi/a;)V

    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->C:Lcom/android/tools/r8/internal/Oa0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Oa0;->h:Lcom/android/tools/r8/internal/La0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/la0;->q:Lcom/android/tools/r8/internal/La0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/util/ListIterator;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/la0;->q:Lcom/android/tools/r8/internal/La0;

    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/La0;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p0, Lcom/android/tools/r8/shaking/x;->j:Lcom/android/tools/r8/shaking/N;

    iget-object p3, p2, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p2, Lcom/android/tools/r8/shaking/N;->E:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/x;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/ListIterator;Z)V

    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/l1;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/la0;->q:Lcom/android/tools/r8/internal/La0;

    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/La0;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/la0;->q:Lcom/android/tools/r8/internal/La0;

    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/internal/La0;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v0, v0, Lcom/android/tools/r8/internal/La0;->v:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v2, v1, v1, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->i:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/la0;->q:Lcom/android/tools/r8/internal/La0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/La0;->d:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/O2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/la0;->q:Lcom/android/tools/r8/internal/La0;

    iget-object v2, v1, Lcom/android/tools/r8/internal/La0;->a:Lcom/android/tools/r8/graph/u1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v1, Lcom/android/tools/r8/internal/La0;->d:Lcom/android/tools/r8/graph/M2;

    iget-object v1, v1, Lcom/android/tools/r8/internal/La0;->w:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v2, v0, v3, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    if-ne p1, v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/x;->j:Lcom/android/tools/r8/shaking/N;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, v0, Lcom/android/tools/r8/shaking/N;->E:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    invoke-super {p0, p1}, Lcom/android/tools/r8/shaking/x;->e(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.class public final Lcom/android/tools/r8/shaking/K4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Ds0;
.implements Lcom/android/tools/r8/internal/zs0;
.implements Lcom/android/tools/r8/internal/Bs0;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Hz;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Ljava/util/Set;

.field public final d:Ljava/util/Set;

.field public final e:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/K4;->c:Ljava/util/Set;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/K4;->d:Ljava/util/Set;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/K4;->e:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/K4;->a:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/shaking/K4;->b:Lcom/android/tools/r8/graph/u1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/shaking/L4;
    .locals 4

    .line 2
    new-instance v0, Lcom/android/tools/r8/shaking/L4;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/K4;->c:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/K4;->d:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/K4;->e:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/shaking/L4;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Hz;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/shaking/K4;->a:Lcom/android/tools/r8/internal/Hz;

    if-eq p1, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Hz;->d()Lcom/android/tools/r8/internal/R00;

    move-result-object p1

    iget-object v1, p0, Lcom/android/tools/r8/shaking/K4;->a:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/shaking/L4;->a(Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/shaking/L4;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 5
    iget-object p2, p0, Lcom/android/tools/r8/shaking/K4;->d:Ljava/util/Set;

    .line 6
    iget-object p3, p0, Lcom/android/tools/r8/shaking/K4;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 8
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    iget-object p2, p0, Lcom/android/tools/r8/shaking/K4;->c:Ljava/util/Set;

    iget-object p3, p0, Lcom/android/tools/r8/shaking/K4;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    iget-object p2, p0, Lcom/android/tools/r8/shaking/K4;->e:Ljava/util/Set;

    iget-object p3, p0, Lcom/android/tools/r8/shaking/K4;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.class public final Lcom/android/tools/r8/shaking/m2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Ljava/util/Set;

.field public final c:Ljava/util/Set;

.field public final d:Ljava/util/Set;

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/m2;->a:Ljava/util/Set;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/m2;->b:Ljava/util/Set;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/m2;->c:Ljava/util/Set;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/m2;->d:Ljava/util/Set;

    iput-boolean p1, p0, Lcom/android/tools/r8/shaking/m2;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)Lcom/android/tools/r8/shaking/o2;
    .locals 7

    .line 11
    sget-boolean v0, Lcom/android/tools/r8/shaking/m2;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/m2;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_1
    :goto_0
    new-instance v6, Lcom/android/tools/r8/shaking/o2;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/m2;->b:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/m2;->c:Ljava/util/Set;

    iget-object v4, p0, Lcom/android/tools/r8/shaking/m2;->d:Ljava/util/Set;

    iget-boolean v5, p0, Lcom/android/tools/r8/shaking/m2;->e:Z

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/shaking/o2;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Z)V

    return-object v6
.end method

.method public final a(Lcom/android/tools/r8/synthesis/J;)Ljava/util/function/Consumer;
    .locals 1

    .line 4
    new-instance v0, Lcom/android/tools/r8/shaking/zd;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/shaking/zd;-><init>(Lcom/android/tools/r8/shaking/m2;Lcom/android/tools/r8/synthesis/J;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/m2;->d(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/shaking/m2;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/m2;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/m2;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/synthesis/J;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/shaking/m2;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/m2;->b:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/J;->c:Lcom/android/tools/r8/synthesis/d;

    .line 7
    iget-object v0, p1, Lcom/android/tools/r8/synthesis/d;->b:Lcom/android/tools/r8/internal/nC;

    .line 8
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/nC;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/android/tools/r8/synthesis/d;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/nC;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/shaking/m2;->b(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/m2;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/m2;->a(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/m2;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/shaking/m2;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/m2;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/m2;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/m2;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/m2;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

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

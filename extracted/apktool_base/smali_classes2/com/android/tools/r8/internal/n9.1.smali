.class public final Lcom/android/tools/r8/internal/n9;
.super Lcom/android/tools/r8/internal/o9;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/o9;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Al0;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/n9;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/n9;->c:Ljava/util/Set;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/n9;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/D5;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/n9;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/n9;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/n9;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/n9;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/n9;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final z(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    iget-object p2, p0, Lcom/android/tools/r8/internal/n9;->c:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

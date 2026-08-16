.class public final Lcom/android/tools/r8/internal/vx0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/vx0;

.field public final b:Lcom/android/tools/r8/graph/H5;

.field public c:Ljava/util/Set;

.field public d:Ljava/util/List;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/vx0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/tools/r8/internal/vx0;->c:Ljava/util/Set;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/vx0;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/vx0;->e:Z

    sget-boolean v0, Lcom/android/tools/r8/internal/vx0;->f:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/android/tools/r8/internal/vx0;->a:Lcom/android/tools/r8/internal/vx0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/vx0;->b:Lcom/android/tools/r8/graph/H5;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/vx0;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/vx0;->a:Lcom/android/tools/r8/internal/vx0;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/vx0;->a()Lcom/android/tools/r8/internal/vx0;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/vx0;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/vx0;->f:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v1, p1, Lcom/android/tools/r8/internal/vx0;->b:Lcom/android/tools/r8/graph/H5;

    .line 3
    iget-object v2, p0, Lcom/android/tools/r8/internal/vx0;->b:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/H0;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 4
    iget-object v0, p1, Lcom/android/tools/r8/internal/vx0;->b:Lcom/android/tools/r8/graph/H5;

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vx0;->b:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/vx0;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/vx0;->c:Ljava/util/Set;

    .line 8
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/vx0;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/vx0;->a:Lcom/android/tools/r8/internal/vx0;

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/vx0;->a(Lcom/android/tools/r8/internal/vx0;)V

    :cond_5
    return-void
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 1

    .line 13
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/vx0;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

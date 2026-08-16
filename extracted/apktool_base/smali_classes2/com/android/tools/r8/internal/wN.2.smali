.class public final Lcom/android/tools/r8/internal/wN;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public a:Z

.field public final b:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/wN;->a:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/wN;->b:Ljava/util/HashSet;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/rN;)Z
    .locals 0

    instance-of p0, p0, Lcom/android/tools/r8/internal/dN;

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/rN;)Lcom/android/tools/r8/internal/wN;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/wN;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/zN;)Lcom/android/tools/r8/internal/wN;
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/android/tools/r8/internal/yN;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/android/tools/r8/internal/wN;->a:Z

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/internal/uN;

    if-eqz v0, :cond_1

    .line 4
    iput-boolean v1, p0, Lcom/android/tools/r8/internal/wN;->a:Z

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/wN;->b:Ljava/util/HashSet;

    check-cast p1, Lcom/android/tools/r8/internal/uN;

    iget-object p1, p1, Lcom/android/tools/r8/internal/uN;->b:Lcom/android/tools/r8/internal/xN;

    iget-object p1, p1, Lcom/android/tools/r8/internal/xN;->b:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0

    .line 6
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/wN;->c:Z

    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/android/tools/r8/internal/xN;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/wN;->b:Ljava/util/HashSet;

    check-cast p1, Lcom/android/tools/r8/internal/xN;

    iget-object p1, p1, Lcom/android/tools/r8/internal/xN;->b:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final a()V
    .locals 2

    .line 8
    sget-boolean v0, Lcom/android/tools/r8/internal/wN;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wN;->b:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Lx1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Lx1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

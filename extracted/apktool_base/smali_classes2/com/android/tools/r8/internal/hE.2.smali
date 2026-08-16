.class public final Lcom/android/tools/r8/internal/hE;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/x1;

.field public c:I

.field public final d:Ljava/util/ArrayList;

.field public final e:Lcom/android/tools/r8/internal/wA;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/x1;Lcom/android/tools/r8/internal/wA;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/hE;->d:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/tools/r8/internal/hE;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/hE;->b:Lcom/android/tools/r8/internal/x1;

    iput-object p3, p0, Lcom/android/tools/r8/internal/hE;->e:Lcom/android/tools/r8/internal/wA;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/tools/r8/internal/hE;->c:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/internal/AA;Lcom/android/tools/r8/internal/eE;Ljava/util/List;)Lcom/android/tools/r8/internal/iE;
    .locals 8

    .line 7
    new-instance v7, Lcom/android/tools/r8/internal/iE;

    iget-object v1, p0, Lcom/android/tools/r8/internal/hE;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/internal/hE;->b:Lcom/android/tools/r8/internal/x1;

    iget-object v5, p0, Lcom/android/tools/r8/internal/hE;->e:Lcom/android/tools/r8/internal/wA;

    move-object v0, v7

    move-object v3, p1

    move-object v4, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/iE;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/x1;Lcom/android/tools/r8/internal/AA;Ljava/util/List;Lcom/android/tools/r8/internal/wA;Lcom/android/tools/r8/internal/eE;)V

    return-object v7
.end method

.method public final a(Lcom/android/tools/r8/internal/AA;Ljava/util/List;)Lcom/android/tools/r8/internal/iE;
    .locals 8

    .line 3
    new-instance v7, Lcom/android/tools/r8/internal/iE;

    iget-object v1, p0, Lcom/android/tools/r8/internal/hE;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/internal/hE;->b:Lcom/android/tools/r8/internal/x1;

    iget-object v5, p0, Lcom/android/tools/r8/internal/hE;->e:Lcom/android/tools/r8/internal/wA;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v3, p1

    move-object v4, p2

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/iE;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/x1;Lcom/android/tools/r8/internal/AA;Ljava/util/List;Lcom/android/tools/r8/internal/wA;Lcom/android/tools/r8/internal/eE;)V

    return-object v7
.end method

.method public final a(Lcom/android/tools/r8/internal/AA;)Ljava/util/List;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/hE;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/hE;->d:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Cc1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Cc1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/hE;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/Dc1;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/Dc1;-><init>(Lcom/android/tools/r8/internal/hE;Lcom/android/tools/r8/internal/AA;)V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/AA;Lcom/android/tools/r8/internal/eE;)Ljava/util/List;
    .locals 2

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/internal/hE;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/hE;->d:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Cc1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Cc1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/hE;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/Ec1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/tools/r8/internal/Ec1;-><init>(Lcom/android/tools/r8/internal/hE;Lcom/android/tools/r8/internal/AA;Lcom/android/tools/r8/internal/eE;)V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

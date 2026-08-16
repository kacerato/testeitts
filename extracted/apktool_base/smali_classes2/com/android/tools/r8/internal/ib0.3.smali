.class public final Lcom/android/tools/r8/internal/ib0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Ljava/util/Set;

.field public final c:Ljava/util/Map;

.field public final d:Ljava/util/Map;

.field public final e:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/XB;Ljava/util/Collection;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ib0;->a:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/tools/r8/internal/ib0;->b:Ljava/util/Set;

    new-instance p1, Lu/y0;

    invoke-direct {p1}, Lu/y0;-><init>()V

    new-instance p2, Lcom/android/tools/r8/graph/x8;

    invoke-direct {p2}, Lcom/android/tools/r8/graph/x8;-><init>()V

    invoke-static {p3, p1, p2}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/Collection;Ljava/util/function/IntFunction;Ljava/util/function/Function;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/ib0;->c:Ljava/util/Map;

    new-instance p1, Lu/y0;

    invoke-direct {p1}, Lu/y0;-><init>()V

    new-instance p2, Lcom/android/tools/r8/internal/we1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/we1;-><init>()V

    invoke-static {p4, p1, p2}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/Collection;Ljava/util/function/IntFunction;Ljava/util/function/Function;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/ib0;->d:Ljava/util/Map;

    iput-object p5, p0, Lcom/android/tools/r8/internal/ib0;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ib0;->a:Ljava/util/Set;

    new-instance v1, Lcom/android/tools/r8/errors/q;

    invoke-direct {v1}, Lcom/android/tools/r8/errors/q;-><init>()V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/Al0;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ib0;->b:Ljava/util/Set;

    new-instance v1, Lcom/android/tools/r8/errors/q;

    invoke-direct {v1}, Lcom/android/tools/r8/errors/q;-><init>()V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/Al0;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

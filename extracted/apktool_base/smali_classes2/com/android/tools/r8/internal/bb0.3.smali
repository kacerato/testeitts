.class public final Lcom/android/tools/r8/internal/bb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/metadata/R8FeatureSplitsMetadata;


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Ljava/util/List;
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "featureSplits"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/tools/r8/metadata/R8FeatureSplitMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "isolatedSplits"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Qv;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/bb0;->a:Ljava/util/List;

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/Qv;->b:Z

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/bb0;->b:Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Ljava/util/Map;)Lcom/android/tools/r8/internal/bb0;
    .locals 6

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    sget-boolean v0, Lcom/android/tools/r8/internal/bb0;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/tools/r8/internal/nJ;->s:Lcom/android/tools/r8/internal/Qv;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Qv;->a:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/FeatureSplit;

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    new-instance v5, Lcom/android/tools/r8/internal/i11;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/i11;-><init>()V

    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/ab0;

    invoke-direct {v5, v4}, Lcom/android/tools/r8/internal/ab0;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/bb0;

    invoke-direct {p1, p0, v1}, Lcom/android/tools/r8/internal/bb0;-><init>(Lcom/android/tools/r8/internal/Qv;Ljava/util/ArrayList;)V

    return-object p1
.end method


# virtual methods
.method public final getFeatureSplits()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/bb0;->a:Ljava/util/List;

    return-object v0
.end method

.method public final isIsolatedSplitsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/bb0;->b:Z

    return v0
.end method

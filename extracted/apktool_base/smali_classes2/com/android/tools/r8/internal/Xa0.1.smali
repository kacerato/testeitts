.class public final Lcom/android/tools/r8/internal/Xa0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/metadata/R8BuildMetadata;


# instance fields
.field public final a:Lcom/android/tools/r8/metadata/R8OptionsMetadata;
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "options"
    .end annotation
.end field

.field public final b:Lcom/android/tools/r8/metadata/R8BaselineProfileRewritingMetadata;
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "baselineProfileRewriting"
    .end annotation
.end field

.field public final c:Lcom/android/tools/r8/metadata/R8CompilationMetadata;
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "compilation"
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "dexFiles"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/tools/r8/metadata/R8DexFileMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/android/tools/r8/metadata/R8StatsMetadata;
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "stats"
    .end annotation
.end field

.field public final f:Lcom/android/tools/r8/metadata/R8FeatureSplitsMetadata;
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "featureSplits"
    .end annotation
.end field

.field public final g:Lcom/android/tools/r8/metadata/R8ResourceOptimizationMetadata;
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "resourceOptimization"
    .end annotation
.end field

.field public final h:Lcom/android/tools/r8/metadata/R8StartupOptimizationMetadata;
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "startupOptimization"
    .end annotation
.end field

.field public final i:Ljava/lang/String;
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/fb0;Lcom/android/tools/r8/internal/Va0;Lcom/android/tools/r8/internal/Ya0;Ljava/util/List;Lcom/android/tools/r8/internal/Bb0;Lcom/android/tools/r8/internal/bb0;Lcom/android/tools/r8/internal/tb0;Lcom/android/tools/r8/internal/zb0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Xa0;->a:Lcom/android/tools/r8/metadata/R8OptionsMetadata;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Xa0;->b:Lcom/android/tools/r8/metadata/R8BaselineProfileRewritingMetadata;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Xa0;->c:Lcom/android/tools/r8/metadata/R8CompilationMetadata;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Xa0;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/android/tools/r8/internal/Xa0;->e:Lcom/android/tools/r8/metadata/R8StatsMetadata;

    iput-object p6, p0, Lcom/android/tools/r8/internal/Xa0;->f:Lcom/android/tools/r8/metadata/R8FeatureSplitsMetadata;

    iput-object p7, p0, Lcom/android/tools/r8/internal/Xa0;->g:Lcom/android/tools/r8/metadata/R8ResourceOptimizationMetadata;

    iput-object p8, p0, Lcom/android/tools/r8/internal/Xa0;->h:Lcom/android/tools/r8/metadata/R8StartupOptimizationMetadata;

    const-string p1, "8.10.21"

    iput-object p1, p0, Lcom/android/tools/r8/internal/Xa0;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getBaselineProfileRewritingMetadata()Lcom/android/tools/r8/metadata/R8BaselineProfileRewritingMetadata;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xa0;->b:Lcom/android/tools/r8/metadata/R8BaselineProfileRewritingMetadata;

    return-object v0
.end method

.method public final getCompilationMetadata()Lcom/android/tools/r8/metadata/R8CompilationMetadata;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xa0;->c:Lcom/android/tools/r8/metadata/R8CompilationMetadata;

    return-object v0
.end method

.method public final getDexFilesMetadata()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xa0;->d:Ljava/util/List;

    return-object v0
.end method

.method public final getFeatureSplitsMetadata()Lcom/android/tools/r8/metadata/R8FeatureSplitsMetadata;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xa0;->f:Lcom/android/tools/r8/metadata/R8FeatureSplitsMetadata;

    return-object v0
.end method

.method public final getOptionsMetadata()Lcom/android/tools/r8/metadata/R8OptionsMetadata;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xa0;->a:Lcom/android/tools/r8/metadata/R8OptionsMetadata;

    return-object v0
.end method

.method public final getResourceOptimizationMetadata()Lcom/android/tools/r8/metadata/R8ResourceOptimizationMetadata;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xa0;->g:Lcom/android/tools/r8/metadata/R8ResourceOptimizationMetadata;

    return-object v0
.end method

.method public final getStartupOptizationOptions()Lcom/android/tools/r8/metadata/R8StartupOptimizationMetadata;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xa0;->h:Lcom/android/tools/r8/metadata/R8StartupOptimizationMetadata;

    return-object v0
.end method

.method public final getStatsMetadata()Lcom/android/tools/r8/metadata/R8StatsMetadata;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xa0;->e:Lcom/android/tools/r8/metadata/R8StatsMetadata;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xa0;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final toJson()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Oz;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Oz;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/Oz;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

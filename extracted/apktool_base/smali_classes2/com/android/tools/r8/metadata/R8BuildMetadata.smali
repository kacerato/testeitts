.class public interface abstract Lcom/android/tools/r8/metadata/R8BuildMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/lang/Class;)Lcom/android/tools/r8/internal/cL;
    .locals 1

    .line 1
    new-instance v0, Lw/b;

    invoke-direct {v0, p0}, Lw/b;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method private static a(Ljava/lang/Class;Lcom/android/tools/r8/internal/dL;Ljava/lang/reflect/Type;Lcom/android/tools/r8/internal/ct0;)Ljava/lang/Object;
    .locals 0

    .line 2
    iget-object p2, p3, Lcom/android/tools/r8/internal/ct0;->a:Lcom/android/tools/r8/internal/et0;

    iget-object p2, p2, Lcom/android/tools/r8/internal/et0;->b:Lcom/android/tools/r8/internal/Oz;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance p3, Lcom/android/tools/r8/internal/Cu0;

    invoke-direct {p3, p0}, Lcom/android/tools/r8/internal/Cu0;-><init>(Ljava/lang/reflect/Type;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Lcom/android/tools/r8/internal/pL;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/pL;-><init>(Lcom/android/tools/r8/internal/dL;)V

    invoke-virtual {p2, p0, p3}, Lcom/android/tools/r8/internal/Oz;->a(Lcom/android/tools/r8/internal/lL;Lcom/android/tools/r8/internal/Cu0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Class;Lcom/android/tools/r8/internal/dL;Ljava/lang/reflect/Type;Lcom/android/tools/r8/internal/ct0;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/metadata/R8BuildMetadata;->a(Ljava/lang/Class;Lcom/android/tools/r8/internal/dL;Ljava/lang/reflect/Type;Lcom/android/tools/r8/internal/ct0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/android/tools/r8/metadata/R8BuildMetadata;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/Pz;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Pz;-><init>()V

    iget-object v1, v0, Lcom/android/tools/r8/internal/Pz;->a:Lcom/android/tools/r8/internal/pv;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pv;->clone()Lcom/android/tools/r8/internal/pv;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/tools/r8/internal/pv;->b:Z

    iput-object v1, v0, Lcom/android/tools/r8/internal/Pz;->a:Lcom/android/tools/r8/internal/pv;

    const-class v1, Lcom/android/tools/r8/internal/fb0;

    invoke-static {v1}, Lcom/android/tools/r8/metadata/R8BuildMetadata;->a(Ljava/lang/Class;)Lcom/android/tools/r8/internal/cL;

    move-result-object v1

    const-class v3, Lcom/android/tools/r8/metadata/R8OptionsMetadata;

    invoke-virtual {v0, v3, v1}, Lcom/android/tools/r8/internal/Pz;->a(Ljava/lang/Class;Lcom/android/tools/r8/internal/cL;)Lcom/android/tools/r8/internal/Pz;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/internal/Ua0;

    invoke-static {v1}, Lcom/android/tools/r8/metadata/R8BuildMetadata;->a(Ljava/lang/Class;)Lcom/android/tools/r8/internal/cL;

    move-result-object v1

    const-class v3, Lcom/android/tools/r8/metadata/R8ApiModelingMetadata;

    invoke-virtual {v0, v3, v1}, Lcom/android/tools/r8/internal/Pz;->a(Ljava/lang/Class;Lcom/android/tools/r8/internal/cL;)Lcom/android/tools/r8/internal/Pz;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/internal/Va0;

    invoke-static {v1}, Lcom/android/tools/r8/metadata/R8BuildMetadata;->a(Ljava/lang/Class;)Lcom/android/tools/r8/internal/cL;

    move-result-object v1

    const-class v3, Lcom/android/tools/r8/metadata/R8BaselineProfileRewritingMetadata;

    invoke-virtual {v0, v3, v1}, Lcom/android/tools/r8/internal/Pz;->a(Ljava/lang/Class;Lcom/android/tools/r8/internal/cL;)Lcom/android/tools/r8/internal/Pz;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/internal/Ya0;

    invoke-static {v1}, Lcom/android/tools/r8/metadata/R8BuildMetadata;->a(Ljava/lang/Class;)Lcom/android/tools/r8/internal/cL;

    move-result-object v1

    const-class v3, Lcom/android/tools/r8/metadata/R8CompilationMetadata;

    invoke-virtual {v0, v3, v1}, Lcom/android/tools/r8/internal/Pz;->a(Ljava/lang/Class;Lcom/android/tools/r8/internal/cL;)Lcom/android/tools/r8/internal/Pz;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/internal/Za0;

    invoke-static {v1}, Lcom/android/tools/r8/metadata/R8BuildMetadata;->a(Ljava/lang/Class;)Lcom/android/tools/r8/internal/cL;

    move-result-object v1

    const-class v3, Lcom/android/tools/r8/metadata/R8DexFileMetadata;

    invoke-virtual {v0, v3, v1}, Lcom/android/tools/r8/internal/Pz;->a(Ljava/lang/Class;Lcom/android/tools/r8/internal/cL;)Lcom/android/tools/r8/internal/Pz;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/internal/Bb0;

    invoke-static {v1}, Lcom/android/tools/r8/metadata/R8BuildMetadata;->a(Ljava/lang/Class;)Lcom/android/tools/r8/internal/cL;

    move-result-object v1

    const-class v3, Lcom/android/tools/r8/metadata/R8StatsMetadata;

    invoke-virtual {v0, v3, v1}, Lcom/android/tools/r8/internal/Pz;->a(Ljava/lang/Class;Lcom/android/tools/r8/internal/cL;)Lcom/android/tools/r8/internal/Pz;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/internal/ab0;

    invoke-static {v1}, Lcom/android/tools/r8/metadata/R8BuildMetadata;->a(Ljava/lang/Class;)Lcom/android/tools/r8/internal/cL;

    move-result-object v1

    const-class v3, Lcom/android/tools/r8/metadata/R8FeatureSplitMetadata;

    invoke-virtual {v0, v3, v1}, Lcom/android/tools/r8/internal/Pz;->a(Ljava/lang/Class;Lcom/android/tools/r8/internal/cL;)Lcom/android/tools/r8/internal/Pz;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/internal/bb0;

    invoke-static {v1}, Lcom/android/tools/r8/metadata/R8BuildMetadata;->a(Ljava/lang/Class;)Lcom/android/tools/r8/internal/cL;

    move-result-object v1

    const-class v3, Lcom/android/tools/r8/metadata/R8FeatureSplitsMetadata;

    invoke-virtual {v0, v3, v1}, Lcom/android/tools/r8/internal/Pz;->a(Ljava/lang/Class;Lcom/android/tools/r8/internal/cL;)Lcom/android/tools/r8/internal/Pz;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/internal/cb0;

    invoke-static {v1}, Lcom/android/tools/r8/metadata/R8BuildMetadata;->a(Ljava/lang/Class;)Lcom/android/tools/r8/internal/cL;

    move-result-object v1

    const-class v3, Lcom/android/tools/r8/metadata/R8KeepAttributesMetadata;

    invoke-virtual {v0, v3, v1}, Lcom/android/tools/r8/internal/Pz;->a(Ljava/lang/Class;Lcom/android/tools/r8/internal/cL;)Lcom/android/tools/r8/internal/Pz;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/internal/db0;

    invoke-static {v1}, Lcom/android/tools/r8/metadata/R8BuildMetadata;->a(Ljava/lang/Class;)Lcom/android/tools/r8/internal/cL;

    move-result-object v1

    const-class v3, Lcom/android/tools/r8/metadata/R8LibraryDesugaringMetadata;

    invoke-virtual {v0, v3, v1}, Lcom/android/tools/r8/internal/Pz;->a(Ljava/lang/Class;Lcom/android/tools/r8/internal/cL;)Lcom/android/tools/r8/internal/Pz;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/internal/tb0;

    invoke-static {v1}, Lcom/android/tools/r8/metadata/R8BuildMetadata;->a(Ljava/lang/Class;)Lcom/android/tools/r8/internal/cL;

    move-result-object v1

    const-class v3, Lcom/android/tools/r8/metadata/R8ResourceOptimizationMetadata;

    invoke-virtual {v0, v3, v1}, Lcom/android/tools/r8/internal/Pz;->a(Ljava/lang/Class;Lcom/android/tools/r8/internal/cL;)Lcom/android/tools/r8/internal/Pz;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/internal/zb0;

    invoke-static {v1}, Lcom/android/tools/r8/metadata/R8BuildMetadata;->a(Ljava/lang/Class;)Lcom/android/tools/r8/internal/cL;

    move-result-object v1

    const-class v3, Lcom/android/tools/r8/metadata/R8StartupOptimizationMetadata;

    invoke-virtual {v0, v3, v1}, Lcom/android/tools/r8/internal/Pz;->a(Ljava/lang/Class;Lcom/android/tools/r8/internal/cL;)Lcom/android/tools/r8/internal/Pz;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/tools/r8/internal/Pz;->g:Z

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Pz;->a()Lcom/android/tools/r8/internal/Oz;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/internal/Xa0;

    invoke-virtual {v0, p0, v1}, Lcom/android/tools/r8/internal/Oz;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/metadata/R8BuildMetadata;

    return-object p0
.end method


# virtual methods
.method public abstract getBaselineProfileRewritingMetadata()Lcom/android/tools/r8/metadata/R8BaselineProfileRewritingMetadata;
.end method

.method public abstract getCompilationMetadata()Lcom/android/tools/r8/metadata/R8CompilationMetadata;
.end method

.method public abstract getDexFilesMetadata()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/metadata/R8DexFileMetadata;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFeatureSplitsMetadata()Lcom/android/tools/r8/metadata/R8FeatureSplitsMetadata;
.end method

.method public abstract getOptionsMetadata()Lcom/android/tools/r8/metadata/R8OptionsMetadata;
.end method

.method public abstract getResourceOptimizationMetadata()Lcom/android/tools/r8/metadata/R8ResourceOptimizationMetadata;
.end method

.method public abstract getStartupOptizationOptions()Lcom/android/tools/r8/metadata/R8StartupOptimizationMetadata;
.end method

.method public abstract getStatsMetadata()Lcom/android/tools/r8/metadata/R8StatsMetadata;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract toJson()Ljava/lang/String;
.end method

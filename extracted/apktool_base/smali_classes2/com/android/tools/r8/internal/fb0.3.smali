.class public final Lcom/android/tools/r8/internal/fb0;
.super Lcom/android/tools/r8/internal/Si;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/metadata/R8OptionsMetadata;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/internal/Si<",
        "Lcom/android/tools/r8/metadata/R8ApiModelingMetadata;",
        "Lcom/android/tools/r8/metadata/R8LibraryDesugaringMetadata;",
        ">;",
        "Lcom/android/tools/r8/metadata/R8OptionsMetadata;"
    }
.end annotation


# instance fields
.field public final e:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "hasObfuscationDictionary"
    .end annotation
.end field

.field public final f:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "hasClassObfuscationDictionary"
    .end annotation
.end field

.field public final g:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "hasPackageObfuscationDictionary"
    .end annotation
.end field

.field public final h:Lcom/android/tools/r8/metadata/R8KeepAttributesMetadata;
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "keepAttributes"
    .end annotation
.end field

.field public final i:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "isAccessModificationEnabled"
    .end annotation
.end field

.field public final j:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "isFlattenPackageHierarchyEnabled"
    .end annotation
.end field

.field public final k:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "isObfuscationEnabled"
    .end annotation
.end field

.field public final l:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "isOptimizationsEnabled"
    .end annotation
.end field

.field public final m:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "isProGuardCompatibilityModeEnabled"
    .end annotation
.end field

.field public final n:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "isProtoLiteOptimizationEnabled"
    .end annotation
.end field

.field public final o:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "isRepackageClassesEnabled"
    .end annotation
.end field

.field public final p:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "isShrinkingEnabled"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/H2;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/Ua0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ua0;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/WR;->a()Lcom/android/tools/r8/internal/xU;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xU;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/tools/r8/internal/db0;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/db0;-><init>(Lcom/android/tools/r8/internal/nJ;)V

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-direct {p0, v0, v2, p1}, Lcom/android/tools/r8/internal/Si;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/internal/Qi;Lcom/android/tools/r8/internal/nJ;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    if-eqz v4, :cond_3

    iget-object v5, v0, Lcom/android/tools/r8/shaking/o3;->z:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v3

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_3
    iput-boolean v5, p0, Lcom/android/tools/r8/internal/fb0;->e:Z

    if-eqz v4, :cond_4

    iget-object v5, v0, Lcom/android/tools/r8/shaking/o3;->A:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v3

    goto :goto_4

    :cond_4
    move v5, v2

    :goto_4
    iput-boolean v5, p0, Lcom/android/tools/r8/internal/fb0;->f:Z

    if-eqz v4, :cond_5

    iget-object v5, v0, Lcom/android/tools/r8/shaking/o3;->B:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    move v5, v3

    goto :goto_5

    :cond_5
    move v5, v2

    :goto_5
    iput-boolean v5, p0, Lcom/android/tools/r8/internal/fb0;->g:Z

    if-eqz v4, :cond_6

    new-instance v1, Lcom/android/tools/r8/internal/cb0;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/o3;->f()Lcom/android/tools/r8/shaking/I3;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/tools/r8/internal/cb0;-><init>(Lcom/android/tools/r8/shaking/I3;)V

    :cond_6
    iput-object v1, p0, Lcom/android/tools/r8/internal/fb0;->h:Lcom/android/tools/r8/metadata/R8KeepAttributesMetadata;

    iget-object v1, p1, Lcom/android/tools/r8/internal/nJ;->j1:Lcom/android/tools/r8/internal/U1;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/U1;->a()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/fb0;->i:Z

    if-eqz v4, :cond_7

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/o3;->j()Lcom/android/tools/r8/internal/nJ$m;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/tools/r8/internal/nJ$m;->e:Lcom/android/tools/r8/internal/nJ$m;

    if-ne v1, v5, :cond_7

    move v1, v3

    goto :goto_6

    :cond_7
    move v1, v2

    :goto_6
    iput-boolean v1, p0, Lcom/android/tools/r8/internal/fb0;->j:Z

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->R()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/fb0;->k:Z

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->T()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/fb0;->l:Z

    iget-boolean v1, p1, Lcom/android/tools/r8/internal/nJ;->d1:Z

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/fb0;->m:Z

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->a0()Lcom/android/tools/r8/internal/nJ$n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ$n;->a()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/fb0;->n:Z

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/o3;->j()Lcom/android/tools/r8/internal/nJ$m;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/tools/r8/internal/nJ$m;->d:Lcom/android/tools/r8/internal/nJ$m;

    if-ne v0, v1, :cond_8

    move v2, v3

    :cond_8
    iput-boolean v2, p0, Lcom/android/tools/r8/internal/fb0;->o:Z

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/fb0;->p:Z

    return-void
.end method


# virtual methods
.method public final getApiModelingMetadata()Lcom/android/tools/r8/metadata/R8ApiModelingMetadata;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Si;->a:Ljava/lang/Object;

    check-cast v0, Lcom/android/tools/r8/metadata/R8ApiModelingMetadata;

    return-object v0
.end method

.method public final getKeepAttributesMetadata()Lcom/android/tools/r8/metadata/R8KeepAttributesMetadata;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/fb0;->h:Lcom/android/tools/r8/metadata/R8KeepAttributesMetadata;

    return-object v0
.end method

.method public final getLibraryDesugaringMetadata()Lcom/android/tools/r8/metadata/R8LibraryDesugaringMetadata;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Si;->b:Lcom/android/tools/r8/internal/Pi;

    check-cast v0, Lcom/android/tools/r8/metadata/R8LibraryDesugaringMetadata;

    return-object v0
.end method

.method public final hasClassObfuscationDictionary()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/fb0;->f:Z

    return v0
.end method

.method public final hasObfuscationDictionary()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/fb0;->e:Z

    return v0
.end method

.method public final hasPackageObfuscationDictionary()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/fb0;->g:Z

    return v0
.end method

.method public final isAccessModificationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/fb0;->i:Z

    return v0
.end method

.method public final isFlattenPackageHierarchyEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/fb0;->j:Z

    return v0
.end method

.method public final isObfuscationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/fb0;->k:Z

    return v0
.end method

.method public final isOptimizationsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/fb0;->l:Z

    return v0
.end method

.method public final isProGuardCompatibilityModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/fb0;->m:Z

    return v0
.end method

.method public final isProtoLiteOptimizationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/fb0;->n:Z

    return v0
.end method

.method public final isRepackageClassesEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/fb0;->o:Z

    return v0
.end method

.method public final isShrinkingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/fb0;->p:Z

    return v0
.end method

.class public final Lcom/android/tools/r8/internal/cb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/metadata/R8KeepAttributesMetadata;


# instance fields
.field public final a:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "isAnnotationDefaultKept"
    .end annotation
.end field

.field public final b:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "isEnclosingMethodKept"
    .end annotation
.end field

.field public final c:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "isExceptionsKept"
    .end annotation
.end field

.field public final d:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "isInnerClassesKept"
    .end annotation
.end field

.field public final e:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "isLocalVariableTableKept"
    .end annotation
.end field

.field public final f:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "isLocalVariableTypeTableKept"
    .end annotation
.end field

.field public final g:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "isMethodParametersKept"
    .end annotation
.end field

.field public final h:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "isPermittedSubclassesKept"
    .end annotation
.end field

.field public final i:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "isRuntimeInvisibleAnnotationsKept"
    .end annotation
.end field

.field public final j:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "isRuntimeInvisibleParameterAnnotationsKept"
    .end annotation
.end field

.field public final k:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "isRuntimeInvisibleTypeAnnotationsKept"
    .end annotation
.end field

.field public final l:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "isRuntimeVisibleAnnotationsKept"
    .end annotation
.end field

.field public final m:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "isRuntimeVisibleParameterAnnotationsKept"
    .end annotation
.end field

.field public final n:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "isRuntimeVisibleTypeAnnotationsKept"
    .end annotation
.end field

.field public final o:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "isSignatureKept"
    .end annotation
.end field

.field public final p:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "isSourceDebugExtensionKept"
    .end annotation
.end field

.field public final q:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "isSourceDirKept"
    .end annotation
.end field

.field public final r:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "isSourceFileKept"
    .end annotation
.end field

.field public final s:Z
    .annotation runtime Lcom/android/tools/r8/internal/qv;
    .end annotation

    .annotation runtime Lcom/android/tools/r8/internal/yl0;
        value = "isStackMapTableKept"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/shaking/I3;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/I3;->q:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->a:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/I3;->d:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->b:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/I3;->f:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->c:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/I3;->c:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->d:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/I3;->g:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->e:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/I3;->h:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->f:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/I3;->i:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->g:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/I3;->s:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->h:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/I3;->l:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->i:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/I3;->n:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->j:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/I3;->p:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->k:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/I3;->k:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->l:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/I3;->m:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->m:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/I3;->o:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->n:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/I3;->e:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->o:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/I3;->j:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->p:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/I3;->b:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->q:Z

    iget-boolean v0, p1, Lcom/android/tools/r8/shaking/I3;->a:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->r:Z

    iget-boolean p1, p1, Lcom/android/tools/r8/shaking/I3;->r:Z

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/cb0;->s:Z

    return-void
.end method


# virtual methods
.method public final isAnnotationDefaultKept()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->a:Z

    return v0
.end method

.method public final isEnclosingMethodKept()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->b:Z

    return v0
.end method

.method public final isExceptionsKept()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->c:Z

    return v0
.end method

.method public final isInnerClassesKept()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->d:Z

    return v0
.end method

.method public final isLocalVariableTableKept()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->e:Z

    return v0
.end method

.method public final isLocalVariableTypeTableKept()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->f:Z

    return v0
.end method

.method public final isMethodParametersKept()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->g:Z

    return v0
.end method

.method public final isPermittedSubclassesKept()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->h:Z

    return v0
.end method

.method public final isRuntimeInvisibleAnnotationsKept()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->i:Z

    return v0
.end method

.method public final isRuntimeInvisibleParameterAnnotationsKept()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->j:Z

    return v0
.end method

.method public final isRuntimeInvisibleTypeAnnotationsKept()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->k:Z

    return v0
.end method

.method public final isRuntimeVisibleAnnotationsKept()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->l:Z

    return v0
.end method

.method public final isRuntimeVisibleParameterAnnotationsKept()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->m:Z

    return v0
.end method

.method public final isRuntimeVisibleTypeAnnotationsKept()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->n:Z

    return v0
.end method

.method public final isSignatureKept()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->o:Z

    return v0
.end method

.method public final isSourceDebugExtensionKept()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->p:Z

    return v0
.end method

.method public final isSourceDirKept()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->q:Z

    return v0
.end method

.method public final isSourceFileKept()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->r:Z

    return v0
.end method

.method public final isStackMapTableKept()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/cb0;->s:Z

    return v0
.end method

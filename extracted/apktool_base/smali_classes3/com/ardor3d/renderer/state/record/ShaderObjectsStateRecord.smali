.class public Lcom/ardor3d/renderer/state/record/ShaderObjectsStateRecord;
.super Lcom/ardor3d/renderer/state/record/StateRecord;
.source "SourceFile"


# instance fields
.field public enabledAttributes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field reference:Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/ShaderObjectsStateRecord;->reference:Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;

    invoke-static {}, Lcom/google/common/collect/D2;->u()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/ShaderObjectsStateRecord;->enabledAttributes:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getReference()Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/ShaderObjectsStateRecord;->reference:Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    invoke-super {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;->invalidate()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/ShaderObjectsStateRecord;->reference:Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;

    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/ShaderObjectsStateRecord;->enabledAttributes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public setReference(Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/renderer/state/record/ShaderObjectsStateRecord;->reference:Lcom/ardor3d/renderer/state/GLSLShaderObjectsState;

    return-void
.end method

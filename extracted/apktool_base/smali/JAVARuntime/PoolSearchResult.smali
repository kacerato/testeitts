.class public LJAVARuntime/PoolSearchResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public transient instance:Lm9/k;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm9/k;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJAVARuntime/PoolSearchResult;->instance:Lm9/k;

    return-void
.end method


# virtual methods
.method public getDistance()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the distance of the HPOP search result."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a dist\u00e2ncia do resultado da busca do HPOP."
    .end annotation

    iget-object v0, p0, LJAVARuntime/PoolSearchResult;->instance:Lm9/k;

    invoke-virtual {v0}, Lm9/k;->a()F

    move-result v0

    return v0
.end method

.method public getObject()LJAVARuntime/PooledObject;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the object of the HPOP search result."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o objeto do resultado da busca do HPOP."
    .end annotation

    iget-object v0, p0, LJAVARuntime/PoolSearchResult;->instance:Lm9/k;

    invoke-virtual {v0}, Lm9/k;->b()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->C()LJAVARuntime/PooledObject;

    move-result-object v0

    return-object v0
.end method

.method public getSquaredDistance()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the squared distance of the HPOP search result."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a dist\u00e2ncia ao quadrado do resultado da busca do HPOP."
    .end annotation

    iget-object v0, p0, LJAVARuntime/PoolSearchResult;->instance:Lm9/k;

    invoke-virtual {v0}, Lm9/k;->c()F

    move-result v0

    return v0
.end method

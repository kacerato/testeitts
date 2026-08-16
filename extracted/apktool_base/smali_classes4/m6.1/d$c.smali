.class public Lm6/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm6/d;->w1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:[I

.field public final synthetic c:[I

.field public final synthetic d:[I

.field public final synthetic e:[I

.field public final synthetic f:[I

.field public final synthetic g:[I

.field public final synthetic h:[I

.field public final synthetic i:Lm6/d;


# direct methods
.method public constructor <init>(Lm6/d;[I[I[I[I[I[I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$c",
            "val$sc",
            "val$dc",
            "val$components",
            "val$v",
            "val$t",
            "val$sp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lm6/d$c;->i:Lm6/d;

    iput-object p2, p0, Lm6/d$c;->b:[I

    iput-object p3, p0, Lm6/d$c;->c:[I

    iput-object p4, p0, Lm6/d$c;->d:[I

    iput-object p5, p0, Lm6/d$c;->e:[I

    iput-object p6, p0, Lm6/d$c;->f:[I

    iput-object p7, p0, Lm6/d$c;->g:[I

    iput-object p8, p0, Lm6/d$c;->h:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    iget-object v0, p0, Lm6/d$c;->b:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->w1()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    move-result-object v0

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->STATIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lm6/d$c;->c:[I

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lm6/d$c;->d:[I

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    :goto_0
    iget-object v0, p0, Lm6/d$c;->e:[I

    aget v2, v0, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v0, v1

    move v0, v1

    :goto_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v0, v2, :cond_8

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v2

    goto :goto_3

    :cond_1
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SkinnedModelRenderer/SkinnedModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v2

    goto :goto_3

    :cond_2
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer;

    if-eqz v3, :cond_3

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AnimatedModel/AnimatedModelRenderer;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v2

    goto :goto_3

    :cond_3
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    if-eqz v3, :cond_4

    :try_start_0
    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object v3, p0, Lm6/d$c;->f:[I

    aget v4, v3, v1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getRenderedVerticesCount()I

    move-result v5

    add-int/2addr v4, v5

    aput v4, v3, v1

    iget-object v3, p0, Lm6/d$c;->g:[I

    aget v4, v3, v1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getRenderedTrianglesCount()I

    move-result v2

    add-int/2addr v4, v2

    aput v4, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_4
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    if-eqz v3, :cond_5

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getMaxParticles()I

    goto :goto_2

    :cond_5
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Sound/SoundPlayer;

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lm6/d$c;->h:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_6
    :goto_2
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_7

    iget-object v3, p0, Lm6/d$c;->f:[I

    aget v4, v3, v1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v5

    add-int/2addr v4, v5

    aput v4, v3, v1

    iget-object v3, p0, Lm6/d$c;->g:[I

    aget v4, v3, v1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->W0()I

    move-result v2

    add-int/2addr v4, v2

    aput v4, v3, v1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "gameObject"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0, p1}, Lm6/d$c;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

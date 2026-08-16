.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;
.super Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final F1:Ljava/lang/Class;

.field public static final y1:Ljava/lang/String; = "UIProcessingGraph"


# instance fields
.field public transient q1:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

.field public transient v1:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->F1:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph$b;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph$b;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "UIProcessingGraph"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shaderFile"
        }
    .end annotation

    .line 2
    const-string v0, "UIProcessingGraph"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;-><init>(Ljava/lang/String;Z)V

    .line 3
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->shaderFile:Ljava/lang/String;

    return-void
.end method

.method private applyDefaultsFromGraph(Ljava/util/Map;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "paramMap",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LVb/b;",
            ">;",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v5, 0x2

    const/4 v7, 0x0

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->e()V

    move v8, v7

    :goto_0
    iget-object v9, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const-string v10, "sampler2D"

    const-string v11, "float4"

    const-string v12, "float3"

    const-string v13, "float2"

    const-string v14, "float01"

    const-string v15, "float"

    if-ge v8, v9, :cond_c

    iget-object v9, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawNumberNode;

    const-string v3, "_"

    const-string v4, "[^A-Za-z0-9_]"

    const-string v6, "sgp_"

    if-eqz v9, :cond_1

    iget-object v9, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawNumberNode;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawNumberNode;->value:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v0, v1, v3, v15, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->applyParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_1
    iget-object v9, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawSliderNode;

    if-eqz v9, :cond_2

    iget-object v9, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawSliderNode;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawSliderNode;->value:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v0, v1, v3, v14, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->applyParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    iget-object v9, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat2Node;

    if-eqz v9, :cond_3

    iget-object v9, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat2Node;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat2Node;->value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v4

    iget-object v6, v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat2Node;->value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result v6

    new-array v9, v5, [F

    aput v4, v9, v7

    const/4 v4, 0x1

    aput v6, v9, v4

    invoke-direct {v0, v1, v3, v13, v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->applyParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_3
    iget-object v9, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat3Node;

    if-eqz v9, :cond_4

    iget-object v9, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat3Node;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat3Node;->value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    iget-object v6, v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat3Node;->value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    iget-object v9, v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat3Node;->value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v9

    const/4 v10, 0x3

    new-array v11, v10, [F

    aput v4, v11, v7

    const/4 v4, 0x1

    aput v6, v11, v4

    aput v9, v11, v5

    invoke-direct {v0, v1, v3, v12, v11}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->applyParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_4
    iget-object v9, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat4Node;

    if-eqz v9, :cond_5

    iget-object v9, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat4Node;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat4Node;->value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getX()F

    move-result v4

    iget-object v6, v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat4Node;->value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getY()F

    move-result v6

    iget-object v10, v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat4Node;->value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getZ()F

    move-result v10

    iget-object v9, v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat4Node;->value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->f()F

    move-result v9

    const/4 v12, 0x4

    new-array v13, v12, [F

    aput v4, v13, v7

    const/4 v4, 0x1

    aput v6, v13, v4

    aput v10, v13, v5

    const/4 v4, 0x3

    aput v9, v13, v4

    invoke-direct {v0, v1, v3, v11, v13}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->applyParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_5
    iget-object v9, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawColorNode;

    if-eqz v9, :cond_6

    iget-object v9, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawColorNode;

    iget-object v10, v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawColorNode;->value:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v11

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v12

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v13

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v10

    const/4 v14, 0x4

    new-array v15, v14, [F

    aput v11, v15, v7

    const/4 v11, 0x1

    aput v12, v15, v11

    aput v13, v15, v5

    const/4 v11, 0x3

    aput v10, v15, v11

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rgba"

    invoke-direct {v0, v1, v3, v4, v15}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->applyParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    iget-object v9, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawTextureNode;

    if-eqz v9, :cond_7

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawTextureNode;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawTextureNode;->textureFile:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->applyTextureParam(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object v9, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode;

    if-eqz v9, :cond_8

    iget-object v9, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawGradientNode;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lyb/b;->i:Lub/p;

    invoke-direct {v0, v1, v3, v10, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->applyParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    :goto_1
    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->inputDefaults:Ljava/util/List;

    if-eqz v3, :cond_b

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->a:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->inputDefaults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;

    if-nez v4, :cond_a

    goto :goto_2

    :cond_a
    iget-object v6, v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v9, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->TEXTURE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v6, v9, :cond_9

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->fileIPP:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->applyTextureParam(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    const/4 v3, 0x1

    add-int/2addr v8, v3

    goto/16 :goto_0

    :cond_c
    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    if-eqz v2, :cond_f

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->attributes:Ljava/util/List;

    if-eqz v2, :cond_f

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    if-nez v3, :cond_d

    goto :goto_3

    :cond_d
    const-string v4, "cameraImage"

    iget-object v6, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_3

    :cond_e
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->a()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph$a;->a:[I

    iget-object v8, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v6, v6, v8

    packed-switch v6, :pswitch_data_0

    iget v3, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->number:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v0, v1, v4, v15, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->applyParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4
    :pswitch_0
    move-object/from16 p2, v2

    move v8, v5

    const/4 v2, 0x1

    const/4 v6, 0x3

    goto/16 :goto_5

    :pswitch_1
    iget v3, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->number:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v0, v1, v4, v14, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->applyParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :pswitch_2
    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->file:Ljava/lang/String;

    invoke-static {v3}, Lyb/b;->u(Ljava/lang/String;)Lub/g;

    move-result-object v3

    invoke-direct {v0, v1, v4, v10, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->applyParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :pswitch_3
    iget-object v6, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getX()F

    move-result v6

    iget-object v8, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getY()F

    move-result v8

    iget-object v9, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getZ()F

    move-result v9

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->f()F

    move-result v3

    move-object/from16 p2, v2

    const/4 v5, 0x4

    new-array v2, v5, [F

    aput v6, v2, v7

    const/4 v6, 0x1

    aput v8, v2, v6

    const/4 v6, 0x2

    aput v9, v2, v6

    const/4 v6, 0x3

    aput v3, v2, v6

    invoke-direct {v0, v1, v4, v11, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->applyParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const/4 v8, 0x2

    goto :goto_5

    :pswitch_4
    move-object/from16 p2, v2

    const/4 v5, 0x4

    const/4 v6, 0x3

    iget-object v2, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    iget-object v8, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v8

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    new-array v9, v6, [F

    aput v2, v9, v7

    const/4 v2, 0x1

    aput v8, v9, v2

    const/4 v8, 0x2

    aput v3, v9, v8

    invoke-direct {v0, v1, v4, v12, v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->applyParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :pswitch_5
    move-object/from16 p2, v2

    move v8, v5

    const/4 v2, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x3

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v2:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v9, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    new-array v5, v8, [F

    aput v9, v5, v7

    aput v3, v5, v2

    invoke-direct {v0, v1, v4, v13, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->applyParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5
    move-object/from16 v2, p2

    move v5, v8

    goto/16 :goto_3

    :cond_f
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private applyParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "paramMap",
            "name",
            "type",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LVb/b;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LVb/b;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    iput-object p3, p1, LVb/b;->b:Ljava/lang/String;

    :cond_1
    if-eqz p4, :cond_2

    iput-object p4, p1, LVb/b;->f:Ljava/lang/Object;

    :cond_2
    const/4 p2, 0x1

    iput-boolean p2, p1, LVb/b;->e:Z

    return-void
.end method

.method private applyTextureParam(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "paramMap",
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LVb/b;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->textureSamplerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LVb/b;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "sampler2D"

    iput-object v0, p1, LVb/b;->b:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lyb/b;->u(Ljava/lang/String;)Lub/g;

    move-result-object p2

    iput-object p2, p1, LVb/b;->f:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private clearGraphState()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->S:Ljava/lang/String;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->T:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->q1:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->v1:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->X:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->Y:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->W:Ljava/lang/String;

    return-void
.end method

.method private defaultValueFor(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "float"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_1
    const-string v5, "rgba"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_2
    const-string v5, "rgb"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v4, v0

    goto :goto_0

    :sswitch_3
    const-string v5, "float01"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v4, v1

    goto :goto_0

    :sswitch_4
    const-string v5, "float4"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v4, v2

    goto :goto_0

    :sswitch_5
    const-string v5, "float3"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_6
    const-string v5, "float2"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    return-object v3

    :pswitch_0
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_1
    new-array p1, v0, [F

    return-object p1

    :pswitch_2
    new-array p1, v1, [F

    return-object p1

    :pswitch_3
    new-array p1, v2, [F

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bcbd6aa -> :sswitch_6
        -0x4bcbd6a9 -> :sswitch_5
        -0x4bcbd6a8 -> :sswitch_4
        -0x2daefea3 -> :sswitch_3
        0x1b8cd -> :sswitch_2
        0x356134 -> :sswitch_1
        0x5d0225c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private ensureCameraImageAttribute(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const-string v0, "cameraImage"

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/A;->j(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->TEXTURE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const-string p1, "Missing required attribute \'cameraImage\' (Texture)."

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->W:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    invoke-static {}, LJ4/d;->E1()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->W:Ljava/lang/String;

    invoke-static {p1}, LJ4/d;->b2(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private forceUnlit(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    if-nez v0, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;-><init>()V

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    :cond_1
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/u;->UNLIT:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/u;

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->shadingModel:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/u;

    return-void
.end method

.method private getGraphFileStamp()J
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->shaderFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static synthetic j(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;LVb/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->lambda$getInspectorEntries$2(LVb/b;)V

    return-void
.end method

.method private joinErrors(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_1

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    const-string p1, ""

    return-object p1
.end method

.method public static synthetic k(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;LVb/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->lambda$getInspectorEntries$0(LVb/b;)V

    return-void
.end method

.method public static synthetic l(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;LVb/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->lambda$getInspectorEntries$1(LVb/b;)V

    return-void
.end method

.method private synthetic lambda$getInspectorEntries$0(LVb/b;)V
    .locals 0

    iget-object p1, p1, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->markTrackedParamDirtyByName(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getInspectorEntries$1(LVb/b;)V
    .locals 0

    iget-object p1, p1, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->markTrackedParamDirtyByName(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getInspectorEntries$2(LVb/b;)V
    .locals 0

    iget-object p1, p1, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->markTrackedParamDirtyByName(Ljava/lang/String;)V

    return-void
.end method

.method private loadGraphData(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inProjectPath"
        }
    .end annotation

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/VulkanGraph;->e(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/VulkanGraph;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/VulkanGraph;->d()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/A;->e()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->forceUnlit(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->e()V

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/A;->h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V

    return-object p1
.end method

.method private mapUniformType(Lcom/google/android/filament/filamat/MaterialBuilder$r;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const-string v0, "float"

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph$a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    return-object v0

    :cond_1
    const-string p1, "float4"

    return-object p1

    :cond_2
    const-string p1, "float3"

    return-object p1

    :cond_3
    const-string p1, "float2"

    return-object p1
.end method

.method private rebuildFromGraph(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->forceUnlit(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/A;->h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->ensureCameraImageAttribute(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;-><init>()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->h()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->shaderFile:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphDiskCache;->u(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;)V

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_3

    :cond_2
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->c:Ljava/util/List;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lec/f;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lec/f;->a()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Lec/f;->a()Ljava/lang/String;

    move-result-object v5

    new-instance v6, LVb/c;

    invoke-virtual {v4}, Lec/f;->d()Lcom/google/android/filament/filamat/MaterialBuilder$r;

    move-result-object v7

    invoke-virtual {v4}, Lec/f;->b()Lcom/google/android/filament/filamat/MaterialBuilder$g;

    move-result-object v4

    invoke-direct {v6, v7, v4}, LVb/c;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;)V

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->d:Ljava/util/List;

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lec/g;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lec/g;->b()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Lec/g;->d()Lcom/google/android/filament/filamat/MaterialBuilder$m;

    move-result-object v5

    if-nez v5, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v4}, Lec/g;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lec/g;->d()Lcom/google/android/filament/filamat/MaterialBuilder$m;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    new-instance v3, LVb/c;

    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT2:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    sget-object v5, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    invoke-direct {v3, v4, v5}, LVb/c;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;)V

    const-string v4, "resolution"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->b:Ljava/lang/String;

    const-string v4, ""

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_9
    move-object v3, v4

    :goto_2
    invoke-direct {p0, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->rebuildParamsFromGraph(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->validateTrackedParamsLimit()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->W:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->X:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;->invalidateShaderForConfigError()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    invoke-static {}, LJ4/d;->E1()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->W:Ljava/lang/String;

    invoke-static {p1}, LJ4/d;->q2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LJ4/d;->M1(Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->Y:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BEGIN-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->Y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Filament"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->X:Z

    invoke-virtual {p0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;->setCustomShader(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->W:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->restoreVariables()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->markAllCustomParamsDirty()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->Z:F

    return-void

    :cond_b
    :goto_3
    if-eqz v0, :cond_c

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->e:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->joinErrors(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_c
    const-string p1, "Graph compilation failed"

    :goto_4
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->W:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    return-void
.end method

.method private rebuildParamsFromGraph(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "compilation",
            "data"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->T:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->c:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lec/f;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lec/f;->a()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance v4, LVb/b;

    invoke-direct {v4}, LVb/b;-><init>()V

    invoke-virtual {v3}, Lec/f;->a()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v3}, Lec/f;->d()Lcom/google/android/filament/filamat/MaterialBuilder$r;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->mapUniformType(Lcom/google/android/filament/filamat/MaterialBuilder$r;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {v3}, Lec/f;->b()Lcom/google/android/filament/filamat/MaterialBuilder$g;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lec/f;->b()Lcom/google/android/filament/filamat/MaterialBuilder$g;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    iput-object v3, v4, LVb/b;->c:Ljava/lang/String;

    iput-boolean v2, v4, LVb/b;->e:Z

    iget-object v3, v4, LVb/b;->b:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->defaultValueFor(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v4, LVb/b;->f:Ljava/lang/Object;

    iget-object v3, v4, LVb/b;->a:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/f;->d:Ljava/util/List;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lec/g;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lec/g;->b()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Lec/g;->d()Lcom/google/android/filament/filamat/MaterialBuilder$m;

    move-result-object v3

    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_CUBEMAP:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    if-ne v3, v4, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Lec/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LVb/b;

    if-nez v3, :cond_5

    new-instance v3, LVb/b;

    invoke-direct {v3}, LVb/b;-><init>()V

    invoke-virtual {v1}, Lec/g;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, LVb/b;->a:Ljava/lang/String;

    const-string v4, "sampler2D"

    iput-object v4, v3, LVb/b;->b:Ljava/lang/String;

    iput-boolean v2, v3, LVb/b;->e:Z

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    invoke-direct {p0, v0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->applyDefaultsFromGraph(Ljava/util/Map;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->T:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private textureSamplerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "sgp_tex_0"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sgp_tex_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public applyParams(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;LTb/a;LTb/a;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uIController",
            "frameBuffer",
            "cacheBuffer",
            "outParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;",
            "LTb/a;",
            "LTb/a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 p1, -0x1

    invoke-static {}, LK8/d;->b()F

    move-result p3

    invoke-static {}, LK8/d;->e()F

    move-result v0

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->getResolutionWidth(LTb/a;)F

    move-result v1

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->getResolutionHeight(LTb/a;)F

    move-result p2

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    aput p2, v3, v1

    const-string p2, "resolution"

    invoke-interface {p4, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v4

    :goto_0
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->T:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_15

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->T:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LVb/b;

    iget-boolean v6, v5, LVb/b;->e:Z

    if-nez v6, :cond_0

    goto/16 :goto_6

    :cond_0
    const-string v6, "cameraImage"

    iget-object v7, v5, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v6, v5, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_6

    :cond_2
    const-string v6, "sg_time"

    iget-object v7, v5, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v5, v5, LVb/b;->a:Ljava/lang/String;

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->Z:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {p4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_3
    const-string v6, "sg_deltaTime"

    iget-object v7, v5, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v5, v5, LVb/b;->a:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {p4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_4
    const-string v6, "sg_smoothDeltaTime"

    iget-object v7, v5, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v5, v5, LVb/b;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {p4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_5
    iget-object v6, v5, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :goto_1
    move v6, p1

    goto/16 :goto_2

    :sswitch_0
    const-string v7, "sampler2D"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    const/16 v6, 0x8

    goto/16 :goto_2

    :sswitch_1
    const-string v7, "float"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_1

    :cond_7
    const/4 v6, 0x7

    goto :goto_2

    :sswitch_2
    const-string v7, "rgba"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_1

    :cond_8
    const/4 v6, 0x6

    goto :goto_2

    :sswitch_3
    const-string v7, "bool"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_1

    :cond_9
    const/4 v6, 0x5

    goto :goto_2

    :sswitch_4
    const-string v7, "rgb"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_1

    :cond_a
    const/4 v6, 0x4

    goto :goto_2

    :sswitch_5
    const-string v7, "float01"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_1

    :cond_b
    const/4 v6, 0x3

    goto :goto_2

    :sswitch_6
    const-string v7, "float4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_1

    :cond_c
    move v6, v2

    goto :goto_2

    :sswitch_7
    const-string v7, "float3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_1

    :cond_d
    move v6, v1

    goto :goto_2

    :sswitch_8
    const-string v7, "float2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    goto :goto_1

    :cond_e
    move v6, v4

    :goto_2
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-object v6, v5, LVb/b;->f:Ljava/lang/Object;

    if-eqz v6, :cond_10

    check-cast v6, Lub/p;

    invoke-static {v6}, Lub/p;->L(Lub/p;)Z

    move-result v6

    if-nez v6, :cond_f

    goto :goto_3

    :cond_f
    iget-object v6, v5, LVb/b;->a:Ljava/lang/String;

    iget-object v5, v5, LVb/b;->f:Ljava/lang/Object;

    invoke-interface {p4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_10
    :goto_3
    iget-object v6, v5, LVb/b;->d:Ljava/lang/String;

    if-eqz v6, :cond_14

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_14

    iget-object v6, v5, LVb/b;->d:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_1

    :goto_4
    move v6, p1

    goto :goto_5

    :sswitch_9
    const-string v7, "empty"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    goto :goto_4

    :cond_11
    move v6, v2

    goto :goto_5

    :sswitch_a
    const-string v7, "black"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    goto :goto_4

    :cond_12
    move v6, v1

    goto :goto_5

    :sswitch_b
    const-string v7, "filled"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    goto :goto_4

    :cond_13
    move v6, v4

    :goto_5
    packed-switch v6, :pswitch_data_1

    goto :goto_6

    :pswitch_1
    iget-object v5, v5, LVb/b;->a:Ljava/lang/String;

    sget-object v6, Lyb/b;->h:Lub/p;

    invoke-interface {p4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :pswitch_2
    iget-object v5, v5, LVb/b;->a:Ljava/lang/String;

    sget-object v6, Lyb/b;->i:Lub/p;

    invoke-interface {p4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :pswitch_3
    iget-object v5, v5, LVb/b;->a:Ljava/lang/String;

    sget-object v6, Lyb/b;->g:Lub/p;

    invoke-interface {p4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :pswitch_4
    iget-object v6, v5, LVb/b;->f:Ljava/lang/Object;

    if-eqz v6, :cond_14

    iget-object v5, v5, LVb/b;->a:Ljava/lang/String;

    invoke-interface {p4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    :goto_6
    add-int/2addr v3, v1

    goto/16 :goto_0

    :cond_15
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4bcbd6aa -> :sswitch_8
        -0x4bcbd6a9 -> :sswitch_7
        -0x4bcbd6a8 -> :sswitch_6
        -0x2daefea3 -> :sswitch_5
        0x1b8cd -> :sswitch_4
        0x2e3aea -> :sswitch_3
        0x356134 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x4257645a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x4bf7529e -> :sswitch_b
        0x5978fff -> :sswitch_a
        0x5c2854d -> :sswitch_9
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->shaderFile:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->shaderFile:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public disabledPreUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->disabledPreUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->Z:F

    return-void
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f070261

    return v0
.end method

.method public getInspectorColor(Landroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const p1, 0x7f05009d

    return p1
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v7, LC5/b;

    new-instance v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph$d;

    invoke-direct {v8, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;)V

    sget-object v9, LC5/b$a;->InputFile:LC5/b$a;

    const-string v10, ".vgs"

    const-string v11, "Graph file"

    invoke-direct {v7, v8, v11, v9, v10}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, LC5/b;

    new-instance v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph$e;

    invoke-direct {v8, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;)V

    const-string v9, "Open graph editor"

    sget-object v10, LC5/b$a;->Button:LC5/b$a;

    invoke-direct {v7, v8, v9, v10}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;->isFailed()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance p1, LC5/b;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->W:Ljava/lang/String;

    const/16 v1, 0xc

    const v2, 0x7f05012d

    invoke-direct {p1, v0, v1, v2}, LC5/b;-><init>(Ljava/lang/String;II)V

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_0
    move v7, v4

    :goto_0
    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->T:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_e

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->T:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LVb/b;

    iget-object v9, v8, LVb/b;->a:Ljava/lang/String;

    const-string v10, "sg_time"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    iget-object v9, v8, LVb/b;->a:Ljava/lang/String;

    const-string v10, "sg_deltaTime"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    iget-object v9, v8, LVb/b;->a:Ljava/lang/String;

    const-string v10, "sg_smoothDeltaTime"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    const-string v9, "resolution"

    iget-object v10, v8, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    const-string v9, "cameraImage"

    iget-object v10, v8, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v9, v8, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v12, "sampler2D"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v11, 0x7

    goto :goto_1

    :sswitch_1
    const-string v12, "float"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_1

    :cond_3
    const/4 v11, 0x6

    goto :goto_1

    :sswitch_2
    const-string v12, "rgba"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_1

    :cond_4
    const/4 v11, 0x5

    goto :goto_1

    :sswitch_3
    const-string v12, "rgb"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_1

    :cond_5
    move v11, v0

    goto :goto_1

    :sswitch_4
    const-string v12, "float01"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_1

    :cond_6
    move v11, v1

    goto :goto_1

    :sswitch_5
    const-string v12, "float4"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_1

    :cond_7
    move v11, v2

    goto :goto_1

    :sswitch_6
    const-string v12, "float3"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_1

    :cond_8
    move v11, v3

    goto :goto_1

    :sswitch_7
    const-string v12, "float2"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    goto :goto_1

    :cond_9
    move v11, v4

    :goto_1
    packed-switch v11, :pswitch_data_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid param type["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v8, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "] at graph:"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->shaderFile:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, LJ4/d;->b2(Ljava/lang/String;)V

    invoke-static {}, LJ4/d;->E1()V

    goto/16 :goto_2

    :pswitch_0
    new-instance v9, LC5/b;

    new-instance v10, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph$f;

    invoke-direct {v10, p0, v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;LVb/b;)V

    iget-object v8, v8, LVb/b;->a:Ljava/lang/String;

    sget-object v11, LC5/b$a;->Texture:LC5/b$a;

    invoke-direct {v9, v10, v8, v11, p1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Landroid/content/Context;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_1
    new-instance v9, LC5/b;

    new-instance v10, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph$i;

    invoke-direct {v10, p0, v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;LVb/b;)V

    iget-object v11, v8, LVb/b;->a:Ljava/lang/String;

    sget-object v12, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v9, v10, v11, v12}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v8, v8, LVb/b;->a:Ljava/lang/String;

    sget-object v10, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v9, v6, p0, v8, v10}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_2
    new-instance v9, LC5/b;

    new-instance v10, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph$g;

    invoke-direct {v10, p0, v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;LVb/b;)V

    iget-object v11, v8, LVb/b;->a:Ljava/lang/String;

    sget-object v12, LC5/b$a;->Color:LC5/b$a;

    invoke-direct {v9, v10, v11, v12}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v8, v8, LVb/b;->a:Ljava/lang/String;

    sget-object v10, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->COLOR:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v9, v6, p0, v8, v10}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_3
    new-instance v9, LC5/b;

    new-instance v10, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph$h;

    invoke-direct {v10, p0, v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;LVb/b;)V

    iget-object v11, v8, LVb/b;->a:Ljava/lang/String;

    sget-object v12, LC5/b$a;->Color:LC5/b$a;

    invoke-direct {v9, v10, v11, v12}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v8, v8, LVb/b;->a:Ljava/lang/String;

    sget-object v10, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->COLOR:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v9, v6, p0, v8, v10}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_4
    new-instance v9, LC5/b;

    new-instance v10, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph$j;

    invoke-direct {v10, p0, v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;LVb/b;)V

    iget-object v11, v8, LVb/b;->a:Ljava/lang/String;

    sget-object v12, LC5/b$a;->SLFloat01:LC5/b$a;

    invoke-direct {v9, v10, v11, v12}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v8, v8, LVb/b;->a:Ljava/lang/String;

    sget-object v10, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v9, v6, p0, v8, v10}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_5
    iget-object v9, v8, LVb/b;->f:Ljava/lang/Object;

    if-nez v9, :cond_a

    new-array v9, v0, [F

    iput-object v9, v8, LVb/b;->f:Ljava/lang/Object;

    :cond_a
    iget-object v9, v8, LVb/b;->a:Ljava/lang/String;

    iget-object v11, v8, LVb/b;->f:Ljava/lang/Object;

    check-cast v11, [F

    new-instance v12, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/n;

    invoke-direct {v12, p0, v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/n;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;LVb/b;)V

    invoke-static {v9, v11, v10, v12}, LF5/c;->V(Ljava/lang/String;[F[FLF5/c$u0;)LC5/b;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_6
    iget-object v9, v8, LVb/b;->f:Ljava/lang/Object;

    if-nez v9, :cond_b

    new-array v9, v1, [F

    iput-object v9, v8, LVb/b;->f:Ljava/lang/Object;

    :cond_b
    iget-object v9, v8, LVb/b;->a:Ljava/lang/String;

    iget-object v11, v8, LVb/b;->f:Ljava/lang/Object;

    check-cast v11, [F

    new-instance v12, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/o;

    invoke-direct {v12, p0, v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/o;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;LVb/b;)V

    invoke-static {v9, v11, v10, v12}, LF5/c;->P(Ljava/lang/String;[F[FLF5/c$u0;)LC5/b;

    move-result-object v9

    iget-object v8, v8, LVb/b;->a:Ljava/lang/String;

    sget-object v10, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->VEC3:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v9, v6, p0, v8, v10}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_7
    iget-object v9, v8, LVb/b;->f:Ljava/lang/Object;

    if-nez v9, :cond_c

    new-array v9, v2, [F

    iput-object v9, v8, LVb/b;->f:Ljava/lang/Object;

    :cond_c
    iget-object v9, v8, LVb/b;->a:Ljava/lang/String;

    iget-object v11, v8, LVb/b;->f:Ljava/lang/Object;

    check-cast v11, [F

    new-instance v12, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/p;

    invoke-direct {v12, p0, v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/p;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;LVb/b;)V

    invoke-static {v9, v11, v10, v12}, LF5/c;->C(Ljava/lang/String;[F[FLF5/c$u0;)LC5/b;

    move-result-object v9

    iget-object v8, v8, LVb/b;->a:Ljava/lang/String;

    sget-object v10, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->VEC2:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v9, v6, p0, v8, v10}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_2
    add-int/2addr v7, v3

    goto/16 :goto_0

    :cond_e
    :goto_3
    return-object v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bcbd6aa -> :sswitch_7
        -0x4bcbd6a9 -> :sswitch_6
        -0x4bcbd6a8 -> :sswitch_5
        -0x2daefea3 -> :sswitch_4
        0x1b8cd -> :sswitch_3
        0x356134 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x4257645a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getShaderFile()Ljava/lang/String;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->shaderFile:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->shaderFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "UIProcessingGraph"

    return-object v0
.end method

.method public getTrackedParameterMask()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public receiveEvent(LLb/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->receiveEvent(LLb/c;)V

    instance-of p1, p1, Lo9/c;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->storeVariables()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->clearGraphState()V

    :cond_0
    return-void
.end method

.method public requiresParameterUploadEveryFrame(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;LTb/a;LTb/a;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uIController",
            "frameBuffer",
            "cacheBuffer"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public serialize(Landroid/content/Context;)Lcom/google/gson/JsonElement;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->storeVariables()V

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->serialize(Landroid/content/Context;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method

.method public setShaderFile(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shaderFile"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->shaderFile:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIBasePostProcessing;->invalidateAttachedUIController()V

    return-void
.end method

.method public storeVariables()V
    .locals 9

    const/4 v0, 0x1

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->T:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_f

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->T:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LVb/b;

    if-eqz v4, :cond_e

    iget-object v5, v4, LVb/b;->a:Ljava/lang/String;

    if-nez v5, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v6, "sg_time"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "sg_deltaTime"

    iget-object v6, v4, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "sg_smoothDeltaTime"

    iget-object v6, v4, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "resolution"

    iget-object v6, v4, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "cameraImage"

    iget-object v6, v4, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v5, v4, LVb/b;->f:Ljava/lang/Object;

    if-nez v5, :cond_2

    goto/16 :goto_4

    :cond_2
    new-instance v5, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>()V

    iget-object v6, v4, LVb/b;->a:Ljava/lang/String;

    iput-object v6, v5, Lcom/itsmagic/engine/Engines/Utils/Variable;->name:Ljava/lang/String;

    iget-object v6, v4, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v8, "sampler2D"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v7, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v8, "float"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v7, 0x7

    goto :goto_1

    :sswitch_2
    const-string v8, "rgba"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    const/4 v7, 0x6

    goto :goto_1

    :sswitch_3
    const-string v8, "bool"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    const/4 v7, 0x5

    goto :goto_1

    :sswitch_4
    const-string v8, "rgb"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_1

    :cond_7
    const/4 v7, 0x4

    goto :goto_1

    :sswitch_5
    const-string v8, "float01"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_1

    :cond_8
    const/4 v7, 0x3

    goto :goto_1

    :sswitch_6
    const-string v8, "float4"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_1

    :cond_9
    const/4 v7, 0x2

    goto :goto_1

    :sswitch_7
    const-string v8, "float3"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_1

    :cond_a
    move v7, v0

    goto :goto_1

    :sswitch_8
    const-string v8, "float2"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_1

    :cond_b
    move v7, v2

    :goto_1
    packed-switch v7, :pswitch_data_0

    invoke-static {}, LJ4/d;->E1()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid param type["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] at graph:"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->shaderFile:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LJ4/d;->b2(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_0
    sget-object v6, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->InspectorString:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iput-object v6, v5, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iget-object v4, v4, LVb/b;->f:Ljava/lang/Object;

    instance-of v6, v4, Lub/g;

    if-eqz v6, :cond_c

    check-cast v4, Lub/g;

    invoke-virtual {v4}, Lub/g;->getFile()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_c
    const/4 v4, 0x0

    :goto_2
    iput-object v4, v5, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    goto :goto_3

    :pswitch_1
    sget-object v6, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Float:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iput-object v6, v5, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iget-object v4, v4, LVb/b;->f:Ljava/lang/Object;

    instance-of v6, v4, Ljava/lang/Number;

    if-eqz v6, :cond_d

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    iput v4, v5, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    goto :goto_3

    :cond_d
    const/4 v4, 0x0

    iput v4, v5, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    goto :goto_3

    :pswitch_2
    sget-object v6, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->FloatArray:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iput-object v6, v5, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iget-object v4, v4, LVb/b;->f:Ljava/lang/Object;

    check-cast v4, [F

    iput-object v4, v5, Lcom/itsmagic/engine/Engines/Utils/Variable;->farray_value:[F

    :goto_3
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_4
    add-int/2addr v3, v0

    goto/16 :goto_0

    :cond_f
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->global_variables:Ljava/util/List;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bcbd6aa -> :sswitch_8
        -0x4bcbd6a9 -> :sswitch_7
        -0x4bcbd6a8 -> :sswitch_6
        -0x2daefea3 -> :sswitch_5
        0x1b8cd -> :sswitch_4
        0x2e3aea -> :sswitch_3
        0x356134 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x4257645a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateShaderPipeline(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->shaderFile:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->q1:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->S:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->v1:J

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->getGraphFileStamp()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->shaderFile:Ljava/lang/String;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->S:Ljava/lang/String;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->getGraphFileStamp()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->v1:J

    :try_start_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->shaderFile:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->loadGraphData(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->q1:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->rebuildFromGraph(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->W:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    invoke-static {}, LJ4/d;->E1()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to compile graph: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LJ4/d;->b2(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;->clearGraphState()V

    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->X:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;->isFailed()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->V:LSb/a;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->W:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->X:Z

    const-string p1, ""

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->W:Ljava/lang/String;

    new-instance p1, LSb/a;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph$c;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIProcessingGraph;)V

    invoke-direct {p1, v0}, LSb/a;-><init>(LSb/a$b;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->V:LSb/a;

    invoke-virtual {p1}, LSb/a;->g()V

    :cond_3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass;->isFailed()Z

    move-result p1

    if-eqz p1, :cond_4

    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->X:Z

    :cond_4
    return-void
.end method

.method public uploadDirtyParametersDirect(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$b;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;LTb/a;LTb/a;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "writer",
            "uIController",
            "frameBuffer",
            "cacheBuffer",
            "dirtyMask"
        }
    .end annotation

    invoke-static {}, LK8/d;->b()F

    move-result p2

    invoke-static {}, LK8/d;->e()F

    move-result p4

    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->getResolutionWidth(LTb/a;)F

    move-result p5

    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->getResolutionHeight(LTb/a;)F

    move-result p3

    const-string p6, "resolution"

    invoke-virtual {p1, p6, p5, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$b;->e(Ljava/lang/String;FF)V

    const/4 p3, 0x0

    :goto_0
    iget-object p5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->T:Ljava/util/List;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    if-ge p3, p5, :cond_7

    iget-object p5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->T:Ljava/util/List;

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, LVb/b;

    if-eqz p5, :cond_6

    iget-boolean v0, p5, LVb/b;->e:Z

    if-eqz v0, :cond_6

    iget-object v0, p5, LVb/b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "cameraImage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p5, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "sg_time"

    iget-object v1, p5, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p5, p5, LVb/b;->a:Ljava/lang/String;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->Z:F

    invoke-virtual {p1, p5, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$b;->d(Ljava/lang/String;F)V

    goto :goto_1

    :cond_3
    const-string v0, "sg_deltaTime"

    iget-object v1, p5, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p5, p5, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {p1, p5, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$b;->d(Ljava/lang/String;F)V

    goto :goto_1

    :cond_4
    const-string v0, "sg_smoothDeltaTime"

    iget-object v1, p5, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p5, p5, LVb/b;->a:Ljava/lang/String;

    invoke-virtual {p1, p5, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$b;->d(Ljava/lang/String;F)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1, p5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UICustomPostProcessing;->writeCustomParamDirect(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/DoublePassUIPostProcessPass$b;LVb/b;)V

    :cond_6
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

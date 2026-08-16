.class public Ldc/j;
.super Ldc/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;Lcc/b;Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "shaderName",
            "shaderBinder",
            "forwardPass",
            "material"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Ldc/j;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;Lcc/b;Lcom/itsmagic/engine/Engines/Engine/Material/Material;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;Lcc/b;Lcom/itsmagic/engine/Engines/Engine/Material/Material;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "shaderName",
            "shaderBinder",
            "forwardPass",
            "material",
            "autoBuildVariance"
        }
    .end annotation

    .line 2
    invoke-direct/range {p0 .. p5}, Ldc/d;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;Lcc/b;Lcom/itsmagic/engine/Engines/Engine/Material/Material;Z)V

    return-void
.end method

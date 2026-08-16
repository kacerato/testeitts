.class public final Lf4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lf4/c;)Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lf4/c;->Cliff:Lf4/c;

    :cond_0
    sget-object v0, Lf4/a$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;-><init>()V

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/BiomeProceduralPaint;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/BiomeProceduralPaint;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/RidgeProceduralPaint;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/RidgeProceduralPaint;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/DunesProceduralPaint;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/DunesProceduralPaint;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/NoiseBlendProceduralPaint;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/NoiseBlendProceduralPaint;-><init>()V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/TerraceProceduralPaint;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/TerraceProceduralPaint;-><init>()V

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/WaterFlowProceduralPaint;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/WaterFlowProceduralPaint;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/ErosionProceduralPaint;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/ErosionProceduralPaint;-><init>()V

    return-object p0

    :pswitch_7
    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CurvatureProceduralPaint;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CurvatureProceduralPaint;-><init>()V

    return-object p0

    :pswitch_8
    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/HeightBandProceduralPaint;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/HeightBandProceduralPaint;-><init>()V

    return-object p0

    :pswitch_9
    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/SlopeProceduralPaint;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/SlopeProceduralPaint;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
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

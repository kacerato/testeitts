.class public final Le4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Le4/d;)Le4/a;
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

    sget-object p0, Le4/d;->Mountain:Le4/d;

    :cond_0
    sget-object v0, Le4/b$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/MountainProceduralBrush;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/MountainProceduralBrush;-><init>()V

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/NoiseProceduralBrush;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/NoiseProceduralBrush;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/TerraceProceduralBrush;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/TerraceProceduralBrush;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/ValleyProceduralBrush;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/ValleyProceduralBrush;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/NaturalSmoothProceduralBrush;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/NaturalSmoothProceduralBrush;-><init>()V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/RockyProceduralBrush;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/RockyProceduralBrush;-><init>()V

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/DunesProceduralBrush;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/DunesProceduralBrush;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/PlainProceduralBrush;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/PlainProceduralBrush;-><init>()V

    return-object p0

    :pswitch_7
    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/WaterErosionProceduralBrush;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/WaterErosionProceduralBrush;-><init>()V

    return-object p0

    :pswitch_8
    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/RavineProceduralBrush;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/RavineProceduralBrush;-><init>()V

    return-object p0

    :pswitch_9
    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/ErosionProceduralBrush;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/ErosionProceduralBrush;-><init>()V

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

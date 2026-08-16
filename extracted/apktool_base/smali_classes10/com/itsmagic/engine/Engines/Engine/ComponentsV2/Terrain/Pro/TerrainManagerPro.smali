.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;
.super Ljava/lang/Object;
.source "TerrainManagerPro.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$ViewportOverlayMode;
    }
.end annotation


# static fields
.field private static final MAX_UNDO_STEPS:I = 0xa

.field private static instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;


# instance fields
.field private transient activeTerrain:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

.field private activeTool:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;

.field private final biomeEngine:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine;

.field private brushRadius:F

.field private brushStrength:F

.field private final erosionSimulator:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;

.field private falloffCurve:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;

.field private final foliageSystem:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;

.field private final holeMask:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainHoleMask;

.field private invertAction:Z

.field private overlayMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$ViewportOverlayMode;

.field private final rampGenerator:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;

.field private final transient redoStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "[F>;"
        }
    .end annotation
.end field

.field private targetHeight:F

.field private final transient undoStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;->RAISE_LOWER:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->activeTool:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;

    .line 41
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$ViewportOverlayMode;->NORMAL:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$ViewportOverlayMode;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->overlayMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$ViewportOverlayMode;

    .line 42
    const/high16 v0, 0x41c80000    # 25.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->brushRadius:F

    .line 43
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->brushStrength:F

    .line 44
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->targetHeight:F

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->invertAction:Z

    .line 46
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;->SMOOTH_STEP:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve$Type;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->falloffCurve:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;

    .line 49
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->erosionSimulator:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;

    .line 50
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->biomeEngine:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine;

    .line 51
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->foliageSystem:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;

    .line 52
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->rampGenerator:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;

    .line 53
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainHoleMask;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainHoleMask;-><init>(I)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->holeMask:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainHoleMask;

    .line 60
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->undoStack:Ljava/util/Deque;

    .line 61
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->redoStack:Ljava/util/Deque;

    .line 73
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;
    .locals 2

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;-><init>()V

    sput-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;

    .line 69
    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 65
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public applySculptStroke(FFF)V
    .locals 2

    .line 163
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->activeTerrain:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    if-nez p3, :cond_0

    return-void

    .line 165
    :cond_0
    nop

    .line 168
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->activeTool:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;->ordinal()I

    move-result p3

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 185
    :pswitch_1
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->holeMask:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainHoleMask;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->brushRadius:F

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->invertAction:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainHoleMask;->paintHole(FFFZ)V

    .line 186
    goto :goto_0

    .line 183
    :pswitch_2
    goto :goto_0

    .line 180
    :pswitch_3
    goto :goto_0

    .line 177
    :pswitch_4
    goto :goto_0

    .line 174
    :pswitch_5
    goto :goto_0

    .line 171
    :pswitch_6
    nop

    .line 190
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getActiveTerrain()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->activeTerrain:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    return-object v0
.end method

.method public getActiveTool()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->activeTool:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;

    return-object v0
.end method

.method public getBiomeEngine()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->biomeEngine:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/AutoBiomeRuleEngine;

    return-object v0
.end method

.method public getBrushRadius()F
    .locals 1

    .line 100
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->brushRadius:F

    return v0
.end method

.method public getBrushStrength()F
    .locals 1

    .line 108
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->brushStrength:F

    return v0
.end method

.method public getErosionSimulator()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->erosionSimulator:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/HydraulicErosionSimulator;

    return-object v0
.end method

.method public getFalloffCurve()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->falloffCurve:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;

    return-object v0
.end method

.method public getFoliageSystem()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->foliageSystem:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/FoliageScatterSystem;

    return-object v0
.end method

.method public getHoleMask()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainHoleMask;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->holeMask:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainHoleMask;

    return-object v0
.end method

.method public getOverlayMode()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$ViewportOverlayMode;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->overlayMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$ViewportOverlayMode;

    return-object v0
.end method

.method public getRampGenerator()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->rampGenerator:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/RampPathGenerator;

    return-object v0
.end method

.method public getTargetHeight()F
    .locals 1

    .line 116
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->targetHeight:F

    return v0
.end method

.method public isInvertAction()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->invertAction:Z

    return v0
.end method

.method public setActiveTerrain(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->activeTerrain:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    .line 77
    return-void
.end method

.method public setActiveTool(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->activeTool:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$SculptTool;

    .line 89
    return-void
.end method

.method public setBrushRadius(F)V
    .locals 1

    .line 104
    const/high16 v0, 0x43fa0000    # 500.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->brushRadius:F

    .line 105
    return-void
.end method

.method public setBrushStrength(F)V
    .locals 1

    .line 112
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const v0, 0x3c23d70a    # 0.01f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->brushStrength:F

    .line 113
    return-void
.end method

.method public setFalloffCurve(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->falloffCurve:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainFalloffCurve;

    .line 137
    return-void
.end method

.method public setInvertAction(Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->invertAction:Z

    .line 129
    return-void
.end method

.method public setOverlayMode(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$ViewportOverlayMode;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->overlayMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro$ViewportOverlayMode;

    .line 97
    return-void
.end method

.method public setTargetHeight(F)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/TerrainManagerPro;->targetHeight:F

    .line 121
    return-void
.end method

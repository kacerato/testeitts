.class public Lcom/ardor3d/util/stat/StatType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/ardor3d/util/stat/StatType;",
        ">;"
    }
.end annotation


# static fields
.field public static final STAT_DISPLAYSWAP_TIMER:Lcom/ardor3d/util/stat/StatType;

.field public static final STAT_FRAMES:Lcom/ardor3d/util/stat/StatType;

.field public static final STAT_LINE_COUNT:Lcom/ardor3d/util/stat/StatType;

.field public static final STAT_MESH_COUNT:Lcom/ardor3d/util/stat/StatType;

.field public static final STAT_POINT_COUNT:Lcom/ardor3d/util/stat/StatType;

.field public static final STAT_QUAD_COUNT:Lcom/ardor3d/util/stat/StatType;

.field public static final STAT_RENDER_TIMER:Lcom/ardor3d/util/stat/StatType;

.field public static final STAT_SHADER_BINDS:Lcom/ardor3d/util/stat/StatType;

.field public static final STAT_SHADER_STATE_TIMER:Lcom/ardor3d/util/stat/StatType;

.field public static final STAT_STATES_TIMER:Lcom/ardor3d/util/stat/StatType;

.field public static final STAT_TEXTURE_BINDS:Lcom/ardor3d/util/stat/StatType;

.field public static final STAT_TEXTURE_STATE_TIMER:Lcom/ardor3d/util/stat/StatType;

.field public static final STAT_TRIANGLE_COUNT:Lcom/ardor3d/util/stat/StatType;

.field public static final STAT_UNSPECIFIED_TIMER:Lcom/ardor3d/util/stat/StatType;

.field public static final STAT_UPDATE_TIMER:Lcom/ardor3d/util/stat/StatType;

.field public static final STAT_VERTEX_COUNT:Lcom/ardor3d/util/stat/StatType;


# instance fields
.field private _statName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ardor3d/util/stat/StatType;

    const-string v1, "_frames"

    invoke-direct {v0, v1}, Lcom/ardor3d/util/stat/StatType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ardor3d/util/stat/StatType;->STAT_FRAMES:Lcom/ardor3d/util/stat/StatType;

    new-instance v0, Lcom/ardor3d/util/stat/StatType;

    const-string v1, "_triCount"

    invoke-direct {v0, v1}, Lcom/ardor3d/util/stat/StatType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ardor3d/util/stat/StatType;->STAT_TRIANGLE_COUNT:Lcom/ardor3d/util/stat/StatType;

    new-instance v0, Lcom/ardor3d/util/stat/StatType;

    const-string v1, "_quadCount"

    invoke-direct {v0, v1}, Lcom/ardor3d/util/stat/StatType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ardor3d/util/stat/StatType;->STAT_QUAD_COUNT:Lcom/ardor3d/util/stat/StatType;

    new-instance v0, Lcom/ardor3d/util/stat/StatType;

    const-string v1, "_lineCount"

    invoke-direct {v0, v1}, Lcom/ardor3d/util/stat/StatType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ardor3d/util/stat/StatType;->STAT_LINE_COUNT:Lcom/ardor3d/util/stat/StatType;

    new-instance v0, Lcom/ardor3d/util/stat/StatType;

    const-string v1, "_pointCount"

    invoke-direct {v0, v1}, Lcom/ardor3d/util/stat/StatType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ardor3d/util/stat/StatType;->STAT_POINT_COUNT:Lcom/ardor3d/util/stat/StatType;

    new-instance v0, Lcom/ardor3d/util/stat/StatType;

    const-string v1, "_vertCount"

    invoke-direct {v0, v1}, Lcom/ardor3d/util/stat/StatType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ardor3d/util/stat/StatType;->STAT_VERTEX_COUNT:Lcom/ardor3d/util/stat/StatType;

    new-instance v0, Lcom/ardor3d/util/stat/StatType;

    const-string v1, "_meshCount"

    invoke-direct {v0, v1}, Lcom/ardor3d/util/stat/StatType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ardor3d/util/stat/StatType;->STAT_MESH_COUNT:Lcom/ardor3d/util/stat/StatType;

    new-instance v0, Lcom/ardor3d/util/stat/StatType;

    const-string v1, "_texBind"

    invoke-direct {v0, v1}, Lcom/ardor3d/util/stat/StatType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ardor3d/util/stat/StatType;->STAT_TEXTURE_BINDS:Lcom/ardor3d/util/stat/StatType;

    new-instance v0, Lcom/ardor3d/util/stat/StatType;

    const-string v1, "_shaderBind"

    invoke-direct {v0, v1}, Lcom/ardor3d/util/stat/StatType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ardor3d/util/stat/StatType;->STAT_SHADER_BINDS:Lcom/ardor3d/util/stat/StatType;

    new-instance v0, Lcom/ardor3d/util/stat/StatType;

    const-string v1, "_timedOther"

    invoke-direct {v0, v1}, Lcom/ardor3d/util/stat/StatType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ardor3d/util/stat/StatType;->STAT_UNSPECIFIED_TIMER:Lcom/ardor3d/util/stat/StatType;

    new-instance v0, Lcom/ardor3d/util/stat/StatType;

    const-string v1, "_timedRenderer"

    invoke-direct {v0, v1}, Lcom/ardor3d/util/stat/StatType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ardor3d/util/stat/StatType;->STAT_RENDER_TIMER:Lcom/ardor3d/util/stat/StatType;

    new-instance v0, Lcom/ardor3d/util/stat/StatType;

    const-string v1, "_timedStates"

    invoke-direct {v0, v1}, Lcom/ardor3d/util/stat/StatType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ardor3d/util/stat/StatType;->STAT_STATES_TIMER:Lcom/ardor3d/util/stat/StatType;

    new-instance v0, Lcom/ardor3d/util/stat/StatType;

    const-string v1, "_timedTextureState"

    invoke-direct {v0, v1}, Lcom/ardor3d/util/stat/StatType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ardor3d/util/stat/StatType;->STAT_TEXTURE_STATE_TIMER:Lcom/ardor3d/util/stat/StatType;

    new-instance v0, Lcom/ardor3d/util/stat/StatType;

    const-string v1, "_timedShaderState"

    invoke-direct {v0, v1}, Lcom/ardor3d/util/stat/StatType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ardor3d/util/stat/StatType;->STAT_SHADER_STATE_TIMER:Lcom/ardor3d/util/stat/StatType;

    new-instance v0, Lcom/ardor3d/util/stat/StatType;

    const-string v1, "_timedUpdates"

    invoke-direct {v0, v1}, Lcom/ardor3d/util/stat/StatType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ardor3d/util/stat/StatType;->STAT_UPDATE_TIMER:Lcom/ardor3d/util/stat/StatType;

    new-instance v0, Lcom/ardor3d/util/stat/StatType;

    const-string v1, "_timedSwap"

    invoke-direct {v0, v1}, Lcom/ardor3d/util/stat/StatType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ardor3d/util/stat/StatType;->STAT_DISPLAYSWAP_TIMER:Lcom/ardor3d/util/stat/StatType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/util/stat/StatType;->_statName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/ardor3d/util/stat/StatType;)I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ardor3d/util/stat/StatType;->_statName:Ljava/lang/String;

    iget-object p1, p1, Lcom/ardor3d/util/stat/StatType;->_statName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/ardor3d/util/stat/StatType;

    invoke-virtual {p0, p1}, Lcom/ardor3d/util/stat/StatType;->compareTo(Lcom/ardor3d/util/stat/StatType;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/ardor3d/util/stat/StatType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/ardor3d/util/stat/StatType;

    iget-object v0, p0, Lcom/ardor3d/util/stat/StatType;->_statName:Ljava/lang/String;

    iget-object p1, p1, Lcom/ardor3d/util/stat/StatType;->_statName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public getStatName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/stat/StatType;->_statName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/stat/StatType;->_statName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

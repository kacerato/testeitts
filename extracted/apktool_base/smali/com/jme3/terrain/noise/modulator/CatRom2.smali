.class public Lcom/jme3/terrain/noise/modulator/CatRom2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/terrain/noise/modulator/Modulator;


# static fields
.field private static instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/jme3/terrain/noise/modulator/CatRom2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private sampleRate:I

.field private final table:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jme3/terrain/noise/modulator/CatRom2;->instances:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/jme3/terrain/noise/modulator/CatRom2;->sampleRate:I

    mul-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/jme3/terrain/noise/modulator/CatRom2;->table:[F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    int-to-float v2, v1

    int-to-float v3, p1

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v2, v3

    const/high16 v4, 0x3f000000    # 0.5f

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/jme3/terrain/noise/modulator/CatRom2;->table:[F

    mul-float v5, v2, v2

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v2, v6

    const/high16 v6, -0x3f600000    # -5.0f

    add-float/2addr v2, v6

    mul-float/2addr v5, v2

    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v5, v2

    mul-float/2addr v5, v4

    aput v5, v3, v1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/jme3/terrain/noise/modulator/CatRom2;->table:[F

    const/high16 v5, 0x40a00000    # 5.0f

    sub-float/2addr v5, v2

    mul-float/2addr v5, v2

    const/high16 v6, -0x3f000000    # -8.0f

    add-float/2addr v5, v6

    mul-float/2addr v2, v5

    const/high16 v5, 0x40800000    # 4.0f

    add-float/2addr v2, v5

    mul-float/2addr v2, v4

    aput v2, v3, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getInstance(I)Lcom/jme3/terrain/noise/modulator/CatRom2;
    .locals 3

    sget-object v0, Lcom/jme3/terrain/noise/modulator/CatRom2;->instances:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/jme3/terrain/noise/modulator/CatRom2;->instances:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/jme3/terrain/noise/modulator/CatRom2;

    invoke-direct {v2, p0}, Lcom/jme3/terrain/noise/modulator/CatRom2;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/jme3/terrain/noise/modulator/CatRom2;->instances:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jme3/terrain/noise/modulator/CatRom2;

    return-object p0
.end method


# virtual methods
.method public varargs value([F)F
    .locals 4

    const/4 v0, 0x0

    aget v1, p1, v0

    const/high16 v2, 0x40800000    # 4.0f

    cmpl-float v2, v1, v2

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    return v3

    :cond_0
    iget v2, p0, Lcom/jme3/terrain/noise/modulator/CatRom2;->sampleRate:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    aput v1, p1, v0

    invoke-static {v1}, Lcom/jme3/terrain/noise/ShaderUtils;->floor(F)I

    move-result p1

    iget v0, p0, Lcom/jme3/terrain/noise/modulator/CatRom2;->sampleRate:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    if-lt p1, v0, :cond_1

    return v3

    :cond_1
    iget-object v0, p0, Lcom/jme3/terrain/noise/modulator/CatRom2;->table:[F

    aget p1, v0, p1

    return p1
.end method

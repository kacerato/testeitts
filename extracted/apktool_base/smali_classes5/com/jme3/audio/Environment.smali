.class public Lcom/jme3/audio/Environment;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AcousticLab:Lcom/jme3/audio/Environment;

.field public static final Cavern:Lcom/jme3/audio/Environment;

.field public static final Closet:Lcom/jme3/audio/Environment;

.field public static final Dungeon:Lcom/jme3/audio/Environment;

.field public static final Garage:Lcom/jme3/audio/Environment;


# instance fields
.field private airAbsorbGainHf:F

.field private decayHFRatio:F

.field private decayHfLimit:Z

.field private decayTime:F

.field private density:F

.field private diffusion:F

.field private gain:F

.field private gainHf:F

.field private lateReverbDelay:F

.field private lateReverbGain:F

.field private reflectDelay:F

.field private reflectGain:F

.field private roomRolloffFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v11, Lcom/jme3/audio/Environment;

    const v9, 0x3f29374c    # 0.661f

    const v10, 0x3c6075f7    # 0.0137f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f666666    # 0.9f

    const/high16 v6, 0x3f000000    # 0.5f

    const v7, 0x3f404189    # 0.751f

    const v8, 0x3b7f9724    # 0.0039f

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/jme3/audio/Environment;-><init>(FFFFFFFFFF)V

    sput-object v11, Lcom/jme3/audio/Environment;->Garage:Lcom/jme3/audio/Environment;

    new-instance v0, Lcom/jme3/audio/Environment;

    const v21, 0x3f6e147b    # 0.93f

    const v22, 0x3c28c155    # 0.0103f

    const/high16 v13, 0x3f400000    # 0.75f

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f400000    # 0.75f

    const v17, 0x3fcccccd    # 1.6f

    const/high16 v18, 0x3f800000    # 1.0f

    const v19, 0x3f733333    # 0.95f

    const v20, 0x3b2a64c3    # 0.0026f

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lcom/jme3/audio/Environment;-><init>(FFFFFFFFFF)V

    sput-object v0, Lcom/jme3/audio/Environment;->Dungeon:Lcom/jme3/audio/Environment;

    new-instance v0, Lcom/jme3/audio/Environment;

    const v10, 0x3f6e147b    # 0.93f

    const v11, 0x3d27ef9e    # 0.041f

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x40100000    # 2.25f

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3f6872b0    # 0.908f

    const v9, 0x3c28c155    # 0.0103f

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/jme3/audio/Environment;-><init>(FFFFFFFFFF)V

    sput-object v0, Lcom/jme3/audio/Environment;->Cavern:Lcom/jme3/audio/Environment;

    new-instance v0, Lcom/jme3/audio/Environment;

    const v21, 0x3f4f5c29    # 0.81f

    const v22, 0x3c03126f    # 0.008f

    const/high16 v13, 0x3f000000    # 0.5f

    const/high16 v16, 0x3f800000    # 1.0f

    const v17, 0x3e8f5c29    # 0.28f

    const v19, 0x3f5eb852    # 0.87f

    const v20, 0x3b03126f    # 0.002f

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lcom/jme3/audio/Environment;-><init>(FFFFFFFFFF)V

    sput-object v0, Lcom/jme3/audio/Environment;->AcousticLab:Lcom/jme3/audio/Environment;

    new-instance v0, Lcom/jme3/audio/Environment;

    const/high16 v10, 0x3f000000    # 0.5f

    const v11, 0x3a1d4952    # 6.0E-4f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3e19999a    # 0.15f

    const v8, 0x3f19999a    # 0.6f

    const v9, 0x3b23d70a    # 0.0025f

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/jme3/audio/Environment;-><init>(FFFFFFFFFF)V

    sput-object v0, Lcom/jme3/audio/Environment;->Closet:Lcom/jme3/audio/Environment;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f7e87d3

    .line 2
    iput v0, p0, Lcom/jme3/audio/Environment;->airAbsorbGainHf:F

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/jme3/audio/Environment;->roomRolloffFactor:F

    const v0, 0x3fbeb852    # 1.49f

    .line 4
    iput v0, p0, Lcom/jme3/audio/Environment;->decayTime:F

    const v0, 0x3f0a3d71    # 0.54f

    .line 5
    iput v0, p0, Lcom/jme3/audio/Environment;->decayHFRatio:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    iput v0, p0, Lcom/jme3/audio/Environment;->density:F

    const v0, 0x3e99999a    # 0.3f

    .line 7
    iput v0, p0, Lcom/jme3/audio/Environment;->diffusion:F

    const v0, 0x3ea1cac1    # 0.316f

    .line 8
    iput v0, p0, Lcom/jme3/audio/Environment;->gain:F

    const v0, 0x3cb43958    # 0.022f

    .line 9
    iput v0, p0, Lcom/jme3/audio/Environment;->gainHf:F

    const v0, 0x3db43958    # 0.088f

    .line 10
    iput v0, p0, Lcom/jme3/audio/Environment;->lateReverbDelay:F

    const v0, 0x3f449ba6    # 0.768f

    .line 11
    iput v0, p0, Lcom/jme3/audio/Environment;->lateReverbGain:F

    const v0, 0x3e25e354    # 0.162f

    .line 12
    iput v0, p0, Lcom/jme3/audio/Environment;->reflectDelay:F

    const v0, 0x3d54fdf4    # 0.052f

    .line 13
    iput v0, p0, Lcom/jme3/audio/Environment;->reflectGain:F

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/jme3/audio/Environment;->decayHfLimit:Z

    return-void
.end method

.method public constructor <init>(FFFFFFFFFF)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f7e87d3

    .line 43
    iput v0, p0, Lcom/jme3/audio/Environment;->airAbsorbGainHf:F

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/jme3/audio/Environment;->roomRolloffFactor:F

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/jme3/audio/Environment;->decayHfLimit:Z

    .line 46
    iput p5, p0, Lcom/jme3/audio/Environment;->decayTime:F

    .line 47
    iput p6, p0, Lcom/jme3/audio/Environment;->decayHFRatio:F

    .line 48
    iput p1, p0, Lcom/jme3/audio/Environment;->density:F

    .line 49
    iput p2, p0, Lcom/jme3/audio/Environment;->diffusion:F

    .line 50
    iput p3, p0, Lcom/jme3/audio/Environment;->gain:F

    .line 51
    iput p4, p0, Lcom/jme3/audio/Environment;->gainHf:F

    .line 52
    iput p10, p0, Lcom/jme3/audio/Environment;->lateReverbDelay:F

    .line 53
    iput p9, p0, Lcom/jme3/audio/Environment;->lateReverbGain:F

    .line 54
    iput p8, p0, Lcom/jme3/audio/Environment;->reflectDelay:F

    .line 55
    iput p7, p0, Lcom/jme3/audio/Environment;->reflectGain:F

    return-void
.end method

.method public constructor <init>(Lcom/jme3/audio/Environment;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f7e87d3

    .line 16
    iput v0, p0, Lcom/jme3/audio/Environment;->airAbsorbGainHf:F

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/jme3/audio/Environment;->roomRolloffFactor:F

    const v0, 0x3fbeb852    # 1.49f

    .line 18
    iput v0, p0, Lcom/jme3/audio/Environment;->decayTime:F

    const v0, 0x3f0a3d71    # 0.54f

    .line 19
    iput v0, p0, Lcom/jme3/audio/Environment;->decayHFRatio:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 20
    iput v0, p0, Lcom/jme3/audio/Environment;->density:F

    const v0, 0x3e99999a    # 0.3f

    .line 21
    iput v0, p0, Lcom/jme3/audio/Environment;->diffusion:F

    const v0, 0x3ea1cac1    # 0.316f

    .line 22
    iput v0, p0, Lcom/jme3/audio/Environment;->gain:F

    const v0, 0x3cb43958    # 0.022f

    .line 23
    iput v0, p0, Lcom/jme3/audio/Environment;->gainHf:F

    const v0, 0x3db43958    # 0.088f

    .line 24
    iput v0, p0, Lcom/jme3/audio/Environment;->lateReverbDelay:F

    const v0, 0x3f449ba6    # 0.768f

    .line 25
    iput v0, p0, Lcom/jme3/audio/Environment;->lateReverbGain:F

    const v0, 0x3e25e354    # 0.162f

    .line 26
    iput v0, p0, Lcom/jme3/audio/Environment;->reflectDelay:F

    const v0, 0x3d54fdf4    # 0.052f

    .line 27
    iput v0, p0, Lcom/jme3/audio/Environment;->reflectGain:F

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/jme3/audio/Environment;->decayHfLimit:Z

    .line 29
    iget v0, p1, Lcom/jme3/audio/Environment;->airAbsorbGainHf:F

    iput v0, p0, Lcom/jme3/audio/Environment;->airAbsorbGainHf:F

    .line 30
    iget v0, p1, Lcom/jme3/audio/Environment;->roomRolloffFactor:F

    iput v0, p0, Lcom/jme3/audio/Environment;->roomRolloffFactor:F

    .line 31
    iget v0, p1, Lcom/jme3/audio/Environment;->decayTime:F

    iput v0, p0, Lcom/jme3/audio/Environment;->decayTime:F

    .line 32
    iget v0, p1, Lcom/jme3/audio/Environment;->decayHFRatio:F

    iput v0, p0, Lcom/jme3/audio/Environment;->decayHFRatio:F

    .line 33
    iget v0, p1, Lcom/jme3/audio/Environment;->density:F

    iput v0, p0, Lcom/jme3/audio/Environment;->density:F

    .line 34
    iget v0, p1, Lcom/jme3/audio/Environment;->diffusion:F

    iput v0, p0, Lcom/jme3/audio/Environment;->diffusion:F

    .line 35
    iget v0, p1, Lcom/jme3/audio/Environment;->gain:F

    iput v0, p0, Lcom/jme3/audio/Environment;->gain:F

    .line 36
    iget v0, p1, Lcom/jme3/audio/Environment;->gainHf:F

    iput v0, p0, Lcom/jme3/audio/Environment;->gainHf:F

    .line 37
    iget v0, p1, Lcom/jme3/audio/Environment;->lateReverbDelay:F

    iput v0, p0, Lcom/jme3/audio/Environment;->lateReverbDelay:F

    .line 38
    iget v0, p1, Lcom/jme3/audio/Environment;->lateReverbGain:F

    iput v0, p0, Lcom/jme3/audio/Environment;->lateReverbGain:F

    .line 39
    iget v0, p1, Lcom/jme3/audio/Environment;->reflectDelay:F

    iput v0, p0, Lcom/jme3/audio/Environment;->reflectDelay:F

    .line 40
    iget v0, p1, Lcom/jme3/audio/Environment;->reflectGain:F

    iput v0, p0, Lcom/jme3/audio/Environment;->reflectGain:F

    .line 41
    iget-boolean p1, p1, Lcom/jme3/audio/Environment;->decayHfLimit:Z

    iput-boolean p1, p0, Lcom/jme3/audio/Environment;->decayHfLimit:Z

    return-void
.end method

.method public constructor <init>([F)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f7e87d3

    .line 57
    iput v0, p0, Lcom/jme3/audio/Environment;->airAbsorbGainHf:F

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/jme3/audio/Environment;->roomRolloffFactor:F

    const v0, 0x3fbeb852    # 1.49f

    .line 59
    iput v0, p0, Lcom/jme3/audio/Environment;->decayTime:F

    const v0, 0x3f0a3d71    # 0.54f

    .line 60
    iput v0, p0, Lcom/jme3/audio/Environment;->decayHFRatio:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 61
    iput v0, p0, Lcom/jme3/audio/Environment;->density:F

    const v0, 0x3e99999a    # 0.3f

    .line 62
    iput v0, p0, Lcom/jme3/audio/Environment;->diffusion:F

    const v0, 0x3ea1cac1    # 0.316f

    .line 63
    iput v0, p0, Lcom/jme3/audio/Environment;->gain:F

    const v0, 0x3cb43958    # 0.022f

    .line 64
    iput v0, p0, Lcom/jme3/audio/Environment;->gainHf:F

    const v0, 0x3db43958    # 0.088f

    .line 65
    iput v0, p0, Lcom/jme3/audio/Environment;->lateReverbDelay:F

    const v0, 0x3f449ba6    # 0.768f

    .line 66
    iput v0, p0, Lcom/jme3/audio/Environment;->lateReverbGain:F

    const v0, 0x3e25e354    # 0.162f

    .line 67
    iput v0, p0, Lcom/jme3/audio/Environment;->reflectDelay:F

    const v0, 0x3d54fdf4    # 0.052f

    .line 68
    iput v0, p0, Lcom/jme3/audio/Environment;->reflectGain:F

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/jme3/audio/Environment;->decayHfLimit:Z

    .line 70
    array-length v0, p1

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 71
    aget v0, p1, v0

    iput v0, p0, Lcom/jme3/audio/Environment;->diffusion:F

    const/4 v0, 0x3

    .line 72
    aget v0, p1, v0

    invoke-static {v0}, Lcom/jme3/audio/Environment;->eaxDbToAmp(F)F

    move-result v0

    iput v0, p0, Lcom/jme3/audio/Environment;->gain:F

    const/4 v0, 0x4

    .line 73
    aget v0, p1, v0

    invoke-static {v0}, Lcom/jme3/audio/Environment;->eaxDbToAmp(F)F

    move-result v0

    const/4 v1, 0x5

    aget v1, p1, v1

    invoke-static {v1}, Lcom/jme3/audio/Environment;->eaxDbToAmp(F)F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/audio/Environment;->gainHf:F

    const/4 v0, 0x6

    .line 74
    aget v0, p1, v0

    iput v0, p0, Lcom/jme3/audio/Environment;->decayTime:F

    const/4 v0, 0x7

    .line 75
    aget v0, p1, v0

    const/16 v1, 0x8

    aget v1, p1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/audio/Environment;->decayHFRatio:F

    const/16 v0, 0x9

    .line 76
    aget v0, p1, v0

    invoke-static {v0}, Lcom/jme3/audio/Environment;->eaxDbToAmp(F)F

    move-result v0

    iput v0, p0, Lcom/jme3/audio/Environment;->reflectGain:F

    const/16 v0, 0xa

    .line 77
    aget v0, p1, v0

    iput v0, p0, Lcom/jme3/audio/Environment;->reflectDelay:F

    const/16 v0, 0xe

    .line 78
    aget v0, p1, v0

    invoke-static {v0}, Lcom/jme3/audio/Environment;->eaxDbToAmp(F)F

    move-result v0

    iput v0, p0, Lcom/jme3/audio/Environment;->lateReverbGain:F

    const/16 v0, 0xf

    .line 79
    aget v0, p1, v0

    iput v0, p0, Lcom/jme3/audio/Environment;->lateReverbDelay:F

    const/16 v0, 0x17

    .line 80
    aget v0, p1, v0

    invoke-static {v0}, Lcom/jme3/audio/Environment;->eaxDbToAmp(F)F

    move-result v0

    iput v0, p0, Lcom/jme3/audio/Environment;->airAbsorbGainHf:F

    const/16 v0, 0x1a

    .line 81
    aget p1, p1, v0

    iput p1, p0, Lcom/jme3/audio/Environment;->roomRolloffFactor:F

    return-void

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not an EAX preset"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static eaxDbToAmp(F)F
    .locals 1

    const/high16 v0, 0x44fa0000    # 2000.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0, p0}, Lcom/jme3/math/FastMath;->pow(FF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v12, 0xc

    const/4 v13, 0x1

    instance-of v14, v1, Lcom/jme3/audio/Environment;

    const/4 v15, 0x0

    if-nez v14, :cond_0

    return v15

    :cond_0
    if-ne v1, v0, :cond_1

    return v13

    :cond_1
    check-cast v1, Lcom/jme3/audio/Environment;

    iget v14, v0, Lcom/jme3/audio/Environment;->airAbsorbGainHf:F

    iget v2, v0, Lcom/jme3/audio/Environment;->decayHFRatio:F

    iget v3, v0, Lcom/jme3/audio/Environment;->decayTime:F

    iget v4, v0, Lcom/jme3/audio/Environment;->density:F

    iget v5, v0, Lcom/jme3/audio/Environment;->diffusion:F

    iget v6, v0, Lcom/jme3/audio/Environment;->gain:F

    iget v7, v0, Lcom/jme3/audio/Environment;->gainHf:F

    iget v8, v0, Lcom/jme3/audio/Environment;->lateReverbDelay:F

    iget v9, v0, Lcom/jme3/audio/Environment;->lateReverbGain:F

    iget v10, v0, Lcom/jme3/audio/Environment;->reflectDelay:F

    iget v11, v0, Lcom/jme3/audio/Environment;->reflectGain:F

    iget v13, v0, Lcom/jme3/audio/Environment;->roomRolloffFactor:F

    new-array v0, v12, [F

    aput v14, v0, v15

    const/4 v14, 0x1

    aput v2, v0, v14

    const/4 v2, 0x2

    aput v3, v0, v2

    const/4 v2, 0x3

    aput v4, v0, v2

    const/4 v2, 0x4

    aput v5, v0, v2

    const/4 v2, 0x5

    aput v6, v0, v2

    const/4 v2, 0x6

    aput v7, v0, v2

    const/4 v2, 0x7

    aput v8, v0, v2

    const/16 v2, 0x8

    aput v9, v0, v2

    const/16 v2, 0x9

    aput v10, v0, v2

    const/16 v2, 0xa

    aput v11, v0, v2

    const/16 v2, 0xb

    aput v13, v0, v2

    iget v2, v1, Lcom/jme3/audio/Environment;->airAbsorbGainHf:F

    iget v3, v1, Lcom/jme3/audio/Environment;->decayHFRatio:F

    iget v4, v1, Lcom/jme3/audio/Environment;->decayTime:F

    iget v5, v1, Lcom/jme3/audio/Environment;->density:F

    iget v6, v1, Lcom/jme3/audio/Environment;->diffusion:F

    iget v7, v1, Lcom/jme3/audio/Environment;->gain:F

    iget v8, v1, Lcom/jme3/audio/Environment;->gainHf:F

    iget v9, v1, Lcom/jme3/audio/Environment;->lateReverbDelay:F

    iget v10, v1, Lcom/jme3/audio/Environment;->lateReverbGain:F

    iget v11, v1, Lcom/jme3/audio/Environment;->reflectDelay:F

    iget v13, v1, Lcom/jme3/audio/Environment;->reflectGain:F

    iget v14, v1, Lcom/jme3/audio/Environment;->roomRolloffFactor:F

    move-object/from16 p1, v1

    new-array v1, v12, [F

    aput v2, v1, v15

    const/4 v2, 0x1

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v4, v1, v2

    const/4 v2, 0x3

    aput v5, v1, v2

    const/4 v2, 0x4

    aput v6, v1, v2

    const/4 v2, 0x5

    aput v7, v1, v2

    const/4 v2, 0x6

    aput v8, v1, v2

    const/4 v2, 0x7

    aput v9, v1, v2

    const/16 v2, 0x8

    aput v10, v1, v2

    const/16 v2, 0x9

    aput v11, v1, v2

    const/16 v2, 0xa

    aput v13, v1, v2

    const/16 v2, 0xb

    aput v14, v1, v2

    move v2, v15

    :goto_0
    if-ge v2, v12, :cond_3

    aget v3, v0, v2

    aget v4, v1, v2

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x358637bd    # 1.0E-6f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    return v15

    :cond_2
    const/4 v3, 0x1

    add-int/2addr v2, v3

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    const/4 v3, 0x1

    iget-boolean v1, v0, Lcom/jme3/audio/Environment;->decayHfLimit:Z

    move-object/from16 v2, p1

    iget-boolean v2, v2, Lcom/jme3/audio/Environment;->decayHfLimit:Z

    if-ne v1, v2, :cond_4

    move v13, v3

    goto :goto_1

    :cond_4
    move v13, v15

    :goto_1
    return v13
.end method

.method public getAirAbsorbGainHf()F
    .locals 1

    iget v0, p0, Lcom/jme3/audio/Environment;->airAbsorbGainHf:F

    return v0
.end method

.method public getDecayHFRatio()F
    .locals 1

    iget v0, p0, Lcom/jme3/audio/Environment;->decayHFRatio:F

    return v0
.end method

.method public getDecayTime()F
    .locals 1

    iget v0, p0, Lcom/jme3/audio/Environment;->decayTime:F

    return v0
.end method

.method public getDensity()F
    .locals 1

    iget v0, p0, Lcom/jme3/audio/Environment;->density:F

    return v0
.end method

.method public getDiffusion()F
    .locals 1

    iget v0, p0, Lcom/jme3/audio/Environment;->diffusion:F

    return v0
.end method

.method public getGain()F
    .locals 1

    iget v0, p0, Lcom/jme3/audio/Environment;->gain:F

    return v0
.end method

.method public getGainHf()F
    .locals 1

    iget v0, p0, Lcom/jme3/audio/Environment;->gainHf:F

    return v0
.end method

.method public getLateReverbDelay()F
    .locals 1

    iget v0, p0, Lcom/jme3/audio/Environment;->lateReverbDelay:F

    return v0
.end method

.method public getLateReverbGain()F
    .locals 1

    iget v0, p0, Lcom/jme3/audio/Environment;->lateReverbGain:F

    return v0
.end method

.method public getReflectDelay()F
    .locals 1

    iget v0, p0, Lcom/jme3/audio/Environment;->reflectDelay:F

    return v0
.end method

.method public getReflectGain()F
    .locals 1

    iget v0, p0, Lcom/jme3/audio/Environment;->reflectGain:F

    return v0
.end method

.method public getRoomRolloffFactor()F
    .locals 1

    iget v0, p0, Lcom/jme3/audio/Environment;->roomRolloffFactor:F

    return v0
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lcom/jme3/audio/Environment;->airAbsorbGainHf:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/jme3/audio/Environment;->roomRolloffFactor:F

    cmpl-float v4, v2, v1

    if-eqz v4, :cond_1

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/jme3/audio/Environment;->decayTime:F

    cmpl-float v4, v2, v1

    if-eqz v4, :cond_2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/jme3/audio/Environment;->decayHFRatio:F

    cmpl-float v4, v2, v1

    if-eqz v4, :cond_3

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/jme3/audio/Environment;->density:F

    cmpl-float v4, v2, v1

    if-eqz v4, :cond_4

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v3

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/jme3/audio/Environment;->diffusion:F

    cmpl-float v4, v2, v1

    if-eqz v4, :cond_5

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v3

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/jme3/audio/Environment;->gain:F

    cmpl-float v4, v2, v1

    if-eqz v4, :cond_6

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_6

    :cond_6
    move v2, v3

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/jme3/audio/Environment;->gainHf:F

    cmpl-float v4, v2, v1

    if-eqz v4, :cond_7

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_7

    :cond_7
    move v2, v3

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/jme3/audio/Environment;->lateReverbDelay:F

    cmpl-float v4, v2, v1

    if-eqz v4, :cond_8

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_8

    :cond_8
    move v2, v3

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/jme3/audio/Environment;->lateReverbGain:F

    cmpl-float v4, v2, v1

    if-eqz v4, :cond_9

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_9

    :cond_9
    move v2, v3

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/jme3/audio/Environment;->reflectDelay:F

    cmpl-float v4, v2, v1

    if-eqz v4, :cond_a

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_a

    :cond_a
    move v2, v3

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/jme3/audio/Environment;->reflectGain:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_b

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    :cond_b
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/jme3/audio/Environment;->decayHfLimit:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isDecayHfLimit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/audio/Environment;->decayHfLimit:Z

    return v0
.end method

.method public setAirAbsorbGainHf(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/audio/Environment;->airAbsorbGainHf:F

    return-void
.end method

.method public setDecayHFRatio(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/audio/Environment;->decayHFRatio:F

    return-void
.end method

.method public setDecayHfLimit(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/audio/Environment;->decayHfLimit:Z

    return-void
.end method

.method public setDecayTime(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/audio/Environment;->decayTime:F

    return-void
.end method

.method public setDensity(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/audio/Environment;->density:F

    return-void
.end method

.method public setDiffusion(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/audio/Environment;->diffusion:F

    return-void
.end method

.method public setGain(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/audio/Environment;->gain:F

    return-void
.end method

.method public setGainHf(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/audio/Environment;->gainHf:F

    return-void
.end method

.method public setLateReverbDelay(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/audio/Environment;->lateReverbDelay:F

    return-void
.end method

.method public setLateReverbGain(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/audio/Environment;->lateReverbGain:F

    return-void
.end method

.method public setReflectDelay(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/audio/Environment;->reflectDelay:F

    return-void
.end method

.method public setReflectGain(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/audio/Environment;->reflectGain:F

    return-void
.end method

.method public setRoomRolloffFactor(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/audio/Environment;->roomRolloffFactor:F

    return-void
.end method

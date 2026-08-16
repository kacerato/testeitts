.class public final Lcom/jme3/terrain/noise/basis/ImprovedNoise;
.super Lcom/jme3/terrain/noise/basis/Noise;
.source "SourceFile"


# static fields
.field private static GRAD3:[[F

.field static final p:[I

.field static final permutation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 20

    const/16 v0, 0x200

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/terrain/noise/basis/ImprovedNoise;->p:[I

    const/4 v1, 0x3

    const/16 v2, 0x100

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    sput-object v3, Lcom/jme3/terrain/noise/basis/ImprovedNoise;->permutation:[I

    new-array v4, v1, [F

    fill-array-data v4, :array_1

    new-array v5, v1, [F

    fill-array-data v5, :array_2

    new-array v6, v1, [F

    fill-array-data v6, :array_3

    new-array v7, v1, [F

    fill-array-data v7, :array_4

    new-array v8, v1, [F

    fill-array-data v8, :array_5

    new-array v9, v1, [F

    fill-array-data v9, :array_6

    new-array v10, v1, [F

    fill-array-data v10, :array_7

    new-array v11, v1, [F

    fill-array-data v11, :array_8

    new-array v12, v1, [F

    fill-array-data v12, :array_9

    new-array v13, v1, [F

    fill-array-data v13, :array_a

    new-array v14, v1, [F

    fill-array-data v14, :array_b

    new-array v15, v1, [F

    fill-array-data v15, :array_c

    new-array v3, v1, [F

    fill-array-data v3, :array_d

    new-array v0, v1, [F

    fill-array-data v0, :array_e

    new-array v2, v1, [F

    fill-array-data v2, :array_f

    new-array v1, v1, [F

    fill-array-data v1, :array_10

    move-object/from16 v16, v3

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v1

    filled-new-array/range {v4 .. v19}, [[F

    move-result-object v0

    sput-object v0, Lcom/jme3/terrain/noise/basis/ImprovedNoise;->GRAD3:[[F

    const/4 v0, 0x0

    const/16 v1, 0x100

    :goto_0
    if-ge v0, v1, :cond_0

    sget-object v2, Lcom/jme3/terrain/noise/basis/ImprovedNoise;->p:[I

    add-int/lit16 v3, v0, 0x100

    sget-object v4, Lcom/jme3/terrain/noise/basis/ImprovedNoise;->permutation:[I

    aget v4, v4, v0

    aput v4, v2, v0

    aput v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x97
        0xa0
        0x89
        0x5b
        0x5a
        0xf
        0x83
        0xd
        0xc9
        0x5f
        0x60
        0x35
        0xc2
        0xe9
        0x7
        0xe1
        0x8c
        0x24
        0x67
        0x1e
        0x45
        0x8e
        0x8
        0x63
        0x25
        0xf0
        0x15
        0xa
        0x17
        0xbe
        0x6
        0x94
        0xf7
        0x78
        0xea
        0x4b
        0x0
        0x1a
        0xc5
        0x3e
        0x5e
        0xfc
        0xdb
        0xcb
        0x75
        0x23
        0xb
        0x20
        0x39
        0xb1
        0x21
        0x58
        0xed
        0x95
        0x38
        0x57
        0xae
        0x14
        0x7d
        0x88
        0xab
        0xa8
        0x44
        0xaf
        0x4a
        0xa5
        0x47
        0x86
        0x8b
        0x30
        0x1b
        0xa6
        0x4d
        0x92
        0x9e
        0xe7
        0x53
        0x6f
        0xe5
        0x7a
        0x3c
        0xd3
        0x85
        0xe6
        0xdc
        0x69
        0x5c
        0x29
        0x37
        0x2e
        0xf5
        0x28
        0xf4
        0x66
        0x8f
        0x36
        0x41
        0x19
        0x3f
        0xa1
        0x1
        0xd8
        0x50
        0x49
        0xd1
        0x4c
        0x84
        0xbb
        0xd0
        0x59
        0x12
        0xa9
        0xc8
        0xc4
        0x87
        0x82
        0x74
        0xbc
        0x9f
        0x56
        0xa4
        0x64
        0x6d
        0xc6
        0xad
        0xba
        0x3
        0x40
        0x34
        0xd9
        0xe2
        0xfa
        0x7c
        0x7b
        0x5
        0xca
        0x26
        0x93
        0x76
        0x7e
        0xff
        0x52
        0x55
        0xd4
        0xcf
        0xce
        0x3b
        0xe3
        0x2f
        0x10
        0x3a
        0x11
        0xb6
        0xbd
        0x1c
        0x2a
        0xdf
        0xb7
        0xaa
        0xd5
        0x77
        0xf8
        0x98
        0x2
        0x2c
        0x9a
        0xa3
        0x46
        0xdd
        0x99
        0x65
        0x9b
        0xa7
        0x2b
        0xac
        0x9
        0x81
        0x16
        0x27
        0xfd
        0x13
        0x62
        0x6c
        0x6e
        0x4f
        0x71
        0xe0
        0xe8
        0xb2
        0xb9
        0x70
        0x68
        0xda
        0xf6
        0x61
        0xe4
        0xfb
        0x22
        0xf2
        0xc1
        0xee
        0xd2
        0x90
        0xc
        0xbf
        0xb3
        0xa2
        0xf1
        0x51
        0x33
        0x91
        0xeb
        0xf9
        0xe
        0xef
        0x6b
        0x31
        0xc0
        0xd6
        0x1f
        0xb5
        0xc7
        0x6a
        0x9d
        0xb8
        0x54
        0xcc
        0xb0
        0x73
        0x79
        0x32
        0x2d
        0x7f
        0x4
        0x96
        0xfe
        0x8a
        0xec
        0xcd
        0x5d
        0xde
        0x72
        0x43
        0x1d
        0x18
        0x48
        0xf3
        0x8d
        0x80
        0xc3
        0x4e
        0x42
        0xd7
        0x3d
        0x9c
        0xb4
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_8
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_a
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_c
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_d
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_e
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_f
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_10
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jme3/terrain/noise/basis/Noise;-><init>()V

    return-void
.end method

.method public static final fade(F)F
    .locals 3

    mul-float v0, p0, p0

    mul-float/2addr v0, p0

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v1, p0

    const/high16 v2, 0x41700000    # 15.0f

    sub-float/2addr v1, v2

    mul-float/2addr p0, v1

    const/high16 v1, 0x41200000    # 10.0f

    add-float/2addr p0, v1

    mul-float/2addr v0, p0

    return v0
.end method

.method public static grad(IFFF)F
    .locals 3

    and-int/lit8 v0, p0, 0xf

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    move p1, p2

    goto :goto_1

    :cond_1
    const/16 p2, 0xc

    if-eq v0, p2, :cond_3

    const/16 p2, 0xe

    if-ne v0, p2, :cond_2

    goto :goto_1

    :cond_2
    move p1, p3

    :cond_3
    :goto_1
    and-int/lit8 p2, p0, 0x1

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    neg-float v1, v1

    :goto_2
    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    neg-float p1, p1

    :goto_3
    add-float/2addr v1, p1

    return v1
.end method

.method public static final grad3(IFFF)F
    .locals 1

    and-int/lit8 p0, p0, 0xf

    sget-object v0, Lcom/jme3/terrain/noise/basis/ImprovedNoise;->GRAD3:[[F

    aget-object p0, v0, p0

    const/4 v0, 0x0

    aget v0, p0, v0

    mul-float/2addr p1, v0

    const/4 v0, 0x1

    aget v0, p0, v0

    mul-float/2addr p2, v0

    add-float/2addr p1, p2

    const/4 p2, 0x2

    aget p0, p0, p2

    mul-float/2addr p3, p0

    add-float/2addr p1, p3

    return p1
.end method

.method public static final lerp(FFF)F
    .locals 0

    sub-float/2addr p2, p1

    mul-float/2addr p0, p2

    add-float/2addr p1, p0

    return p1
.end method

.method public static noise(FFF)F
    .locals 16

    invoke-static/range {p0 .. p0}, Lcom/jme3/terrain/noise/ShaderUtils;->floor(F)I

    move-result v0

    invoke-static/range {p1 .. p1}, Lcom/jme3/terrain/noise/ShaderUtils;->floor(F)I

    move-result v1

    invoke-static/range {p2 .. p2}, Lcom/jme3/terrain/noise/ShaderUtils;->floor(F)I

    move-result v2

    int-to-float v3, v0

    sub-float v3, p0, v3

    int-to-float v4, v1

    sub-float v4, p1, v4

    int-to-float v5, v2

    sub-float v5, p2, v5

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, v2, 0xff

    invoke-static {v3}, Lcom/jme3/terrain/noise/basis/ImprovedNoise;->fade(F)F

    move-result v6

    invoke-static {v4}, Lcom/jme3/terrain/noise/basis/ImprovedNoise;->fade(F)F

    move-result v7

    invoke-static {v5}, Lcom/jme3/terrain/noise/basis/ImprovedNoise;->fade(F)F

    move-result v8

    sget-object v9, Lcom/jme3/terrain/noise/basis/ImprovedNoise;->p:[I

    aget v10, v9, v0

    add-int/2addr v10, v1

    aget v11, v9, v10

    add-int/2addr v11, v2

    add-int/lit8 v10, v10, 0x1

    aget v10, v9, v10

    add-int/2addr v10, v2

    add-int/lit8 v0, v0, 0x1

    aget v0, v9, v0

    add-int/2addr v0, v1

    aget v1, v9, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    aget v0, v9, v0

    add-int/2addr v0, v2

    aget v2, v9, v11

    invoke-static {v2, v3, v4, v5}, Lcom/jme3/terrain/noise/basis/ImprovedNoise;->grad3(IFFF)F

    move-result v2

    aget v12, v9, v1

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v14, v3, v13

    invoke-static {v12, v14, v4, v5}, Lcom/jme3/terrain/noise/basis/ImprovedNoise;->grad3(IFFF)F

    move-result v12

    invoke-static {v6, v2, v12}, Lcom/jme3/terrain/noise/basis/ImprovedNoise;->lerp(FFF)F

    move-result v2

    aget v12, v9, v10

    sub-float v15, v4, v13

    invoke-static {v12, v3, v15, v5}, Lcom/jme3/terrain/noise/basis/ImprovedNoise;->grad3(IFFF)F

    move-result v12

    aget v13, v9, v0

    invoke-static {v13, v14, v15, v5}, Lcom/jme3/terrain/noise/basis/ImprovedNoise;->grad3(IFFF)F

    move-result v13

    invoke-static {v6, v12, v13}, Lcom/jme3/terrain/noise/basis/ImprovedNoise;->lerp(FFF)F

    move-result v12

    invoke-static {v7, v2, v12}, Lcom/jme3/terrain/noise/basis/ImprovedNoise;->lerp(FFF)F

    move-result v2

    add-int/lit8 v11, v11, 0x1

    aget v11, v9, v11

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v5, v12

    invoke-static {v11, v3, v4, v5}, Lcom/jme3/terrain/noise/basis/ImprovedNoise;->grad3(IFFF)F

    move-result v11

    add-int/lit8 v1, v1, 0x1

    aget v1, v9, v1

    invoke-static {v1, v14, v4, v5}, Lcom/jme3/terrain/noise/basis/ImprovedNoise;->grad3(IFFF)F

    move-result v1

    invoke-static {v6, v11, v1}, Lcom/jme3/terrain/noise/basis/ImprovedNoise;->lerp(FFF)F

    move-result v1

    add-int/lit8 v10, v10, 0x1

    aget v4, v9, v10

    invoke-static {v4, v3, v15, v5}, Lcom/jme3/terrain/noise/basis/ImprovedNoise;->grad3(IFFF)F

    move-result v3

    add-int/lit8 v0, v0, 0x1

    aget v0, v9, v0

    invoke-static {v0, v14, v15, v5}, Lcom/jme3/terrain/noise/basis/ImprovedNoise;->grad3(IFFF)F

    move-result v0

    invoke-static {v6, v3, v0}, Lcom/jme3/terrain/noise/basis/ImprovedNoise;->lerp(FFF)F

    move-result v0

    invoke-static {v7, v1, v0}, Lcom/jme3/terrain/noise/basis/ImprovedNoise;->lerp(FFF)F

    move-result v0

    invoke-static {v8, v2, v0}, Lcom/jme3/terrain/noise/basis/ImprovedNoise;->lerp(FFF)F

    move-result v0

    return v0
.end method


# virtual methods
.method public init()V
    .locals 0

    return-void
.end method

.method public value(FFF)F
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/noise/basis/Noise;->scale:F

    mul-float/2addr p1, v0

    mul-float/2addr p2, v0

    mul-float/2addr v0, p3

    invoke-static {p1, p2, v0}, Lcom/jme3/terrain/noise/basis/ImprovedNoise;->noise(FFF)F

    move-result p1

    return p1
.end method

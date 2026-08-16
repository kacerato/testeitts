.class public Lcom/ardor3d/math/functions/SimplexNoise;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static grad3:[[I

.field private static grad4:[[I

.field private static simplex:[[I


# instance fields
.field private final perm:[I


# direct methods
.method static constructor <clinit>()V
    .locals 68

    const/4 v0, 0x1

    const/4 v1, 0x0

    filled-new-array {v0, v0, v1}, [I

    move-result-object v2

    const/4 v14, -0x1

    filled-new-array {v14, v0, v1}, [I

    move-result-object v3

    filled-new-array {v0, v14, v1}, [I

    move-result-object v4

    filled-new-array {v14, v14, v1}, [I

    move-result-object v5

    filled-new-array {v0, v1, v0}, [I

    move-result-object v6

    filled-new-array {v14, v1, v0}, [I

    move-result-object v7

    filled-new-array {v0, v1, v14}, [I

    move-result-object v8

    filled-new-array {v14, v1, v14}, [I

    move-result-object v9

    filled-new-array {v1, v0, v0}, [I

    move-result-object v10

    filled-new-array {v1, v14, v0}, [I

    move-result-object v11

    filled-new-array {v1, v0, v14}, [I

    move-result-object v12

    filled-new-array {v1, v14, v14}, [I

    move-result-object v13

    filled-new-array/range {v2 .. v13}, [[I

    move-result-object v2

    sput-object v2, Lcom/ardor3d/math/functions/SimplexNoise;->grad3:[[I

    filled-new-array {v1, v0, v0, v0}, [I

    move-result-object v15

    filled-new-array {v1, v0, v0, v14}, [I

    move-result-object v16

    filled-new-array {v1, v0, v14, v0}, [I

    move-result-object v17

    filled-new-array {v1, v0, v14, v14}, [I

    move-result-object v18

    filled-new-array {v1, v14, v0, v0}, [I

    move-result-object v19

    filled-new-array {v1, v14, v0, v14}, [I

    move-result-object v20

    filled-new-array {v1, v14, v14, v0}, [I

    move-result-object v21

    filled-new-array {v1, v14, v14, v14}, [I

    move-result-object v22

    filled-new-array {v0, v1, v0, v0}, [I

    move-result-object v23

    filled-new-array {v0, v1, v0, v14}, [I

    move-result-object v24

    filled-new-array {v0, v1, v14, v0}, [I

    move-result-object v25

    filled-new-array {v0, v1, v14, v14}, [I

    move-result-object v26

    filled-new-array {v14, v1, v0, v0}, [I

    move-result-object v27

    filled-new-array {v14, v1, v0, v14}, [I

    move-result-object v28

    filled-new-array {v14, v1, v14, v0}, [I

    move-result-object v29

    filled-new-array {v14, v1, v14, v14}, [I

    move-result-object v30

    filled-new-array {v0, v0, v1, v0}, [I

    move-result-object v31

    filled-new-array {v0, v0, v1, v14}, [I

    move-result-object v32

    filled-new-array {v0, v14, v1, v0}, [I

    move-result-object v33

    filled-new-array {v0, v14, v1, v14}, [I

    move-result-object v34

    filled-new-array {v14, v0, v1, v0}, [I

    move-result-object v35

    filled-new-array {v14, v0, v1, v14}, [I

    move-result-object v36

    filled-new-array {v14, v14, v1, v0}, [I

    move-result-object v37

    filled-new-array {v14, v14, v1, v14}, [I

    move-result-object v38

    filled-new-array {v0, v0, v0, v1}, [I

    move-result-object v39

    filled-new-array {v0, v0, v14, v1}, [I

    move-result-object v40

    filled-new-array {v0, v14, v0, v1}, [I

    move-result-object v41

    filled-new-array {v0, v14, v14, v1}, [I

    move-result-object v42

    filled-new-array {v14, v0, v0, v1}, [I

    move-result-object v43

    filled-new-array {v14, v0, v14, v1}, [I

    move-result-object v44

    filled-new-array {v14, v14, v0, v1}, [I

    move-result-object v45

    filled-new-array {v14, v14, v14, v1}, [I

    move-result-object v46

    filled-new-array/range {v15 .. v46}, [[I

    move-result-object v2

    sput-object v2, Lcom/ardor3d/math/functions/SimplexNoise;->grad4:[[I

    const/4 v2, 0x2

    const/4 v3, 0x3

    filled-new-array {v1, v0, v2, v3}, [I

    move-result-object v4

    filled-new-array {v1, v0, v3, v2}, [I

    move-result-object v5

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v6

    filled-new-array {v1, v2, v3, v0}, [I

    move-result-object v7

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v8

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v9

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v10

    filled-new-array {v0, v2, v3, v1}, [I

    move-result-object v11

    filled-new-array {v1, v2, v0, v3}, [I

    move-result-object v12

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v13

    filled-new-array {v1, v3, v0, v2}, [I

    move-result-object v14

    filled-new-array {v1, v3, v2, v0}, [I

    move-result-object v15

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v16

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v17

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v18

    filled-new-array {v0, v3, v2, v1}, [I

    move-result-object v19

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v20

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v21

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v22

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v23

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v24

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v25

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v26

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v27

    filled-new-array {v0, v2, v1, v3}, [I

    move-result-object v28

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v29

    filled-new-array {v0, v3, v1, v2}, [I

    move-result-object v30

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v31

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v32

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v33

    filled-new-array {v2, v3, v1, v0}, [I

    move-result-object v34

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v35

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v36

    filled-new-array {v0, v1, v3, v2}, [I

    move-result-object v37

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v38

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v39

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v40

    filled-new-array {v2, v1, v3, v0}, [I

    move-result-object v41

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v42

    filled-new-array {v2, v0, v3, v1}, [I

    move-result-object v43

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v44

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v45

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v46

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v47

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v48

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v49

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v50

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v51

    filled-new-array {v2, v1, v0, v3}, [I

    move-result-object v52

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v53

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v54

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v55

    filled-new-array {v3, v1, v0, v2}, [I

    move-result-object v56

    filled-new-array {v3, v1, v2, v0}, [I

    move-result-object v57

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v58

    filled-new-array {v3, v0, v2, v1}, [I

    move-result-object v59

    filled-new-array {v2, v0, v1, v3}, [I

    move-result-object v60

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v61

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v62

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v63

    filled-new-array {v3, v0, v1, v2}, [I

    move-result-object v64

    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v65

    filled-new-array {v3, v2, v1, v0}, [I

    move-result-object v66

    filled-new-array {v3, v2, v0, v1}, [I

    move-result-object v67

    filled-new-array/range {v4 .. v67}, [[I

    move-result-object v0

    sput-object v0, Lcom/ardor3d/math/functions/SimplexNoise;->simplex:[[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ardor3d/math/functions/SimplexNoise;->perm:[I

    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/ardor3d/math/functions/SimplexNoise;->setPermutations([I)V

    return-void

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
.end method

.method private static dot([IDD)D
    .locals 2

    const/4 v0, 0x0

    .line 1
    aget v0, p0, v0

    int-to-double v0, v0

    mul-double/2addr v0, p1

    const/4 p1, 0x1

    aget p0, p0, p1

    int-to-double p0, p0

    mul-double/2addr p0, p3

    add-double/2addr v0, p0

    return-wide v0
.end method

.method private static dot([IDDD)D
    .locals 2

    const/4 v0, 0x0

    .line 2
    aget v0, p0, v0

    int-to-double v0, v0

    mul-double/2addr v0, p1

    const/4 p1, 0x1

    aget p1, p0, p1

    int-to-double p1, p1

    mul-double/2addr p1, p3

    add-double/2addr v0, p1

    const/4 p1, 0x2

    aget p0, p0, p1

    int-to-double p0, p0

    mul-double/2addr p0, p5

    add-double/2addr v0, p0

    return-wide v0
.end method

.method private static dot([IDDDD)D
    .locals 2

    const/4 v0, 0x0

    .line 3
    aget v0, p0, v0

    int-to-double v0, v0

    mul-double/2addr v0, p1

    const/4 p1, 0x1

    aget p1, p0, p1

    int-to-double p1, p1

    mul-double/2addr p1, p3

    add-double/2addr v0, p1

    const/4 p1, 0x2

    aget p1, p0, p1

    int-to-double p1, p1

    mul-double/2addr p1, p5

    add-double/2addr v0, p1

    const/4 p1, 0x3

    aget p0, p0, p1

    int-to-double p0, p0

    mul-double/2addr p0, p7

    add-double/2addr v0, p0

    return-wide v0
.end method

.method private resetPerm([I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x200

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/ardor3d/math/functions/SimplexNoise;->perm:[I

    and-int/lit16 v2, v0, 0xff

    aget v2, p1, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public noise(DD)D
    .locals 24

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v6

    add-double v8, p1, p3

    mul-double/2addr v8, v2

    add-double v2, p1, v8

    .line 2
    invoke-static {v2, v3}, Lcom/ardor3d/math/MathUtils;->floor(D)J

    move-result-wide v2

    long-to-int v2, v2

    add-double v8, p3, v8

    .line 3
    invoke-static {v8, v9}, Lcom/ardor3d/math/MathUtils;->floor(D)J

    move-result-wide v8

    long-to-int v3, v8

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    sub-double/2addr v0, v8

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    div-double/2addr v0, v8

    add-int v8, v2, v3

    int-to-double v8, v8

    mul-double/2addr v8, v0

    int-to-double v10, v2

    sub-double/2addr v10, v8

    int-to-double v12, v3

    sub-double/2addr v12, v8

    sub-double v8, p1, v10

    sub-double v10, p3, v12

    cmpl-double v12, v8, v10

    const/4 v13, 0x0

    if-lez v12, :cond_0

    move v12, v13

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x1

    :goto_0
    int-to-double v6, v13

    sub-double v6, v8, v6

    add-double/2addr v6, v0

    int-to-double v14, v12

    sub-double v14, v10, v14

    add-double/2addr v14, v0

    sub-double v16, v8, v4

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v18

    move-wide/from16 v18, v14

    add-double v14, v16, v0

    sub-double v4, v10, v4

    add-double/2addr v4, v0

    and-int/lit16 v0, v2, 0xff

    and-int/lit16 v1, v3, 0xff

    move-object/from16 v2, p0

    .line 5
    iget-object v3, v2, Lcom/ardor3d/math/functions/SimplexNoise;->perm:[I

    aget v16, v3, v1

    add-int v16, v0, v16

    aget v16, v3, v16

    rem-int/lit8 v16, v16, 0xc

    add-int/2addr v13, v0

    add-int/2addr v12, v1

    .line 6
    aget v12, v3, v12

    add-int/2addr v13, v12

    aget v12, v3, v13

    rem-int/lit8 v12, v12, 0xc

    const/4 v13, 0x1

    add-int/2addr v0, v13

    add-int/2addr v1, v13

    .line 7
    aget v1, v3, v1

    add-int/2addr v0, v1

    aget v0, v3, v0

    rem-int/lit8 v0, v0, 0xc

    mul-double v20, v8, v8

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    sub-double v20, v22, v20

    move-wide/from16 v1, v18

    mul-double v22, v10, v10

    sub-double v20, v20, v22

    const-wide/16 v22, 0x0

    cmpg-double v3, v20, v22

    if-gez v3, :cond_1

    move-wide/from16 v20, v22

    goto :goto_1

    :cond_1
    mul-double v20, v20, v20

    mul-double v20, v20, v20

    .line 8
    sget-object v3, Lcom/ardor3d/math/functions/SimplexNoise;->grad3:[[I

    aget-object v3, v3, v16

    invoke-static {v3, v8, v9, v10, v11}, Lcom/ardor3d/math/functions/SimplexNoise;->dot([IDD)D

    move-result-wide v8

    mul-double v20, v20, v8

    :goto_1
    mul-double v8, v6, v6

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    sub-double v8, v10, v8

    mul-double v16, v1, v1

    sub-double v8, v8, v16

    cmpg-double v3, v8, v22

    if-gez v3, :cond_2

    move-wide/from16 v8, v22

    goto :goto_2

    :cond_2
    mul-double/2addr v8, v8

    mul-double/2addr v8, v8

    .line 9
    sget-object v3, Lcom/ardor3d/math/functions/SimplexNoise;->grad3:[[I

    aget-object v3, v3, v12

    invoke-static {v3, v6, v7, v1, v2}, Lcom/ardor3d/math/functions/SimplexNoise;->dot([IDD)D

    move-result-wide v1

    mul-double/2addr v8, v1

    :goto_2
    mul-double v1, v14, v14

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v6, v1

    mul-double v1, v4, v4

    sub-double/2addr v6, v1

    cmpg-double v1, v6, v22

    if-gez v1, :cond_3

    goto :goto_3

    :cond_3
    mul-double/2addr v6, v6

    mul-double/2addr v6, v6

    .line 10
    sget-object v1, Lcom/ardor3d/math/functions/SimplexNoise;->grad3:[[I

    aget-object v0, v1, v0

    invoke-static {v0, v14, v15, v4, v5}, Lcom/ardor3d/math/functions/SimplexNoise;->dot([IDD)D

    move-result-wide v0

    mul-double v22, v6, v0

    :goto_3
    add-double v20, v20, v8

    add-double v20, v20, v22

    const-wide v0, 0x4051800000000000L    # 70.0

    mul-double v20, v20, v0

    return-wide v20
.end method

.method public noise(DDD)D
    .locals 44

    add-double v0, p1, p3

    add-double v0, v0, p5

    const-wide v2, 0x3fd5555555555555L    # 0.3333333333333333

    mul-double/2addr v0, v2

    add-double v4, p1, v0

    .line 11
    invoke-static {v4, v5}, Lcom/ardor3d/math/MathUtils;->floor(D)J

    move-result-wide v4

    long-to-int v4, v4

    add-double v5, p3, v0

    .line 12
    invoke-static {v5, v6}, Lcom/ardor3d/math/MathUtils;->floor(D)J

    move-result-wide v5

    long-to-int v5, v5

    add-double v0, p5, v0

    .line 13
    invoke-static {v0, v1}, Lcom/ardor3d/math/MathUtils;->floor(D)J

    move-result-wide v0

    long-to-int v0, v0

    add-int v1, v4, v5

    add-int/2addr v1, v0

    int-to-double v6, v1

    const-wide v8, 0x3fc5555555555555L    # 0.16666666666666666

    mul-double/2addr v6, v8

    int-to-double v10, v4

    sub-double/2addr v10, v6

    int-to-double v12, v5

    sub-double/2addr v12, v6

    int-to-double v14, v0

    sub-double/2addr v14, v6

    sub-double v17, p1, v10

    sub-double v19, p3, v12

    sub-double v21, p5, v14

    cmpl-double v1, v17, v19

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ltz v1, :cond_2

    cmpl-double v1, v19, v21

    if-ltz v1, :cond_0

    move v1, v6

    move v10, v1

    move v13, v10

    move v6, v7

    move v11, v6

    :goto_0
    move v12, v11

    goto :goto_3

    :cond_0
    cmpl-double v1, v17, v21

    if-ltz v1, :cond_1

    move v1, v6

    move v10, v1

    move v12, v10

    move v6, v7

    move v11, v6

    :goto_1
    move v13, v11

    goto :goto_3

    :cond_1
    move v1, v6

    move v12, v1

    move v10, v7

    move v11, v10

    goto :goto_1

    :cond_2
    cmpg-double v1, v19, v21

    if-gez v1, :cond_3

    move v1, v6

    move v11, v1

    move v10, v7

    move v12, v10

    :goto_2
    move v13, v12

    goto :goto_3

    :cond_3
    cmpg-double v1, v17, v21

    if-gez v1, :cond_4

    move v10, v6

    move v11, v10

    move v1, v7

    move v12, v1

    goto :goto_2

    :cond_4
    move v10, v6

    move v13, v10

    move v1, v7

    move v11, v1

    goto :goto_0

    :goto_3
    int-to-double v14, v6

    sub-double v14, v17, v14

    add-double v24, v14, v8

    int-to-double v14, v1

    sub-double v14, v19, v14

    add-double v26, v14, v8

    int-to-double v14, v10

    sub-double v14, v21, v14

    add-double v28, v14, v8

    int-to-double v8, v11

    sub-double v8, v17, v8

    add-double v31, v8, v2

    int-to-double v8, v12

    sub-double v8, v19, v8

    add-double v33, v8, v2

    int-to-double v8, v13

    sub-double v8, v21, v8

    add-double v35, v8, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v8, v17, v2

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-double v38, v8, v14

    sub-double v8, v19, v2

    add-double v40, v8, v14

    sub-double v2, v21, v2

    add-double v42, v2, v14

    and-int/lit16 v2, v4, 0xff

    and-int/lit16 v3, v5, 0xff

    and-int/lit16 v0, v0, 0xff

    move-object/from16 v4, p0

    .line 14
    iget-object v5, v4, Lcom/ardor3d/math/functions/SimplexNoise;->perm:[I

    aget v8, v5, v0

    add-int/2addr v8, v3

    aget v8, v5, v8

    add-int/2addr v8, v2

    aget v8, v5, v8

    rem-int/lit8 v8, v8, 0xc

    add-int/2addr v6, v2

    add-int/2addr v1, v3

    add-int/2addr v10, v0

    .line 15
    aget v9, v5, v10

    add-int/2addr v1, v9

    aget v1, v5, v1

    add-int/2addr v6, v1

    aget v1, v5, v6

    rem-int/lit8 v1, v1, 0xc

    add-int/2addr v11, v2

    add-int/2addr v12, v3

    add-int/2addr v13, v0

    .line 16
    aget v6, v5, v13

    add-int/2addr v12, v6

    aget v6, v5, v12

    add-int/2addr v11, v6

    aget v6, v5, v11

    rem-int/lit8 v6, v6, 0xc

    add-int/2addr v2, v7

    add-int/2addr v3, v7

    add-int/2addr v0, v7

    .line 17
    aget v0, v5, v0

    add-int/2addr v3, v0

    aget v0, v5, v3

    add-int/2addr v2, v0

    aget v0, v5, v2

    rem-int/lit8 v0, v0, 0xc

    mul-double v2, v17, v17

    const-wide v9, 0x3fe3333333333333L    # 0.6

    sub-double v2, v9, v2

    mul-double v11, v19, v19

    sub-double/2addr v2, v11

    mul-double v11, v21, v21

    sub-double/2addr v2, v11

    const-wide/16 v11, 0x0

    cmpg-double v5, v2, v11

    if-gez v5, :cond_5

    move-wide v2, v11

    goto :goto_4

    :cond_5
    mul-double/2addr v2, v2

    mul-double/2addr v2, v2

    .line 18
    sget-object v5, Lcom/ardor3d/math/functions/SimplexNoise;->grad3:[[I

    aget-object v16, v5, v8

    invoke-static/range {v16 .. v22}, Lcom/ardor3d/math/functions/SimplexNoise;->dot([IDDD)D

    move-result-wide v7

    mul-double/2addr v2, v7

    :goto_4
    mul-double v7, v24, v24

    sub-double v7, v9, v7

    mul-double v13, v26, v26

    sub-double/2addr v7, v13

    mul-double v13, v28, v28

    sub-double/2addr v7, v13

    cmpg-double v5, v7, v11

    if-gez v5, :cond_6

    move-wide v7, v11

    goto :goto_5

    :cond_6
    mul-double/2addr v7, v7

    mul-double/2addr v7, v7

    .line 19
    sget-object v5, Lcom/ardor3d/math/functions/SimplexNoise;->grad3:[[I

    aget-object v23, v5, v1

    invoke-static/range {v23 .. v29}, Lcom/ardor3d/math/functions/SimplexNoise;->dot([IDDD)D

    move-result-wide v13

    mul-double/2addr v7, v13

    :goto_5
    mul-double v13, v31, v31

    sub-double v13, v9, v13

    mul-double v15, v33, v33

    sub-double/2addr v13, v15

    mul-double v15, v35, v35

    sub-double/2addr v13, v15

    cmpg-double v1, v13, v11

    if-gez v1, :cond_7

    move-wide v13, v11

    goto :goto_6

    :cond_7
    mul-double/2addr v13, v13

    mul-double/2addr v13, v13

    .line 20
    sget-object v1, Lcom/ardor3d/math/functions/SimplexNoise;->grad3:[[I

    aget-object v30, v1, v6

    invoke-static/range {v30 .. v36}, Lcom/ardor3d/math/functions/SimplexNoise;->dot([IDDD)D

    move-result-wide v5

    mul-double/2addr v13, v5

    :goto_6
    mul-double v5, v38, v38

    sub-double/2addr v9, v5

    mul-double v5, v40, v40

    sub-double/2addr v9, v5

    mul-double v5, v42, v42

    sub-double/2addr v9, v5

    cmpg-double v1, v9, v11

    if-gez v1, :cond_8

    goto :goto_7

    :cond_8
    mul-double/2addr v9, v9

    mul-double/2addr v9, v9

    .line 21
    sget-object v1, Lcom/ardor3d/math/functions/SimplexNoise;->grad3:[[I

    aget-object v37, v1, v0

    invoke-static/range {v37 .. v43}, Lcom/ardor3d/math/functions/SimplexNoise;->dot([IDDD)D

    move-result-wide v0

    mul-double v11, v9, v0

    :goto_7
    add-double/2addr v2, v7

    add-double/2addr v2, v13

    add-double/2addr v2, v11

    const-wide/high16 v0, 0x4040000000000000L    # 32.0

    mul-double/2addr v2, v0

    return-wide v2
.end method

.method public noise(DDDD)D
    .locals 71

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    div-double/2addr v2, v6

    .line 23
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    sub-double/2addr v0, v8

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    div-double/2addr v0, v8

    add-double v8, p1, p3

    add-double v8, v8, p5

    add-double v8, v8, p7

    mul-double/2addr v8, v2

    add-double v2, p1, v8

    .line 24
    invoke-static {v2, v3}, Lcom/ardor3d/math/MathUtils;->floor(D)J

    move-result-wide v2

    long-to-int v2, v2

    add-double v10, p3, v8

    .line 25
    invoke-static {v10, v11}, Lcom/ardor3d/math/MathUtils;->floor(D)J

    move-result-wide v10

    long-to-int v3, v10

    add-double v10, p5, v8

    .line 26
    invoke-static {v10, v11}, Lcom/ardor3d/math/MathUtils;->floor(D)J

    move-result-wide v10

    long-to-int v10, v10

    add-double v8, p7, v8

    .line 27
    invoke-static {v8, v9}, Lcom/ardor3d/math/MathUtils;->floor(D)J

    move-result-wide v8

    long-to-int v8, v8

    add-int v9, v2, v3

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    int-to-double v11, v9

    mul-double/2addr v11, v0

    int-to-double v13, v2

    sub-double/2addr v13, v11

    int-to-double v6, v3

    sub-double/2addr v6, v11

    int-to-double v4, v10

    sub-double/2addr v4, v11

    move/from16 v19, v10

    int-to-double v9, v8

    sub-double/2addr v9, v11

    sub-double v21, p1, v13

    sub-double v23, p3, v6

    sub-double v25, p5, v4

    sub-double v27, p7, v9

    cmpl-double v4, v21, v23

    const/4 v6, 0x0

    if-lez v4, :cond_0

    const/16 v4, 0x20

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    cmpl-double v7, v21, v25

    if-lez v7, :cond_1

    const/16 v7, 0x10

    goto :goto_1

    :cond_1
    move v7, v6

    :goto_1
    cmpl-double v9, v23, v25

    if-lez v9, :cond_2

    const/16 v9, 0x8

    goto :goto_2

    :cond_2
    move v9, v6

    :goto_2
    cmpl-double v10, v21, v27

    if-lez v10, :cond_3

    const/4 v10, 0x4

    goto :goto_3

    :cond_3
    move v10, v6

    :goto_3
    cmpl-double v11, v23, v27

    const/4 v12, 0x2

    if-lez v11, :cond_4

    move v11, v12

    goto :goto_4

    :cond_4
    move v11, v6

    :goto_4
    cmpl-double v13, v25, v27

    const/4 v14, 0x1

    if-lez v13, :cond_5

    move v13, v14

    goto :goto_5

    :cond_5
    move v13, v6

    :goto_5
    add-int/2addr v4, v7

    add-int/2addr v4, v9

    add-int/2addr v4, v10

    add-int/2addr v4, v11

    add-int/2addr v4, v13

    .line 28
    sget-object v7, Lcom/ardor3d/math/functions/SimplexNoise;->simplex:[[I

    aget-object v4, v7, v4

    aget v7, v4, v6

    const/4 v9, 0x3

    if-lt v7, v9, :cond_6

    move v10, v14

    goto :goto_6

    :cond_6
    move v10, v6

    .line 29
    :goto_6
    aget v11, v4, v14

    if-lt v11, v9, :cond_7

    move v13, v14

    goto :goto_7

    :cond_7
    move v13, v6

    .line 30
    :goto_7
    aget v6, v4, v12

    if-lt v6, v9, :cond_8

    move v15, v14

    goto :goto_8

    :cond_8
    const/4 v15, 0x0

    .line 31
    :goto_8
    aget v4, v4, v9

    if-lt v4, v9, :cond_9

    move v9, v14

    goto :goto_9

    :cond_9
    const/4 v9, 0x0

    :goto_9
    if-lt v7, v12, :cond_a

    move v5, v14

    goto :goto_a

    :cond_a
    const/4 v5, 0x0

    :goto_a
    if-lt v11, v12, :cond_b

    move/from16 v31, v14

    goto :goto_b

    :cond_b
    const/16 v31, 0x0

    :goto_b
    if-lt v6, v12, :cond_c

    move/from16 v32, v14

    goto :goto_c

    :cond_c
    const/16 v32, 0x0

    :goto_c
    if-lt v4, v12, :cond_d

    move v12, v14

    goto :goto_d

    :cond_d
    const/4 v12, 0x0

    :goto_d
    if-lt v7, v14, :cond_e

    move v7, v14

    goto :goto_e

    :cond_e
    const/4 v7, 0x0

    :goto_e
    if-lt v11, v14, :cond_f

    move v11, v14

    goto :goto_f

    :cond_f
    const/4 v11, 0x0

    :goto_f
    if-lt v6, v14, :cond_10

    move v6, v14

    goto :goto_10

    :cond_10
    const/4 v6, 0x0

    :goto_10
    if-lt v4, v14, :cond_11

    move v4, v14

    move/from16 v16, v15

    goto :goto_11

    :cond_11
    move/from16 v16, v15

    const/4 v4, 0x0

    :goto_11
    int-to-double v14, v10

    sub-double v14, v21, v14

    add-double v34, v14, v0

    int-to-double v14, v13

    sub-double v14, v23, v14

    add-double v36, v14, v0

    move v15, v2

    move/from16 v14, v16

    move/from16 v16, v3

    int-to-double v2, v14

    sub-double v2, v25, v2

    add-double v38, v2, v0

    int-to-double v2, v9

    sub-double v2, v27, v2

    add-double v40, v2, v0

    int-to-double v2, v5

    sub-double v2, v21, v2

    const-wide/high16 v42, 0x4000000000000000L    # 2.0

    mul-double v42, v42, v0

    add-double v45, v2, v42

    move v3, v14

    move/from16 p3, v15

    move/from16 v2, v31

    int-to-double v14, v2

    sub-double v14, v23, v14

    add-double v47, v14, v42

    move v15, v2

    move/from16 p4, v3

    move/from16 v14, v32

    int-to-double v2, v14

    sub-double v2, v25, v2

    add-double v49, v2, v42

    int-to-double v2, v12

    sub-double v2, v27, v2

    add-double v51, v2, v42

    int-to-double v2, v7

    sub-double v2, v21, v2

    const-wide/high16 v31, 0x4008000000000000L    # 3.0

    mul-double v31, v31, v0

    add-double v54, v2, v31

    int-to-double v2, v11

    sub-double v2, v23, v2

    add-double v56, v2, v31

    int-to-double v2, v6

    sub-double v2, v25, v2

    add-double v58, v2, v31

    int-to-double v2, v4

    sub-double v2, v27, v2

    add-double v60, v2, v31

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v17, v21, v2

    const-wide/high16 v29, 0x4010000000000000L    # 4.0

    mul-double v0, v0, v29

    add-double v63, v17, v0

    sub-double v17, v23, v2

    add-double v65, v17, v0

    sub-double v17, v25, v2

    add-double v67, v17, v0

    sub-double v2, v27, v2

    add-double v69, v2, v0

    move/from16 v0, p3

    and-int/lit16 v0, v0, 0xff

    move/from16 v1, v16

    and-int/lit16 v1, v1, 0xff

    move/from16 v2, v19

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v3, v8, 0xff

    move-object/from16 v8, p0

    move/from16 v16, v4

    .line 32
    iget-object v4, v8, Lcom/ardor3d/math/functions/SimplexNoise;->perm:[I

    aget v17, v4, v3

    add-int v17, v2, v17

    aget v17, v4, v17

    add-int v17, v1, v17

    aget v17, v4, v17

    add-int v17, v0, v17

    aget v17, v4, v17

    const/16 v18, 0x20

    rem-int/lit8 v17, v17, 0x20

    add-int/2addr v10, v0

    add-int/2addr v13, v1

    add-int v18, v2, p4

    add-int/2addr v9, v3

    .line 33
    aget v9, v4, v9

    add-int v18, v18, v9

    aget v9, v4, v18

    add-int/2addr v13, v9

    aget v9, v4, v13

    add-int/2addr v10, v9

    aget v9, v4, v10

    const/16 v10, 0x20

    rem-int/2addr v9, v10

    add-int/2addr v5, v0

    add-int v31, v1, v15

    add-int v32, v2, v14

    add-int/2addr v12, v3

    .line 34
    aget v10, v4, v12

    add-int v32, v32, v10

    aget v10, v4, v32

    add-int v31, v31, v10

    aget v10, v4, v31

    add-int/2addr v5, v10

    aget v5, v4, v5

    const/16 v10, 0x20

    rem-int/2addr v5, v10

    add-int/2addr v7, v0

    add-int/2addr v11, v1

    add-int/2addr v6, v2

    add-int v10, v3, v16

    .line 35
    aget v10, v4, v10

    add-int/2addr v6, v10

    aget v6, v4, v6

    add-int/2addr v11, v6

    aget v6, v4, v11

    add-int/2addr v7, v6

    aget v6, v4, v7

    const/16 v7, 0x20

    rem-int/2addr v6, v7

    const/4 v7, 0x1

    add-int/2addr v0, v7

    add-int/2addr v1, v7

    add-int/2addr v2, v7

    add-int/2addr v3, v7

    .line 36
    aget v3, v4, v3

    add-int/2addr v2, v3

    aget v2, v4, v2

    add-int/2addr v1, v2

    aget v1, v4, v1

    add-int/2addr v0, v1

    aget v0, v4, v0

    const/16 v1, 0x20

    rem-int/2addr v0, v1

    mul-double v1, v21, v21

    const-wide v3, 0x3fe3333333333333L    # 0.6

    sub-double v1, v3, v1

    mul-double v10, v23, v23

    sub-double/2addr v1, v10

    mul-double v10, v25, v25

    sub-double/2addr v1, v10

    mul-double v10, v27, v27

    sub-double/2addr v1, v10

    const-wide/16 v10, 0x0

    cmpg-double v7, v1, v10

    if-gez v7, :cond_12

    move-wide v1, v10

    goto :goto_12

    :cond_12
    mul-double/2addr v1, v1

    mul-double/2addr v1, v1

    .line 37
    sget-object v7, Lcom/ardor3d/math/functions/SimplexNoise;->grad4:[[I

    aget-object v20, v7, v17

    invoke-static/range {v20 .. v28}, Lcom/ardor3d/math/functions/SimplexNoise;->dot([IDDDD)D

    move-result-wide v12

    mul-double/2addr v1, v12

    :goto_12
    mul-double v12, v34, v34

    sub-double v12, v3, v12

    mul-double v14, v36, v36

    sub-double/2addr v12, v14

    mul-double v14, v38, v38

    sub-double/2addr v12, v14

    mul-double v14, v40, v40

    sub-double/2addr v12, v14

    cmpg-double v7, v12, v10

    if-gez v7, :cond_13

    move-wide v12, v10

    goto :goto_13

    :cond_13
    mul-double/2addr v12, v12

    mul-double/2addr v12, v12

    .line 38
    sget-object v7, Lcom/ardor3d/math/functions/SimplexNoise;->grad4:[[I

    aget-object v33, v7, v9

    invoke-static/range {v33 .. v41}, Lcom/ardor3d/math/functions/SimplexNoise;->dot([IDDDD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    :goto_13
    mul-double v14, v45, v45

    sub-double v14, v3, v14

    mul-double v16, v47, v47

    sub-double v14, v14, v16

    mul-double v16, v49, v49

    sub-double v14, v14, v16

    mul-double v16, v51, v51

    sub-double v14, v14, v16

    cmpg-double v7, v14, v10

    if-gez v7, :cond_14

    move-wide v14, v10

    goto :goto_14

    :cond_14
    mul-double/2addr v14, v14

    mul-double/2addr v14, v14

    .line 39
    sget-object v7, Lcom/ardor3d/math/functions/SimplexNoise;->grad4:[[I

    aget-object v44, v7, v5

    invoke-static/range {v44 .. v52}, Lcom/ardor3d/math/functions/SimplexNoise;->dot([IDDDD)D

    move-result-wide v16

    mul-double v14, v14, v16

    :goto_14
    mul-double v16, v54, v54

    sub-double v16, v3, v16

    mul-double v18, v56, v56

    sub-double v16, v16, v18

    mul-double v18, v58, v58

    sub-double v16, v16, v18

    mul-double v18, v60, v60

    sub-double v16, v16, v18

    cmpg-double v5, v16, v10

    if-gez v5, :cond_15

    move-wide/from16 v16, v10

    goto :goto_15

    :cond_15
    mul-double v16, v16, v16

    mul-double v16, v16, v16

    .line 40
    sget-object v5, Lcom/ardor3d/math/functions/SimplexNoise;->grad4:[[I

    aget-object v53, v5, v6

    invoke-static/range {v53 .. v61}, Lcom/ardor3d/math/functions/SimplexNoise;->dot([IDDDD)D

    move-result-wide v5

    mul-double v16, v16, v5

    :goto_15
    mul-double v5, v63, v63

    sub-double/2addr v3, v5

    mul-double v5, v65, v65

    sub-double/2addr v3, v5

    mul-double v5, v67, v67

    sub-double/2addr v3, v5

    mul-double v5, v69, v69

    sub-double/2addr v3, v5

    cmpg-double v5, v3, v10

    if-gez v5, :cond_16

    goto :goto_16

    :cond_16
    mul-double/2addr v3, v3

    mul-double/2addr v3, v3

    .line 41
    sget-object v5, Lcom/ardor3d/math/functions/SimplexNoise;->grad4:[[I

    aget-object v62, v5, v0

    invoke-static/range {v62 .. v70}, Lcom/ardor3d/math/functions/SimplexNoise;->dot([IDDDD)D

    move-result-wide v5

    mul-double v10, v3, v5

    :goto_16
    add-double/2addr v1, v12

    add-double/2addr v1, v14

    add-double v1, v1, v16

    add-double/2addr v1, v10

    const-wide/high16 v3, 0x403b000000000000L    # 27.0

    mul-double/2addr v1, v3

    return-wide v1
.end method

.method public setPermutations([I)V
    .locals 5

    array-length v0, p1

    const/16 v1, 0x100

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p1, v3

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/ardor3d/math/functions/SimplexNoise;->resetPerm([I)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "permutations should contain 0 thru 255 each exactly once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not enough data, permutations should contain 0 thru 255 each exactly once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

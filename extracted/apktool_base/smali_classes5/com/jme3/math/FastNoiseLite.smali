.class public Lcom/jme3/math/FastNoiseLite;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/math/FastNoiseLite$NoiseType;,
        Lcom/jme3/math/FastNoiseLite$RotationType3D;,
        Lcom/jme3/math/FastNoiseLite$TransformType3D;,
        Lcom/jme3/math/FastNoiseLite$FractalType;,
        Lcom/jme3/math/FastNoiseLite$CellularDistanceFunction;,
        Lcom/jme3/math/FastNoiseLite$CellularReturnType;,
        Lcom/jme3/math/FastNoiseLite$DomainWarpType;
    }
.end annotation


# static fields
.field private static final Gradients2D:[F

.field private static final Gradients3D:[F

.field private static final PrimeX:I = 0x1dde90c9

.field private static final PrimeY:I = 0x43c42e4d

.field private static final PrimeZ:I = 0x668b6e2f

.field private static final RandVecs2D:[F

.field private static final RandVecs3D:[F


# instance fields
.field private mCellularDistanceFunction:Lcom/jme3/math/FastNoiseLite$CellularDistanceFunction;

.field private mCellularJitterModifier:F

.field private mCellularReturnType:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

.field private mDomainWarpAmp:F

.field private mDomainWarpType:Lcom/jme3/math/FastNoiseLite$DomainWarpType;

.field private mFractalBounding:F

.field private mFractalType:Lcom/jme3/math/FastNoiseLite$FractalType;

.field private mFrequency:F

.field private mGain:F

.field private mLacunarity:F

.field private mNoiseType:Lcom/jme3/math/FastNoiseLite$NoiseType;

.field private mOctaves:I

.field private mPingPongStrength:F

.field private mRotationType3D:Lcom/jme3/math/FastNoiseLite$RotationType3D;

.field private mSeed:I

.field private mTransformType3D:Lcom/jme3/math/FastNoiseLite$TransformType3D;

.field private mWarpTransformType3D:Lcom/jme3/math/FastNoiseLite$TransformType3D;

.field private mWeightedStrength:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x100

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/jme3/math/FastNoiseLite;->Gradients2D:[F

    const/16 v1, 0x200

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/jme3/math/FastNoiseLite;->RandVecs2D:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/jme3/math/FastNoiseLite;->Gradients3D:[F

    const/16 v0, 0x400

    new-array v0, v0, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/jme3/math/FastNoiseLite;->RandVecs3D:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3e05a8a8
        0x3f7dcf55
        0x3ec3ef15
        0x3f6c835e
        0x3f1bd7ca
        0x3f4b1934
        0x3f4b1934
        0x3f1bd7ca
        0x3f6c835e
        0x3ec3ef15
        0x3f7dcf55
        0x3e05a8a8
        0x3f7dcf55
        -0x41fa5758
        0x3f6c835e
        -0x413c10eb
        0x3f4b1934
        -0x40e42836
        0x3f1bd7ca
        -0x40b4e6cc
        0x3ec3ef15
        -0x40937ca2
        0x3e05a8a8
        -0x408230ab
        -0x41fa5758
        -0x408230ab
        -0x413c10eb
        -0x40937ca2
        -0x40e42836
        -0x40b4e6cc
        -0x40b4e6cc
        -0x40e42836
        -0x40937ca2
        -0x413c10eb
        -0x408230ab
        -0x41fa5758
        -0x408230ab
        0x3e05a8a8
        -0x40937ca2
        0x3ec3ef15
        -0x40b4e6cc
        0x3f1bd7ca
        -0x40e42836
        0x3f4b1934
        -0x413c10eb
        0x3f6c835e
        -0x41fa5758
        0x3f7dcf55
        0x3e05a8a8
        0x3f7dcf55
        0x3ec3ef15
        0x3f6c835e
        0x3f1bd7ca
        0x3f4b1934
        0x3f4b1934
        0x3f1bd7ca
        0x3f6c835e
        0x3ec3ef15
        0x3f7dcf55
        0x3e05a8a8
        0x3f7dcf55
        -0x41fa5758
        0x3f6c835e
        -0x413c10eb
        0x3f4b1934
        -0x40e42836
        0x3f1bd7ca
        -0x40b4e6cc
        0x3ec3ef15
        -0x40937ca2
        0x3e05a8a8
        -0x408230ab
        -0x41fa5758
        -0x408230ab
        -0x413c10eb
        -0x40937ca2
        -0x40e42836
        -0x40b4e6cc
        -0x40b4e6cc
        -0x40e42836
        -0x40937ca2
        -0x413c10eb
        -0x408230ab
        -0x41fa5758
        -0x408230ab
        0x3e05a8a8
        -0x40937ca2
        0x3ec3ef15
        -0x40b4e6cc
        0x3f1bd7ca
        -0x40e42836
        0x3f4b1934
        -0x413c10eb
        0x3f6c835e
        -0x41fa5758
        0x3f7dcf55
        0x3e05a8a8
        0x3f7dcf55
        0x3ec3ef15
        0x3f6c835e
        0x3f1bd7ca
        0x3f4b1934
        0x3f4b1934
        0x3f1bd7ca
        0x3f6c835e
        0x3ec3ef15
        0x3f7dcf55
        0x3e05a8a8
        0x3f7dcf55
        -0x41fa5758
        0x3f6c835e
        -0x413c10eb
        0x3f4b1934
        -0x40e42836
        0x3f1bd7ca
        -0x40b4e6cc
        0x3ec3ef15
        -0x40937ca2
        0x3e05a8a8
        -0x408230ab
        -0x41fa5758
        -0x408230ab
        -0x413c10eb
        -0x40937ca2
        -0x40e42836
        -0x40b4e6cc
        -0x40b4e6cc
        -0x40e42836
        -0x40937ca2
        -0x413c10eb
        -0x408230ab
        -0x41fa5758
        -0x408230ab
        0x3e05a8a8
        -0x40937ca2
        0x3ec3ef15
        -0x40b4e6cc
        0x3f1bd7ca
        -0x40e42836
        0x3f4b1934
        -0x413c10eb
        0x3f6c835e
        -0x41fa5758
        0x3f7dcf55
        0x3e05a8a8
        0x3f7dcf55
        0x3ec3ef15
        0x3f6c835e
        0x3f1bd7ca
        0x3f4b1934
        0x3f4b1934
        0x3f1bd7ca
        0x3f6c835e
        0x3ec3ef15
        0x3f7dcf55
        0x3e05a8a8
        0x3f7dcf55
        -0x41fa5758
        0x3f6c835e
        -0x413c10eb
        0x3f4b1934
        -0x40e42836
        0x3f1bd7ca
        -0x40b4e6cc
        0x3ec3ef15
        -0x40937ca2
        0x3e05a8a8
        -0x408230ab
        -0x41fa5758
        -0x408230ab
        -0x413c10eb
        -0x40937ca2
        -0x40e42836
        -0x40b4e6cc
        -0x40b4e6cc
        -0x40e42836
        -0x40937ca2
        -0x413c10eb
        -0x408230ab
        -0x41fa5758
        -0x408230ab
        0x3e05a8a8
        -0x40937ca2
        0x3ec3ef15
        -0x40b4e6cc
        0x3f1bd7ca
        -0x40e42836
        0x3f4b1934
        -0x413c10eb
        0x3f6c835e
        -0x41fa5758
        0x3f7dcf55
        0x3e05a8a8
        0x3f7dcf55
        0x3ec3ef15
        0x3f6c835e
        0x3f1bd7ca
        0x3f4b1934
        0x3f4b1934
        0x3f1bd7ca
        0x3f6c835e
        0x3ec3ef15
        0x3f7dcf55
        0x3e05a8a8
        0x3f7dcf55
        -0x41fa5758
        0x3f6c835e
        -0x413c10eb
        0x3f4b1934
        -0x40e42836
        0x3f1bd7ca
        -0x40b4e6cc
        0x3ec3ef15
        -0x40937ca2
        0x3e05a8a8
        -0x408230ab
        -0x41fa5758
        -0x408230ab
        -0x413c10eb
        -0x40937ca2
        -0x40e42836
        -0x40b4e6cc
        -0x40b4e6cc
        -0x40e42836
        -0x40937ca2
        -0x413c10eb
        -0x408230ab
        -0x41fa5758
        -0x408230ab
        0x3e05a8a8
        -0x40937ca2
        0x3ec3ef15
        -0x40b4e6cc
        0x3f1bd7ca
        -0x40e42836
        0x3f4b1934
        -0x413c10eb
        0x3f6c835e
        -0x41fa5758
        0x3f7dcf55
        0x3ec3ef15
        0x3f6c835e
        0x3f6c835e
        0x3ec3ef15
        0x3f6c835e
        -0x413c10eb
        0x3ec3ef15
        -0x40937ca2
        -0x413c10eb
        -0x40937ca2
        -0x40937ca2
        -0x413c10eb
        -0x40937ca2
        0x3ec3ef15
        -0x413c10eb
        0x3f6c835e
    .end array-data

    :array_1
    .array-data 4
        -0x4175bfa6
        -0x40898265
        0x3ec5ca54
        -0x4093df9b
        0x3d360fba
        -0x408040c5
        -0x40e69766
        -0x40b30e7c
        -0x40b7d391
        0x3f1f9518
        0x3f724bad
        0x3ea54608    # 0.32279992f
        -0x40d93ce3
        -0x40bdc467
        0x3f7016c2
        0x3eb1b053
        -0x40a67452
        -0x40f90e52
        -0x409ef711
        0x3ef417b1
        -0x409b9235
        -0x4118dc8c
        -0x413d8508
        -0x40932fe6
        -0x40813cdc
        0x3dc925ab
        0x3f45be9d
        -0x40dd6adf
        0x3f41e045
        -0x40d8d2be
        -0x4081d7d4
        -0x420ab0c1
        -0x42a5d1f4
        0x3f7fa2f6
        0x3f79b57a
        -0x419e61cb
        -0x40bbc689
        0x3f2469fb
        0x3f7ddbe7
        0x3e042877
        -0x40815b8c
        0x3dd2a338
        -0x40f64ad7
        -0x40a83172
        0x3f009586
        -0x40a2a2c0
        0x3ee9767e
        -0x409c29b0
        -0x40a25385
        -0x40fff342
        0x3db41cf3
        -0x4080fdef
        -0x40fead47
        0x3f5ceeed
        0x3f467b46
        -0x40de5167
        -0x40cecc58
        0x3f38c20e
        -0x40fb17f1
        -0x40a5341f
        0x3f65da4e
        -0x411e9417
        -0x41d139f1
        0x3f7c3e63
        -0x40908d5c
        -0x414ae252
        -0x408031c7
        0x3d1f9c5a
        -0x416c7036
        -0x408adcce
        -0x40889b3f
        0x3e83a46c
        -0x409fc056
        -0x410907b7
        -0x40ab70a7
        -0x40f154e5
        0x3d514fa3
        -0x408055a0
        -0x40a4e7d8
        -0x40fb95d4
        0x3dca7c7d
        0x3f7ebee5
        0x3f6b3d23
        0x3ec9fa2c
        -0x4186353a
        -0x4087bbc8
        -0x40b01788
        -0x40eaa248
        -0x40824aff
        0x3e08bf45
        0x3f5967f3
        -0x40f8d4c9
        -0x4087392c
        -0x418e7752
        0x3f7eb4c3
        0x3dcda5f7
        0x3f1fc572
        -0x40b7fa27
        0x3f29b47d
        0x3f3faaba
        -0x40c7bf00
        0x3f31b9d5
        -0x40af879b
        -0x40eb6b6a
        0x3dd60f22
        -0x408166f6
        -0x4225b2c6
        -0x40817560
        0x3ee43fdb
        -0x409ad894
        0x3dd8293d
        0x3f7e91ef
        -0x4081d87f
        0x3df57b7e
        -0x40aaa3e5
        0x3f0d782e
        0x3f695bbf
        -0x412d7a64
        0x3f541c26
        -0x40f0a9d7
        0x3f38c1f9
        -0x40cecc42
        0x3efcf407
        -0x40a16cc8
        -0x4145004b
        -0x4091af75
        -0x4087c451
        0x3e7a525f
        0x3db6cb60
        -0x40810591
        0x3f091071
        -0x40a7c8ae
        -0x42283a44
        0x3f7e9341
        -0x4082cf08
        0x3e174540
        0x3b9f1ff6
        0x3f7fff3a    # 0.9999882f
        0x3f7d1242
        0x3e1a72f4
        0x3f6db994
        -0x414205c2
        -0x40eab0d3
        -0x40b00d16
        0x3e9a60ee
        0x3f7415ee
        -0x408ae08e
        0x3e93a8b7
        0x3f78b97b
        -0x418d9bc0
        0x3e6b8059
        0x3f79234e
        0x3f74acf0
        -0x4169671c
        0x3f3daf4d
        0x3f2beaed
        -0x4080bab0
        -0x426586e4
        0x3f30c944
        -0x40c6d823
        -0x416b2793
        -0x408b0e7e
        0x3f175dfb
        -0x40b18b51
        -0x408df662
        -0x4159388b
        0x3f2a9c2d
        0x3f3edc9b
        0x3f1fa522
        0x3f481fa5
        0x3f69a6ab
        -0x412ec7d5
        -0x40ae4a78
        0x3f12d3a5
        -0x409e64ca
        -0x410e06c5
        0x3f7ece09
        0x3dc5aa90
        0x3f7c4dfe
        -0x41d2a3d1
        -0x40a680bd
        0x3f0705b2
        0x3f1e1386
        -0x40b6a28a
        0x3f59cf0e
        0x3f0684d4
        0x3f7f9de9
        -0x429ffac2
        0x3e49de53
        -0x40850615
        0x3f29293e
        -0x40bfda56
        -0x430240d7
        0x3f7fe08e
        -0x40d3ab63
        0x3f3d4f4e
        -0x40c7ceba
        -0x40ce35de
        0x3f790638
        0x3e6d6a81
        0x3f7fecba
        -0x4339569e
        0x3ee26541
        -0x409a62ff
        0x3f7f85c8
        -0x4285f712
        -0x4095277f
        -0x41343381
        -0x40af5bca
        -0x40eba8f8
        -0x409efe3d
        0x3ef43223
        0x3c81ee0e
        0x3f7ff7c2
        -0x40b0c190
        0x3f16494a
        -0x40955a5d
        -0x413349a8
        -0x40b298e9
        0x3f18cb09
        -0x40fb79bb
        0x3f5b072a
        -0x40af3f47
        -0x40ebd11b
        0x3ecded4b
        -0x40959e6d
        -0x4098412a
        -0x412677ce
        0x3f3b539d
        0x3f2e7bf6
        -0x40ef6bad
        -0x40acbc38
        -0x40a8e04a
        -0x40f53a52
        -0x40918ded
        0x3eba5469
        0x3f06190f
        0x3f5a1178
        0x3f3e47a0
        -0x40d4bdba    # -0.66898f
        -0x4083beb0
        -0x41d17d7d
        0x3eeb985f
        0x3f6349ab
        0x3f536b42
        0x3f105a91
        0x3f1e44c1
        0x3f4936c6
        0x3f554956
        -0x40f26b89
        0x3e19a1a9
        0x3f7d1a38
        -0x40d67184
        -0x40c033a6
        -0x40d4d6b8
        0x3f3e5e1b
        0x3f33db03
        0x3f362cfc
        -0x40f5437d
        -0x40a8da60
        -0x415280ba
        0x3f70daa4
        0x3f554984
        0x3f0d9432
        -0x4166ed22
        -0x408bb57f
        0x3e8717a6
        0x3f76ed9b
        0x3dfe2cb9
        -0x4081faaf
        -0x40c5906e
        -0x40d09076
        0x3f323d71
        0x3f37c1b3
        -0x4094e6c8
        0x3ecaa130
        -0x40de0d42
        -0x40b9bc50
        -0x40911a83
        -0x4147fe9f
        -0x4213b4bc
        -0x4081b5ac
        0x3f739557
        -0x41627ad7
        -0x4247ed1d
        -0x40810940
        0x3f2af833
        0x3f3e8a32
        0x3f4b94da
        -0x40e4c9df
        -0x40da9297
        -0x40bca10e
        -0x41740a2d
        0x3f763fdb
        0x3f778aa0    # 0.966959f
        -0x417d7993
        -0x40854d49
        0x3e4f5309
        -0x40f68a6d
        -0x40a808ec
        -0x4175bdc8
        -0x408982a8
        -0x40dc2725
        0x3f44b2b5
        -0x40b6ec81
        -0x40e18e6f
        0x3d76007c
        -0x4080764e
        -0x4336d2c3
        0x3f7fec3c
        -0x40d714f9
        0x3f405c5f
        -0x40dfe67a
        -0x40b83d6c
        -0x40e10377
        -0x40b75a50
        0x3f55bb47
        0x3f0ce83b
        -0x41dcf376
        0x3f7cbbe3
        0x3f56360d
        0x3f0c2d4f
        -0x40a1e694
        -0x41016126
        -0x41b0e11d
        -0x40854a98
        0x3f709e88
        0x3eaecba9
        0x3f7cdc8f
        -0x41e02609
        -0x4098b7cb
        0x3edb7ef0
        0x3e020728
        -0x40821280
        -0x413c6fba
        0x3f6c96fc
        0x3f79b7eb
        0x3e617300
        -0x415bf453
        -0x408d7ef0
        -0x408334c4
        0x3e218e21
        0x3ccfb21c
        -0x40801511
        0x3ef78f07
        -0x409fe9e8
        -0x416e09ff
        -0x408a9f80
        -0x42749f7f
        -0x408097f1
        -0x40b62344
        -0x40e28f22
        0x3ea31792
        -0x408d55ca
        0x3f635440
        0x3eeb6f83
        0x3f25cf27
        -0x40bcf3fb
        0x3f7b65ef
        0x3e41491a
        0x3f6f8bd7
        -0x414b67cc
        -0x409c4a6a
        0x3ee9f613
        0x3f4ad2ce
        0x3f1c335e
        0x3f3f95f4
        0x3f29cbf1
        -0x40c56745
        -0x40d0bc3e
        0x3f5f7697
        -0x410632da
        0x3f542e81
        0x3f0f3afb
        0x3da55dfc
        0x3f7f2a02
        0x3f7adbb3
        -0x41b3cc29
        -0x40eb553c
        -0x40af976c
        -0x410f5b82    # -0.47000498f
        -0x409e09bf
        0x3e76bb6a
        0x3f787529
        0x3f719bad
        -0x4156bf9b
        -0x409b7178
        -0x41195e27
        -0x40b16aec
        0x3f1731c3
        0x3d802f0c
        0x3f7f7f82
        -0x409198f6
        0x3eba8cde
        0x3f13e718
        0x3f50f39f
        -0x4153f68d
        -0x408ee25b
        0x3f32abad
        -0x40c8a97b
        -0x44fc64b6
        -0x40800022    # -0.999998f
        -0x41c4e293
        -0x40844f6a
        -0x40d8fce4
        0x3f420495
        -0x4123b49c
        -0x4098e869
        -0x4080617a
        -0x42a0aeae
        -0x43d78e45
        -0x40800377    # -0.99994713f
        -0x4102c2db
        0x3f5e7e6e
        -0x41666eeb    # -0.299935f
        0x3f7436b3
        0x3f51093d
        0x3f13c889
        0x3e8a1c27
        0x3f7682ae
        -0x40c4f584
        -0x40d135a9
        -0x40bdabf0
        -0x40d95966
        -0x4097cb52
        0x3ed78f3a
        -0x40fd50c8
        -0x40a3de83
        0x3f5c8074
        0x3f020ebc
        0x3f0033a7
        -0x40a26a03
        -0x40d88917
        0x3f41a0aa
        -0x40a966c6
        -0x40f46ab4
        0x3f31aa73
        0x3f384fd6
        0x3d8e5aec
        0x3f7f617d
        0x3e2e619c
        -0x4083bd44
        0x3e8a08a9
        0x3f768568
        0x3f0d4d55
        -0x40aa8783
        0x3e6712c2
        -0x40869a64
        0x3ed7d24b
        -0x4097dae5
        0x3ef9f3b1
        -0x40a09430
        -0x414362fa
        -0x409200f1
        -0x40847852
        0x3e3e8595    # 0.18605645f
        0x3f50043e
        0x3f153709
        0x3ea3a8a7
        -0x408d6e37
        0x3f7503f1
        0x3e945edd
        -0x40cff527
        -0x40c6230e
        -0x40804997
        -0x42bdf1e6
        -0x41fffb4f
        0x3f7dfdd6
        -0x40ac0751
        0x3f0f8a95
        0x3f6eb76d
        -0x4147101f
        0x3f23b400
        0x3f44d162
        -0x437af975
        -0x408008a4
        -0x408126d1
        -0x423df5bd
        -0x40af7ac1
        0x3f14828c
        0x3eceb611
        -0x4095caa0
        0x3f7e92b9
        0x3dd7ed9d
        -0x41d9a129
        0x3f7c993e
        -0x40814b09
        -0x423269f0
        -0x40cceb96
        0x3f36f039
        0x3f06be51
        -0x40a6547e
        -0x40f5e1e0
        0x3f578b70
        0x3f286e90
        0x3f40c963
        0x3c69c29a
        -0x408006ac
        -0x40d3998b
        0x3f3d3f0d
        0x3f23b083
        -0x40bb2bb7
        0x3f6bd0f4
        0x3ec74406
        -0x41e9d7ef
        -0x4082c46c
        -0x40b7ba00
        0x3f1f7501
        -0x40fefc68
        -0x40a2e2d4
        -0x40b9c6b0
        -0x40de008f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        -0x40c54e52
        -0x40d69165
        0x3e31b93d
        0x0
        0x3f4a5095
        -0x40f3b075
        -0x4173bf91
        0x0
        0x3f38c520
        0x3f1f641b
        -0x416533f1
        0x0
        0x3f10d09c
        -0x40adde19
        -0x425e353c    # -0.079000026f
        0x0
        0x3f429293
        -0x40f1c455
        -0x415367a2    # -0.33709997f
        0x0
        0x3ebe276e
        0x3f0049d3
        0x3f48189b
        0x0
        -0x41fd3a93
        -0x41262c38
        -0x409aa467
        0x0
        -0x416c76ce
        -0x40eb1d51
        0x3f42bfe5
        0x0
        0x3f15bfaf
        -0x40d6516a
        -0x4110ac55
        0x0
        0x3ea953c1
        0x3d206bdf
        0x3f716300
        0x0
        0x3f5f07c3
        -0x412d652e
        -0x4176d0cf
        0x0
        0x3f14bb2c
        0x3f33c2d4
        0x3ed2b903
        0x0
        0x3f00f636
        0x3f220ca9
        -0x40e9849a
        0x0
        0x3ee613fc
        0x3f19f4b5
        0x3f291d3b
        0x0
        -0x40cfe9b1
        0x3db8b4f6
        -0x40c79e89
        0x0
        -0x40e77362
        -0x40da6277
        0x3ef39bc0
        0x0
        -0x40fcbf5a
        0x3e475d64
        -0x40a9eee1
        0x0
        -0x408243f2
        -0x42a26524
        -0x4207c044
        0x0
        -0x41a3de5a
        0x3f78dac6
        -0x423f8978
        0x0
        -0x40bf85c5
        -0x40f50aaf
        0x3ebf9d4c
        0x0
        0x3f0611a8
        0x3f5a04ee
        -0x435353db
        0x0
        0x3f222342
        0x3e453d51
        -0x40c02015
        0x0
        -0x4274fa10
        0x3eccb698
        0x3f6a009e
        0x0
        -0x40f2360b
        -0x410dd44c
        -0x40d095e3
        0x0
        -0x40c61b53
        -0x40e8a72d    # -0.5911991f
        0x3eb3b566
        0x0
        -0x4093bb06
        -0x41c970bd
        0x3eaeb26a
        0x0
        -0x40cd992d
        0x3f26b04a
        0x3e99ee8a
        0x0
        0x3f75f748
        -0x41a920ab
        -0x41c67ab8
        0x0
        0x3d8b9d7b
        -0x4086919f
        0x3e5ba7b3
        0x0
        -0x4148d7cf
        -0x40d48df8
        -0x40d9662f
        0x0
        -0x41c0a738
        0x3f43cdfa
        -0x40e22d39
        0x0
        -0x40d88855
        0x3ecb2841
        0x3f24d734
        0x0
        0x3f33078e
        -0x40e23015
        0x3eb940fc
        0x0
        -0x41e19f16
        0x3f210e8f
        0x3f430298
        0x0
        -0x40d0dace
        -0x417be11b
        -0x40d15e57
        0x0
        0x3f09d475
        0x3eda0b0b
        0x3f3a275b
        0x0
        -0x40ff4f22
        -0x40b4bd83
        -0x4150f49f
        0x0
        0x3ea3fdfe
        0x3e911f40
        0x3f676746
        0x0
        0x3f5e4a66
        -0x463aba7b
        -0x41020c5a    # -0.49599952f
        0x0
        0x3f4a86d8
        -0x4251b19c
        0x3f1b0fd9
        0x0
        -0x42dbb573
        -0x411edc62
        0x3f65b149
        0x0
        0x3f6a1d75
        0x3eb74335
        -0x41beed13
        0x0
        -0x4089ee8a
        -0x4172de36
        0x3c27e1a5
        0x0
        0x3f26aa4e
        -0x416ca81c
        -0x40cc30f7
        0x0
        -0x41aeebcc
        0x3f3c8cd2
        0x3f251585
        0x0
        -0x40ba6996
        0x3ec21481
        0x3f02af2f
        0x0
        -0x416352e2
        -0x40bb0f3c
        0x3f0f9306
        0x0
        0x3ee873a6
        -0x40ff5d30
        0x3f3c5cbb
        0x0
        0x3ef69eb4
        0x3f1a2497
        -0x40dcfebd
        0x0
        0x3f323a09
        -0x415b0604
        0x3f243753
        0x0
        -0x40d8c6d5
        -0x40d26710
        0x3eac77cf
        0x0
        0x3f02493f
        -0x40e270ce
        -0x40e5eee6
        0x0
        -0x41d87b58
        -0x40962e02
        -0x41411b00
        0x0
        0x3f062a1f
        -0x40a7feed
        0x3ded0ea5
        0x0
        0x3f171b32
        0x3eff2be6
        -0x40dd7167
        0x0
        0x3f161940
        0x3efd51ce
        0x3f2434cf
        0x0
        0x3f2d8d0d
        0x3e6fc0f6
        0x3f32642a
        0x0
        0x3f37bb8b
        -0x40d068fe
        0x3df62037
        0x0
        -0x40f7950c
        -0x40fabfb1
        0x3f2acb0d
        0x0
        -0x40a26f6b
        -0x42707db8
        -0x41020b95
        0x0
        -0x416d79af
        0x3f4b92d0
        0x3f08d83d
        0x0
        -0x42b95cff
        0x3f7b284c
        -0x41c0172f
        0x0
        -0x40dd38cb
        0x3f1b17fe
        0x3ef4d403
        0x0
        0x3f201f6c
        -0x416d7c2e
        0x3f39d298
        0x0
        -0x417ba27b
        0x3f0195fe
        -0x40ad5fb8
        0x0
        0x3caf019a
        0x3f01a38a
        -0x40a351ce
        0x0
        0x3e4cea1a
        0x3f5c2422
        0x3ef06985
        0x0
        0x3ef2decf
        0x3f19fbce
        -0x40db71c4
        0x0
        0x3f298c74
        -0x40fad110
        -0x40f5f916    # -0.539168f
        0x0
        0x3da5948b
        -0x40d8c32a
        0x3f40b71d
        0x0
        -0x40cf8588
        0x3d72d5ea
        0x3f38d3b7
        0x0
        -0x421a3cce
        -0x40885dd0
        0x3e68da4d
        0x0
        0x3f3c0266
        0x3f19145b
        -0x415b9ee7
        0x0
        0x3f14355e
        -0x4181244c
        0x3f46c5e3
        0x0
        0x3f32e5c1
        0x3eb62089
        -0x40e121ba
        0x0
        -0x40a2e592
        -0x4173434e
        -0x4127b05c
        0x0
        -0x41268d5b
        -0x4112630c
        0x3f46ff6e
        0x0
        0x3f069903
        -0x40a844b3
        0x3ded39d9
        0x0
        0x3f6f33ba
        0x3ea1f266
        -0x41d81c57
        0x0
        -0x422fc07d
        -0x40b1bba9
        -0x40eaa07b
        0x0
        -0x40d8d9fb
        0x3f018a9c
        -0x40efb89d
        0x0
        -0x41838e01
        -0x40887e72
        -0x4276e58e
        0x0
        -0x4085b621
        -0x41a90968
        -0x440e89d0
        0x0
        0x3f461081
        0x3f12cbf2
        0x3e89f1eb
        0x0
        -0x40e3f73b
        0x3effc75d
        0x3f1d963d
        0x0
        0x3f145711
        0x3f3e530c
        0x3eaaf8c6
        0x0
        -0x40ad68b4
        0x3da6c294
        0x3f100f08
        0x0
        -0x40fd5761
        0x3ef0d3ea
        0x3f384ba1
        0x0
        -0x40ec6aae
        -0x426be54b
        -0x40afa4bb
        0x0
        0x3f399db9
        0x3eca3d11
        -0x40ef941b
        0x0
        -0x41e3cbed
        0x3ef8e003
        -0x40a3b68c
        0x0
        -0x40f1e51f
        -0x410228da
        0x3f2afa56
        0x0
        -0x41bf1e2e
        0x3f6a225f
        0x3eb73708
        0x0
        0x3f4336d9
        -0x40f56422
        -0x414aba18
        0x0
        -0x40e9b8d9
        -0x415acda5
        -0x40c1ebc2
        0x0
        0x3e9c37b2
        0x3e67af3c
        -0x40933000
        0x0
        0x3f235131
        0x3f13c629
        -0x40fd83d7
        0x0
        -0x40e74023
        0x3e14fa15
        -0x40b5f819
        0x0
        -0x40d777a6
        0x3f27d20b
        -0x41429708
        0x0
        0x3f3e5550
        0x3e70c046
        0x3f20454b
        0x0
        0x3f0e63df
        0x3f539150
        -0x424d147a
        0x0
        -0x4164eb14
        -0x40acc2cb
        0x3ef424a0
        0x0
        0x3de74a24
        -0x40839cd1
        -0x4202ed2b
        0x0
        0x3f180101
        -0x40e90aa4
        0x3f0c26b6
        0x0
        0x3f2d00fe
        -0x40ea9ac6
        -0x411976e3
        0x0
        0x3f396728
        -0x4213ec49
        0x3f2e0afb
        0x0
        -0x408c7eb8
        0x3d9a579a
        -0x4166c7a5
        0x0
        0x3e82055b
        -0x41bed6bf
        0x3f72da6d
        0x0
        0x3f124979
        -0x41d40634
        -0x40b25c45
        0x0
        -0x42752e87
        0x3ecbaff9
        0x3f6a3a5f
        0x0
        0x3f1b84f1
        0x3f3ba9d2    # 0.73306f
        -0x41636217
        0x0
        -0x40f4da0c
        0x3e2b9aae
        0x3f528dfe
        0x0
        -0x40e98e9a
        -0x4152f113
        -0x40c3cf43
        0x0
        -0x40b407c8
        0x3d27d8c9
        -0x40e5a7b3
        0x0
        -0x41b392dc
        0x3f5ee193
        0x3ee6336d
        0x0
        -0x431ba287
        -0x4096e165
        -0x412ce783
        0x0
        -0x40b8617a
        -0x40dfcdf7
        0x3ca1db04
        0x0
        -0x40fa97aa
        0x3f3d7b6b
        -0x41266c3d
        0x0
        0x3f5b87e8
        0x3ecf870f
        -0x415dd2ec
        0x0
        0x3dd60fce
        0x3f56c9fd
        -0x40f74de9
        0x0
        0x3eb34b18
        0x3f6c9bce
        -0x41e443d3
        0x0
        0x3e4b8e4b
        0x3d9c9f85
        0x3f7a2042
        0x0
        0x3f48db86
        0x3f1b4bd2
        -0x41fcd44b
        0x0
        0x3db8753e
        -0x40865fea
        -0x41b07ab5
        0x0
        -0x40ac2d43
        -0x40f52bdb
        0x3e1551ef
        0x0
        -0x414d86f4
        -0x412b1bf7
        0x3f570a44    # 0.8400004f
        0x0
        -0x4182e3cc
        -0x40c4ff22
        -0x40dd05bf
        0x0
        -0x41428d54
        0x3f5b9871
        0x3eb6a90b
        0x0
        0x3f176206
        -0x40f3a1d4
        -0x40e89e93
        0x0
        0x3df6c213
        -0x40bcc327
        -0x40dd504c
        0x0
        0x3f1df10b
        0x3cfc48e6
        0x3f495101
        0x0
        0x3e00d5d4
        -0x40d5fea8
        -0x40c3542e
        0x0
        -0x40da2ca1
        -0x41cdcf15
        -0x40c21f71
        0x0
        0x3f1f2d8f
        -0x40b834e2
        -0x4279e76e
        0x0
        0x3f28b3da
        -0x40e3eac8
        0x3ee18251
        0x0
        -0x417647c3
        -0x40d3a686
        -0x40cfad31
        0x0
        -0x413ae43a
        0x3f1151ca
        0x3f3a4b2a
        0x0
        0x3f135054
        0x3f4fa0c9
        -0x42288ed1
        0x0
        0x3f6a0659
        0x3ec43f37
        0x3e0710f1
        0x0
        -0x4222f80d
        0x3f6caf45
        0x3ebb1d7d
        0x0
        0x3ec18637
        0x3e9bcf29
        0x3f5fd6d2
        0x0
        -0x41a4918d
        -0x40ac8ff1
        0x3f057e84
        0x0
        0x3f148b8e
        0x3ed461f5
        -0x40cc92e8
        0x0
        -0x41b4f9bc
        0x3f5b51c0
        -0x410c34cd
        0x0
        -0x42f57dd7
        0x3ec12fd6
        -0x409314a7
        0x0
        -0x40d02e62
        -0x40d59752
        0x3e9575ab
        0x0
        0x3f45eec0
        -0x416cc266
        -0x40ef4c3c
        0x0
        -0x423a3f0e
        0x3f6b5be3
        -0x413cbeb6
        0x0
        0x3e8b0b41
        -0x408ace36
        -0x423ef170
        0x0
        0x3e7afbe8
        -0x40cee634
        -0x40d21eb7
        0x0
        0x3f7a4a99
        -0x41cc67bc
        0x3dec8d2e
        0x0
        -0x40fa3f25
        0x3f5a2734
        0x3ceddd3d
        0x0
        -0x40b9fcb0
        -0x40f94f98
        0x3eb4f333
        0x0
        -0x40c95b64
        -0x4175fde7
        0x3f2593e3
        0x0
        0x3e285973
        0x3f02b5ac
        -0x40a7f1fe
        0x0
        0x3f26433f
        0x3d64c961
        0x3f422277
        0x0
        -0x410ebf41
        0x3f007140
        -0x40c64a82
        0x0
        -0x40ddcdef
        -0x418c1d86
        -0x40c38e5b
        0x0
        -0x40990c7b
        -0x41754654
        -0x41541cbf
        0x0
        -0x413dc312
        0x3f5f4c4f
        0x3e9e02d0
        0x0
        -0x40d07f26
        -0x415997b9
        0x3f26c4bc
        0x0
        0x3e94873b
        -0x40b85818
        -0x40f20513
        0x0
        -0x41a921d1
        0x3f59b1e5
        0x3ef70ed9
        0x0
        -0x4114dbd3
        0x3f28ebf5
        -0x40e7c13c
        0x0
        0x3f5f20d2
        0x3dc4f173
        -0x4109e148
        0x0
        -0x40d28471
        0x3f363bd5
        -0x41c314df
        0x0
        0x3f345609
        0x3e9ff683
        0x3f23265b
        0x0
        -0x40cb75ec
        -0x418a20c8
        -0x40d53a42
        0x0
        0x3da7c633
        -0x40c77e00
        -0x40cfc7ff
        0x0
        -0x40ccf636
        -0x40e99499
        -0x412f9f6a
        0x0
        -0x41fcc771
        0x3f24596e
        0x3f41848a
        0x0
        -0x40ddc34b
        -0x40d24abc
        -0x4141d5ef
        0x0
        0x3f0e7720
        -0x41a1e7ea
        -0x40b2adca
        0x0
        -0x40ebbc78
        0x3f3974b7
        -0x414095b3
        0x0
        0x3df0ccb0
        -0x40ca54b3
        0x3f31d680
        0x0
        -0x40e2f428
        0x3e078a32
        0x3f474f3c
        0x0
        0x3f32ce82
        -0x430bd60b
        -0x40c8f424
        0x0
        0x3f54f163
        -0x4136c673
        0x3ec8aef3
        0x0
        0x3e167c10
        0x3d62fc6e
        -0x40832d5a
        0x0
        0x3f357869
        -0x41763f07
        0x3f26ea23
        0x0
        0x3e8b92ed
        0x3f2c7773
        -0x40d027fb
        0x0
        -0x40d74349    # -0.65912956f
        0x3e9b6a5d
        -0x40cfdc2d
        0x0
        0x3ef688e4
        -0x40bf46bb
        0x3ee5c57c
        0x0
        0x3f716883    # 0.943001f
        0x3e2b9617
        -0x416cc960
        0x0
        0x3ede9e7e
        0x3f44fff3
        -0x411085fc
        0x0
        0x3ec95176
        0x3f182f6c
        0x3f339080
        0x0
        0x3f39b605
        -0x40e56521
        0x3ea90d8c
        0x0
        0x3f424f5e
        -0x40d971bc
        0x3cc75647
        0x0
        -0x40a50c93
        -0x415061be
        0x3ec6db86
        0x0
        -0x40e2d28e
        0x3f32bb6f
        0x3ebc8816
        0x0
        -0x40c0df71
        -0x40ecbfa1
        0x3eab2765
        0x0
        0x3f12b08f
        0x3f4f8091
        -0x42080116
        0x0
        -0x4093d14a
        -0x414e11b7
        -0x41d47733
        0x0
        -0x40ca1752
        -0x410e5a0d
        -0x40fa6895
        0x0
        -0x425098c7
        0x3eb7731e
        0x3f6dfed5
        0x0
        -0x40ac0a2c
        -0x41aec7dd
        0x3f05b0ad
        0x0
        0x3edb1b7b
        0x3e8e6bc6
        0x3f5c24ad
        0x0
        0x3f0a3769
        -0x40b6db93
        -0x41656ab0
        0x0
        0x3f115dfd
        -0x40f35141
        -0x40e31d86
        0x0
        -0x4082a91c
        0x3e0bd769
        -0x42c78a3c
        0x0
        -0x40e272e6
        -0x40db1d14
        0x3ee89a80
        0x0
        0x3ddbff3f
        -0x40b492dd
        0x3f18f661
        0x0
        -0x4147e9b8
        -0x409c87ca
        0x3e91e5fe
        0x0
        -0x41a0b9fc
        0x3e1ca91f
        0x3f76c06f
        0x0
        -0x40c5b29f
        -0x40e23347
        -0x41660793
        0x0
        0x3f3997d3
        -0x44248bdc
        0x3f305195
        0x0
        -0x40f1d38a
        -0x40f76226
        0x3f234642
        0x0
        0x3f038580
        0x3f4c30e1
        -0x415e353f    # -0.316f
        0x0
        -0x413dbef5
        0x3f6cb005
        -0x42efb546
        0x0
        0x3f52ab34
        0x3e8c900f
        -0x41015279
        0x0
        -0x40f5a799
        0x3f1beee8
        0x3f14991e
        0x0
        0x3f4dbc8b
        -0x41759ada
        0x3f07b894
        0x0
        0x3f1abc0c
        0x3f2eec8b
        0x3ed1b659
        0x0
        0x3d82ddf2
        0x3f774009
        -0x417f614c
        0x0
        0x3ddea40c
        0x3f3d80d6
        -0x40d625aa
        0x0
        -0x40c95ccd
        -0x40ceaca1
        0x3dd8e8d6
        0x0
        0x3f255908
        -0x40ed7399
        -0x40feb20a
        0x0
        -0x40d83828
        0x3f3cf736
        0x3e23d5e4    # 0.15999562f
        0x0
        0x3ec83dc1
        0x3f6b3c30
        -0x42ab8cec
        0x0
        -0x410631ad
        -0x40e8d913
        0x3f2495d3
        0x0
        0x3f19fa87
        0x3f454f7d
        -0x41a8c60c
        0x0
        -0x40eeaa14
        0x3f404a75
        0x3eac7c37
        0x0
        0x3f492df3
        0x3e681d67
        0x3f134b3b
        0x0
        -0x41188eed
        -0x40e551a9
        -0x40d80436
        0x0
        0x3b14e7c9
        0x3ed39a03
        -0x4096e2f9
        0x0
        -0x40eb1de4
        -0x40fbd440
        0x3f20efce
        0x0
        -0x42e84bd7
        0x3f53cf15
        0x3f0f77d3
        0x0
        -0x40fcef95
        0x3f4b9c58
        -0x4159db66
        0x0
        -0x4176a905
        -0x408af30a
        -0x4221eadc
        0x0
        -0x41922d82
        -0x408836d9
        -0x423b8289
        0x0
        0x3eb5fb4d
        -0x409ca22a
        0x3e95255b
        0x0
        0x3f3c1228
        -0x41202f8a
        0x3f04d2d9
        0x0
        0x3f7f9e7c
        0x3d3ed546
        -0x4317d7e0
        0x0
        -0x41412474
        -0x40977d0d
        0x3e42a336
        0x0
        0x3f6ad902
        -0x414da335
        0x3e45268b
        0x0
        0x3e8b00e2
        0x3ed45a80
        -0x40a1aaba
        0x0
        0x3f035f86
        -0x40c9d264
        0x3ef5ab0f
        0x0
        -0x40a052e1
        0x3e41671e
        -0x411a80ef
        0x0
        0x3f5893be
        -0x414144d3
        0x3ec34d6a    # 0.38145f
        0x0
        0x3f65dafd
        -0x41c9b4e3
        -0x4131d6df
        0x0
        0x3e5f08af
        -0x4087b912
        -0x421fc980
        0x0
        -0x41e48db8
        -0x40b89a8c
        -0x40e438bf
        0x0
        -0x417adc3c
        -0x410c860c
        -0x40a8dcba
        0x0
        0x3f128323
        -0x40c0a829
        -0x415347ee
        0x0
        -0x40c8578d
        0x3e2dfab7
        -0x40d30b26
        0x0
        -0x40d0d987
        0x3cafc6c0
        -0x40c56078
        0x0
        -0x41b26ff5
        0x3d864241
        -0x4085c5fd
        0x0
        -0x4214b99a
        -0x40b20d07
        0x3f152f43
        0x0
        -0x40b684e0
        0x3d0d358b
        0x3f1dae87
        0x0
        -0x41b19a59
        0x3f2f9cdc
        0x3f32fac5
        0x0
        -0x4250426a
        -0x4220575e
        -0x40827b2c
        0x0
        0x3f0da30f
        0x3f3b86c3
        -0x4134ef6f
        0x0
        -0x41c3543f
        -0x4085b2ff
        -0x42325d76
        0x0
        0x3d9ed129
        -0x4096bed6
        0x3ecf3649
        0x0
        0x3e0f57ed
        0x3f429a0d
        -0x40dd9326
        0x0
        0x3ee59a2e
        -0x40a79b20
        0x3e94bb70
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x539

    .line 2
    iput v0, p0, Lcom/jme3/math/FastNoiseLite;->mSeed:I

    const v0, 0x3c23d70a    # 0.01f

    .line 3
    iput v0, p0, Lcom/jme3/math/FastNoiseLite;->mFrequency:F

    .line 4
    sget-object v0, Lcom/jme3/math/FastNoiseLite$NoiseType;->OpenSimplex2:Lcom/jme3/math/FastNoiseLite$NoiseType;

    iput-object v0, p0, Lcom/jme3/math/FastNoiseLite;->mNoiseType:Lcom/jme3/math/FastNoiseLite$NoiseType;

    .line 5
    sget-object v0, Lcom/jme3/math/FastNoiseLite$RotationType3D;->None:Lcom/jme3/math/FastNoiseLite$RotationType3D;

    iput-object v0, p0, Lcom/jme3/math/FastNoiseLite;->mRotationType3D:Lcom/jme3/math/FastNoiseLite$RotationType3D;

    .line 6
    sget-object v0, Lcom/jme3/math/FastNoiseLite$TransformType3D;->DefaultOpenSimplex2:Lcom/jme3/math/FastNoiseLite$TransformType3D;

    iput-object v0, p0, Lcom/jme3/math/FastNoiseLite;->mTransformType3D:Lcom/jme3/math/FastNoiseLite$TransformType3D;

    .line 7
    sget-object v1, Lcom/jme3/math/FastNoiseLite$FractalType;->None:Lcom/jme3/math/FastNoiseLite$FractalType;

    iput-object v1, p0, Lcom/jme3/math/FastNoiseLite;->mFractalType:Lcom/jme3/math/FastNoiseLite$FractalType;

    const/4 v1, 0x3

    .line 8
    iput v1, p0, Lcom/jme3/math/FastNoiseLite;->mOctaves:I

    const/high16 v1, 0x40000000    # 2.0f

    .line 9
    iput v1, p0, Lcom/jme3/math/FastNoiseLite;->mLacunarity:F

    const/high16 v2, 0x3f000000    # 0.5f

    .line 10
    iput v2, p0, Lcom/jme3/math/FastNoiseLite;->mGain:F

    const/4 v2, 0x0

    .line 11
    iput v2, p0, Lcom/jme3/math/FastNoiseLite;->mWeightedStrength:F

    .line 12
    iput v1, p0, Lcom/jme3/math/FastNoiseLite;->mPingPongStrength:F

    const v1, 0x3f124925

    .line 13
    iput v1, p0, Lcom/jme3/math/FastNoiseLite;->mFractalBounding:F

    .line 14
    sget-object v1, Lcom/jme3/math/FastNoiseLite$CellularDistanceFunction;->EuclideanSq:Lcom/jme3/math/FastNoiseLite$CellularDistanceFunction;

    iput-object v1, p0, Lcom/jme3/math/FastNoiseLite;->mCellularDistanceFunction:Lcom/jme3/math/FastNoiseLite$CellularDistanceFunction;

    .line 15
    sget-object v1, Lcom/jme3/math/FastNoiseLite$CellularReturnType;->Distance:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    iput-object v1, p0, Lcom/jme3/math/FastNoiseLite;->mCellularReturnType:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    iput v1, p0, Lcom/jme3/math/FastNoiseLite;->mCellularJitterModifier:F

    .line 17
    sget-object v2, Lcom/jme3/math/FastNoiseLite$DomainWarpType;->OpenSimplex2:Lcom/jme3/math/FastNoiseLite$DomainWarpType;

    iput-object v2, p0, Lcom/jme3/math/FastNoiseLite;->mDomainWarpType:Lcom/jme3/math/FastNoiseLite$DomainWarpType;

    .line 18
    iput-object v0, p0, Lcom/jme3/math/FastNoiseLite;->mWarpTransformType3D:Lcom/jme3/math/FastNoiseLite$TransformType3D;

    .line 19
    iput v1, p0, Lcom/jme3/math/FastNoiseLite;->mDomainWarpAmp:F

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x539

    .line 21
    iput v0, p0, Lcom/jme3/math/FastNoiseLite;->mSeed:I

    const v0, 0x3c23d70a    # 0.01f

    .line 22
    iput v0, p0, Lcom/jme3/math/FastNoiseLite;->mFrequency:F

    .line 23
    sget-object v0, Lcom/jme3/math/FastNoiseLite$NoiseType;->OpenSimplex2:Lcom/jme3/math/FastNoiseLite$NoiseType;

    iput-object v0, p0, Lcom/jme3/math/FastNoiseLite;->mNoiseType:Lcom/jme3/math/FastNoiseLite$NoiseType;

    .line 24
    sget-object v0, Lcom/jme3/math/FastNoiseLite$RotationType3D;->None:Lcom/jme3/math/FastNoiseLite$RotationType3D;

    iput-object v0, p0, Lcom/jme3/math/FastNoiseLite;->mRotationType3D:Lcom/jme3/math/FastNoiseLite$RotationType3D;

    .line 25
    sget-object v0, Lcom/jme3/math/FastNoiseLite$TransformType3D;->DefaultOpenSimplex2:Lcom/jme3/math/FastNoiseLite$TransformType3D;

    iput-object v0, p0, Lcom/jme3/math/FastNoiseLite;->mTransformType3D:Lcom/jme3/math/FastNoiseLite$TransformType3D;

    .line 26
    sget-object v1, Lcom/jme3/math/FastNoiseLite$FractalType;->None:Lcom/jme3/math/FastNoiseLite$FractalType;

    iput-object v1, p0, Lcom/jme3/math/FastNoiseLite;->mFractalType:Lcom/jme3/math/FastNoiseLite$FractalType;

    const/4 v1, 0x3

    .line 27
    iput v1, p0, Lcom/jme3/math/FastNoiseLite;->mOctaves:I

    const/high16 v1, 0x40000000    # 2.0f

    .line 28
    iput v1, p0, Lcom/jme3/math/FastNoiseLite;->mLacunarity:F

    const/high16 v2, 0x3f000000    # 0.5f

    .line 29
    iput v2, p0, Lcom/jme3/math/FastNoiseLite;->mGain:F

    const/4 v2, 0x0

    .line 30
    iput v2, p0, Lcom/jme3/math/FastNoiseLite;->mWeightedStrength:F

    .line 31
    iput v1, p0, Lcom/jme3/math/FastNoiseLite;->mPingPongStrength:F

    const v1, 0x3f124925

    .line 32
    iput v1, p0, Lcom/jme3/math/FastNoiseLite;->mFractalBounding:F

    .line 33
    sget-object v1, Lcom/jme3/math/FastNoiseLite$CellularDistanceFunction;->EuclideanSq:Lcom/jme3/math/FastNoiseLite$CellularDistanceFunction;

    iput-object v1, p0, Lcom/jme3/math/FastNoiseLite;->mCellularDistanceFunction:Lcom/jme3/math/FastNoiseLite$CellularDistanceFunction;

    .line 34
    sget-object v1, Lcom/jme3/math/FastNoiseLite$CellularReturnType;->Distance:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    iput-object v1, p0, Lcom/jme3/math/FastNoiseLite;->mCellularReturnType:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 35
    iput v1, p0, Lcom/jme3/math/FastNoiseLite;->mCellularJitterModifier:F

    .line 36
    sget-object v2, Lcom/jme3/math/FastNoiseLite$DomainWarpType;->OpenSimplex2:Lcom/jme3/math/FastNoiseLite$DomainWarpType;

    iput-object v2, p0, Lcom/jme3/math/FastNoiseLite;->mDomainWarpType:Lcom/jme3/math/FastNoiseLite$DomainWarpType;

    .line 37
    iput-object v0, p0, Lcom/jme3/math/FastNoiseLite;->mWarpTransformType3D:Lcom/jme3/math/FastNoiseLite$TransformType3D;

    .line 38
    iput v1, p0, Lcom/jme3/math/FastNoiseLite;->mDomainWarpAmp:F

    .line 39
    invoke-virtual {p0, p1}, Lcom/jme3/math/FastNoiseLite;->SetSeed(I)V

    return-void
.end method

.method private CalculateFractalBounding()V
    .locals 6

    iget v0, p0, Lcom/jme3/math/FastNoiseLite;->mGain:F

    invoke-static {v0}, Lcom/jme3/math/FastNoiseLite;->FastAbs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    move v4, v0

    move v3, v1

    :goto_0
    iget v5, p0, Lcom/jme3/math/FastNoiseLite;->mOctaves:I

    if-ge v2, v5, :cond_0

    add-float/2addr v3, v4

    mul-float/2addr v4, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    div-float/2addr v1, v3

    iput v1, p0, Lcom/jme3/math/FastNoiseLite;->mFractalBounding:F

    return-void
.end method

.method private static CubicLerp(FFFFF)F
    .locals 3

    sub-float/2addr p3, p2

    sub-float v0, p0, p1

    sub-float/2addr p3, v0

    mul-float v1, p4, p4

    mul-float v2, v1, p4

    mul-float/2addr v2, p3

    sub-float/2addr v0, p3

    mul-float/2addr v1, v0

    add-float/2addr v2, v1

    sub-float/2addr p2, p0

    mul-float/2addr p4, p2

    add-float/2addr v2, p4

    add-float/2addr v2, p1

    return v2
.end method

.method private DoSingleDomainWarp(IFFFFFLcom/jme3/math/Vector3f;)V
    .locals 10

    move-object v9, p0

    .line 5
    iget-object v0, v9, Lcom/jme3/math/FastNoiseLite;->mDomainWarpType:Lcom/jme3/math/FastNoiseLite$DomainWarpType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct/range {p0 .. p7}, Lcom/jme3/math/FastNoiseLite;->SingleDomainWarpBasicGrid(IFFFFFLcom/jme3/math/Vector3f;)V

    goto :goto_0

    :cond_1
    const v0, 0x40f6e9e0

    mul-float v2, p2, v0

    const/4 v8, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 7
    invoke-direct/range {v0 .. v8}, Lcom/jme3/math/FastNoiseLite;->SingleDomainWarpOpenSimplex2Gradient(IFFFFFLcom/jme3/math/Vector3f;Z)V

    goto :goto_0

    :cond_2
    const v0, 0x4202c6f2

    mul-float v2, p2, v0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 8
    invoke-direct/range {v0 .. v8}, Lcom/jme3/math/FastNoiseLite;->SingleDomainWarpOpenSimplex2Gradient(IFFFFFLcom/jme3/math/Vector3f;Z)V

    :goto_0
    return-void
.end method

.method private DoSingleDomainWarp(IFFFFLcom/jme3/math/Vector2f;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/jme3/math/FastNoiseLite;->mDomainWarpType:Lcom/jme3/math/FastNoiseLite$DomainWarpType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/jme3/math/FastNoiseLite;->SingleDomainWarpBasicGrid(IFFFFLcom/jme3/math/Vector2f;)V

    goto :goto_0

    :cond_1
    const/high16 v0, 0x41800000    # 16.0f

    mul-float v3, p2, v0

    const/4 v8, 0x1

    move-object v1, p0

    move v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    .line 3
    invoke-direct/range {v1 .. v8}, Lcom/jme3/math/FastNoiseLite;->SingleDomainWarpSimplexGradient(IFFFFLcom/jme3/math/Vector2f;Z)V

    goto :goto_0

    :cond_2
    const v0, 0x4219227f

    mul-float v3, p2, v0

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    .line 4
    invoke-direct/range {v1 .. v8}, Lcom/jme3/math/FastNoiseLite;->SingleDomainWarpSimplexGradient(IFFFFLcom/jme3/math/Vector2f;Z)V

    :goto_0
    return-void
.end method

.method private DomainWarpFractalIndependent(Lcom/jme3/math/Vector2f;)V
    .locals 14

    .line 1
    iget v0, p1, Lcom/jme3/math/Vector2f;->x:F

    .line 2
    iget v1, p1, Lcom/jme3/math/Vector2f;->y:F

    .line 3
    iget-object v2, p0, Lcom/jme3/math/FastNoiseLite;->mDomainWarpType:Lcom/jme3/math/FastNoiseLite$DomainWarpType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    add-float v2, v0, v1

    const v4, 0x3ebb67ae

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    add-float/2addr v1, v2

    .line 4
    :goto_0
    iget v2, p0, Lcom/jme3/math/FastNoiseLite;->mSeed:I

    .line 5
    iget v4, p0, Lcom/jme3/math/FastNoiseLite;->mDomainWarpAmp:F

    iget v5, p0, Lcom/jme3/math/FastNoiseLite;->mFractalBounding:F

    mul-float/2addr v4, v5

    .line 6
    iget v5, p0, Lcom/jme3/math/FastNoiseLite;->mFrequency:F

    const/4 v6, 0x0

    move v11, v4

    move v12, v5

    move v13, v6

    .line 7
    :goto_1
    iget v4, p0, Lcom/jme3/math/FastNoiseLite;->mOctaves:I

    if-ge v13, v4, :cond_1

    move-object v4, p0

    move v5, v2

    move v6, v11

    move v7, v12

    move v8, v0

    move v9, v1

    move-object v10, p1

    .line 8
    invoke-direct/range {v4 .. v10}, Lcom/jme3/math/FastNoiseLite;->DoSingleDomainWarp(IFFFFLcom/jme3/math/Vector2f;)V

    add-int/2addr v2, v3

    .line 9
    iget v4, p0, Lcom/jme3/math/FastNoiseLite;->mGain:F

    mul-float/2addr v11, v4

    .line 10
    iget v4, p0, Lcom/jme3/math/FastNoiseLite;->mLacunarity:F

    mul-float/2addr v12, v4

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private DomainWarpFractalIndependent(Lcom/jme3/math/Vector3f;)V
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 11
    iget v0, v9, Lcom/jme3/math/Vector3f;->x:F

    .line 12
    iget v1, v9, Lcom/jme3/math/Vector3f;->y:F

    .line 13
    iget v2, v9, Lcom/jme3/math/Vector3f;->z:F

    .line 14
    iget-object v3, v8, Lcom/jme3/math/FastNoiseLite;->mWarpTransformType3D:Lcom/jme3/math/FastNoiseLite$TransformType3D;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const v4, -0x41a79a74

    const/4 v10, 0x1

    const v5, 0x3f13cd3a

    if-eq v3, v10, :cond_2

    const/4 v6, 0x2

    if-eq v3, v6, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    :goto_0
    move v11, v0

    move v12, v1

    move v13, v2

    goto :goto_1

    :cond_0
    add-float v3, v0, v1

    add-float/2addr v3, v2

    const v4, 0x3f2aaaab

    mul-float/2addr v3, v4

    sub-float v0, v3, v0

    sub-float v1, v3, v1

    sub-float v2, v3, v2

    goto :goto_0

    :cond_1
    add-float v3, v0, v2

    mul-float/2addr v4, v3

    mul-float/2addr v1, v5

    sub-float/2addr v4, v1

    add-float/2addr v0, v4

    add-float/2addr v2, v4

    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    goto :goto_0

    :cond_2
    add-float v3, v0, v1

    mul-float/2addr v4, v3

    mul-float/2addr v2, v5

    sub-float v6, v4, v2

    add-float/2addr v0, v6

    add-float/2addr v1, v4

    sub-float/2addr v1, v2

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    goto :goto_0

    .line 15
    :goto_1
    iget v0, v8, Lcom/jme3/math/FastNoiseLite;->mSeed:I

    .line 16
    iget v1, v8, Lcom/jme3/math/FastNoiseLite;->mDomainWarpAmp:F

    iget v2, v8, Lcom/jme3/math/FastNoiseLite;->mFractalBounding:F

    mul-float/2addr v1, v2

    .line 17
    iget v2, v8, Lcom/jme3/math/FastNoiseLite;->mFrequency:F

    const/4 v3, 0x0

    move v14, v0

    move v15, v1

    move/from16 v16, v2

    move v7, v3

    .line 18
    :goto_2
    iget v0, v8, Lcom/jme3/math/FastNoiseLite;->mOctaves:I

    if-ge v7, v0, :cond_3

    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move v4, v11

    move v5, v12

    move v6, v13

    move/from16 v17, v7

    move-object/from16 v7, p1

    .line 19
    invoke-direct/range {v0 .. v7}, Lcom/jme3/math/FastNoiseLite;->DoSingleDomainWarp(IFFFFFLcom/jme3/math/Vector3f;)V

    add-int/2addr v14, v10

    .line 20
    iget v0, v8, Lcom/jme3/math/FastNoiseLite;->mGain:F

    mul-float/2addr v15, v0

    .line 21
    iget v0, v8, Lcom/jme3/math/FastNoiseLite;->mLacunarity:F

    mul-float v16, v16, v0

    add-int/lit8 v7, v17, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private DomainWarpFractalProgressive(Lcom/jme3/math/Vector2f;)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/jme3/math/FastNoiseLite;->mSeed:I

    .line 2
    iget v1, p0, Lcom/jme3/math/FastNoiseLite;->mDomainWarpAmp:F

    iget v2, p0, Lcom/jme3/math/FastNoiseLite;->mFractalBounding:F

    mul-float/2addr v1, v2

    .line 3
    iget v2, p0, Lcom/jme3/math/FastNoiseLite;->mFrequency:F

    const/4 v3, 0x0

    .line 4
    :goto_0
    iget v4, p0, Lcom/jme3/math/FastNoiseLite;->mOctaves:I

    if-ge v3, v4, :cond_1

    .line 5
    iget v4, p1, Lcom/jme3/math/Vector2f;->x:F

    .line 6
    iget v5, p1, Lcom/jme3/math/Vector2f;->y:F

    .line 7
    iget-object v6, p0, Lcom/jme3/math/FastNoiseLite;->mDomainWarpType:Lcom/jme3/math/FastNoiseLite$DomainWarpType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v11, 0x1

    if-eqz v6, :cond_0

    if-eq v6, v11, :cond_0

    :goto_1
    move v8, v4

    move v9, v5

    goto :goto_2

    :cond_0
    add-float v6, v4, v5

    const v7, 0x3ebb67ae

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    add-float/2addr v5, v6

    goto :goto_1

    :goto_2
    move-object v4, p0

    move v5, v0

    move v6, v1

    move v7, v2

    move-object v10, p1

    .line 8
    invoke-direct/range {v4 .. v10}, Lcom/jme3/math/FastNoiseLite;->DoSingleDomainWarp(IFFFFLcom/jme3/math/Vector2f;)V

    add-int/2addr v0, v11

    .line 9
    iget v4, p0, Lcom/jme3/math/FastNoiseLite;->mGain:F

    mul-float/2addr v1, v4

    .line 10
    iget v4, p0, Lcom/jme3/math/FastNoiseLite;->mLacunarity:F

    mul-float/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private DomainWarpFractalProgressive(Lcom/jme3/math/Vector3f;)V
    .locals 13

    .line 11
    iget v0, p0, Lcom/jme3/math/FastNoiseLite;->mSeed:I

    .line 12
    iget v1, p0, Lcom/jme3/math/FastNoiseLite;->mDomainWarpAmp:F

    iget v2, p0, Lcom/jme3/math/FastNoiseLite;->mFractalBounding:F

    mul-float/2addr v1, v2

    .line 13
    iget v2, p0, Lcom/jme3/math/FastNoiseLite;->mFrequency:F

    const/4 v3, 0x0

    .line 14
    :goto_0
    iget v4, p0, Lcom/jme3/math/FastNoiseLite;->mOctaves:I

    if-ge v3, v4, :cond_3

    .line 15
    iget v4, p1, Lcom/jme3/math/Vector3f;->x:F

    .line 16
    iget v5, p1, Lcom/jme3/math/Vector3f;->y:F

    .line 17
    iget v6, p1, Lcom/jme3/math/Vector3f;->z:F

    .line 18
    iget-object v7, p0, Lcom/jme3/math/FastNoiseLite;->mWarpTransformType3D:Lcom/jme3/math/FastNoiseLite$TransformType3D;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const v8, -0x41a79a74

    const/4 v12, 0x1

    const v9, 0x3f13cd3a

    if-eq v7, v12, :cond_2

    const/4 v10, 0x2

    if-eq v7, v10, :cond_1

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    :goto_1
    move v8, v4

    move v9, v5

    move v10, v6

    goto :goto_2

    :cond_0
    add-float v7, v4, v5

    add-float/2addr v7, v6

    const v8, 0x3f2aaaab

    mul-float/2addr v7, v8

    sub-float v4, v7, v4

    sub-float v5, v7, v5

    sub-float/2addr v7, v6

    move v8, v4

    move v9, v5

    move v10, v7

    goto :goto_2

    :cond_1
    add-float v7, v4, v6

    mul-float/2addr v8, v7

    mul-float/2addr v5, v9

    sub-float/2addr v8, v5

    add-float/2addr v4, v8

    add-float/2addr v6, v8

    mul-float/2addr v7, v9

    add-float/2addr v5, v7

    goto :goto_1

    :cond_2
    add-float v7, v4, v5

    mul-float/2addr v8, v7

    mul-float/2addr v6, v9

    sub-float v10, v8, v6

    add-float/2addr v4, v10

    add-float/2addr v5, v8

    sub-float/2addr v5, v6

    mul-float/2addr v7, v9

    add-float/2addr v6, v7

    goto :goto_1

    :goto_2
    move-object v4, p0

    move v5, v0

    move v6, v1

    move v7, v2

    move-object v11, p1

    .line 19
    invoke-direct/range {v4 .. v11}, Lcom/jme3/math/FastNoiseLite;->DoSingleDomainWarp(IFFFFFLcom/jme3/math/Vector3f;)V

    add-int/2addr v0, v12

    .line 20
    iget v4, p0, Lcom/jme3/math/FastNoiseLite;->mGain:F

    mul-float/2addr v1, v4

    .line 21
    iget v4, p0, Lcom/jme3/math/FastNoiseLite;->mLacunarity:F

    mul-float/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private DomainWarpSingle(Lcom/jme3/math/Vector2f;)V
    .locals 7

    .line 1
    iget v1, p0, Lcom/jme3/math/FastNoiseLite;->mSeed:I

    .line 2
    iget v0, p0, Lcom/jme3/math/FastNoiseLite;->mDomainWarpAmp:F

    iget v2, p0, Lcom/jme3/math/FastNoiseLite;->mFractalBounding:F

    mul-float/2addr v2, v0

    .line 3
    iget v3, p0, Lcom/jme3/math/FastNoiseLite;->mFrequency:F

    .line 4
    iget v0, p1, Lcom/jme3/math/Vector2f;->x:F

    .line 5
    iget v4, p1, Lcom/jme3/math/Vector2f;->y:F

    .line 6
    iget-object v5, p0, Lcom/jme3/math/FastNoiseLite;->mDomainWarpType:Lcom/jme3/math/FastNoiseLite$DomainWarpType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    :goto_0
    move v5, v4

    move v4, v0

    goto :goto_1

    :cond_0
    add-float v5, v0, v4

    const v6, 0x3ebb67ae

    mul-float/2addr v5, v6

    add-float/2addr v0, v5

    add-float/2addr v4, v5

    goto :goto_0

    :goto_1
    move-object v0, p0

    move-object v6, p1

    .line 7
    invoke-direct/range {v0 .. v6}, Lcom/jme3/math/FastNoiseLite;->DoSingleDomainWarp(IFFFFLcom/jme3/math/Vector2f;)V

    return-void
.end method

.method private DomainWarpSingle(Lcom/jme3/math/Vector3f;)V
    .locals 10

    .line 8
    iget v1, p0, Lcom/jme3/math/FastNoiseLite;->mSeed:I

    .line 9
    iget v0, p0, Lcom/jme3/math/FastNoiseLite;->mDomainWarpAmp:F

    iget v2, p0, Lcom/jme3/math/FastNoiseLite;->mFractalBounding:F

    mul-float/2addr v2, v0

    .line 10
    iget v3, p0, Lcom/jme3/math/FastNoiseLite;->mFrequency:F

    .line 11
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    .line 12
    iget v4, p1, Lcom/jme3/math/Vector3f;->y:F

    .line 13
    iget v5, p1, Lcom/jme3/math/Vector3f;->z:F

    .line 14
    iget-object v6, p0, Lcom/jme3/math/FastNoiseLite;->mWarpTransformType3D:Lcom/jme3/math/FastNoiseLite$TransformType3D;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x1

    const v8, -0x41a79a74

    const v9, 0x3f13cd3a

    if-eq v6, v7, :cond_2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    :goto_0
    move v6, v5

    :goto_1
    move v5, v4

    move v4, v0

    goto :goto_2

    :cond_0
    add-float v6, v0, v4

    add-float/2addr v6, v5

    const v7, 0x3f2aaaab

    mul-float/2addr v6, v7

    sub-float v0, v6, v0

    sub-float v4, v6, v4

    sub-float/2addr v6, v5

    goto :goto_1

    :cond_1
    add-float v6, v0, v5

    mul-float/2addr v8, v6

    mul-float/2addr v4, v9

    sub-float/2addr v8, v4

    add-float/2addr v0, v8

    add-float/2addr v5, v8

    mul-float/2addr v6, v9

    add-float/2addr v4, v6

    goto :goto_0

    :cond_2
    add-float v6, v0, v4

    mul-float/2addr v8, v6

    mul-float/2addr v5, v9

    sub-float v7, v8, v5

    add-float/2addr v0, v7

    add-float/2addr v4, v8

    sub-float/2addr v4, v5

    mul-float/2addr v6, v9

    add-float/2addr v5, v6

    goto :goto_0

    :goto_2
    move-object v0, p0

    move-object v7, p1

    .line 15
    invoke-direct/range {v0 .. v7}, Lcom/jme3/math/FastNoiseLite;->DoSingleDomainWarp(IFFFFFLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method private static FastAbs(F)F
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    neg-float p0, p0

    :cond_0
    return p0
.end method

.method private static FastFloor(F)I
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    float-to-int p0, p0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    :goto_0
    return p0
.end method

.method private static FastMax(FF)F
    .locals 1

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0
.end method

.method private static FastMin(FF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0
.end method

.method private static FastRound(F)I
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    if-ltz v0, :cond_0

    add-float/2addr p0, v1

    :goto_0
    float-to-int p0, p0

    goto :goto_1

    :cond_0
    sub-float/2addr p0, v1

    goto :goto_0

    :goto_1
    return p0
.end method

.method private static FastSqrt(F)F
    .locals 2

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method private GenFractalFBm(FF)F
    .locals 7

    .line 1
    iget v0, p0, Lcom/jme3/math/FastNoiseLite;->mSeed:I

    .line 2
    iget v1, p0, Lcom/jme3/math/FastNoiseLite;->mFractalBounding:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v4, p0, Lcom/jme3/math/FastNoiseLite;->mOctaves:I

    if-ge v3, v4, :cond_0

    add-int/lit8 v4, v0, 0x1

    .line 4
    invoke-direct {p0, v0, p1, p2}, Lcom/jme3/math/FastNoiseLite;->GenNoiseSingle(IFF)F

    move-result v0

    mul-float v5, v0, v1

    add-float/2addr v2, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v0, v5

    const/high16 v6, 0x40000000    # 2.0f

    .line 5
    invoke-static {v0, v6}, Lcom/jme3/math/FastNoiseLite;->FastMin(FF)F

    move-result v0

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v0, v6

    iget v6, p0, Lcom/jme3/math/FastNoiseLite;->mWeightedStrength:F

    invoke-static {v5, v0, v6}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v0

    mul-float/2addr v1, v0

    .line 6
    iget v0, p0, Lcom/jme3/math/FastNoiseLite;->mLacunarity:F

    mul-float/2addr p1, v0

    mul-float/2addr p2, v0

    .line 7
    iget v0, p0, Lcom/jme3/math/FastNoiseLite;->mGain:F

    mul-float/2addr v1, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v4

    goto :goto_0

    :cond_0
    return v2
.end method

.method private GenFractalFBm(FFF)F
    .locals 7

    .line 8
    iget v0, p0, Lcom/jme3/math/FastNoiseLite;->mSeed:I

    .line 9
    iget v1, p0, Lcom/jme3/math/FastNoiseLite;->mFractalBounding:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 10
    :goto_0
    iget v4, p0, Lcom/jme3/math/FastNoiseLite;->mOctaves:I

    if-ge v3, v4, :cond_0

    add-int/lit8 v4, v0, 0x1

    .line 11
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/jme3/math/FastNoiseLite;->GenNoiseSingle(IFFF)F

    move-result v0

    mul-float v5, v0, v1

    add-float/2addr v2, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v0, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v0, v6

    .line 12
    iget v6, p0, Lcom/jme3/math/FastNoiseLite;->mWeightedStrength:F

    invoke-static {v5, v0, v6}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v0

    mul-float/2addr v1, v0

    .line 13
    iget v0, p0, Lcom/jme3/math/FastNoiseLite;->mLacunarity:F

    mul-float/2addr p1, v0

    mul-float/2addr p2, v0

    mul-float/2addr p3, v0

    .line 14
    iget v0, p0, Lcom/jme3/math/FastNoiseLite;->mGain:F

    mul-float/2addr v1, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v4

    goto :goto_0

    :cond_0
    return v2
.end method

.method private GenFractalPingPong(FF)F
    .locals 8

    .line 1
    iget v0, p0, Lcom/jme3/math/FastNoiseLite;->mSeed:I

    .line 2
    iget v1, p0, Lcom/jme3/math/FastNoiseLite;->mFractalBounding:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v4, p0, Lcom/jme3/math/FastNoiseLite;->mOctaves:I

    if-ge v3, v4, :cond_0

    add-int/lit8 v4, v0, 0x1

    .line 4
    invoke-direct {p0, v0, p1, p2}, Lcom/jme3/math/FastNoiseLite;->GenNoiseSingle(IFF)F

    move-result v0

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v0, v5

    iget v6, p0, Lcom/jme3/math/FastNoiseLite;->mPingPongStrength:F

    mul-float/2addr v0, v6

    invoke-static {v0}, Lcom/jme3/math/FastNoiseLite;->PingPong(F)F

    move-result v0

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float v6, v0, v6

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v2, v6

    .line 5
    iget v6, p0, Lcom/jme3/math/FastNoiseLite;->mWeightedStrength:F

    invoke-static {v5, v0, v6}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v0

    mul-float/2addr v1, v0

    .line 6
    iget v0, p0, Lcom/jme3/math/FastNoiseLite;->mLacunarity:F

    mul-float/2addr p1, v0

    mul-float/2addr p2, v0

    .line 7
    iget v0, p0, Lcom/jme3/math/FastNoiseLite;->mGain:F

    mul-float/2addr v1, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v4

    goto :goto_0

    :cond_0
    return v2
.end method

.method private GenFractalPingPong(FFF)F
    .locals 8

    .line 8
    iget v0, p0, Lcom/jme3/math/FastNoiseLite;->mSeed:I

    .line 9
    iget v1, p0, Lcom/jme3/math/FastNoiseLite;->mFractalBounding:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 10
    :goto_0
    iget v4, p0, Lcom/jme3/math/FastNoiseLite;->mOctaves:I

    if-ge v3, v4, :cond_0

    add-int/lit8 v4, v0, 0x1

    .line 11
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/jme3/math/FastNoiseLite;->GenNoiseSingle(IFFF)F

    move-result v0

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v0, v5

    iget v6, p0, Lcom/jme3/math/FastNoiseLite;->mPingPongStrength:F

    mul-float/2addr v0, v6

    invoke-static {v0}, Lcom/jme3/math/FastNoiseLite;->PingPong(F)F

    move-result v0

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float v6, v0, v6

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v2, v6

    .line 12
    iget v6, p0, Lcom/jme3/math/FastNoiseLite;->mWeightedStrength:F

    invoke-static {v5, v0, v6}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v0

    mul-float/2addr v1, v0

    .line 13
    iget v0, p0, Lcom/jme3/math/FastNoiseLite;->mLacunarity:F

    mul-float/2addr p1, v0

    mul-float/2addr p2, v0

    mul-float/2addr p3, v0

    .line 14
    iget v0, p0, Lcom/jme3/math/FastNoiseLite;->mGain:F

    mul-float/2addr v1, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v4

    goto :goto_0

    :cond_0
    return v2
.end method

.method private GenFractalRidged(FF)F
    .locals 7

    .line 1
    iget v0, p0, Lcom/jme3/math/FastNoiseLite;->mSeed:I

    .line 2
    iget v1, p0, Lcom/jme3/math/FastNoiseLite;->mFractalBounding:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget v4, p0, Lcom/jme3/math/FastNoiseLite;->mOctaves:I

    if-ge v3, v4, :cond_0

    add-int/lit8 v4, v0, 0x1

    .line 4
    invoke-direct {p0, v0, p1, p2}, Lcom/jme3/math/FastNoiseLite;->GenNoiseSingle(IFF)F

    move-result v0

    invoke-static {v0}, Lcom/jme3/math/FastNoiseLite;->FastAbs(F)F

    move-result v0

    const/high16 v5, -0x40000000    # -2.0f

    mul-float/2addr v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    mul-float/2addr v5, v1

    add-float/2addr v2, v5

    sub-float v0, v6, v0

    .line 5
    iget v5, p0, Lcom/jme3/math/FastNoiseLite;->mWeightedStrength:F

    invoke-static {v6, v0, v5}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v0

    mul-float/2addr v1, v0

    .line 6
    iget v0, p0, Lcom/jme3/math/FastNoiseLite;->mLacunarity:F

    mul-float/2addr p1, v0

    mul-float/2addr p2, v0

    .line 7
    iget v0, p0, Lcom/jme3/math/FastNoiseLite;->mGain:F

    mul-float/2addr v1, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v4

    goto :goto_0

    :cond_0
    return v2
.end method

.method private GenFractalRidged(FFF)F
    .locals 7

    .line 8
    iget v0, p0, Lcom/jme3/math/FastNoiseLite;->mSeed:I

    .line 9
    iget v1, p0, Lcom/jme3/math/FastNoiseLite;->mFractalBounding:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 10
    :goto_0
    iget v4, p0, Lcom/jme3/math/FastNoiseLite;->mOctaves:I

    if-ge v3, v4, :cond_0

    add-int/lit8 v4, v0, 0x1

    .line 11
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/jme3/math/FastNoiseLite;->GenNoiseSingle(IFFF)F

    move-result v0

    invoke-static {v0}, Lcom/jme3/math/FastNoiseLite;->FastAbs(F)F

    move-result v0

    const/high16 v5, -0x40000000    # -2.0f

    mul-float/2addr v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    mul-float/2addr v5, v1

    add-float/2addr v2, v5

    sub-float v0, v6, v0

    .line 12
    iget v5, p0, Lcom/jme3/math/FastNoiseLite;->mWeightedStrength:F

    invoke-static {v6, v0, v5}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v0

    mul-float/2addr v1, v0

    .line 13
    iget v0, p0, Lcom/jme3/math/FastNoiseLite;->mLacunarity:F

    mul-float/2addr p1, v0

    mul-float/2addr p2, v0

    mul-float/2addr p3, v0

    .line 14
    iget v0, p0, Lcom/jme3/math/FastNoiseLite;->mGain:F

    mul-float/2addr v1, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v4

    goto :goto_0

    :cond_0
    return v2
.end method

.method private GenNoiseSingle(IFF)F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jme3/math/FastNoiseLite;->mNoiseType:Lcom/jme3/math/FastNoiseLite$NoiseType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/math/FastNoiseLite;->SingleValue(IFF)F

    move-result p1

    return p1

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/math/FastNoiseLite;->SingleValueCubic(IFF)F

    move-result p1

    return p1

    .line 4
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/math/FastNoiseLite;->SinglePerlin(IFF)F

    move-result p1

    return p1

    .line 5
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/math/FastNoiseLite;->SingleCellular(IFF)F

    move-result p1

    return p1

    .line 6
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/math/FastNoiseLite;->SingleOpenSimplex2S(IFF)F

    move-result p1

    return p1

    .line 7
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/math/FastNoiseLite;->SingleSimplex(IFF)F

    move-result p1

    return p1
.end method

.method private GenNoiseSingle(IFFF)F
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/jme3/math/FastNoiseLite;->mNoiseType:Lcom/jme3/math/FastNoiseLite$NoiseType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jme3/math/FastNoiseLite;->SingleValue(IFFF)F

    move-result p1

    return p1

    .line 10
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jme3/math/FastNoiseLite;->SingleValueCubic(IFFF)F

    move-result p1

    return p1

    .line 11
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jme3/math/FastNoiseLite;->SinglePerlin(IFFF)F

    move-result p1

    return p1

    .line 12
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jme3/math/FastNoiseLite;->SingleCellular(IFFF)F

    move-result p1

    return p1

    .line 13
    :cond_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jme3/math/FastNoiseLite;->SingleOpenSimplex2S(IFFF)F

    move-result p1

    return p1

    .line 14
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jme3/math/FastNoiseLite;->SingleOpenSimplex2(IFFF)F

    move-result p1

    return p1
.end method

.method private static GradCoord(IIIFF)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/jme3/math/FastNoiseLite;->Hash(III)I

    move-result p0

    shr-int/lit8 p1, p0, 0xf

    xor-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xfe

    .line 2
    sget-object p1, Lcom/jme3/math/FastNoiseLite;->Gradients2D:[F

    aget p2, p1, p0

    or-int/lit8 p0, p0, 0x1

    .line 3
    aget p0, p1, p0

    mul-float/2addr p3, p2

    mul-float/2addr p4, p0

    add-float/2addr p3, p4

    return p3
.end method

.method private static GradCoord(IIIIFFF)F
    .locals 0

    .line 4
    invoke-static {p0, p1, p2, p3}, Lcom/jme3/math/FastNoiseLite;->Hash(IIII)I

    move-result p0

    shr-int/lit8 p1, p0, 0xf

    xor-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xfc

    .line 5
    sget-object p1, Lcom/jme3/math/FastNoiseLite;->Gradients3D:[F

    aget p2, p1, p0

    or-int/lit8 p3, p0, 0x1

    .line 6
    aget p3, p1, p3

    or-int/lit8 p0, p0, 0x2

    .line 7
    aget p0, p1, p0

    mul-float/2addr p4, p2

    mul-float/2addr p5, p3

    add-float/2addr p4, p5

    mul-float/2addr p6, p0

    add-float/2addr p4, p6

    return p4
.end method

.method private static Hash(III)I
    .locals 0

    .line 1
    xor-int/2addr p0, p1

    xor-int/2addr p0, p2

    const p1, 0x27d4eb2d

    mul-int/2addr p0, p1

    return p0
.end method

.method private static Hash(IIII)I
    .locals 0

    .line 2
    xor-int/2addr p0, p1

    xor-int/2addr p0, p2

    xor-int/2addr p0, p3

    const p1, 0x27d4eb2d

    mul-int/2addr p0, p1

    return p0
.end method

.method private static InterpHermite(F)F
    .locals 2

    mul-float v0, p0, p0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p0, v1

    const/high16 v1, 0x40400000    # 3.0f

    sub-float/2addr v1, p0

    mul-float/2addr v0, v1

    return v0
.end method

.method private static InterpQuintic(F)F
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

.method private static Lerp(FFF)F
    .locals 0

    sub-float/2addr p1, p0

    mul-float/2addr p2, p1

    add-float/2addr p0, p2

    return p0
.end method

.method private static PingPong(F)F
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    sub-float p0, v0, p0

    :goto_0
    return p0
.end method

.method private SingleCellular(IFF)F
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    invoke-static/range {p2 .. p2}, Lcom/jme3/math/FastNoiseLite;->FastRound(F)I

    move-result v2

    .line 2
    invoke-static/range {p3 .. p3}, Lcom/jme3/math/FastNoiseLite;->FastRound(F)I

    move-result v3

    const v4, 0x3edfc08e

    .line 3
    iget v5, v0, Lcom/jme3/math/FastNoiseLite;->mCellularJitterModifier:F

    mul-float/2addr v5, v4

    add-int/lit8 v4, v2, -0x1

    const v6, 0x1dde90c9

    mul-int v7, v4, v6

    add-int/lit8 v8, v3, -0x1

    const v9, 0x43c42e4d

    mul-int v10, v8, v9

    .line 4
    iget-object v11, v0, Lcom/jme3/math/FastNoiseLite;->mCellularDistanceFunction:Lcom/jme3/math/FastNoiseLite$CellularDistanceFunction;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    const/4 v12, 0x2

    const v13, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v14, 0x0

    if-eq v11, v12, :cond_6

    const/4 v12, 0x3

    if-eq v11, v12, :cond_2

    move v11, v13

    :goto_0
    add-int/lit8 v12, v2, 0x1

    if-gt v4, v12, :cond_9

    move v12, v8

    move v15, v10

    :goto_1
    add-int/lit8 v6, v3, 0x1

    if-gt v12, v6, :cond_1

    .line 5
    invoke-static {v1, v7, v15}, Lcom/jme3/math/FastNoiseLite;->Hash(III)I

    move-result v6

    and-int/lit16 v9, v6, 0x1fe

    move/from16 v16, v6

    int-to-float v6, v4

    sub-float v6, v6, p2

    .line 6
    sget-object v17, Lcom/jme3/math/FastNoiseLite;->RandVecs2D:[F

    aget v18, v17, v9

    mul-float v18, v18, v5

    add-float v6, v6, v18

    move/from16 v18, v8

    int-to-float v8, v12

    sub-float v8, v8, p3

    or-int/lit8 v9, v9, 0x1

    .line 7
    aget v9, v17, v9

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    mul-float/2addr v6, v6

    mul-float/2addr v8, v8

    add-float/2addr v6, v8

    .line 8
    invoke-static {v11, v6}, Lcom/jme3/math/FastNoiseLite;->FastMin(FF)F

    move-result v8

    invoke-static {v8, v13}, Lcom/jme3/math/FastNoiseLite;->FastMax(FF)F

    move-result v11

    cmpg-float v8, v6, v13

    if-gez v8, :cond_0

    move v13, v6

    move/from16 v14, v16

    :cond_0
    const v6, 0x43c42e4d

    add-int/2addr v15, v6

    add-int/lit8 v12, v12, 0x1

    move/from16 v8, v18

    const v9, 0x43c42e4d

    goto :goto_1

    :cond_1
    move/from16 v18, v8

    const v6, 0x1dde90c9

    add-int/2addr v7, v6

    add-int/lit8 v4, v4, 0x1

    const v6, 0x1dde90c9

    const v9, 0x43c42e4d

    goto :goto_0

    :cond_2
    move/from16 v18, v8

    move v6, v13

    :goto_2
    add-int/lit8 v8, v2, 0x1

    if-gt v4, v8, :cond_5

    move v9, v10

    move/from16 v8, v18

    :goto_3
    add-int/lit8 v11, v3, 0x1

    if-gt v8, v11, :cond_4

    .line 9
    invoke-static {v1, v7, v9}, Lcom/jme3/math/FastNoiseLite;->Hash(III)I

    move-result v11

    and-int/lit16 v12, v11, 0x1fe

    int-to-float v15, v4

    sub-float v15, v15, p2

    .line 10
    sget-object v16, Lcom/jme3/math/FastNoiseLite;->RandVecs2D:[F

    aget v17, v16, v12

    mul-float v17, v17, v5

    add-float v15, v15, v17

    move/from16 v17, v10

    int-to-float v10, v8

    sub-float v10, v10, p3

    or-int/lit8 v12, v12, 0x1

    .line 11
    aget v12, v16, v12

    mul-float/2addr v12, v5

    add-float/2addr v10, v12

    .line 12
    invoke-static {v15}, Lcom/jme3/math/FastNoiseLite;->FastAbs(F)F

    move-result v12

    invoke-static {v10}, Lcom/jme3/math/FastNoiseLite;->FastAbs(F)F

    move-result v16

    add-float v12, v12, v16

    mul-float/2addr v15, v15

    mul-float/2addr v10, v10

    add-float/2addr v15, v10

    add-float/2addr v12, v15

    .line 13
    invoke-static {v6, v12}, Lcom/jme3/math/FastNoiseLite;->FastMin(FF)F

    move-result v6

    invoke-static {v6, v13}, Lcom/jme3/math/FastNoiseLite;->FastMax(FF)F

    move-result v6

    cmpg-float v10, v12, v13

    if-gez v10, :cond_3

    move v14, v11

    move v13, v12

    :cond_3
    const v10, 0x43c42e4d

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    move/from16 v10, v17

    goto :goto_3

    :cond_4
    move/from16 v17, v10

    const v8, 0x1dde90c9

    add-int/2addr v7, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    move v11, v6

    goto :goto_6

    :cond_6
    move/from16 v18, v8

    move/from16 v17, v10

    move v6, v13

    :goto_4
    add-int/lit8 v8, v2, 0x1

    if-gt v4, v8, :cond_5

    move/from16 v9, v17

    move/from16 v8, v18

    :goto_5
    add-int/lit8 v10, v3, 0x1

    if-gt v8, v10, :cond_8

    .line 14
    invoke-static {v1, v7, v9}, Lcom/jme3/math/FastNoiseLite;->Hash(III)I

    move-result v10

    and-int/lit16 v11, v10, 0x1fe

    int-to-float v12, v4

    sub-float v12, v12, p2

    .line 15
    sget-object v15, Lcom/jme3/math/FastNoiseLite;->RandVecs2D:[F

    aget v16, v15, v11

    mul-float v16, v16, v5

    add-float v12, v12, v16

    int-to-float v1, v8

    sub-float v1, v1, p3

    or-int/lit8 v11, v11, 0x1

    .line 16
    aget v11, v15, v11

    mul-float/2addr v11, v5

    add-float/2addr v1, v11

    .line 17
    invoke-static {v12}, Lcom/jme3/math/FastNoiseLite;->FastAbs(F)F

    move-result v11

    invoke-static {v1}, Lcom/jme3/math/FastNoiseLite;->FastAbs(F)F

    move-result v1

    add-float/2addr v11, v1

    .line 18
    invoke-static {v6, v11}, Lcom/jme3/math/FastNoiseLite;->FastMin(FF)F

    move-result v1

    invoke-static {v1, v13}, Lcom/jme3/math/FastNoiseLite;->FastMax(FF)F

    move-result v6

    cmpg-float v1, v11, v13

    if-gez v1, :cond_7

    move v14, v10

    move v13, v11

    :cond_7
    const v1, 0x43c42e4d

    add-int/2addr v9, v1

    add-int/lit8 v8, v8, 0x1

    move/from16 v1, p1

    goto :goto_5

    :cond_8
    const v1, 0x43c42e4d

    const v8, 0x1dde90c9

    add-int/2addr v7, v8

    add-int/lit8 v4, v4, 0x1

    move/from16 v1, p1

    goto :goto_4

    .line 19
    :cond_9
    :goto_6
    iget-object v1, v0, Lcom/jme3/math/FastNoiseLite;->mCellularDistanceFunction:Lcom/jme3/math/FastNoiseLite$CellularDistanceFunction;

    sget-object v2, Lcom/jme3/math/FastNoiseLite$CellularDistanceFunction;->Euclidean:Lcom/jme3/math/FastNoiseLite$CellularDistanceFunction;

    if-ne v1, v2, :cond_a

    iget-object v1, v0, Lcom/jme3/math/FastNoiseLite;->mCellularReturnType:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    sget-object v2, Lcom/jme3/math/FastNoiseLite$CellularReturnType;->CellValue:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    if-eq v1, v2, :cond_a

    .line 20
    invoke-static {v13}, Lcom/jme3/math/FastNoiseLite;->FastSqrt(F)F

    move-result v13

    .line 21
    iget-object v1, v0, Lcom/jme3/math/FastNoiseLite;->mCellularReturnType:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    sget-object v2, Lcom/jme3/math/FastNoiseLite$CellularReturnType;->Distance:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    if-eq v1, v2, :cond_a

    .line 22
    invoke-static {v11}, Lcom/jme3/math/FastNoiseLite;->FastSqrt(F)F

    move-result v11

    .line 23
    :cond_a
    iget-object v1, v0, Lcom/jme3/math/FastNoiseLite;->mCellularReturnType:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    return v1

    :pswitch_0
    div-float/2addr v13, v11

    sub-float/2addr v13, v3

    return v13

    :pswitch_1
    mul-float/2addr v11, v13

    :goto_7
    mul-float/2addr v11, v2

    :goto_8
    sub-float/2addr v11, v3

    return v11

    :pswitch_2
    sub-float/2addr v11, v13

    goto :goto_8

    :pswitch_3
    add-float/2addr v11, v13

    goto :goto_7

    :pswitch_4
    sub-float/2addr v11, v3

    return v11

    :pswitch_5
    sub-float/2addr v13, v3

    return v13

    :pswitch_6
    int-to-float v1, v14

    const/high16 v2, 0x30000000

    mul-float/2addr v1, v2

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private SingleCellular(IFFF)F
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 24
    invoke-static/range {p2 .. p2}, Lcom/jme3/math/FastNoiseLite;->FastRound(F)I

    move-result v2

    .line 25
    invoke-static/range {p3 .. p3}, Lcom/jme3/math/FastNoiseLite;->FastRound(F)I

    move-result v3

    .line 26
    invoke-static/range {p4 .. p4}, Lcom/jme3/math/FastNoiseLite;->FastRound(F)I

    move-result v4

    const v5, 0x3ecad353

    .line 27
    iget v6, v0, Lcom/jme3/math/FastNoiseLite;->mCellularJitterModifier:F

    mul-float/2addr v6, v5

    add-int/lit8 v5, v2, -0x1

    const v7, 0x1dde90c9

    mul-int v8, v5, v7

    add-int/lit8 v9, v3, -0x1

    const v10, 0x43c42e4d

    mul-int v11, v9, v10

    add-int/lit8 v12, v4, -0x1

    const v13, 0x668b6e2f

    mul-int v14, v12, v13

    .line 28
    iget-object v15, v0, Lcom/jme3/math/FastNoiseLite;->mCellularDistanceFunction:Lcom/jme3/math/FastNoiseLite$CellularDistanceFunction;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    const/4 v7, 0x2

    const v16, 0x7f7fffff    # Float.MAX_VALUE

    const/16 v17, 0x0

    const/4 v10, 0x1

    if-eqz v15, :cond_a

    if-eq v15, v10, :cond_a

    if-eq v15, v7, :cond_5

    const/4 v13, 0x3

    if-eq v15, v13, :cond_0

    move-object v2, v0

    move/from16 v0, v16

    :goto_0
    move/from16 v1, v17

    goto/16 :goto_a

    :cond_0
    move/from16 v13, v16

    :goto_1
    add-int/lit8 v15, v2, 0x1

    if-gt v5, v15, :cond_4

    move v15, v9

    move/from16 v19, v15

    move v7, v11

    :goto_2
    add-int/lit8 v9, v3, 0x1

    if-gt v15, v9, :cond_3

    move/from16 v20, v11

    move v11, v12

    move/from16 v21, v11

    move v12, v14

    move/from16 v22, v12

    move/from16 v9, v16

    :goto_3
    add-int/lit8 v14, v4, 0x1

    if-gt v11, v14, :cond_2

    .line 29
    invoke-static {v1, v8, v7, v12}, Lcom/jme3/math/FastNoiseLite;->Hash(IIII)I

    move-result v14

    and-int/lit16 v10, v14, 0x3fc

    move/from16 v16, v14

    int-to-float v14, v5

    sub-float v14, v14, p2

    .line 30
    sget-object v23, Lcom/jme3/math/FastNoiseLite;->RandVecs3D:[F

    aget v24, v23, v10

    mul-float v24, v24, v6

    add-float v14, v14, v24

    int-to-float v0, v15

    sub-float v0, v0, p3

    or-int/lit8 v24, v10, 0x1

    .line 31
    aget v24, v23, v24

    mul-float v24, v24, v6

    add-float v0, v0, v24

    int-to-float v1, v11

    sub-float v1, v1, p4

    const/16 v18, 0x2

    or-int/lit8 v10, v10, 0x2

    .line 32
    aget v10, v23, v10

    mul-float/2addr v10, v6

    add-float/2addr v1, v10

    .line 33
    invoke-static {v14}, Lcom/jme3/math/FastNoiseLite;->FastAbs(F)F

    move-result v10

    invoke-static {v0}, Lcom/jme3/math/FastNoiseLite;->FastAbs(F)F

    move-result v23

    add-float v10, v10, v23

    invoke-static {v1}, Lcom/jme3/math/FastNoiseLite;->FastAbs(F)F

    move-result v23

    add-float v10, v10, v23

    mul-float/2addr v14, v14

    mul-float/2addr v0, v0

    add-float/2addr v14, v0

    mul-float/2addr v1, v1

    add-float/2addr v14, v1

    add-float/2addr v10, v14

    .line 34
    invoke-static {v13, v10}, Lcom/jme3/math/FastNoiseLite;->FastMin(FF)F

    move-result v0

    invoke-static {v0, v9}, Lcom/jme3/math/FastNoiseLite;->FastMax(FF)F

    move-result v13

    cmpg-float v0, v10, v9

    if-gez v0, :cond_1

    move v9, v10

    move/from16 v17, v16

    :cond_1
    const v0, 0x668b6e2f

    add-int/2addr v12, v0

    add-int/lit8 v11, v11, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    goto :goto_3

    :cond_2
    const v0, 0x43c42e4d

    add-int/2addr v7, v0

    add-int/lit8 v15, v15, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v16, v9

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v14, v22

    goto :goto_2

    :cond_3
    move/from16 v20, v11

    move/from16 v21, v12

    move/from16 v22, v14

    const v0, 0x1dde90c9

    add-int/2addr v8, v0

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x2

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v9, v19

    goto/16 :goto_1

    :cond_4
    move-object/from16 v2, p0

    move v0, v13

    goto/16 :goto_0

    :cond_5
    move/from16 v19, v9

    move/from16 v20, v11

    move/from16 v21, v12

    move/from16 v22, v14

    move v1, v10

    move/from16 v0, v16

    :goto_4
    add-int/lit8 v10, v2, 0x1

    if-gt v5, v10, :cond_9

    move/from16 v7, v19

    move/from16 v9, v20

    :goto_5
    add-int/lit8 v10, v3, 0x1

    if-gt v7, v10, :cond_8

    move/from16 v10, v16

    move/from16 v11, v21

    move/from16 v12, v22

    :goto_6
    add-int/lit8 v13, v4, 0x1

    if-gt v11, v13, :cond_7

    move/from16 v1, p1

    .line 35
    invoke-static {v1, v8, v9, v12}, Lcom/jme3/math/FastNoiseLite;->Hash(IIII)I

    move-result v13

    and-int/lit16 v14, v13, 0x3fc

    int-to-float v15, v5

    sub-float v15, v15, p2

    .line 36
    sget-object v16, Lcom/jme3/math/FastNoiseLite;->RandVecs3D:[F

    aget v23, v16, v14

    mul-float v23, v23, v6

    add-float v15, v15, v23

    move/from16 v23, v13

    int-to-float v13, v7

    sub-float v13, v13, p3

    or-int/lit8 v24, v14, 0x1

    .line 37
    aget v24, v16, v24

    mul-float v24, v24, v6

    add-float v13, v13, v24

    int-to-float v1, v11

    sub-float v1, v1, p4

    const/16 v18, 0x2

    or-int/lit8 v14, v14, 0x2

    .line 38
    aget v14, v16, v14

    mul-float/2addr v14, v6

    add-float/2addr v1, v14

    .line 39
    invoke-static {v15}, Lcom/jme3/math/FastNoiseLite;->FastAbs(F)F

    move-result v14

    invoke-static {v13}, Lcom/jme3/math/FastNoiseLite;->FastAbs(F)F

    move-result v13

    add-float/2addr v14, v13

    invoke-static {v1}, Lcom/jme3/math/FastNoiseLite;->FastAbs(F)F

    move-result v1

    add-float/2addr v14, v1

    .line 40
    invoke-static {v0, v14}, Lcom/jme3/math/FastNoiseLite;->FastMin(FF)F

    move-result v0

    invoke-static {v0, v10}, Lcom/jme3/math/FastNoiseLite;->FastMax(FF)F

    move-result v0

    cmpg-float v1, v14, v10

    if-gez v1, :cond_6

    move v10, v14

    move/from16 v17, v23

    :cond_6
    const v1, 0x668b6e2f

    add-int/2addr v12, v1

    add-int/lit8 v11, v11, 0x1

    const/4 v1, 0x1

    goto :goto_6

    :cond_7
    const v1, 0x43c42e4d

    add-int/2addr v9, v1

    add-int/lit8 v7, v7, 0x1

    move/from16 v16, v10

    const/4 v1, 0x1

    goto :goto_5

    :cond_8
    const v1, 0x1dde90c9

    add-int/2addr v8, v1

    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    move-object/from16 v2, p0

    goto/16 :goto_0

    :cond_a
    move/from16 v19, v9

    move/from16 v20, v11

    move/from16 v21, v12

    move/from16 v22, v14

    move/from16 v0, v16

    :goto_7
    const/4 v1, 0x1

    add-int/lit8 v10, v2, 0x1

    if-gt v5, v10, :cond_9

    move/from16 v7, v19

    move/from16 v9, v20

    :goto_8
    add-int/lit8 v10, v3, 0x1

    if-gt v7, v10, :cond_d

    move/from16 v10, v16

    move/from16 v11, v21

    move/from16 v12, v22

    :goto_9
    add-int/lit8 v13, v4, 0x1

    if-gt v11, v13, :cond_c

    move/from16 v13, p1

    .line 41
    invoke-static {v13, v8, v9, v12}, Lcom/jme3/math/FastNoiseLite;->Hash(IIII)I

    move-result v14

    and-int/lit16 v15, v14, 0x3fc

    int-to-float v1, v5

    sub-float v1, v1, p2

    .line 42
    sget-object v16, Lcom/jme3/math/FastNoiseLite;->RandVecs3D:[F

    aget v23, v16, v15

    mul-float v23, v23, v6

    add-float v1, v1, v23

    move/from16 v23, v2

    int-to-float v2, v7

    sub-float v2, v2, p3

    or-int/lit8 v24, v15, 0x1

    .line 43
    aget v24, v16, v24

    mul-float v24, v24, v6

    add-float v2, v2, v24

    move/from16 v24, v3

    int-to-float v3, v11

    sub-float v3, v3, p4

    const/16 v18, 0x2

    or-int/lit8 v15, v15, 0x2

    .line 44
    aget v15, v16, v15

    mul-float/2addr v15, v6

    add-float/2addr v3, v15

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    mul-float/2addr v3, v3

    add-float/2addr v1, v3

    .line 45
    invoke-static {v0, v1}, Lcom/jme3/math/FastNoiseLite;->FastMin(FF)F

    move-result v0

    invoke-static {v0, v10}, Lcom/jme3/math/FastNoiseLite;->FastMax(FF)F

    move-result v0

    cmpg-float v2, v1, v10

    if-gez v2, :cond_b

    move v10, v1

    move/from16 v17, v14

    :cond_b
    const v1, 0x668b6e2f

    add-int/2addr v12, v1

    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v23

    move/from16 v3, v24

    const/4 v1, 0x1

    goto :goto_9

    :cond_c
    move/from16 v13, p1

    move/from16 v23, v2

    move/from16 v24, v3

    const v1, 0x668b6e2f

    const v2, 0x43c42e4d

    const/16 v18, 0x2

    add-int/2addr v9, v2

    add-int/lit8 v7, v7, 0x1

    move/from16 v16, v10

    move/from16 v2, v23

    const/4 v1, 0x1

    goto :goto_8

    :cond_d
    move/from16 v13, p1

    move/from16 v23, v2

    move/from16 v24, v3

    const v1, 0x668b6e2f

    const v2, 0x43c42e4d

    const v3, 0x1dde90c9

    const/16 v18, 0x2

    add-int/2addr v8, v3

    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v23

    move/from16 v3, v24

    goto/16 :goto_7

    .line 46
    :goto_a
    iget-object v3, v2, Lcom/jme3/math/FastNoiseLite;->mCellularDistanceFunction:Lcom/jme3/math/FastNoiseLite$CellularDistanceFunction;

    sget-object v4, Lcom/jme3/math/FastNoiseLite$CellularDistanceFunction;->Euclidean:Lcom/jme3/math/FastNoiseLite$CellularDistanceFunction;

    if-ne v3, v4, :cond_e

    iget-object v3, v2, Lcom/jme3/math/FastNoiseLite;->mCellularReturnType:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    sget-object v4, Lcom/jme3/math/FastNoiseLite$CellularReturnType;->CellValue:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    if-eq v3, v4, :cond_e

    .line 47
    invoke-static/range {v16 .. v16}, Lcom/jme3/math/FastNoiseLite;->FastSqrt(F)F

    move-result v16

    .line 48
    iget-object v3, v2, Lcom/jme3/math/FastNoiseLite;->mCellularReturnType:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    sget-object v4, Lcom/jme3/math/FastNoiseLite$CellularReturnType;->Distance:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    if-eq v3, v4, :cond_e

    .line 49
    invoke-static {v0}, Lcom/jme3/math/FastNoiseLite;->FastSqrt(F)F

    move-result v0

    .line 50
    :cond_e
    iget-object v3, v2, Lcom/jme3/math/FastNoiseLite;->mCellularReturnType:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    packed-switch v3, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    div-float v16, v16, v0

    sub-float v16, v16, v5

    return v16

    :pswitch_1
    mul-float v0, v0, v16

    mul-float/2addr v0, v4

    sub-float/2addr v0, v5

    return v0

    :pswitch_2
    sub-float v0, v0, v16

    sub-float/2addr v0, v5

    return v0

    :pswitch_3
    add-float v0, v0, v16

    mul-float/2addr v0, v4

    sub-float/2addr v0, v5

    return v0

    :pswitch_4
    sub-float/2addr v0, v5

    return v0

    :pswitch_5
    sub-float v16, v16, v5

    return v16

    :pswitch_6
    int-to-float v0, v1

    const/high16 v1, 0x30000000

    mul-float/2addr v0, v1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private SingleDomainWarpBasicGrid(IFFFFFLcom/jme3/math/Vector3f;)V
    .locals 17

    move/from16 v0, p1

    move-object/from16 v1, p7

    mul-float v2, p4, p3

    mul-float v3, p5, p3

    mul-float v4, p6, p3

    .line 15
    invoke-static {v2}, Lcom/jme3/math/FastNoiseLite;->FastFloor(F)I

    move-result v5

    .line 16
    invoke-static {v3}, Lcom/jme3/math/FastNoiseLite;->FastFloor(F)I

    move-result v6

    .line 17
    invoke-static {v4}, Lcom/jme3/math/FastNoiseLite;->FastFloor(F)I

    move-result v7

    int-to-float v8, v5

    sub-float/2addr v2, v8

    .line 18
    invoke-static {v2}, Lcom/jme3/math/FastNoiseLite;->InterpHermite(F)F

    move-result v2

    int-to-float v8, v6

    sub-float/2addr v3, v8

    .line 19
    invoke-static {v3}, Lcom/jme3/math/FastNoiseLite;->InterpHermite(F)F

    move-result v3

    int-to-float v8, v7

    sub-float/2addr v4, v8

    .line 20
    invoke-static {v4}, Lcom/jme3/math/FastNoiseLite;->InterpHermite(F)F

    move-result v4

    const v8, 0x1dde90c9

    mul-int/2addr v5, v8

    const v9, 0x43c42e4d

    mul-int/2addr v6, v9

    const v10, 0x668b6e2f

    mul-int/2addr v7, v10

    add-int/2addr v8, v5

    add-int/2addr v9, v6

    add-int/2addr v10, v7

    .line 21
    invoke-static {v0, v5, v6, v7}, Lcom/jme3/math/FastNoiseLite;->Hash(IIII)I

    move-result v11

    and-int/lit16 v11, v11, 0x3fc

    .line 22
    invoke-static {v0, v8, v6, v7}, Lcom/jme3/math/FastNoiseLite;->Hash(IIII)I

    move-result v12

    and-int/lit16 v12, v12, 0x3fc

    .line 23
    sget-object v13, Lcom/jme3/math/FastNoiseLite;->RandVecs3D:[F

    aget v14, v13, v11

    aget v15, v13, v12

    invoke-static {v14, v15, v2}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v14

    or-int/lit8 v15, v11, 0x1

    .line 24
    aget v15, v13, v15

    or-int/lit8 v16, v12, 0x1

    move/from16 p3, v4

    aget v4, v13, v16

    invoke-static {v15, v4, v2}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v4

    or-int/lit8 v11, v11, 0x2

    .line 25
    aget v11, v13, v11

    or-int/lit8 v12, v12, 0x2

    aget v12, v13, v12

    invoke-static {v11, v12, v2}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v11

    .line 26
    invoke-static {v0, v5, v9, v7}, Lcom/jme3/math/FastNoiseLite;->Hash(IIII)I

    move-result v12

    and-int/lit16 v12, v12, 0x3fc

    .line 27
    invoke-static {v0, v8, v9, v7}, Lcom/jme3/math/FastNoiseLite;->Hash(IIII)I

    move-result v7

    and-int/lit16 v7, v7, 0x3fc

    .line 28
    aget v15, v13, v12

    aget v1, v13, v7

    invoke-static {v15, v1, v2}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v1

    or-int/lit8 v15, v12, 0x1

    .line 29
    aget v15, v13, v15

    or-int/lit8 v16, v7, 0x1

    move/from16 p4, v9

    aget v9, v13, v16

    invoke-static {v15, v9, v2}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v9

    or-int/lit8 v12, v12, 0x2

    .line 30
    aget v12, v13, v12

    or-int/lit8 v7, v7, 0x2

    aget v7, v13, v7

    invoke-static {v12, v7, v2}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v7

    .line 31
    invoke-static {v14, v1, v3}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v1

    .line 32
    invoke-static {v4, v9, v3}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v4

    .line 33
    invoke-static {v11, v7, v3}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v7

    .line 34
    invoke-static {v0, v5, v6, v10}, Lcom/jme3/math/FastNoiseLite;->Hash(IIII)I

    move-result v9

    and-int/lit16 v9, v9, 0x3fc

    .line 35
    invoke-static {v0, v8, v6, v10}, Lcom/jme3/math/FastNoiseLite;->Hash(IIII)I

    move-result v6

    and-int/lit16 v6, v6, 0x3fc

    .line 36
    aget v11, v13, v9

    aget v12, v13, v6

    invoke-static {v11, v12, v2}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v11

    or-int/lit8 v12, v9, 0x1

    .line 37
    aget v12, v13, v12

    or-int/lit8 v14, v6, 0x1

    aget v14, v13, v14

    invoke-static {v12, v14, v2}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v12

    or-int/lit8 v9, v9, 0x2

    .line 38
    aget v9, v13, v9

    or-int/lit8 v6, v6, 0x2

    aget v6, v13, v6

    invoke-static {v9, v6, v2}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v6

    move/from16 v9, p4

    .line 39
    invoke-static {v0, v5, v9, v10}, Lcom/jme3/math/FastNoiseLite;->Hash(IIII)I

    move-result v5

    and-int/lit16 v5, v5, 0x3fc

    .line 40
    invoke-static {v0, v8, v9, v10}, Lcom/jme3/math/FastNoiseLite;->Hash(IIII)I

    move-result v0

    and-int/lit16 v0, v0, 0x3fc

    .line 41
    aget v8, v13, v5

    aget v9, v13, v0

    invoke-static {v8, v9, v2}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v8

    or-int/lit8 v9, v5, 0x1

    .line 42
    aget v9, v13, v9

    or-int/lit8 v10, v0, 0x1

    aget v10, v13, v10

    invoke-static {v9, v10, v2}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v9

    or-int/lit8 v5, v5, 0x2

    .line 43
    aget v5, v13, v5

    or-int/lit8 v0, v0, 0x2

    aget v0, v13, v0

    invoke-static {v5, v0, v2}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v0

    move-object/from16 v2, p7

    .line 44
    iget v5, v2, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v11, v8, v3}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v8

    move/from16 v10, p3

    invoke-static {v1, v8, v10}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v1

    mul-float v1, v1, p2

    add-float/2addr v5, v1

    iput v5, v2, Lcom/jme3/math/Vector3f;->x:F

    .line 45
    iget v1, v2, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v12, v9, v3}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v5

    invoke-static {v4, v5, v10}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v4

    mul-float v4, v4, p2

    add-float/2addr v1, v4

    iput v1, v2, Lcom/jme3/math/Vector3f;->y:F

    .line 46
    iget v1, v2, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {v6, v0, v3}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v0

    invoke-static {v7, v0, v10}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v0

    mul-float v0, v0, p2

    add-float/2addr v1, v0

    iput v1, v2, Lcom/jme3/math/Vector3f;->z:F

    return-void
.end method

.method private SingleDomainWarpBasicGrid(IFFFFLcom/jme3/math/Vector2f;)V
    .locals 7

    mul-float/2addr p4, p3

    mul-float/2addr p5, p3

    .line 1
    invoke-static {p4}, Lcom/jme3/math/FastNoiseLite;->FastFloor(F)I

    move-result p3

    .line 2
    invoke-static {p5}, Lcom/jme3/math/FastNoiseLite;->FastFloor(F)I

    move-result v0

    int-to-float v1, p3

    sub-float/2addr p4, v1

    .line 3
    invoke-static {p4}, Lcom/jme3/math/FastNoiseLite;->InterpHermite(F)F

    move-result p4

    int-to-float v1, v0

    sub-float/2addr p5, v1

    .line 4
    invoke-static {p5}, Lcom/jme3/math/FastNoiseLite;->InterpHermite(F)F

    move-result p5

    const v1, 0x1dde90c9

    mul-int/2addr p3, v1

    const v2, 0x43c42e4d

    mul-int/2addr v0, v2

    add-int/2addr v1, p3

    add-int/2addr v2, v0

    .line 5
    invoke-static {p1, p3, v0}, Lcom/jme3/math/FastNoiseLite;->Hash(III)I

    move-result v3

    and-int/lit16 v3, v3, 0x1fe

    .line 6
    invoke-static {p1, v1, v0}, Lcom/jme3/math/FastNoiseLite;->Hash(III)I

    move-result v0

    and-int/lit16 v0, v0, 0x1fe

    .line 7
    sget-object v4, Lcom/jme3/math/FastNoiseLite;->RandVecs2D:[F

    aget v5, v4, v3

    aget v6, v4, v0

    invoke-static {v5, v6, p4}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v5

    or-int/lit8 v3, v3, 0x1

    .line 8
    aget v3, v4, v3

    or-int/lit8 v0, v0, 0x1

    aget v0, v4, v0

    invoke-static {v3, v0, p4}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v0

    .line 9
    invoke-static {p1, p3, v2}, Lcom/jme3/math/FastNoiseLite;->Hash(III)I

    move-result p3

    and-int/lit16 p3, p3, 0x1fe

    .line 10
    invoke-static {p1, v1, v2}, Lcom/jme3/math/FastNoiseLite;->Hash(III)I

    move-result p1

    and-int/lit16 p1, p1, 0x1fe

    .line 11
    aget v1, v4, p3

    aget v2, v4, p1

    invoke-static {v1, v2, p4}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v1

    or-int/lit8 p3, p3, 0x1

    .line 12
    aget p3, v4, p3

    or-int/lit8 p1, p1, 0x1

    aget p1, v4, p1

    invoke-static {p3, p1, p4}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result p1

    .line 13
    iget p3, p6, Lcom/jme3/math/Vector2f;->x:F

    invoke-static {v5, v1, p5}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result p4

    mul-float/2addr p4, p2

    add-float/2addr p3, p4

    iput p3, p6, Lcom/jme3/math/Vector2f;->x:F

    .line 14
    iget p3, p6, Lcom/jme3/math/Vector2f;->y:F

    invoke-static {v0, p1, p5}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result p1

    mul-float/2addr p1, p2

    add-float/2addr p3, p1

    iput p3, p6, Lcom/jme3/math/Vector2f;->y:F

    return-void
.end method

.method private SingleDomainWarpOpenSimplex2Gradient(IFFFFFLcom/jme3/math/Vector3f;Z)V
    .locals 29

    move-object/from16 v0, p7

    mul-float v1, p4, p3

    mul-float v2, p5, p3

    mul-float v3, p6, p3

    invoke-static {v1}, Lcom/jme3/math/FastNoiseLite;->FastRound(F)I

    move-result v4

    invoke-static {v2}, Lcom/jme3/math/FastNoiseLite;->FastRound(F)I

    move-result v5

    invoke-static {v3}, Lcom/jme3/math/FastNoiseLite;->FastRound(F)I

    move-result v6

    int-to-float v7, v4

    sub-float/2addr v1, v7

    int-to-float v7, v5

    sub-float/2addr v2, v7

    int-to-float v7, v6

    sub-float/2addr v3, v7

    neg-float v7, v1

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v9, v7, v8

    float-to-int v9, v9

    const/4 v10, 0x1

    or-int/2addr v9, v10

    neg-float v11, v2

    sub-float v12, v11, v8

    float-to-int v12, v12

    or-int/2addr v12, v10

    neg-float v13, v3

    sub-float v14, v13, v8

    float-to-int v14, v14

    or-int/2addr v14, v10

    int-to-float v15, v9

    mul-float/2addr v15, v7

    int-to-float v7, v12

    mul-float/2addr v7, v11

    int-to-float v11, v14

    mul-float/2addr v11, v13

    const v13, 0x1dde90c9

    mul-int/2addr v4, v13

    const v16, 0x43c42e4d

    mul-int v5, v5, v16

    const v17, 0x668b6e2f

    mul-int v6, v6, v17

    const v18, 0x3f19999a    # 0.6f

    mul-float v19, v1, v1

    sub-float v18, v18, v19

    mul-float v19, v2, v2

    mul-float v20, v3, v3

    add-float v19, v19, v20

    sub-float v18, v18, v19

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v22, v19

    move/from16 v23, v22

    move/from16 v24, v23

    move/from16 v21, v20

    move/from16 v20, v18

    move/from16 v18, v15

    move v15, v14

    move v14, v12

    move v12, v11

    move v11, v9

    move v9, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move/from16 v1, p1

    :goto_0
    cmpl-float v25, v20, v19

    if-lez v25, :cond_1

    mul-float v25, v20, v20

    mul-float v25, v25, v25

    if-eqz p8, :cond_0

    invoke-static {v1, v5, v6, v7}, Lcom/jme3/math/FastNoiseLite;->Hash(IIII)I

    move-result v10

    and-int/lit16 v10, v10, 0x3fc

    sget-object v26, Lcom/jme3/math/FastNoiseLite;->RandVecs3D:[F

    aget v27, v26, v10

    or-int/lit8 v28, v10, 0x1

    aget v28, v26, v28

    or-int/lit8 v10, v10, 0x2

    aget v10, v26, v10

    goto :goto_1

    :cond_0
    invoke-static {v1, v5, v6, v7}, Lcom/jme3/math/FastNoiseLite;->Hash(IIII)I

    move-result v10

    and-int/lit16 v8, v10, 0xfc

    shr-int/lit8 v10, v10, 0x6

    and-int/lit16 v10, v10, 0x3fc

    sget-object v26, Lcom/jme3/math/FastNoiseLite;->Gradients3D:[F

    aget v27, v26, v8

    or-int/lit8 v28, v8, 0x1

    aget v28, v26, v28

    or-int/lit8 v8, v8, 0x2

    aget v8, v26, v8

    mul-float v27, v27, v2

    mul-float v28, v28, v3

    add-float v27, v27, v28

    mul-float/2addr v8, v4

    add-float v27, v27, v8

    sget-object v8, Lcom/jme3/math/FastNoiseLite;->RandVecs3D:[F

    aget v26, v8, v10

    or-int/lit8 v28, v10, 0x1

    aget v28, v8, v28

    or-int/lit8 v10, v10, 0x2

    aget v8, v8, v10

    mul-float v10, v27, v26

    mul-float v28, v28, v27

    mul-float v8, v8, v27

    move/from16 v27, v10

    move v10, v8

    :goto_1
    mul-float v27, v27, v25

    add-float v22, v22, v27

    mul-float v28, v28, v25

    add-float v23, v23, v28

    mul-float v25, v25, v10

    add-float v24, v24, v25

    :cond_1
    cmpl-float v8, v18, v9

    if-ltz v8, :cond_2

    cmpl-float v8, v18, v12

    if-ltz v8, :cond_2

    int-to-float v8, v11

    add-float/2addr v2, v8

    add-float v8, v20, v18

    add-float v8, v8, v18

    mul-int v10, v11, v13

    sub-int v10, v5, v10

    move v13, v6

    move/from16 v25, v7

    const/high16 v26, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_2
    cmpl-float v8, v9, v18

    if-lez v8, :cond_3

    cmpl-float v8, v9, v12

    if-ltz v8, :cond_3

    int-to-float v8, v14

    add-float/2addr v3, v8

    add-float v8, v20, v9

    add-float/2addr v8, v9

    mul-int v10, v14, v16

    sub-int v10, v6, v10

    move/from16 v25, v7

    move v13, v10

    :goto_2
    const/high16 v26, 0x3f800000    # 1.0f

    move v10, v5

    goto :goto_3

    :cond_3
    int-to-float v8, v15

    add-float/2addr v4, v8

    add-float v8, v20, v12

    add-float/2addr v8, v12

    mul-int v10, v15, v17

    sub-int v10, v7, v10

    move v13, v6

    move/from16 v25, v7

    move v7, v10

    goto :goto_2

    :goto_3
    cmpl-float v27, v8, v26

    if-lez v27, :cond_5

    sub-float v8, v8, v26

    mul-float/2addr v8, v8

    mul-float/2addr v8, v8

    if-eqz p8, :cond_4

    invoke-static {v1, v10, v13, v7}, Lcom/jme3/math/FastNoiseLite;->Hash(IIII)I

    move-result v2

    and-int/lit16 v2, v2, 0x3fc

    sget-object v3, Lcom/jme3/math/FastNoiseLite;->RandVecs3D:[F

    aget v4, v3, v2

    or-int/lit8 v7, v2, 0x1

    aget v7, v3, v7

    or-int/lit8 v2, v2, 0x2

    aget v2, v3, v2

    goto :goto_4

    :cond_4
    invoke-static {v1, v10, v13, v7}, Lcom/jme3/math/FastNoiseLite;->Hash(IIII)I

    move-result v7

    and-int/lit16 v10, v7, 0xfc

    shr-int/lit8 v7, v7, 0x6

    and-int/lit16 v7, v7, 0x3fc

    sget-object v13, Lcom/jme3/math/FastNoiseLite;->Gradients3D:[F

    aget v27, v13, v10

    or-int/lit8 v28, v10, 0x1

    aget v28, v13, v28

    or-int/lit8 v10, v10, 0x2

    aget v10, v13, v10

    mul-float v2, v2, v27

    mul-float v3, v3, v28

    add-float/2addr v2, v3

    mul-float/2addr v4, v10

    add-float/2addr v2, v4

    sget-object v3, Lcom/jme3/math/FastNoiseLite;->RandVecs3D:[F

    aget v4, v3, v7

    or-int/lit8 v10, v7, 0x1

    aget v10, v3, v10

    or-int/lit8 v7, v7, 0x2

    aget v3, v3, v7

    mul-float/2addr v4, v2

    mul-float v7, v2, v10

    mul-float/2addr v2, v3

    :goto_4
    mul-float/2addr v4, v8

    add-float v22, v22, v4

    mul-float/2addr v7, v8

    add-float v23, v23, v7

    mul-float/2addr v8, v2

    add-float v24, v24, v8

    :cond_5
    move/from16 v3, v21

    const/4 v2, 0x1

    if-ne v3, v2, :cond_6

    iget v1, v0, Lcom/jme3/math/Vector3f;->x:F

    mul-float v22, v22, p2

    add-float v1, v1, v22

    iput v1, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, v0, Lcom/jme3/math/Vector3f;->y:F

    mul-float v23, v23, p2

    add-float v1, v1, v23

    iput v1, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v1, v0, Lcom/jme3/math/Vector3f;->z:F

    mul-float v24, v24, p2

    add-float v1, v1, v24

    iput v1, v0, Lcom/jme3/math/Vector3f;->z:F

    return-void

    :cond_6
    const/high16 v4, 0x3f000000    # 0.5f

    sub-float v18, v4, v18

    sub-float v9, v4, v9

    sub-float v12, v4, v12

    int-to-float v4, v11

    mul-float v4, v4, v18

    int-to-float v7, v14

    mul-float/2addr v7, v9

    int-to-float v8, v15

    mul-float/2addr v8, v12

    const/high16 v10, 0x3f400000    # 0.75f

    sub-float v10, v10, v18

    add-float v13, v9, v12

    sub-float/2addr v10, v13

    add-float v20, v20, v10

    shr-int/lit8 v10, v11, 0x1

    const v13, 0x1dde90c9

    and-int/2addr v10, v13

    add-int/2addr v5, v10

    shr-int/lit8 v10, v14, 0x1

    and-int v10, v10, v16

    add-int/2addr v6, v10

    shr-int/lit8 v10, v15, 0x1

    and-int v10, v10, v17

    add-int v10, v25, v10

    neg-int v11, v11

    neg-int v14, v14

    neg-int v15, v15

    const v21, 0x13bc3d

    add-int v1, v1, v21

    add-int/lit8 v21, v3, 0x1

    move v3, v7

    move v7, v10

    move v10, v2

    move v2, v4

    move v4, v8

    move/from16 v8, v26

    goto/16 :goto_0
.end method

.method private SingleDomainWarpSimplexGradient(IFFFFLcom/jme3/math/Vector2f;Z)V
    .locals 19

    move/from16 v0, p1

    move-object/from16 v1, p6

    mul-float v2, p4, p3

    mul-float v3, p5, p3

    invoke-static {v2}, Lcom/jme3/math/FastNoiseLite;->FastFloor(F)I

    move-result v4

    invoke-static {v3}, Lcom/jme3/math/FastNoiseLite;->FastFloor(F)I

    move-result v5

    int-to-float v6, v4

    sub-float/2addr v2, v6

    int-to-float v6, v5

    sub-float/2addr v3, v6

    add-float v6, v2, v3

    const v7, 0x3e58658c

    mul-float/2addr v6, v7

    sub-float/2addr v2, v6

    sub-float/2addr v3, v6

    const v8, 0x1dde90c9

    mul-int/2addr v4, v8

    const v9, 0x43c42e4d

    mul-int/2addr v5, v9

    mul-float v10, v2, v2

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float v10, v11, v10

    mul-float v12, v3, v3

    sub-float/2addr v10, v12

    const/4 v12, 0x0

    cmpl-float v13, v10, v12

    if-lez v13, :cond_1

    mul-float v13, v10, v10

    mul-float/2addr v13, v13

    if-eqz p7, :cond_0

    invoke-static {v0, v4, v5}, Lcom/jme3/math/FastNoiseLite;->Hash(III)I

    move-result v14

    and-int/lit16 v14, v14, 0x1fe

    sget-object v15, Lcom/jme3/math/FastNoiseLite;->RandVecs2D:[F

    aget v16, v15, v14

    or-int/lit8 v14, v14, 0x1

    aget v14, v15, v14

    goto :goto_0

    :cond_0
    invoke-static {v0, v4, v5}, Lcom/jme3/math/FastNoiseLite;->Hash(III)I

    move-result v14

    and-int/lit16 v15, v14, 0xfe

    shr-int/lit8 v14, v14, 0x7

    and-int/lit16 v14, v14, 0x1fe

    sget-object v16, Lcom/jme3/math/FastNoiseLite;->Gradients2D:[F

    aget v17, v16, v15

    or-int/lit8 v15, v15, 0x1

    aget v15, v16, v15

    mul-float v17, v17, v2

    mul-float/2addr v15, v3

    add-float v17, v17, v15

    sget-object v15, Lcom/jme3/math/FastNoiseLite;->RandVecs2D:[F

    aget v16, v15, v14

    or-int/lit8 v14, v14, 0x1

    aget v14, v15, v14

    mul-float v16, v16, v17

    mul-float v14, v14, v17

    :goto_0
    mul-float v16, v16, v13

    add-float v16, v16, v12

    mul-float/2addr v13, v14

    add-float/2addr v13, v12

    goto :goto_1

    :cond_1
    move v13, v12

    move/from16 v16, v13

    :goto_1
    const v14, 0x4049e69d

    mul-float/2addr v6, v14

    const v14, -0x40d55556

    add-float/2addr v10, v14

    add-float/2addr v6, v10

    cmpl-float v10, v6, v12

    if-lez v10, :cond_3

    const v10, -0x40ec32c6

    add-float v14, v2, v10

    add-float/2addr v10, v3

    mul-float/2addr v6, v6

    mul-float/2addr v6, v6

    if-eqz p7, :cond_2

    add-int v10, v4, v8

    add-int v14, v5, v9

    invoke-static {v0, v10, v14}, Lcom/jme3/math/FastNoiseLite;->Hash(III)I

    move-result v10

    and-int/lit16 v10, v10, 0x1fe

    sget-object v14, Lcom/jme3/math/FastNoiseLite;->RandVecs2D:[F

    aget v15, v14, v10

    or-int/lit8 v10, v10, 0x1

    aget v10, v14, v10

    goto :goto_2

    :cond_2
    add-int v15, v4, v8

    add-int v8, v5, v9

    invoke-static {v0, v15, v8}, Lcom/jme3/math/FastNoiseLite;->Hash(III)I

    move-result v8

    and-int/lit16 v15, v8, 0xfe

    shr-int/lit8 v8, v8, 0x7

    and-int/lit16 v8, v8, 0x1fe

    sget-object v17, Lcom/jme3/math/FastNoiseLite;->Gradients2D:[F

    aget v18, v17, v15

    or-int/lit8 v15, v15, 0x1

    aget v15, v17, v15

    mul-float v14, v14, v18

    mul-float/2addr v10, v15

    add-float/2addr v14, v10

    sget-object v10, Lcom/jme3/math/FastNoiseLite;->RandVecs2D:[F

    aget v15, v10, v8

    or-int/lit8 v8, v8, 0x1

    aget v8, v10, v8

    mul-float/2addr v15, v14

    mul-float v10, v14, v8

    :goto_2
    mul-float/2addr v15, v6

    add-float v16, v16, v15

    mul-float/2addr v6, v10

    add-float/2addr v13, v6

    :cond_3
    cmpl-float v6, v3, v2

    const v8, -0x40b61963

    if-lez v6, :cond_5

    add-float/2addr v2, v7

    add-float/2addr v3, v8

    mul-float v6, v2, v2

    sub-float/2addr v11, v6

    mul-float v6, v3, v3

    sub-float/2addr v11, v6

    cmpl-float v6, v11, v12

    if-lez v6, :cond_7

    mul-float/2addr v11, v11

    mul-float/2addr v11, v11

    if-eqz p7, :cond_4

    add-int/2addr v5, v9

    invoke-static {v0, v4, v5}, Lcom/jme3/math/FastNoiseLite;->Hash(III)I

    move-result v0

    and-int/lit16 v0, v0, 0x1fe

    sget-object v2, Lcom/jme3/math/FastNoiseLite;->RandVecs2D:[F

    aget v3, v2, v0

    or-int/lit8 v0, v0, 0x1

    aget v0, v2, v0

    goto :goto_4

    :cond_4
    add-int/2addr v5, v9

    invoke-static {v0, v4, v5}, Lcom/jme3/math/FastNoiseLite;->Hash(III)I

    move-result v0

    and-int/lit16 v4, v0, 0xfe

    shr-int/lit8 v0, v0, 0x7

    and-int/lit16 v0, v0, 0x1fe

    sget-object v5, Lcom/jme3/math/FastNoiseLite;->Gradients2D:[F

    aget v6, v5, v4

    or-int/lit8 v4, v4, 0x1

    aget v4, v5, v4

    mul-float/2addr v2, v6

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    sget-object v3, Lcom/jme3/math/FastNoiseLite;->RandVecs2D:[F

    aget v4, v3, v0

    or-int/lit8 v0, v0, 0x1

    aget v0, v3, v0

    goto :goto_3

    :cond_5
    add-float/2addr v2, v8

    add-float/2addr v3, v7

    mul-float v6, v2, v2

    sub-float/2addr v11, v6

    mul-float v6, v3, v3

    sub-float/2addr v11, v6

    cmpl-float v6, v11, v12

    if-lez v6, :cond_7

    mul-float/2addr v11, v11

    mul-float/2addr v11, v11

    if-eqz p7, :cond_6

    const v6, 0x1dde90c9

    add-int/2addr v4, v6

    invoke-static {v0, v4, v5}, Lcom/jme3/math/FastNoiseLite;->Hash(III)I

    move-result v0

    and-int/lit16 v0, v0, 0x1fe

    sget-object v2, Lcom/jme3/math/FastNoiseLite;->RandVecs2D:[F

    aget v3, v2, v0

    or-int/lit8 v0, v0, 0x1

    aget v0, v2, v0

    goto :goto_4

    :cond_6
    const v6, 0x1dde90c9

    add-int/2addr v4, v6

    invoke-static {v0, v4, v5}, Lcom/jme3/math/FastNoiseLite;->Hash(III)I

    move-result v0

    and-int/lit16 v4, v0, 0xfe

    shr-int/lit8 v0, v0, 0x7

    and-int/lit16 v0, v0, 0x1fe

    sget-object v5, Lcom/jme3/math/FastNoiseLite;->Gradients2D:[F

    aget v6, v5, v4

    or-int/lit8 v4, v4, 0x1

    aget v4, v5, v4

    mul-float/2addr v2, v6

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    sget-object v3, Lcom/jme3/math/FastNoiseLite;->RandVecs2D:[F

    aget v4, v3, v0

    or-int/lit8 v0, v0, 0x1

    aget v0, v3, v0

    :goto_3
    mul-float v3, v2, v4

    mul-float/2addr v0, v2

    :goto_4
    mul-float/2addr v3, v11

    add-float v16, v16, v3

    mul-float/2addr v11, v0

    add-float/2addr v13, v11

    :cond_7
    iget v0, v1, Lcom/jme3/math/Vector2f;->x:F

    mul-float v16, v16, p2

    add-float v0, v0, v16

    iput v0, v1, Lcom/jme3/math/Vector2f;->x:F

    iget v0, v1, Lcom/jme3/math/Vector2f;->y:F

    mul-float v13, v13, p2

    add-float/2addr v0, v13

    iput v0, v1, Lcom/jme3/math/Vector2f;->y:F

    return-void
.end method

.method private SingleOpenSimplex2(IFFF)F
    .locals 30

    invoke-static/range {p2 .. p2}, Lcom/jme3/math/FastNoiseLite;->FastRound(F)I

    move-result v0

    invoke-static/range {p3 .. p3}, Lcom/jme3/math/FastNoiseLite;->FastRound(F)I

    move-result v1

    invoke-static/range {p4 .. p4}, Lcom/jme3/math/FastNoiseLite;->FastRound(F)I

    move-result v2

    int-to-float v3, v0

    sub-float v3, p2, v3

    int-to-float v4, v1

    sub-float v4, p3, v4

    int-to-float v5, v2

    sub-float v5, p4, v5

    const/high16 v6, -0x40800000    # -1.0f

    sub-float v7, v6, v3

    float-to-int v7, v7

    const/4 v8, 0x1

    or-int/2addr v7, v8

    sub-float v9, v6, v4

    float-to-int v9, v9

    or-int/2addr v9, v8

    sub-float/2addr v6, v5

    float-to-int v6, v6

    or-int/2addr v6, v8

    int-to-float v10, v7

    neg-float v11, v3

    mul-float/2addr v10, v11

    int-to-float v11, v9

    neg-float v12, v4

    mul-float/2addr v11, v12

    int-to-float v12, v6

    neg-float v13, v5

    mul-float/2addr v12, v13

    const v13, 0x1dde90c9

    mul-int/2addr v0, v13

    const v14, 0x43c42e4d

    mul-int/2addr v1, v14

    const v15, 0x668b6e2f

    mul-int/2addr v2, v15

    const v16, 0x3f19999a    # 0.6f

    mul-float v17, v3, v3

    sub-float v16, v16, v17

    mul-float v17, v4, v4

    mul-float v18, v5, v5

    add-float v17, v17, v18

    sub-float v16, v16, v17

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v26, v5

    move/from16 v27, v17

    move v5, v3

    move v3, v2

    move v2, v1

    move v1, v0

    move/from16 v0, p1

    move/from16 v29, v18

    move/from16 v18, v4

    move/from16 v4, v29

    :goto_0
    cmpl-float v19, v16, v17

    if-lez v19, :cond_0

    mul-float v19, v16, v16

    mul-float v28, v19, v19

    move/from16 v19, v0

    move/from16 v20, v1

    move/from16 v21, v2

    move/from16 v22, v3

    move/from16 v23, v5

    move/from16 v24, v18

    move/from16 v25, v26

    invoke-static/range {v19 .. v25}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIIFFF)F

    move-result v19

    mul-float v28, v28, v19

    add-float v27, v27, v28

    :cond_0
    cmpl-float v19, v10, v11

    const/high16 v20, 0x3f800000    # 1.0f

    if-ltz v19, :cond_1

    cmpl-float v19, v10, v12

    if-ltz v19, :cond_1

    add-float v19, v16, v10

    add-float v19, v19, v10

    cmpl-float v21, v19, v20

    if-lez v21, :cond_3

    sub-float v19, v19, v20

    mul-float v19, v19, v19

    mul-float v28, v19, v19

    mul-int v19, v7, v13

    sub-int v20, v1, v19

    int-to-float v13, v7

    add-float v23, v5, v13

    move/from16 v19, v0

    move/from16 v21, v2

    move/from16 v22, v3

    move/from16 v24, v18

    move/from16 v25, v26

    invoke-static/range {v19 .. v25}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIIFFF)F

    move-result v5

    mul-float v28, v28, v5

    add-float v27, v27, v28

    goto :goto_2

    :cond_1
    cmpl-float v13, v11, v10

    if-lez v13, :cond_2

    cmpl-float v13, v11, v12

    if-ltz v13, :cond_2

    add-float v13, v16, v11

    add-float/2addr v13, v11

    cmpl-float v19, v13, v20

    if-lez v19, :cond_3

    sub-float v13, v13, v20

    mul-float/2addr v13, v13

    mul-float/2addr v13, v13

    mul-int v19, v9, v14

    sub-int v21, v2, v19

    int-to-float v14, v9

    add-float v24, v18, v14

    move/from16 v19, v0

    move/from16 v20, v1

    move/from16 v22, v3

    move/from16 v23, v5

    move/from16 v25, v26

    invoke-static/range {v19 .. v25}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIIFFF)F

    move-result v5

    goto :goto_1

    :cond_2
    add-float v13, v16, v12

    add-float/2addr v13, v12

    cmpl-float v14, v13, v20

    if-lez v14, :cond_3

    sub-float v13, v13, v20

    mul-float/2addr v13, v13

    mul-float/2addr v13, v13

    mul-int v14, v6, v15

    sub-int v22, v3, v14

    int-to-float v14, v6

    add-float v25, v26, v14

    move/from16 v19, v0

    move/from16 v20, v1

    move/from16 v21, v2

    move/from16 v23, v5

    move/from16 v24, v18

    invoke-static/range {v19 .. v25}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIIFFF)F

    move-result v5

    :goto_1
    mul-float/2addr v13, v5

    add-float v27, v27, v13

    :cond_3
    :goto_2
    if-ne v4, v8, :cond_4

    const v0, 0x4202c6f2

    mul-float v27, v27, v0

    return v27

    :cond_4
    const/high16 v5, 0x3f000000    # 0.5f

    sub-float v10, v5, v10

    sub-float v11, v5, v11

    sub-float v12, v5, v12

    int-to-float v5, v7

    mul-float/2addr v5, v10

    int-to-float v13, v9

    mul-float v18, v13, v11

    int-to-float v13, v6

    mul-float v26, v13, v12

    const/high16 v13, 0x3f400000    # 0.75f

    sub-float/2addr v13, v10

    add-float v14, v11, v12

    sub-float/2addr v13, v14

    add-float v16, v16, v13

    shr-int/lit8 v13, v7, 0x1

    const v14, 0x1dde90c9

    and-int/2addr v13, v14

    add-int/2addr v1, v13

    shr-int/lit8 v13, v9, 0x1

    const v19, 0x43c42e4d

    and-int v13, v13, v19

    add-int/2addr v2, v13

    shr-int/lit8 v13, v6, 0x1

    and-int/2addr v13, v15

    add-int/2addr v3, v13

    neg-int v7, v7

    neg-int v9, v9

    neg-int v6, v6

    not-int v0, v0

    add-int/lit8 v4, v4, 0x1

    move v13, v14

    move/from16 v14, v19

    goto/16 :goto_0
.end method

.method private SingleOpenSimplex2S(IFF)F
    .locals 20

    move/from16 v0, p1

    .line 1
    invoke-static/range {p2 .. p2}, Lcom/jme3/math/FastNoiseLite;->FastFloor(F)I

    move-result v1

    .line 2
    invoke-static/range {p3 .. p3}, Lcom/jme3/math/FastNoiseLite;->FastFloor(F)I

    move-result v2

    int-to-float v3, v1

    sub-float v3, p2, v3

    int-to-float v4, v2

    sub-float v4, p3, v4

    const v5, 0x1dde90c9

    mul-int/2addr v1, v5

    const v6, 0x43c42e4d

    mul-int/2addr v2, v6

    add-int v7, v1, v5

    add-int v8, v2, v6

    add-float v9, v3, v4

    const v10, 0x3e58658c

    mul-float/2addr v9, v10

    sub-float v11, v3, v9

    sub-float v12, v4, v9

    mul-float v13, v11, v11

    const v14, 0x3f2aaaab

    sub-float v13, v14, v13

    mul-float v15, v12, v12

    sub-float/2addr v13, v15

    mul-float v15, v13, v13

    mul-float/2addr v15, v15

    .line 3
    invoke-static {v0, v1, v2, v11, v12}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIFF)F

    move-result v16

    mul-float v15, v15, v16

    const v16, 0x4049e69d

    mul-float v16, v16, v9

    const v17, -0x40d55556

    add-float v13, v13, v17

    add-float v16, v16, v13

    const v13, 0x3f13cd3a

    sub-float v6, v11, v13

    sub-float v13, v12, v13

    mul-float v16, v16, v16

    mul-float v16, v16, v16

    .line 4
    invoke-static {v0, v7, v8, v6, v13}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIFF)F

    move-result v6

    mul-float v16, v16, v6

    add-float v15, v15, v16

    sub-float v6, v3, v4

    cmpl-float v9, v9, v10

    const v13, -0x40b61963

    const/16 v16, 0x0

    if-lez v9, :cond_3

    add-float/2addr v3, v6

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    const v9, -0x41449852

    const v17, -0x40512614

    if-lez v3, :cond_0

    add-float v3, v11, v17

    add-float v5, v12, v9

    mul-float v18, v3, v3

    sub-float v18, v14, v18

    mul-float v19, v5, v5

    sub-float v18, v18, v19

    cmpl-float v19, v18, v16

    if-lez v19, :cond_1

    mul-float v18, v18, v18

    mul-float v18, v18, v18

    const v19, 0x3bbd2192

    add-int v1, v1, v19

    .line 5
    invoke-static {v0, v1, v8, v3, v5}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIFF)F

    move-result v1

    goto :goto_0

    :cond_0
    add-float v3, v11, v10

    add-float v5, v12, v13

    mul-float v18, v3, v3

    sub-float v18, v14, v18

    mul-float v19, v5, v5

    sub-float v18, v18, v19

    cmpl-float v19, v18, v16

    if-lez v19, :cond_1

    mul-float v18, v18, v18

    mul-float v18, v18, v18

    .line 6
    invoke-static {v0, v1, v8, v3, v5}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIFF)F

    move-result v1

    :goto_0
    mul-float v18, v18, v1

    add-float v15, v15, v18

    :cond_1
    sub-float/2addr v4, v6

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v4, v1

    if-lez v1, :cond_2

    add-float/2addr v11, v9

    add-float v12, v12, v17

    mul-float v1, v11, v11

    sub-float/2addr v14, v1

    mul-float v1, v12, v12

    sub-float/2addr v14, v1

    cmpl-float v1, v14, v16

    if-lez v1, :cond_7

    mul-float/2addr v14, v14

    mul-float/2addr v14, v14

    const v1, -0x7877a366

    add-int/2addr v2, v1

    .line 7
    invoke-static {v0, v7, v2, v11, v12}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIFF)F

    move-result v0

    goto/16 :goto_2

    :cond_2
    add-float/2addr v11, v13

    add-float/2addr v12, v10

    mul-float v1, v11, v11

    sub-float/2addr v14, v1

    mul-float v1, v12, v12

    sub-float/2addr v14, v1

    cmpl-float v1, v14, v16

    if-lez v1, :cond_7

    mul-float/2addr v14, v14

    mul-float/2addr v14, v14

    .line 8
    invoke-static {v0, v7, v2, v11, v12}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIFF)F

    move-result v0

    goto :goto_2

    :cond_3
    add-float/2addr v3, v6

    cmpg-float v3, v3, v16

    if-gez v3, :cond_4

    const v3, 0x3f49e69d

    add-float/2addr v3, v11

    sub-float v7, v12, v10

    mul-float v9, v3, v3

    sub-float v9, v14, v9

    mul-float v17, v7, v7

    sub-float v9, v9, v17

    cmpl-float v17, v9, v16

    if-lez v17, :cond_5

    mul-float/2addr v9, v9

    mul-float/2addr v9, v9

    sub-int v5, v1, v5

    .line 9
    invoke-static {v0, v5, v2, v3, v7}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIFF)F

    move-result v3

    goto :goto_1

    :cond_4
    add-float v3, v11, v13

    add-float v5, v12, v10

    mul-float v9, v3, v3

    sub-float v9, v14, v9

    mul-float v17, v5, v5

    sub-float v9, v9, v17

    cmpl-float v17, v9, v16

    if-lez v17, :cond_5

    mul-float/2addr v9, v9

    mul-float/2addr v9, v9

    .line 10
    invoke-static {v0, v7, v2, v3, v5}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIFF)F

    move-result v3

    :goto_1
    mul-float/2addr v9, v3

    add-float/2addr v15, v9

    :cond_5
    cmpg-float v3, v4, v6

    if-gez v3, :cond_6

    sub-float/2addr v11, v10

    sub-float/2addr v12, v13

    mul-float v3, v11, v11

    sub-float/2addr v14, v3

    mul-float v3, v12, v12

    sub-float/2addr v14, v3

    cmpl-float v3, v14, v16

    if-lez v3, :cond_7

    mul-float/2addr v14, v14

    mul-float/2addr v14, v14

    const v3, 0x43c42e4d

    sub-int/2addr v2, v3

    .line 11
    invoke-static {v0, v1, v2, v11, v12}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIFF)F

    move-result v0

    goto :goto_2

    :cond_6
    add-float/2addr v11, v10

    add-float/2addr v12, v13

    mul-float v2, v11, v11

    sub-float/2addr v14, v2

    mul-float v2, v12, v12

    sub-float/2addr v14, v2

    cmpl-float v2, v14, v16

    if-lez v2, :cond_7

    mul-float/2addr v14, v14

    mul-float/2addr v14, v14

    .line 12
    invoke-static {v0, v1, v8, v11, v12}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIFF)F

    move-result v0

    :goto_2
    mul-float/2addr v14, v0

    add-float/2addr v15, v14

    :cond_7
    const v0, 0x4191ef8a

    mul-float/2addr v15, v0

    return v15
.end method

.method private SingleOpenSimplex2S(IFFF)F
    .locals 46

    .line 13
    invoke-static/range {p2 .. p2}, Lcom/jme3/math/FastNoiseLite;->FastFloor(F)I

    move-result v0

    .line 14
    invoke-static/range {p3 .. p3}, Lcom/jme3/math/FastNoiseLite;->FastFloor(F)I

    move-result v1

    .line 15
    invoke-static/range {p4 .. p4}, Lcom/jme3/math/FastNoiseLite;->FastFloor(F)I

    move-result v2

    int-to-float v3, v0

    sub-float v3, p2, v3

    int-to-float v4, v1

    sub-float v4, p3, v4

    int-to-float v5, v2

    sub-float v5, p4, v5

    const v6, 0x1dde90c9

    mul-int/2addr v0, v6

    const v7, 0x43c42e4d

    mul-int/2addr v1, v7

    const v8, 0x668b6e2f

    mul-int/2addr v2, v8

    const v9, 0x13bc3d

    add-int v9, p1, v9

    const/high16 v10, -0x41000000    # -0.5f

    sub-float v11, v10, v3

    float-to-int v15, v11

    sub-float v11, v10, v4

    float-to-int v14, v11

    sub-float/2addr v10, v5

    float-to-int v13, v10

    int-to-float v10, v15

    add-float v17, v3, v10

    int-to-float v10, v14

    add-float v18, v4, v10

    int-to-float v10, v13

    add-float v19, v5, v10

    mul-float v10, v17, v17

    const/high16 v20, 0x3f400000    # 0.75f

    sub-float v10, v20, v10

    mul-float v11, v18, v18

    sub-float/2addr v10, v11

    mul-float v11, v19, v19

    sub-float v21, v10, v11

    mul-float v10, v21, v21

    mul-float v22, v10, v10

    and-int v10, v15, v6

    add-int v23, v0, v10

    and-int v10, v14, v7

    add-int v24, v1, v10

    and-int v10, v13, v8

    add-int v25, v2, v10

    move/from16 v10, p1

    move/from16 v11, v23

    move/from16 v12, v24

    move/from16 v26, v13

    move/from16 v13, v25

    move/from16 v27, v14

    move/from16 v14, v17

    move/from16 v28, v15

    move/from16 v15, v18

    move/from16 v16, v19

    .line 16
    invoke-static/range {v10 .. v16}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIIFFF)F

    move-result v10

    mul-float v22, v22, v10

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float/2addr v3, v10

    sub-float/2addr v4, v10

    sub-float/2addr v5, v10

    mul-float v10, v3, v3

    sub-float v20, v20, v10

    mul-float v10, v4, v4

    sub-float v20, v20, v10

    mul-float v10, v5, v5

    sub-float v20, v20, v10

    mul-float v10, v20, v20

    mul-float v29, v10, v10

    add-int v30, v0, v6

    add-int v31, v1, v7

    add-int v32, v2, v8

    move v10, v9

    move/from16 v11, v30

    move/from16 v12, v31

    move/from16 v13, v32

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    .line 17
    invoke-static/range {v10 .. v16}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIIFFF)F

    move-result v10

    mul-float v29, v29, v10

    add-float v22, v22, v29

    move/from16 v15, v28

    or-int/lit8 v14, v15, 0x1

    shl-int/lit8 v10, v14, 0x1

    int-to-float v10, v10

    mul-float v28, v10, v3

    move/from16 v13, v27

    or-int/lit8 v12, v13, 0x1

    shl-int/lit8 v10, v12, 0x1

    int-to-float v10, v10

    mul-float v27, v10, v4

    move/from16 v11, v26

    or-int/lit8 v10, v11, 0x1

    shl-int/lit8 v8, v10, 0x1

    int-to-float v8, v8

    mul-float/2addr v8, v5

    shl-int/lit8 v16, v15, 0x2

    rsub-int/lit8 v7, v16, -0x2

    int-to-float v7, v7

    mul-float/2addr v7, v3

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v7, v7, v16

    shl-int/lit8 v26, v13, 0x2

    rsub-int/lit8 v6, v26, -0x2

    int-to-float v6, v6

    mul-float/2addr v6, v4

    sub-float v6, v6, v16

    shl-int/lit8 v26, v11, 0x2

    move/from16 v29, v10

    rsub-int/lit8 v10, v26, -0x2

    int-to-float v10, v10

    mul-float/2addr v10, v5

    sub-float v26, v10, v16

    add-float v10, v28, v21

    const/16 v33, 0x0

    cmpl-float v16, v10, v33

    const v34, 0x3bbd2192

    const/16 v35, 0x1

    const/16 v36, 0x0

    if-lez v16, :cond_0

    move/from16 v16, v11

    int-to-float v11, v14

    sub-float v37, v17, v11

    mul-float/2addr v10, v10

    mul-float v38, v10, v10

    not-int v10, v15

    const v11, 0x1dde90c9

    and-int/2addr v10, v11

    add-int v11, v0, v10

    move/from16 v39, v6

    move/from16 v6, v29

    move/from16 v10, p1

    move/from16 v29, v5

    move/from16 v5, v16

    move/from16 v40, v4

    move v4, v12

    move/from16 v12, v24

    move/from16 v41, v9

    move v9, v13

    move/from16 v13, v25

    move/from16 v42, v0

    move v0, v14

    move/from16 v14, v37

    move/from16 v43, v15

    move/from16 v15, v18

    move/from16 v16, v19

    .line 18
    invoke-static/range {v10 .. v16}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIIFFF)F

    move-result v10

    mul-float v38, v38, v10

    add-float v22, v22, v38

    move/from16 v38, v7

    move/from16 v37, v36

    move/from16 v7, v43

    goto/16 :goto_0

    :cond_0
    move/from16 v42, v0

    move/from16 v40, v4

    move/from16 v39, v6

    move/from16 v41, v9

    move v4, v12

    move v9, v13

    move v0, v14

    move/from16 v43, v15

    move/from16 v6, v29

    move/from16 v29, v5

    move v5, v11

    add-float v10, v27, v8

    add-float v10, v10, v21

    cmpl-float v11, v10, v33

    if-lez v11, :cond_1

    int-to-float v11, v4

    sub-float v15, v18, v11

    int-to-float v11, v6

    sub-float v16, v19, v11

    mul-float/2addr v10, v10

    mul-float v37, v10, v10

    not-int v10, v9

    const v11, 0x43c42e4d

    and-int/2addr v10, v11

    add-int v12, v1, v10

    not-int v10, v5

    const v11, 0x668b6e2f

    and-int/2addr v10, v11

    add-int v13, v2, v10

    move/from16 v10, p1

    move/from16 v11, v23

    move/from16 v14, v17

    .line 19
    invoke-static/range {v10 .. v16}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIIFFF)F

    move-result v10

    mul-float v37, v37, v10

    add-float v22, v22, v37

    :cond_1
    add-float v10, v7, v20

    cmpl-float v11, v10, v33

    if-lez v11, :cond_2

    int-to-float v11, v0

    add-float v14, v11, v3

    mul-float/2addr v10, v10

    mul-float v37, v10, v10

    move/from16 v15, v43

    and-int v10, v15, v34

    add-int v11, v42, v10

    move/from16 v10, v41

    move/from16 v12, v31

    move/from16 v13, v32

    move/from16 v38, v7

    move v7, v15

    move/from16 v15, v40

    move/from16 v16, v29

    .line 20
    invoke-static/range {v10 .. v16}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIIFFF)F

    move-result v10

    mul-float v37, v37, v10

    add-float v22, v22, v37

    move/from16 v37, v35

    goto :goto_0

    :cond_2
    move/from16 v38, v7

    move/from16 v7, v43

    move/from16 v37, v36

    :goto_0
    add-float v10, v27, v21

    cmpl-float v11, v10, v33

    const v43, -0x7877a366

    if-lez v11, :cond_4

    int-to-float v11, v4

    sub-float v15, v18, v11

    mul-float/2addr v10, v10

    mul-float v44, v10, v10

    not-int v10, v9

    const v11, 0x43c42e4d

    and-int/2addr v10, v11

    add-int v12, v1, v10

    move/from16 v10, p1

    move/from16 v11, v23

    move/from16 v13, v25

    move/from16 v14, v17

    move/from16 v16, v19

    .line 21
    invoke-static/range {v10 .. v16}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIIFFF)F

    move-result v10

    mul-float v44, v44, v10

    add-float v22, v22, v44

    :cond_3
    move/from16 v44, v36

    goto :goto_1

    :cond_4
    add-float v10, v28, v8

    add-float v10, v10, v21

    cmpl-float v11, v10, v33

    if-lez v11, :cond_5

    int-to-float v11, v0

    sub-float v14, v17, v11

    int-to-float v11, v6

    sub-float v16, v19, v11

    mul-float/2addr v10, v10

    mul-float v44, v10, v10

    not-int v10, v7

    const v11, 0x1dde90c9

    and-int/2addr v10, v11

    add-int v11, v42, v10

    not-int v10, v5

    const v12, 0x668b6e2f

    and-int/2addr v10, v12

    add-int v13, v2, v10

    move/from16 v10, p1

    move/from16 v12, v24

    move/from16 v15, v18

    .line 22
    invoke-static/range {v10 .. v16}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIIFFF)F

    move-result v10

    mul-float v44, v44, v10

    add-float v22, v22, v44

    :cond_5
    add-float v10, v39, v20

    cmpl-float v11, v10, v33

    if-lez v11, :cond_3

    int-to-float v11, v4

    add-float v15, v11, v40

    mul-float/2addr v10, v10

    mul-float v44, v10, v10

    and-int v10, v9, v43

    add-int v12, v1, v10

    move/from16 v10, v41

    move/from16 v11, v30

    move/from16 v13, v32

    move v14, v3

    move/from16 v16, v29

    .line 23
    invoke-static/range {v10 .. v16}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIIFFF)F

    move-result v10

    mul-float v44, v44, v10

    add-float v22, v22, v44

    move/from16 v44, v35

    :goto_1
    add-float v8, v8, v21

    cmpl-float v10, v8, v33

    const v45, -0x32e923a2

    if-lez v10, :cond_7

    int-to-float v10, v6

    sub-float v16, v19, v10

    mul-float/2addr v8, v8

    mul-float/2addr v8, v8

    not-int v10, v5

    const v11, 0x668b6e2f

    and-int/2addr v10, v11

    add-int v13, v2, v10

    move/from16 v10, p1

    move/from16 v11, v23

    move/from16 v12, v24

    move/from16 v14, v17

    move/from16 v15, v18

    .line 24
    invoke-static/range {v10 .. v16}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIIFFF)F

    move-result v10

    mul-float/2addr v8, v10

    add-float v22, v22, v8

    :cond_6
    move/from16 v35, v36

    goto :goto_2

    :cond_7
    add-float v28, v28, v27

    add-float v28, v28, v21

    cmpl-float v8, v28, v33

    if-lez v8, :cond_8

    int-to-float v8, v0

    sub-float v14, v17, v8

    int-to-float v8, v4

    sub-float v15, v18, v8

    mul-float v28, v28, v28

    mul-float v28, v28, v28

    not-int v8, v7

    const v10, 0x1dde90c9

    and-int/2addr v8, v10

    add-int v11, v42, v8

    not-int v8, v9

    const v10, 0x43c42e4d

    and-int/2addr v8, v10

    add-int v12, v1, v8

    move/from16 v10, p1

    move/from16 v13, v25

    move/from16 v16, v19

    .line 25
    invoke-static/range {v10 .. v16}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIIFFF)F

    move-result v8

    mul-float v28, v28, v8

    add-float v22, v22, v28

    :cond_8
    add-float v8, v26, v20

    cmpl-float v10, v8, v33

    if-lez v10, :cond_6

    int-to-float v10, v6

    add-float v16, v10, v29

    mul-float/2addr v8, v8

    mul-float/2addr v8, v8

    and-int v10, v5, v45

    add-int v13, v2, v10

    move/from16 v10, v41

    move/from16 v11, v30

    move/from16 v12, v31

    move v14, v3

    move/from16 v15, v40

    .line 26
    invoke-static/range {v10 .. v16}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIIFFF)F

    move-result v10

    mul-float/2addr v8, v10

    add-float v22, v22, v8

    :goto_2
    if-nez v37, :cond_9

    add-float v8, v39, v26

    add-float v8, v8, v20

    cmpl-float v10, v8, v33

    if-lez v10, :cond_9

    int-to-float v10, v4

    add-float v15, v10, v40

    int-to-float v10, v6

    add-float v16, v10, v29

    mul-float/2addr v8, v8

    mul-float/2addr v8, v8

    and-int v10, v9, v43

    add-int v12, v1, v10

    and-int v10, v5, v45

    add-int v13, v2, v10

    move/from16 v10, v41

    move/from16 v11, v30

    move v14, v3

    .line 27
    invoke-static/range {v10 .. v16}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIIFFF)F

    move-result v10

    mul-float/2addr v8, v10

    add-float v22, v22, v8

    :cond_9
    if-nez v44, :cond_a

    add-float v8, v38, v26

    add-float v8, v8, v20

    cmpl-float v10, v8, v33

    if-lez v10, :cond_a

    int-to-float v10, v0

    add-float v14, v10, v3

    int-to-float v6, v6

    add-float v16, v6, v29

    mul-float/2addr v8, v8

    mul-float/2addr v8, v8

    and-int v6, v7, v34

    add-int v11, v42, v6

    and-int v5, v5, v45

    add-int v13, v2, v5

    move/from16 v10, v41

    move/from16 v12, v31

    move/from16 v15, v40

    .line 28
    invoke-static/range {v10 .. v16}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIIFFF)F

    move-result v2

    mul-float/2addr v8, v2

    add-float v22, v22, v8

    :cond_a
    if-nez v35, :cond_b

    add-float v2, v38, v39

    add-float v2, v2, v20

    cmpl-float v5, v2, v33

    if-lez v5, :cond_b

    int-to-float v0, v0

    add-float v14, v0, v3

    int-to-float v0, v4

    add-float v15, v0, v40

    mul-float/2addr v2, v2

    mul-float/2addr v2, v2

    and-int v0, v7, v34

    add-int v11, v42, v0

    and-int v0, v9, v43

    add-int v12, v1, v0

    move/from16 v10, v41

    move/from16 v13, v32

    move/from16 v16, v29

    .line 29
    invoke-static/range {v10 .. v16}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIIFFF)F

    move-result v0

    mul-float/2addr v2, v0

    add-float v22, v22, v2

    :cond_b
    const v0, 0x4110bc86

    mul-float v22, v22, v0

    return v22
.end method

.method private SinglePerlin(IFF)F
    .locals 9

    .line 1
    invoke-static {p2}, Lcom/jme3/math/FastNoiseLite;->FastFloor(F)I

    move-result v0

    .line 2
    invoke-static {p3}, Lcom/jme3/math/FastNoiseLite;->FastFloor(F)I

    move-result v1

    int-to-float v2, v0

    sub-float/2addr p2, v2

    int-to-float v2, v1

    sub-float/2addr p3, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, p2, v2

    sub-float v2, p3, v2

    .line 3
    invoke-static {p2}, Lcom/jme3/math/FastNoiseLite;->InterpQuintic(F)F

    move-result v4

    .line 4
    invoke-static {p3}, Lcom/jme3/math/FastNoiseLite;->InterpQuintic(F)F

    move-result v5

    const v6, 0x1dde90c9

    mul-int/2addr v0, v6

    const v7, 0x43c42e4d

    mul-int/2addr v1, v7

    add-int/2addr v6, v0

    add-int/2addr v7, v1

    .line 5
    invoke-static {p1, v0, v1, p2, p3}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIFF)F

    move-result v8

    invoke-static {p1, v6, v1, v3, p3}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIFF)F

    move-result p3

    invoke-static {v8, p3, v4}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result p3

    .line 6
    invoke-static {p1, v0, v7, p2, v2}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIFF)F

    move-result p2

    invoke-static {p1, v6, v7, v3, v2}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIFF)F

    move-result p1

    invoke-static {p2, p1, v4}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result p1

    .line 7
    invoke-static {p3, p1, v5}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result p1

    const p2, 0x3fb65ed6

    mul-float/2addr p1, p2

    return p1
.end method

.method private SinglePerlin(IFFF)F
    .locals 22

    .line 8
    invoke-static/range {p2 .. p2}, Lcom/jme3/math/FastNoiseLite;->FastFloor(F)I

    move-result v0

    .line 9
    invoke-static/range {p3 .. p3}, Lcom/jme3/math/FastNoiseLite;->FastFloor(F)I

    move-result v1

    .line 10
    invoke-static/range {p4 .. p4}, Lcom/jme3/math/FastNoiseLite;->FastFloor(F)I

    move-result v2

    int-to-float v3, v0

    sub-float v3, p2, v3

    int-to-float v4, v1

    sub-float v12, p3, v4

    int-to-float v4, v2

    sub-float v13, p4, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v14, v3, v4

    sub-float v15, v12, v4

    sub-float v16, v13, v4

    .line 11
    invoke-static {v3}, Lcom/jme3/math/FastNoiseLite;->InterpQuintic(F)F

    move-result v11

    .line 12
    invoke-static {v12}, Lcom/jme3/math/FastNoiseLite;->InterpQuintic(F)F

    move-result v10

    .line 13
    invoke-static {v13}, Lcom/jme3/math/FastNoiseLite;->InterpQuintic(F)F

    move-result v9

    const v4, 0x1dde90c9

    mul-int/2addr v0, v4

    const v5, 0x43c42e4d

    mul-int/2addr v1, v5

    const v6, 0x668b6e2f

    mul-int/2addr v2, v6

    add-int v17, v0, v4

    add-int v18, v1, v5

    add-int v19, v2, v6

    move/from16 v4, p1

    move v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move/from16 v20, v9

    move v9, v12

    move/from16 v21, v10

    move v10, v13

    .line 14
    invoke-static/range {v4 .. v10}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIIFFF)F

    move-result v4

    move/from16 v5, p1

    move/from16 v6, v17

    move v7, v1

    move v8, v2

    move v9, v14

    move v10, v12

    move/from16 p2, v12

    move v12, v11

    move v11, v13

    invoke-static/range {v5 .. v11}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIIFFF)F

    move-result v5

    invoke-static {v4, v5, v12}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v11

    move/from16 v4, p1

    move v5, v0

    move/from16 v6, v18

    move v7, v2

    move v8, v3

    move v9, v15

    move v10, v13

    .line 15
    invoke-static/range {v4 .. v10}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIIFFF)F

    move-result v4

    move/from16 v5, p1

    move/from16 v6, v17

    move/from16 v7, v18

    move v8, v2

    move v9, v14

    move v10, v15

    move v2, v11

    move v11, v13

    invoke-static/range {v5 .. v11}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIIFFF)F

    move-result v5

    invoke-static {v4, v5, v12}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v13

    move/from16 v4, p1

    move v5, v0

    move v6, v1

    move/from16 v7, v19

    move v8, v3

    move/from16 v9, p2

    move/from16 v10, v16

    .line 16
    invoke-static/range {v4 .. v10}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIIFFF)F

    move-result v4

    move/from16 v5, p1

    move/from16 v6, v17

    move v7, v1

    move/from16 v8, v19

    move v9, v14

    move/from16 v10, p2

    move/from16 v11, v16

    invoke-static/range {v5 .. v11}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIIFFF)F

    move-result v1

    invoke-static {v4, v1, v12}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v1

    move/from16 v4, p1

    move v5, v0

    move/from16 v6, v18

    move/from16 v7, v19

    move v8, v3

    move v9, v15

    move/from16 v10, v16

    .line 17
    invoke-static/range {v4 .. v10}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIIFFF)F

    move-result v0

    move/from16 v5, p1

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    move v9, v14

    move v10, v15

    invoke-static/range {v5 .. v11}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIIFFF)F

    move-result v3

    invoke-static {v0, v3, v12}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v0

    move/from16 v3, v21

    .line 18
    invoke-static {v2, v13, v3}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v2

    .line 19
    invoke-static {v1, v0, v3}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v0

    move/from16 v1, v20

    .line 20
    invoke-static {v2, v0, v1}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v0

    const v1, 0x3f770517

    mul-float/2addr v0, v1

    return v0
.end method

.method private SingleSimplex(IFF)F
    .locals 16

    move/from16 v0, p1

    invoke-static/range {p2 .. p2}, Lcom/jme3/math/FastNoiseLite;->FastFloor(F)I

    move-result v1

    invoke-static/range {p3 .. p3}, Lcom/jme3/math/FastNoiseLite;->FastFloor(F)I

    move-result v2

    int-to-float v3, v1

    sub-float v3, p2, v3

    int-to-float v4, v2

    sub-float v4, p3, v4

    add-float v5, v3, v4

    const v6, 0x3e58658c

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    sub-float/2addr v4, v5

    const v7, 0x1dde90c9

    mul-int/2addr v1, v7

    const v8, 0x43c42e4d

    mul-int/2addr v2, v8

    mul-float v9, v3, v3

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float v9, v10, v9

    mul-float v11, v4, v4

    sub-float/2addr v9, v11

    const/4 v11, 0x0

    cmpg-float v12, v9, v11

    if-gtz v12, :cond_0

    move v12, v11

    goto :goto_0

    :cond_0
    mul-float v12, v9, v9

    mul-float/2addr v12, v12

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIFF)F

    move-result v13

    mul-float/2addr v12, v13

    :goto_0
    const v13, 0x4049e69d

    mul-float/2addr v5, v13

    const v13, -0x40d55556

    add-float/2addr v9, v13

    add-float/2addr v5, v9

    cmpg-float v9, v5, v11

    if-gtz v9, :cond_1

    move v5, v11

    goto :goto_1

    :cond_1
    const v9, -0x40ec32c6

    add-float v13, v3, v9

    add-float/2addr v9, v4

    mul-float/2addr v5, v5

    mul-float/2addr v5, v5

    add-int v14, v1, v7

    add-int v15, v2, v8

    invoke-static {v0, v14, v15, v13, v9}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIFF)F

    move-result v9

    mul-float/2addr v5, v9

    :goto_1
    cmpl-float v9, v4, v3

    const v13, -0x40b61963

    if-lez v9, :cond_3

    add-float/2addr v3, v6

    add-float/2addr v4, v13

    mul-float v6, v3, v3

    sub-float/2addr v10, v6

    mul-float v6, v4, v4

    sub-float/2addr v10, v6

    cmpg-float v6, v10, v11

    if-gtz v6, :cond_2

    goto :goto_3

    :cond_2
    mul-float/2addr v10, v10

    mul-float/2addr v10, v10

    add-int/2addr v2, v8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIFF)F

    move-result v0

    goto :goto_2

    :cond_3
    add-float/2addr v3, v13

    add-float/2addr v4, v6

    mul-float v6, v3, v3

    sub-float/2addr v10, v6

    mul-float v6, v4, v4

    sub-float/2addr v10, v6

    cmpg-float v6, v10, v11

    if-gtz v6, :cond_4

    goto :goto_3

    :cond_4
    mul-float/2addr v10, v10

    mul-float/2addr v10, v10

    add-int/2addr v1, v7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jme3/math/FastNoiseLite;->GradCoord(IIIFF)F

    move-result v0

    :goto_2
    mul-float v11, v10, v0

    :goto_3
    add-float/2addr v12, v11

    add-float/2addr v12, v5

    const v0, 0x42c7ac78

    mul-float/2addr v12, v0

    return v12
.end method

.method private SingleValue(IFF)F
    .locals 5

    .line 1
    invoke-static {p2}, Lcom/jme3/math/FastNoiseLite;->FastFloor(F)I

    move-result v0

    .line 2
    invoke-static {p3}, Lcom/jme3/math/FastNoiseLite;->FastFloor(F)I

    move-result v1

    int-to-float v2, v0

    sub-float/2addr p2, v2

    .line 3
    invoke-static {p2}, Lcom/jme3/math/FastNoiseLite;->InterpHermite(F)F

    move-result p2

    int-to-float v2, v1

    sub-float/2addr p3, v2

    .line 4
    invoke-static {p3}, Lcom/jme3/math/FastNoiseLite;->InterpHermite(F)F

    move-result p3

    const v2, 0x1dde90c9

    mul-int/2addr v0, v2

    const v3, 0x43c42e4d

    mul-int/2addr v1, v3

    add-int/2addr v2, v0

    add-int/2addr v3, v1

    .line 5
    invoke-static {p1, v0, v1}, Lcom/jme3/math/FastNoiseLite;->ValCoord(III)F

    move-result v4

    invoke-static {p1, v2, v1}, Lcom/jme3/math/FastNoiseLite;->ValCoord(III)F

    move-result v1

    invoke-static {v4, v1, p2}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v1

    .line 6
    invoke-static {p1, v0, v3}, Lcom/jme3/math/FastNoiseLite;->ValCoord(III)F

    move-result v0

    invoke-static {p1, v2, v3}, Lcom/jme3/math/FastNoiseLite;->ValCoord(III)F

    move-result p1

    invoke-static {v0, p1, p2}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result p1

    .line 7
    invoke-static {v1, p1, p3}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result p1

    return p1
.end method

.method private SingleValue(IFFF)F
    .locals 8

    .line 8
    invoke-static {p2}, Lcom/jme3/math/FastNoiseLite;->FastFloor(F)I

    move-result v0

    .line 9
    invoke-static {p3}, Lcom/jme3/math/FastNoiseLite;->FastFloor(F)I

    move-result v1

    .line 10
    invoke-static {p4}, Lcom/jme3/math/FastNoiseLite;->FastFloor(F)I

    move-result v2

    int-to-float v3, v0

    sub-float/2addr p2, v3

    .line 11
    invoke-static {p2}, Lcom/jme3/math/FastNoiseLite;->InterpHermite(F)F

    move-result p2

    int-to-float v3, v1

    sub-float/2addr p3, v3

    .line 12
    invoke-static {p3}, Lcom/jme3/math/FastNoiseLite;->InterpHermite(F)F

    move-result p3

    int-to-float v3, v2

    sub-float/2addr p4, v3

    .line 13
    invoke-static {p4}, Lcom/jme3/math/FastNoiseLite;->InterpHermite(F)F

    move-result p4

    const v3, 0x1dde90c9

    mul-int/2addr v0, v3

    const v4, 0x43c42e4d

    mul-int/2addr v1, v4

    const v5, 0x668b6e2f

    mul-int/2addr v2, v5

    add-int/2addr v3, v0

    add-int/2addr v4, v1

    add-int/2addr v5, v2

    .line 14
    invoke-static {p1, v0, v1, v2}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v6

    invoke-static {p1, v3, v1, v2}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v7

    invoke-static {v6, v7, p2}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v6

    .line 15
    invoke-static {p1, v0, v4, v2}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v7

    invoke-static {p1, v3, v4, v2}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v2

    invoke-static {v7, v2, p2}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v2

    .line 16
    invoke-static {p1, v0, v1, v5}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v7

    invoke-static {p1, v3, v1, v5}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v1

    invoke-static {v7, v1, p2}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result v1

    .line 17
    invoke-static {p1, v0, v4, v5}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v0

    invoke-static {p1, v3, v4, v5}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result p1

    invoke-static {v0, p1, p2}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result p1

    .line 18
    invoke-static {v6, v2, p3}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result p2

    .line 19
    invoke-static {v1, p1, p3}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result p1

    .line 20
    invoke-static {p2, p1, p4}, Lcom/jme3/math/FastNoiseLite;->Lerp(FFF)F

    move-result p1

    return p1
.end method

.method private SingleValueCubic(IFF)F
    .locals 11

    .line 1
    invoke-static {p2}, Lcom/jme3/math/FastNoiseLite;->FastFloor(F)I

    move-result v0

    .line 2
    invoke-static {p3}, Lcom/jme3/math/FastNoiseLite;->FastFloor(F)I

    move-result v1

    int-to-float v2, v0

    sub-float/2addr p2, v2

    int-to-float v2, v1

    sub-float/2addr p3, v2

    const v2, 0x1dde90c9

    mul-int/2addr v0, v2

    const v3, 0x43c42e4d

    mul-int/2addr v1, v3

    sub-int v4, v0, v2

    sub-int v5, v1, v3

    add-int/2addr v2, v0

    add-int/2addr v3, v1

    const v6, 0x3bbd2192

    add-int/2addr v6, v0

    const v7, -0x7877a366

    add-int/2addr v7, v1

    .line 3
    invoke-static {p1, v4, v5}, Lcom/jme3/math/FastNoiseLite;->ValCoord(III)F

    move-result v8

    invoke-static {p1, v0, v5}, Lcom/jme3/math/FastNoiseLite;->ValCoord(III)F

    move-result v9

    invoke-static {p1, v2, v5}, Lcom/jme3/math/FastNoiseLite;->ValCoord(III)F

    move-result v10

    invoke-static {p1, v6, v5}, Lcom/jme3/math/FastNoiseLite;->ValCoord(III)F

    move-result v5

    invoke-static {v8, v9, v10, v5, p2}, Lcom/jme3/math/FastNoiseLite;->CubicLerp(FFFFF)F

    move-result v5

    .line 4
    invoke-static {p1, v4, v1}, Lcom/jme3/math/FastNoiseLite;->ValCoord(III)F

    move-result v8

    invoke-static {p1, v0, v1}, Lcom/jme3/math/FastNoiseLite;->ValCoord(III)F

    move-result v9

    invoke-static {p1, v2, v1}, Lcom/jme3/math/FastNoiseLite;->ValCoord(III)F

    move-result v10

    invoke-static {p1, v6, v1}, Lcom/jme3/math/FastNoiseLite;->ValCoord(III)F

    move-result v1

    invoke-static {v8, v9, v10, v1, p2}, Lcom/jme3/math/FastNoiseLite;->CubicLerp(FFFFF)F

    move-result v1

    .line 5
    invoke-static {p1, v4, v3}, Lcom/jme3/math/FastNoiseLite;->ValCoord(III)F

    move-result v8

    invoke-static {p1, v0, v3}, Lcom/jme3/math/FastNoiseLite;->ValCoord(III)F

    move-result v9

    invoke-static {p1, v2, v3}, Lcom/jme3/math/FastNoiseLite;->ValCoord(III)F

    move-result v10

    invoke-static {p1, v6, v3}, Lcom/jme3/math/FastNoiseLite;->ValCoord(III)F

    move-result v3

    invoke-static {v8, v9, v10, v3, p2}, Lcom/jme3/math/FastNoiseLite;->CubicLerp(FFFFF)F

    move-result v3

    .line 6
    invoke-static {p1, v4, v7}, Lcom/jme3/math/FastNoiseLite;->ValCoord(III)F

    move-result v4

    invoke-static {p1, v0, v7}, Lcom/jme3/math/FastNoiseLite;->ValCoord(III)F

    move-result v0

    invoke-static {p1, v2, v7}, Lcom/jme3/math/FastNoiseLite;->ValCoord(III)F

    move-result v2

    invoke-static {p1, v6, v7}, Lcom/jme3/math/FastNoiseLite;->ValCoord(III)F

    move-result p1

    invoke-static {v4, v0, v2, p1, p2}, Lcom/jme3/math/FastNoiseLite;->CubicLerp(FFFFF)F

    move-result p1

    .line 7
    invoke-static {v5, v1, v3, p1, p3}, Lcom/jme3/math/FastNoiseLite;->CubicLerp(FFFFF)F

    move-result p1

    const p2, 0x3ee38e39

    mul-float/2addr p1, p2

    return p1
.end method

.method private SingleValueCubic(IFFF)F
    .locals 19

    move/from16 v0, p1

    .line 8
    invoke-static/range {p2 .. p2}, Lcom/jme3/math/FastNoiseLite;->FastFloor(F)I

    move-result v1

    .line 9
    invoke-static/range {p3 .. p3}, Lcom/jme3/math/FastNoiseLite;->FastFloor(F)I

    move-result v2

    .line 10
    invoke-static/range {p4 .. p4}, Lcom/jme3/math/FastNoiseLite;->FastFloor(F)I

    move-result v3

    int-to-float v4, v1

    sub-float v4, p2, v4

    int-to-float v5, v2

    sub-float v5, p3, v5

    int-to-float v6, v3

    sub-float v6, p4, v6

    const v7, 0x1dde90c9

    mul-int/2addr v1, v7

    const v8, 0x43c42e4d

    mul-int/2addr v2, v8

    const v9, 0x668b6e2f

    mul-int/2addr v3, v9

    sub-int v10, v1, v7

    sub-int v11, v2, v8

    sub-int v12, v3, v9

    add-int/2addr v7, v1

    add-int/2addr v8, v2

    add-int/2addr v9, v3

    const v13, 0x3bbd2192

    add-int/2addr v13, v1

    const v14, -0x7877a366

    add-int/2addr v14, v2

    const v15, -0x32e923a2

    add-int/2addr v15, v3

    move/from16 p2, v6

    .line 11
    invoke-static {v0, v10, v11, v12}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v6

    move/from16 p3, v15

    invoke-static {v0, v1, v11, v12}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v15

    move/from16 p4, v9

    invoke-static {v0, v7, v11, v12}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v9

    move/from16 v16, v3

    invoke-static {v0, v13, v11, v12}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v3

    invoke-static {v6, v15, v9, v3, v4}, Lcom/jme3/math/FastNoiseLite;->CubicLerp(FFFFF)F

    move-result v3

    .line 12
    invoke-static {v0, v10, v2, v12}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v6

    invoke-static {v0, v1, v2, v12}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v9

    invoke-static {v0, v7, v2, v12}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v15

    move/from16 v17, v11

    invoke-static {v0, v13, v2, v12}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v11

    invoke-static {v6, v9, v15, v11, v4}, Lcom/jme3/math/FastNoiseLite;->CubicLerp(FFFFF)F

    move-result v6

    .line 13
    invoke-static {v0, v10, v8, v12}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v9

    invoke-static {v0, v1, v8, v12}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v11

    invoke-static {v0, v7, v8, v12}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v15

    move/from16 v18, v2

    invoke-static {v0, v13, v8, v12}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v2

    invoke-static {v9, v11, v15, v2, v4}, Lcom/jme3/math/FastNoiseLite;->CubicLerp(FFFFF)F

    move-result v2

    .line 14
    invoke-static {v0, v10, v14, v12}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v9

    invoke-static {v0, v1, v14, v12}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v11

    invoke-static {v0, v7, v14, v12}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v15

    invoke-static {v0, v13, v14, v12}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v12

    invoke-static {v9, v11, v15, v12, v4}, Lcom/jme3/math/FastNoiseLite;->CubicLerp(FFFFF)F

    move-result v9

    .line 15
    invoke-static {v3, v6, v2, v9, v5}, Lcom/jme3/math/FastNoiseLite;->CubicLerp(FFFFF)F

    move-result v2

    move/from16 v3, v16

    move/from16 v6, v17

    .line 16
    invoke-static {v0, v10, v6, v3}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v9

    invoke-static {v0, v1, v6, v3}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v11

    invoke-static {v0, v7, v6, v3}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v12

    invoke-static {v0, v13, v6, v3}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v15

    invoke-static {v9, v11, v12, v15, v4}, Lcom/jme3/math/FastNoiseLite;->CubicLerp(FFFFF)F

    move-result v9

    move/from16 v11, v18

    .line 17
    invoke-static {v0, v10, v11, v3}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v12

    invoke-static {v0, v1, v11, v3}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v15

    move/from16 v16, v2

    invoke-static {v0, v7, v11, v3}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v2

    invoke-static {v0, v13, v11, v3}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v6

    invoke-static {v12, v15, v2, v6, v4}, Lcom/jme3/math/FastNoiseLite;->CubicLerp(FFFFF)F

    move-result v2

    .line 18
    invoke-static {v0, v10, v8, v3}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v6

    invoke-static {v0, v1, v8, v3}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v12

    invoke-static {v0, v7, v8, v3}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v15

    invoke-static {v0, v13, v8, v3}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v11

    invoke-static {v6, v12, v15, v11, v4}, Lcom/jme3/math/FastNoiseLite;->CubicLerp(FFFFF)F

    move-result v6

    .line 19
    invoke-static {v0, v10, v14, v3}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v11

    invoke-static {v0, v1, v14, v3}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v12

    invoke-static {v0, v7, v14, v3}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v15

    invoke-static {v0, v13, v14, v3}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v3

    invoke-static {v11, v12, v15, v3, v4}, Lcom/jme3/math/FastNoiseLite;->CubicLerp(FFFFF)F

    move-result v3

    .line 20
    invoke-static {v9, v2, v6, v3, v5}, Lcom/jme3/math/FastNoiseLite;->CubicLerp(FFFFF)F

    move-result v2

    move/from16 v6, p4

    move/from16 v3, v17

    .line 21
    invoke-static {v0, v10, v3, v6}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v9

    invoke-static {v0, v1, v3, v6}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v11

    invoke-static {v0, v7, v3, v6}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v12

    invoke-static {v0, v13, v3, v6}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v15

    invoke-static {v9, v11, v12, v15, v4}, Lcom/jme3/math/FastNoiseLite;->CubicLerp(FFFFF)F

    move-result v9

    move/from16 v11, v18

    .line 22
    invoke-static {v0, v10, v11, v6}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v12

    invoke-static {v0, v1, v11, v6}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v15

    move/from16 p4, v2

    invoke-static {v0, v7, v11, v6}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v2

    invoke-static {v0, v13, v11, v6}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v3

    invoke-static {v12, v15, v2, v3, v4}, Lcom/jme3/math/FastNoiseLite;->CubicLerp(FFFFF)F

    move-result v2

    .line 23
    invoke-static {v0, v10, v8, v6}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v3

    invoke-static {v0, v1, v8, v6}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v12

    invoke-static {v0, v7, v8, v6}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v15

    invoke-static {v0, v13, v8, v6}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v11

    invoke-static {v3, v12, v15, v11, v4}, Lcom/jme3/math/FastNoiseLite;->CubicLerp(FFFFF)F

    move-result v3

    .line 24
    invoke-static {v0, v10, v14, v6}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v11

    invoke-static {v0, v1, v14, v6}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v12

    invoke-static {v0, v7, v14, v6}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v15

    invoke-static {v0, v13, v14, v6}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v6

    invoke-static {v11, v12, v15, v6, v4}, Lcom/jme3/math/FastNoiseLite;->CubicLerp(FFFFF)F

    move-result v6

    .line 25
    invoke-static {v9, v2, v3, v6, v5}, Lcom/jme3/math/FastNoiseLite;->CubicLerp(FFFFF)F

    move-result v2

    move/from16 v6, p3

    move/from16 v3, v17

    .line 26
    invoke-static {v0, v10, v3, v6}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v9

    invoke-static {v0, v1, v3, v6}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v11

    invoke-static {v0, v7, v3, v6}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v12

    invoke-static {v0, v13, v3, v6}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v3

    invoke-static {v9, v11, v12, v3, v4}, Lcom/jme3/math/FastNoiseLite;->CubicLerp(FFFFF)F

    move-result v3

    move/from16 v9, v18

    .line 27
    invoke-static {v0, v10, v9, v6}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v11

    invoke-static {v0, v1, v9, v6}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v12

    invoke-static {v0, v7, v9, v6}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v15

    invoke-static {v0, v13, v9, v6}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v9

    invoke-static {v11, v12, v15, v9, v4}, Lcom/jme3/math/FastNoiseLite;->CubicLerp(FFFFF)F

    move-result v9

    .line 28
    invoke-static {v0, v10, v8, v6}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v11

    invoke-static {v0, v1, v8, v6}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v12

    invoke-static {v0, v7, v8, v6}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v15

    invoke-static {v0, v13, v8, v6}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v8

    invoke-static {v11, v12, v15, v8, v4}, Lcom/jme3/math/FastNoiseLite;->CubicLerp(FFFFF)F

    move-result v8

    .line 29
    invoke-static {v0, v10, v14, v6}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v10

    invoke-static {v0, v1, v14, v6}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v1

    invoke-static {v0, v7, v14, v6}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v7

    invoke-static {v0, v13, v14, v6}, Lcom/jme3/math/FastNoiseLite;->ValCoord(IIII)F

    move-result v0

    invoke-static {v10, v1, v7, v0, v4}, Lcom/jme3/math/FastNoiseLite;->CubicLerp(FFFFF)F

    move-result v0

    .line 30
    invoke-static {v3, v9, v8, v0, v5}, Lcom/jme3/math/FastNoiseLite;->CubicLerp(FFFFF)F

    move-result v0

    move/from16 v1, p2

    move/from16 v4, p4

    move/from16 v3, v16

    .line 31
    invoke-static {v3, v4, v2, v0, v1}, Lcom/jme3/math/FastNoiseLite;->CubicLerp(FFFFF)F

    move-result v0

    const v1, 0x3e97b426

    mul-float/2addr v0, v1

    return v0
.end method

.method private UpdateTransformType3D()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/math/FastNoiseLite;->mRotationType3D:Lcom/jme3/math/FastNoiseLite$RotationType3D;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/jme3/math/FastNoiseLite;->mNoiseType:Lcom/jme3/math/FastNoiseLite$NoiseType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/jme3/math/FastNoiseLite$TransformType3D;->None:Lcom/jme3/math/FastNoiseLite$TransformType3D;

    iput-object v0, p0, Lcom/jme3/math/FastNoiseLite;->mTransformType3D:Lcom/jme3/math/FastNoiseLite$TransformType3D;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/jme3/math/FastNoiseLite$TransformType3D;->DefaultOpenSimplex2:Lcom/jme3/math/FastNoiseLite$TransformType3D;

    iput-object v0, p0, Lcom/jme3/math/FastNoiseLite;->mTransformType3D:Lcom/jme3/math/FastNoiseLite$TransformType3D;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/jme3/math/FastNoiseLite$TransformType3D;->ImproveXZPlanes:Lcom/jme3/math/FastNoiseLite$TransformType3D;

    iput-object v0, p0, Lcom/jme3/math/FastNoiseLite;->mTransformType3D:Lcom/jme3/math/FastNoiseLite$TransformType3D;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/jme3/math/FastNoiseLite$TransformType3D;->ImproveXYPlanes:Lcom/jme3/math/FastNoiseLite$TransformType3D;

    iput-object v0, p0, Lcom/jme3/math/FastNoiseLite;->mTransformType3D:Lcom/jme3/math/FastNoiseLite$TransformType3D;

    :goto_0
    return-void
.end method

.method private UpdateWarpTransformType3D()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/math/FastNoiseLite;->mRotationType3D:Lcom/jme3/math/FastNoiseLite$RotationType3D;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/jme3/math/FastNoiseLite;->mDomainWarpType:Lcom/jme3/math/FastNoiseLite$DomainWarpType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/jme3/math/FastNoiseLite$TransformType3D;->None:Lcom/jme3/math/FastNoiseLite$TransformType3D;

    iput-object v0, p0, Lcom/jme3/math/FastNoiseLite;->mWarpTransformType3D:Lcom/jme3/math/FastNoiseLite$TransformType3D;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/jme3/math/FastNoiseLite$TransformType3D;->DefaultOpenSimplex2:Lcom/jme3/math/FastNoiseLite$TransformType3D;

    iput-object v0, p0, Lcom/jme3/math/FastNoiseLite;->mWarpTransformType3D:Lcom/jme3/math/FastNoiseLite$TransformType3D;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/jme3/math/FastNoiseLite$TransformType3D;->ImproveXZPlanes:Lcom/jme3/math/FastNoiseLite$TransformType3D;

    iput-object v0, p0, Lcom/jme3/math/FastNoiseLite;->mWarpTransformType3D:Lcom/jme3/math/FastNoiseLite$TransformType3D;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/jme3/math/FastNoiseLite$TransformType3D;->ImproveXYPlanes:Lcom/jme3/math/FastNoiseLite$TransformType3D;

    iput-object v0, p0, Lcom/jme3/math/FastNoiseLite;->mWarpTransformType3D:Lcom/jme3/math/FastNoiseLite$TransformType3D;

    :goto_0
    return-void
.end method

.method private static ValCoord(III)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/jme3/math/FastNoiseLite;->Hash(III)I

    move-result p0

    mul-int/2addr p0, p0

    shl-int/lit8 p1, p0, 0x13

    xor-int/2addr p0, p1

    int-to-float p0, p0

    const/high16 p1, 0x30000000

    mul-float/2addr p0, p1

    return p0
.end method

.method private static ValCoord(IIII)F
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/jme3/math/FastNoiseLite;->Hash(IIII)I

    move-result p0

    mul-int/2addr p0, p0

    shl-int/lit8 p1, p0, 0x13

    xor-int/2addr p0, p1

    int-to-float p0, p0

    const/high16 p1, 0x30000000

    mul-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public DomainWarp(Lcom/jme3/math/Vector2f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jme3/math/FastNoiseLite;->mFractalType:Lcom/jme3/math/FastNoiseLite$FractalType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/jme3/math/FastNoiseLite;->DomainWarpSingle(Lcom/jme3/math/Vector2f;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/jme3/math/FastNoiseLite;->DomainWarpFractalIndependent(Lcom/jme3/math/Vector2f;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lcom/jme3/math/FastNoiseLite;->DomainWarpFractalProgressive(Lcom/jme3/math/Vector2f;)V

    :goto_0
    return-void
.end method

.method public DomainWarp(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/jme3/math/FastNoiseLite;->mFractalType:Lcom/jme3/math/FastNoiseLite$FractalType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 6
    invoke-direct {p0, p1}, Lcom/jme3/math/FastNoiseLite;->DomainWarpSingle(Lcom/jme3/math/Vector3f;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lcom/jme3/math/FastNoiseLite;->DomainWarpFractalIndependent(Lcom/jme3/math/Vector3f;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0, p1}, Lcom/jme3/math/FastNoiseLite;->DomainWarpFractalProgressive(Lcom/jme3/math/Vector3f;)V

    :goto_0
    return-void
.end method

.method public GetNoise(FF)F
    .locals 3

    .line 1
    iget v0, p0, Lcom/jme3/math/FastNoiseLite;->mFrequency:F

    mul-float/2addr p1, v0

    mul-float/2addr p2, v0

    .line 2
    iget-object v0, p0, Lcom/jme3/math/FastNoiseLite;->mNoiseType:Lcom/jme3/math/FastNoiseLite$NoiseType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-float v0, p1, p2

    const v2, 0x3ebb67ae

    mul-float/2addr v0, v2

    add-float/2addr p1, v0

    add-float/2addr p2, v0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/jme3/math/FastNoiseLite;->mFractalType:Lcom/jme3/math/FastNoiseLite$FractalType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 4
    iget v0, p0, Lcom/jme3/math/FastNoiseLite;->mSeed:I

    invoke-direct {p0, v0, p1, p2}, Lcom/jme3/math/FastNoiseLite;->GenNoiseSingle(IFF)F

    move-result p1

    return p1

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/jme3/math/FastNoiseLite;->GenFractalPingPong(FF)F

    move-result p1

    return p1

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/jme3/math/FastNoiseLite;->GenFractalRidged(FF)F

    move-result p1

    return p1

    .line 7
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/jme3/math/FastNoiseLite;->GenFractalFBm(FF)F

    move-result p1

    return p1
.end method

.method public GetNoise(FFF)F
    .locals 7

    .line 8
    iget v0, p0, Lcom/jme3/math/FastNoiseLite;->mFrequency:F

    mul-float/2addr p1, v0

    mul-float/2addr p2, v0

    mul-float/2addr p3, v0

    .line 9
    iget-object v0, p0, Lcom/jme3/math/FastNoiseLite;->mTransformType3D:Lcom/jme3/math/FastNoiseLite$TransformType3D;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const v1, -0x41a79a74

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const v5, 0x3f13cd3a

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    add-float v0, p1, p2

    add-float/2addr v0, p3

    const v1, 0x3f2aaaab

    mul-float/2addr v0, v1

    sub-float p1, v0, p1

    sub-float p2, v0, p2

    sub-float p3, v0, p3

    goto :goto_0

    :cond_1
    add-float v0, p1, p3

    mul-float/2addr v1, v0

    mul-float/2addr p2, v5

    sub-float/2addr v1, p2

    add-float/2addr p1, v1

    add-float/2addr p3, v1

    mul-float/2addr v0, v5

    add-float/2addr p2, v0

    goto :goto_0

    :cond_2
    add-float v0, p1, p2

    mul-float/2addr v1, v0

    mul-float/2addr p3, v5

    sub-float v6, v1, p3

    add-float/2addr p1, v6

    add-float/2addr p2, v1

    sub-float/2addr p2, p3

    mul-float/2addr v0, v5

    add-float/2addr p3, v0

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/jme3/math/FastNoiseLite;->mFractalType:Lcom/jme3/math/FastNoiseLite$FractalType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    .line 11
    iget v0, p0, Lcom/jme3/math/FastNoiseLite;->mSeed:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/jme3/math/FastNoiseLite;->GenNoiseSingle(IFFF)F

    move-result p1

    return p1

    .line 12
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/math/FastNoiseLite;->GenFractalPingPong(FFF)F

    move-result p1

    return p1

    .line 13
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/math/FastNoiseLite;->GenFractalRidged(FFF)F

    move-result p1

    return p1

    .line 14
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/math/FastNoiseLite;->GenFractalFBm(FFF)F

    move-result p1

    return p1
.end method

.method public SetCellularDistanceFunction(Lcom/jme3/math/FastNoiseLite$CellularDistanceFunction;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/math/FastNoiseLite;->mCellularDistanceFunction:Lcom/jme3/math/FastNoiseLite$CellularDistanceFunction;

    return-void
.end method

.method public SetCellularJitter(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/math/FastNoiseLite;->mCellularJitterModifier:F

    return-void
.end method

.method public SetCellularReturnType(Lcom/jme3/math/FastNoiseLite$CellularReturnType;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/math/FastNoiseLite;->mCellularReturnType:Lcom/jme3/math/FastNoiseLite$CellularReturnType;

    return-void
.end method

.method public SetDomainWarpAmp(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/math/FastNoiseLite;->mDomainWarpAmp:F

    return-void
.end method

.method public SetDomainWarpType(Lcom/jme3/math/FastNoiseLite$DomainWarpType;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/math/FastNoiseLite;->mDomainWarpType:Lcom/jme3/math/FastNoiseLite$DomainWarpType;

    invoke-direct {p0}, Lcom/jme3/math/FastNoiseLite;->UpdateWarpTransformType3D()V

    return-void
.end method

.method public SetFractalGain(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/math/FastNoiseLite;->mGain:F

    invoke-direct {p0}, Lcom/jme3/math/FastNoiseLite;->CalculateFractalBounding()V

    return-void
.end method

.method public SetFractalLacunarity(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/math/FastNoiseLite;->mLacunarity:F

    return-void
.end method

.method public SetFractalOctaves(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/math/FastNoiseLite;->mOctaves:I

    invoke-direct {p0}, Lcom/jme3/math/FastNoiseLite;->CalculateFractalBounding()V

    return-void
.end method

.method public SetFractalPingPongStrength(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/math/FastNoiseLite;->mPingPongStrength:F

    return-void
.end method

.method public SetFractalType(Lcom/jme3/math/FastNoiseLite$FractalType;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/math/FastNoiseLite;->mFractalType:Lcom/jme3/math/FastNoiseLite$FractalType;

    return-void
.end method

.method public SetFractalWeightedStrength(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/math/FastNoiseLite;->mWeightedStrength:F

    return-void
.end method

.method public SetFrequency(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/math/FastNoiseLite;->mFrequency:F

    return-void
.end method

.method public SetNoiseType(Lcom/jme3/math/FastNoiseLite$NoiseType;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/math/FastNoiseLite;->mNoiseType:Lcom/jme3/math/FastNoiseLite$NoiseType;

    invoke-direct {p0}, Lcom/jme3/math/FastNoiseLite;->UpdateTransformType3D()V

    return-void
.end method

.method public SetRotationType3D(Lcom/jme3/math/FastNoiseLite$RotationType3D;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/math/FastNoiseLite;->mRotationType3D:Lcom/jme3/math/FastNoiseLite$RotationType3D;

    invoke-direct {p0}, Lcom/jme3/math/FastNoiseLite;->UpdateTransformType3D()V

    invoke-direct {p0}, Lcom/jme3/math/FastNoiseLite;->UpdateWarpTransformType3D()V

    return-void
.end method

.method public SetSeed(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/math/FastNoiseLite;->mSeed:I

    return-void
.end method

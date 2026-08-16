.class public Lcom/ardor3d/scenegraph/shape/Teapot;
.super Lcom/ardor3d/scenegraph/Mesh;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "teapot"

    invoke-direct {p0, v0}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/shape/Teapot;->resetData()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/shape/Teapot;->resetData()V

    return-void
.end method

.method private setIndexData()V
    .locals 2

    const/16 v0, 0xba0

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createShortBuffer([S)Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ardor3d/scenegraph/MeshData;->setIndexBuffer(Ljava/nio/ShortBuffer;)V

    return-void

    nop

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
        0x4s
        0x5s
        0x1s
        0x4s
        0x1s
        0x0s
        0x6s
        0x7s
        0x5s
        0x6s
        0x5s
        0x4s
        0x8s
        0x9s
        0x7s
        0x8s
        0x7s
        0x6s
        0xas
        0x0s
        0x3s
        0xas
        0x3s
        0xbs
        0xcs
        0x4s
        0x0s
        0xcs
        0x0s
        0xas
        0xds
        0x6s
        0x4s
        0xds
        0x4s
        0xcs
        0xes
        0x8s
        0x6s
        0xes
        0x6s
        0xds
        0xfs
        0xas
        0xbs
        0xfs
        0xbs
        0x10s
        0x11s
        0xcs
        0xas
        0x11s
        0xas
        0xfs
        0x12s
        0xds
        0xcs
        0x12s
        0xcs
        0x11s
        0x13s
        0xes
        0xds
        0x13s
        0xds
        0x12s
        0x14s
        0xfs
        0x10s
        0x14s
        0x10s
        0x15s
        0x16s
        0x11s
        0xfs
        0x16s
        0xfs
        0x14s
        0x17s
        0x12s
        0x11s
        0x17s
        0x11s
        0x16s
        0x18s
        0x13s
        0x12s
        0x18s
        0x12s
        0x17s
        0x19s
        0x1as
        0x1bs
        0x19s
        0x1bs
        0x1cs
        0x1ds
        0x1es
        0x1as
        0x1ds
        0x1as
        0x19s
        0x1fs
        0x20s
        0x1es
        0x1fs
        0x1es
        0x1ds
        0x21s
        0x22s
        0x20s
        0x21s
        0x20s
        0x1fs
        0x23s
        0x19s
        0x1cs
        0x23s
        0x1cs
        0x24s
        0x25s
        0x1ds
        0x19s
        0x25s
        0x19s
        0x23s
        0x26s
        0x1fs
        0x1ds
        0x26s
        0x1ds
        0x25s
        0x27s
        0x21s
        0x1fs
        0x27s
        0x1fs
        0x26s
        0x28s
        0x23s
        0x24s
        0x28s
        0x24s
        0x29s
        0x2as
        0x25s
        0x23s
        0x2as
        0x23s
        0x28s
        0x2bs
        0x26s
        0x25s
        0x2bs
        0x25s
        0x2as
        0x2cs
        0x27s
        0x26s
        0x2cs
        0x26s
        0x2bs
        0x2ds
        0x28s
        0x29s
        0x2ds
        0x29s
        0x2es
        0x2fs
        0x2as
        0x28s
        0x2fs
        0x28s
        0x2ds
        0x30s
        0x2bs
        0x2as
        0x30s
        0x2as
        0x2fs
        0x31s
        0x2cs
        0x2bs
        0x31s
        0x2bs
        0x30s
        0x32s
        0x33s
        0x34s
        0x32s
        0x34s
        0x35s
        0x36s
        0x37s
        0x33s
        0x36s
        0x33s
        0x32s
        0x38s
        0x39s
        0x37s
        0x38s
        0x37s
        0x36s
        0x3as
        0x3bs
        0x39s
        0x3as
        0x39s
        0x38s
        0x3cs
        0x32s
        0x35s
        0x3cs
        0x35s
        0x3ds
        0x3es
        0x36s
        0x32s
        0x3es
        0x32s
        0x3cs
        0x3fs
        0x38s
        0x36s
        0x3fs
        0x36s
        0x3es
        0x40s
        0x3as
        0x38s
        0x40s
        0x38s
        0x3fs
        0x41s
        0x3cs
        0x3ds
        0x41s
        0x3ds
        0x42s
        0x43s
        0x3es
        0x3cs
        0x43s
        0x3cs
        0x41s
        0x44s
        0x3fs
        0x3es
        0x44s
        0x3es
        0x43s
        0x45s
        0x40s
        0x3fs
        0x45s
        0x3fs
        0x44s
        0x46s
        0x41s
        0x42s
        0x46s
        0x42s
        0x47s
        0x48s
        0x43s
        0x41s
        0x48s
        0x41s
        0x46s
        0x49s
        0x44s
        0x43s
        0x49s
        0x43s
        0x48s
        0x4as
        0x45s
        0x44s
        0x4as
        0x44s
        0x49s
        0x4bs
        0x4cs
        0x4ds
        0x4bs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x4cs
        0x4fs
        0x4cs
        0x4bs
        0x51s
        0x52s
        0x50s
        0x51s
        0x50s
        0x4fs
        0x53s
        0x54s
        0x52s
        0x53s
        0x52s
        0x51s
        0x55s
        0x4bs
        0x4es
        0x55s
        0x4es
        0x56s
        0x57s
        0x4fs
        0x4bs
        0x57s
        0x4bs
        0x55s
        0x58s
        0x51s
        0x4fs
        0x58s
        0x4fs
        0x57s
        0x59s
        0x53s
        0x51s
        0x59s
        0x51s
        0x58s
        0x5as
        0x55s
        0x56s
        0x5as
        0x56s
        0x5bs
        0x5cs
        0x57s
        0x55s
        0x5cs
        0x55s
        0x5as
        0x5ds
        0x58s
        0x57s
        0x5ds
        0x57s
        0x5cs
        0x5es
        0x59s
        0x58s
        0x5es
        0x58s
        0x5ds
        0x5fs
        0x5as
        0x5bs
        0x5fs
        0x5bs
        0x60s
        0x61s
        0x5cs
        0x5as
        0x61s
        0x5as
        0x5fs
        0x62s
        0x5ds
        0x5cs
        0x62s
        0x5cs
        0x61s
        0x63s
        0x5es
        0x5ds
        0x63s
        0x5ds
        0x62s
        0x64s
        0x65s
        0x66s
        0x64s
        0x66s
        0x67s
        0x68s
        0x69s
        0x65s
        0x68s
        0x65s
        0x64s
        0x6as
        0x6bs
        0x69s
        0x6as
        0x69s
        0x68s
        0x6cs
        0x6ds
        0x6bs
        0x6cs
        0x6bs
        0x6as
        0x6es
        0x64s
        0x67s
        0x6es
        0x67s
        0x6fs
        0x70s
        0x68s
        0x64s
        0x70s
        0x64s
        0x6es
        0x71s
        0x6as
        0x68s
        0x71s
        0x68s
        0x70s
        0x72s
        0x6cs
        0x6as
        0x72s
        0x6as
        0x71s
        0x73s
        0x6es
        0x6fs
        0x73s
        0x6fs
        0x74s
        0x75s
        0x70s
        0x6es
        0x75s
        0x6es
        0x73s
        0x76s
        0x71s
        0x70s
        0x76s
        0x70s
        0x75s
        0x77s
        0x72s
        0x71s
        0x77s
        0x71s
        0x76s
        0x78s
        0x73s
        0x74s
        0x78s
        0x74s
        0x79s
        0x7as
        0x75s
        0x73s
        0x7as
        0x73s
        0x78s
        0x7bs
        0x76s
        0x75s
        0x7bs
        0x75s
        0x7as
        0x7cs
        0x77s
        0x76s
        0x7cs
        0x76s
        0x7bs
        0x7ds
        0x7es
        0x7fs
        0x7ds
        0x7fs
        0x80s
        0x81s
        0x82s
        0x7es
        0x81s
        0x7es
        0x7ds
        0x83s
        0x84s
        0x82s
        0x83s
        0x82s
        0x81s
        0x85s
        0x86s
        0x84s
        0x85s
        0x84s
        0x83s
        0x87s
        0x7ds
        0x80s
        0x87s
        0x80s
        0x88s
        0x89s
        0x81s
        0x7ds
        0x89s
        0x7ds
        0x87s
        0x8as
        0x83s
        0x81s
        0x8as
        0x81s
        0x89s
        0x8bs
        0x85s
        0x83s
        0x8bs
        0x83s
        0x8as
        0x8cs
        0x87s
        0x88s
        0x8cs
        0x88s
        0x8ds
        0x8es
        0x89s
        0x87s
        0x8es
        0x87s
        0x8cs
        0x8fs
        0x8as
        0x89s
        0x8fs
        0x89s
        0x8es
        0x90s
        0x8bs
        0x8as
        0x90s
        0x8as
        0x8fs
        0x91s
        0x8cs
        0x8ds
        0x91s
        0x8ds
        0x92s
        0x93s
        0x8es
        0x8cs
        0x93s
        0x8cs
        0x91s
        0x94s
        0x8fs
        0x8es
        0x94s
        0x8es
        0x93s
        0x95s
        0x90s
        0x8fs
        0x95s
        0x8fs
        0x94s
        0x96s
        0x97s
        0x98s
        0x96s
        0x98s
        0x99s
        0x9as
        0x9bs
        0x97s
        0x9as
        0x97s
        0x96s
        0x9cs
        0x9ds
        0x9bs
        0x9cs
        0x9bs
        0x9as
        0x9es
        0x9fs
        0x9ds
        0x9es
        0x9ds
        0x9cs
        0xa0s
        0x96s
        0x99s
        0xa0s
        0x99s
        0xa1s
        0xa2s
        0x9as
        0x96s
        0xa2s
        0x96s
        0xa0s
        0xa3s
        0x9cs
        0x9as
        0xa3s
        0x9as
        0xa2s
        0xa4s
        0x9es
        0x9cs
        0xa4s
        0x9cs
        0xa3s
        0xa5s
        0xa0s
        0xa1s
        0xa5s
        0xa1s
        0xa6s
        0xa7s
        0xa2s
        0xa0s
        0xa7s
        0xa0s
        0xa5s
        0xa8s
        0xa3s
        0xa2s
        0xa8s
        0xa2s
        0xa7s
        0xa9s
        0xa4s
        0xa3s
        0xa9s
        0xa3s
        0xa8s
        0xaas
        0xa5s
        0xa6s
        0xaas
        0xa6s
        0xabs
        0xacs
        0xa7s
        0xa5s
        0xacs
        0xa5s
        0xaas
        0xads
        0xa8s
        0xa7s
        0xads
        0xa7s
        0xacs
        0xaes
        0xa9s
        0xa8s
        0xaes
        0xa8s
        0xads
        0xafs
        0xb0s
        0xb1s
        0xafs
        0xb1s
        0xb2s
        0xb3s
        0xb4s
        0xb0s
        0xb3s
        0xb0s
        0xafs
        0xb5s
        0xb6s
        0xb4s
        0xb5s
        0xb4s
        0xb3s
        0xb7s
        0xb8s
        0xb6s
        0xb7s
        0xb6s
        0xb5s
        0xb9s
        0xafs
        0xb2s
        0xb9s
        0xb2s
        0xbas
        0xbbs
        0xb3s
        0xafs
        0xbbs
        0xafs
        0xb9s
        0xbcs
        0xb5s
        0xb3s
        0xbcs
        0xb3s
        0xbbs
        0xbds
        0xb7s
        0xb5s
        0xbds
        0xb5s
        0xbcs
        0xbes
        0xb9s
        0xbas
        0xbes
        0xbas
        0xbfs
        0xc0s
        0xbbs
        0xb9s
        0xc0s
        0xb9s
        0xbes
        0xc1s
        0xbcs
        0xbbs
        0xc1s
        0xbbs
        0xc0s
        0xc2s
        0xbds
        0xbcs
        0xc2s
        0xbcs
        0xc1s
        0xc3s
        0xbes
        0xbfs
        0xc3s
        0xbfs
        0xc4s
        0xc5s
        0xc0s
        0xbes
        0xc5s
        0xbes
        0xc3s
        0xc6s
        0xc1s
        0xc0s
        0xc6s
        0xc0s
        0xc5s
        0xc7s
        0xc2s
        0xc1s
        0xc7s
        0xc1s
        0xc6s
        0xc8s
        0xc9s
        0xcas
        0xc8s
        0xcas
        0xcbs
        0xccs
        0xcds
        0xc9s
        0xccs
        0xc9s
        0xc8s
        0xces
        0xcfs
        0xcds
        0xces
        0xcds
        0xccs
        0xd0s
        0xd1s
        0xcfs
        0xd0s
        0xcfs
        0xces
        0xd2s
        0xc8s
        0xcbs
        0xd2s
        0xcbs
        0xd3s
        0xd4s
        0xccs
        0xc8s
        0xd4s
        0xc8s
        0xd2s
        0xd5s
        0xces
        0xccs
        0xd5s
        0xccs
        0xd4s
        0xd6s
        0xd0s
        0xces
        0xd6s
        0xces
        0xd5s
        0xd7s
        0xd2s
        0xd3s
        0xd7s
        0xd3s
        0xd8s
        0xd9s
        0xd4s
        0xd2s
        0xd9s
        0xd2s
        0xd7s
        0xdas
        0xd5s
        0xd4s
        0xdas
        0xd4s
        0xd9s
        0xdbs
        0xd6s
        0xd5s
        0xdbs
        0xd5s
        0xdas
        0xdcs
        0xd7s
        0xd8s
        0xdcs
        0xd8s
        0xdds
        0xdes
        0xd9s
        0xd7s
        0xdes
        0xd7s
        0xdcs
        0xdfs
        0xdas
        0xd9s
        0xdfs
        0xd9s
        0xdes
        0xe0s
        0xdbs
        0xdas
        0xe0s
        0xdas
        0xdfs
        0xe1s
        0xe2s
        0xe3s
        0xe1s
        0xe3s
        0xe4s
        0xe5s
        0xe6s
        0xe2s
        0xe5s
        0xe2s
        0xe1s
        0xe7s
        0xe8s
        0xe6s
        0xe7s
        0xe6s
        0xe5s
        0xe9s
        0xeas
        0xe8s
        0xe9s
        0xe8s
        0xe7s
        0xebs
        0xe1s
        0xe4s
        0xebs
        0xe4s
        0xecs
        0xeds
        0xe5s
        0xe1s
        0xeds
        0xe1s
        0xebs
        0xees
        0xe7s
        0xe5s
        0xees
        0xe5s
        0xeds
        0xefs
        0xe9s
        0xe7s
        0xefs
        0xe7s
        0xees
        0xf0s
        0xebs
        0xecs
        0xf0s
        0xecs
        0xf1s
        0xf2s
        0xeds
        0xebs
        0xf2s
        0xebs
        0xf0s
        0xf3s
        0xees
        0xeds
        0xf3s
        0xeds
        0xf2s
        0xf4s
        0xefs
        0xees
        0xf4s
        0xees
        0xf3s
        0xf5s
        0xf0s
        0xf1s
        0xf5s
        0xf1s
        0xf6s
        0xf7s
        0xf2s
        0xf0s
        0xf7s
        0xf0s
        0xf5s
        0xf8s
        0xf3s
        0xf2s
        0xf8s
        0xf2s
        0xf7s
        0xf9s
        0xf4s
        0xf3s
        0xf9s
        0xf3s
        0xf8s
        0xfas
        0xfbs
        0xfcs
        0xfas
        0xfcs
        0xfds
        0xfes
        0xffs
        0xfbs
        0xfes
        0xfbs
        0xfas
        0x100s
        0x101s
        0xffs
        0x100s
        0xffs
        0xfes
        0x102s
        0x103s
        0x101s
        0x102s
        0x101s
        0x100s
        0x104s
        0xfas
        0xfds
        0x104s
        0xfds
        0x105s
        0x106s
        0xfes
        0xfas
        0x106s
        0xfas
        0x104s
        0x107s
        0x100s
        0xfes
        0x107s
        0xfes
        0x106s
        0x108s
        0x102s
        0x100s
        0x108s
        0x100s
        0x107s
        0x109s
        0x104s
        0x105s
        0x109s
        0x105s
        0x10as
        0x10bs
        0x106s
        0x104s
        0x10bs
        0x104s
        0x109s
        0x10cs
        0x107s
        0x106s
        0x10cs
        0x106s
        0x10bs
        0x10ds
        0x108s
        0x107s
        0x10ds
        0x107s
        0x10cs
        0x10es
        0x109s
        0x10as
        0x10es
        0x10as
        0x10fs
        0x110s
        0x10bs
        0x109s
        0x110s
        0x109s
        0x10es
        0x111s
        0x10cs
        0x10bs
        0x111s
        0x10bs
        0x110s
        0x112s
        0x10ds
        0x10cs
        0x112s
        0x10cs
        0x111s
        0x113s
        0x114s
        0x115s
        0x113s
        0x115s
        0x116s
        0x117s
        0x118s
        0x114s
        0x117s
        0x114s
        0x113s
        0x119s
        0x11as
        0x118s
        0x119s
        0x118s
        0x117s
        0x11bs
        0x11cs
        0x11as
        0x11bs
        0x11as
        0x119s
        0x11ds
        0x113s
        0x116s
        0x11ds
        0x116s
        0x11es
        0x11fs
        0x117s
        0x113s
        0x11fs
        0x113s
        0x11ds
        0x120s
        0x119s
        0x117s
        0x120s
        0x117s
        0x11fs
        0x121s
        0x11bs
        0x119s
        0x121s
        0x119s
        0x120s
        0x122s
        0x11ds
        0x11es
        0x122s
        0x11es
        0x123s
        0x124s
        0x11fs
        0x11ds
        0x124s
        0x11ds
        0x122s
        0x125s
        0x120s
        0x11fs
        0x125s
        0x11fs
        0x124s
        0x126s
        0x121s
        0x120s
        0x126s
        0x120s
        0x125s
        0x127s
        0x122s
        0x123s
        0x127s
        0x123s
        0x128s
        0x129s
        0x124s
        0x122s
        0x129s
        0x122s
        0x127s
        0x12as
        0x125s
        0x124s
        0x12as
        0x124s
        0x129s
        0x12bs
        0x126s
        0x125s
        0x12bs
        0x125s
        0x12as
        0x12cs
        0x12ds
        0x12es
        0x12cs
        0x12es
        0x12fs
        0x130s
        0x131s
        0x12ds
        0x130s
        0x12ds
        0x12cs
        0x132s
        0x133s
        0x131s
        0x132s
        0x131s
        0x130s
        0x134s
        0x135s
        0x133s
        0x134s
        0x133s
        0x132s
        0x136s
        0x12cs
        0x12fs
        0x136s
        0x12fs
        0x137s
        0x138s
        0x130s
        0x12cs
        0x138s
        0x12cs
        0x136s
        0x139s
        0x132s
        0x130s
        0x139s
        0x130s
        0x138s
        0x13as
        0x136s
        0x137s
        0x13as
        0x137s
        0x13bs
        0x13cs
        0x138s
        0x136s
        0x13cs
        0x136s
        0x13as
        0x13ds
        0x139s
        0x138s
        0x13ds
        0x138s
        0x13cs
        0x13es
        0x13as
        0x13bs
        0x13es
        0x13bs
        0x13fs
        0x140s
        0x13cs
        0x13as
        0x140s
        0x13as
        0x13es
        0x141s
        0x13ds
        0x13cs
        0x141s
        0x13cs
        0x140s
        0x142s
        0x143s
        0x144s
        0x142s
        0x144s
        0x145s
        0x146s
        0x147s
        0x143s
        0x146s
        0x143s
        0x142s
        0x148s
        0x149s
        0x147s
        0x148s
        0x147s
        0x146s
        0x14as
        0x142s
        0x145s
        0x14as
        0x145s
        0x14bs
        0x14cs
        0x146s
        0x142s
        0x14cs
        0x142s
        0x14as
        0x14ds
        0x148s
        0x146s
        0x14ds
        0x146s
        0x14cs
        0x14es
        0x14as
        0x14bs
        0x14es
        0x14bs
        0x14fs
        0x150s
        0x14cs
        0x14as
        0x150s
        0x14as
        0x14es
        0x151s
        0x14ds
        0x14cs
        0x151s
        0x14cs
        0x150s
        0x152s
        0x14es
        0x14fs
        0x152s
        0x14fs
        0x153s
        0x154s
        0x150s
        0x14es
        0x154s
        0x14es
        0x152s
        0x155s
        0x151s
        0x150s
        0x155s
        0x150s
        0x154s
        0x156s
        0x157s
        0x158s
        0x156s
        0x158s
        0x159s
        0x15as
        0x15bs
        0x157s
        0x15as
        0x157s
        0x156s
        0x15cs
        0x15ds
        0x15bs
        0x15cs
        0x15bs
        0x15as
        0x15es
        0x156s
        0x159s
        0x15es
        0x159s
        0x15fs
        0x160s
        0x15as
        0x156s
        0x160s
        0x156s
        0x15es
        0x161s
        0x15cs
        0x15as
        0x161s
        0x15as
        0x160s
        0x162s
        0x15es
        0x15fs
        0x162s
        0x15fs
        0x163s
        0x164s
        0x160s
        0x15es
        0x164s
        0x15es
        0x162s
        0x165s
        0x161s
        0x160s
        0x165s
        0x160s
        0x164s
        0x166s
        0x162s
        0x163s
        0x166s
        0x163s
        0x167s
        0x168s
        0x164s
        0x162s
        0x168s
        0x162s
        0x166s
        0x169s
        0x165s
        0x164s
        0x169s
        0x164s
        0x168s
        0x16as
        0x16bs
        0x16cs
        0x16as
        0x16cs
        0x16ds
        0x16es
        0x16fs
        0x16bs
        0x16es
        0x16bs
        0x16as
        0x170s
        0x171s
        0x16fs
        0x170s
        0x16fs
        0x16es
        0x172s
        0x16as
        0x16ds
        0x172s
        0x16ds
        0x173s
        0x174s
        0x16es
        0x16as
        0x174s
        0x16as
        0x172s
        0x175s
        0x170s
        0x16es
        0x175s
        0x16es
        0x174s
        0x176s
        0x172s
        0x173s
        0x176s
        0x173s
        0x177s
        0x178s
        0x174s
        0x172s
        0x178s
        0x172s
        0x176s
        0x135s
        0x175s
        0x174s
        0x135s
        0x174s
        0x178s
        0x179s
        0x176s
        0x177s
        0x179s
        0x177s
        0x17as
        0x17bs
        0x178s
        0x176s
        0x17bs
        0x176s
        0x179s
        0x17cs
        0x135s
        0x178s
        0x17cs
        0x178s
        0x17bs
        0x17ds
        0x17es
        0x17fs
        0x17ds
        0x17fs
        0x180s
        0x181s
        0x182s
        0x17es
        0x181s
        0x17es
        0x17ds
        0x183s
        0x184s
        0x182s
        0x183s
        0x182s
        0x181s
        0x185s
        0x186s
        0x184s
        0x185s
        0x184s
        0x183s
        0x187s
        0x17ds
        0x180s
        0x187s
        0x180s
        0x188s
        0x189s
        0x181s
        0x17ds
        0x189s
        0x17ds
        0x187s
        0x18as
        0x183s
        0x181s
        0x18as
        0x181s
        0x189s
        0x18bs
        0x185s
        0x183s
        0x18bs
        0x183s
        0x18as
        0x18cs
        0x187s
        0x188s
        0x18cs
        0x188s
        0x18ds
        0x18es
        0x189s
        0x187s
        0x18es
        0x187s
        0x18cs
        0x18fs
        0x18as
        0x189s
        0x18fs
        0x189s
        0x18es
        0x190s
        0x18bs
        0x18as
        0x190s
        0x18as
        0x18fs
        0x191s
        0x18cs
        0x18ds
        0x191s
        0x18ds
        0x192s
        0x193s
        0x18es
        0x18cs
        0x193s
        0x18cs
        0x191s
        0x194s
        0x18fs
        0x18es
        0x194s
        0x18es
        0x193s
        0x195s
        0x190s
        0x18fs
        0x195s
        0x18fs
        0x194s
        0x196s
        0x197s
        0x198s
        0x196s
        0x198s
        0x199s
        0x19as
        0x19bs
        0x197s
        0x19as
        0x197s
        0x196s
        0x19cs
        0x19ds
        0x19bs
        0x19cs
        0x19bs
        0x19as
        0x19es
        0x19fs
        0x19ds
        0x19es
        0x19ds
        0x19cs
        0x1a0s
        0x196s
        0x199s
        0x1a0s
        0x199s
        0x1a1s
        0x1a2s
        0x19as
        0x196s
        0x1a2s
        0x196s
        0x1a0s
        0x1a3s
        0x19cs
        0x19as
        0x1a3s
        0x19as
        0x1a2s
        0x1a4s
        0x19es
        0x19cs
        0x1a4s
        0x19cs
        0x1a3s
        0x1a5s
        0x1a0s
        0x1a1s
        0x1a5s
        0x1a1s
        0x1a6s
        0x1a7s
        0x1a2s
        0x1a0s
        0x1a7s
        0x1a0s
        0x1a5s
        0x1a8s
        0x1a3s
        0x1a2s
        0x1a8s
        0x1a2s
        0x1a7s
        0x1a9s
        0x1a4s
        0x1a3s
        0x1a9s
        0x1a3s
        0x1a8s
        0x1aas
        0x1a5s
        0x1a6s
        0x1aas
        0x1a6s
        0x1abs
        0x1acs
        0x1a7s
        0x1a5s
        0x1acs
        0x1a5s
        0x1aas
        0x1ads
        0x1a8s
        0x1a7s
        0x1ads
        0x1a7s
        0x1acs
        0x1aes
        0x1a9s
        0x1a8s
        0x1aes
        0x1a8s
        0x1ads
        0x1afs
        0x1b0s
        0x1b1s
        0x1afs
        0x1b1s
        0x1b2s
        0x1b3s
        0x1b4s
        0x1b0s
        0x1b3s
        0x1b0s
        0x1afs
        0x1b5s
        0x1b6s
        0x1b4s
        0x1b5s
        0x1b4s
        0x1b3s
        0x1b7s
        0x1b8s
        0x1b6s
        0x1b7s
        0x1b6s
        0x1b5s
        0x1b9s
        0x1afs
        0x1b2s
        0x1b9s
        0x1b2s
        0x1bas
        0x1bbs
        0x1b3s
        0x1afs
        0x1bbs
        0x1afs
        0x1b9s
        0x1bcs
        0x1b5s
        0x1b3s
        0x1bcs
        0x1b3s
        0x1bbs
        0x1bds
        0x1b7s
        0x1b5s
        0x1bds
        0x1b5s
        0x1bcs
        0x1bes
        0x1b9s
        0x1bas
        0x1bes
        0x1bas
        0x1bfs
        0x1c0s
        0x1bbs
        0x1b9s
        0x1c0s
        0x1b9s
        0x1bes
        0x1c1s
        0x1bcs
        0x1bbs
        0x1c1s
        0x1bbs
        0x1c0s
        0x1c2s
        0x1bds
        0x1bcs
        0x1c2s
        0x1bcs
        0x1c1s
        0x1c3s
        0x1bes
        0x1bfs
        0x1c3s
        0x1bfs
        0x1c4s
        0x1c5s
        0x1c0s
        0x1bes
        0x1c5s
        0x1bes
        0x1c3s
        0x1c6s
        0x1c1s
        0x1c0s
        0x1c6s
        0x1c0s
        0x1c5s
        0x1c7s
        0x1c2s
        0x1c1s
        0x1c7s
        0x1c1s
        0x1c6s
        0x1c8s
        0x1c9s
        0x1cas
        0x1c8s
        0x1cas
        0x1cbs
        0x1ccs
        0x1cds
        0x1c9s
        0x1ccs
        0x1c9s
        0x1c8s
        0x1ces
        0x1cfs
        0x1cds
        0x1ces
        0x1cds
        0x1ccs
        0x1d0s
        0x1d1s
        0x1cfs
        0x1d0s
        0x1cfs
        0x1ces
        0x1d2s
        0x1c8s
        0x1cbs
        0x1d2s
        0x1cbs
        0x1d3s
        0x1d4s
        0x1ccs
        0x1c8s
        0x1d4s
        0x1c8s
        0x1d2s
        0x1d5s
        0x1ces
        0x1ccs
        0x1d5s
        0x1ccs
        0x1d4s
        0x1d6s
        0x1d0s
        0x1ces
        0x1d6s
        0x1ces
        0x1d5s
        0x1d7s
        0x1d2s
        0x1d3s
        0x1d7s
        0x1d3s
        0x1d8s
        0x1d9s
        0x1d4s
        0x1d2s
        0x1d9s
        0x1d2s
        0x1d7s
        0x1das
        0x1d5s
        0x1d4s
        0x1das
        0x1d4s
        0x1d9s
        0x1dbs
        0x1d6s
        0x1d5s
        0x1dbs
        0x1d5s
        0x1das
        0x1dcs
        0x1d7s
        0x1d8s
        0x1dcs
        0x1d8s
        0x1dds
        0x1des
        0x1d9s
        0x1d7s
        0x1des
        0x1d7s
        0x1dcs
        0x1dfs
        0x1das
        0x1d9s
        0x1dfs
        0x1d9s
        0x1des
        0x1e0s
        0x1dbs
        0x1das
        0x1e0s
        0x1das
        0x1dfs
        0x1e1s
        0x1e2s
        0x1e3s
        0x1e1s
        0x1e3s
        0x1e4s
        0x1e5s
        0x1e6s
        0x1e2s
        0x1e5s
        0x1e2s
        0x1e1s
        0x1e7s
        0x1e8s
        0x1e6s
        0x1e7s
        0x1e6s
        0x1e5s
        0x1e9s
        0x1eas
        0x1e8s
        0x1e9s
        0x1e8s
        0x1e7s
        0x1ebs
        0x1e1s
        0x1e4s
        0x1ebs
        0x1e4s
        0x1ecs
        0x1eds
        0x1e5s
        0x1e1s
        0x1eds
        0x1e1s
        0x1ebs
        0x1ees
        0x1e7s
        0x1e5s
        0x1ees
        0x1e5s
        0x1eds
        0x1efs
        0x1e9s
        0x1e7s
        0x1efs
        0x1e7s
        0x1ees
        0x1f0s
        0x1ebs
        0x1ecs
        0x1f0s
        0x1ecs
        0x1f1s
        0x1f2s
        0x1eds
        0x1ebs
        0x1f2s
        0x1ebs
        0x1f0s
        0x1f3s
        0x1ees
        0x1eds
        0x1f3s
        0x1eds
        0x1f2s
        0x1f4s
        0x1efs
        0x1ees
        0x1f4s
        0x1ees
        0x1f3s
        0x1f5s
        0x1f0s
        0x1f1s
        0x1f5s
        0x1f1s
        0x1f6s
        0x1f7s
        0x1f2s
        0x1f0s
        0x1f7s
        0x1f0s
        0x1f5s
        0x1f8s
        0x1f3s
        0x1f2s
        0x1f8s
        0x1f2s
        0x1f7s
        0x1f9s
        0x1f4s
        0x1f3s
        0x1f9s
        0x1f3s
        0x1f8s
        0x1fas
        0x1fbs
        0x1fcs
        0x1fas
        0x1fcs
        0x1fds
        0x1fes
        0x1ffs
        0x1fbs
        0x1fes
        0x1fbs
        0x1fas
        0x200s
        0x201s
        0x1ffs
        0x200s
        0x1ffs
        0x1fes
        0x202s
        0x203s
        0x201s
        0x202s
        0x201s
        0x200s
        0x204s
        0x1fas
        0x1fds
        0x204s
        0x1fds
        0x205s
        0x206s
        0x1fes
        0x1fas
        0x206s
        0x1fas
        0x204s
        0x207s
        0x200s
        0x1fes
        0x207s
        0x1fes
        0x206s
        0x208s
        0x202s
        0x200s
        0x208s
        0x200s
        0x207s
        0x209s
        0x204s
        0x205s
        0x209s
        0x205s
        0x20as
        0x20bs
        0x206s
        0x204s
        0x20bs
        0x204s
        0x209s
        0x20cs
        0x207s
        0x206s
        0x20cs
        0x206s
        0x20bs
        0x20ds
        0x208s
        0x207s
        0x20ds
        0x207s
        0x20cs
        0x20es
        0x209s
        0x20as
        0x20es
        0x20as
        0x20fs
        0x210s
        0x20bs
        0x209s
        0x210s
        0x209s
        0x20es
        0x211s
        0x20cs
        0x20bs
        0x211s
        0x20bs
        0x210s
        0x212s
        0x20ds
        0x20cs
        0x212s
        0x20cs
        0x211s
        0x213s
        0x214s
        0x215s
        0x213s
        0x215s
        0x216s
        0x217s
        0x218s
        0x214s
        0x217s
        0x214s
        0x213s
        0x219s
        0x21as
        0x218s
        0x219s
        0x218s
        0x217s
        0x21bs
        0x21cs
        0x21as
        0x21bs
        0x21as
        0x219s
        0x21ds
        0x213s
        0x216s
        0x21ds
        0x216s
        0x21es
        0x21fs
        0x217s
        0x213s
        0x21fs
        0x213s
        0x21ds
        0x220s
        0x219s
        0x217s
        0x220s
        0x217s
        0x21fs
        0x221s
        0x21bs
        0x219s
        0x221s
        0x219s
        0x220s
        0x222s
        0x21ds
        0x21es
        0x222s
        0x21es
        0x223s
        0x224s
        0x21fs
        0x21ds
        0x224s
        0x21ds
        0x222s
        0x225s
        0x220s
        0x21fs
        0x225s
        0x21fs
        0x224s
        0x226s
        0x221s
        0x220s
        0x226s
        0x220s
        0x225s
        0x227s
        0x222s
        0x223s
        0x227s
        0x223s
        0x228s
        0x229s
        0x224s
        0x222s
        0x229s
        0x222s
        0x227s
        0x22as
        0x225s
        0x224s
        0x22as
        0x224s
        0x229s
        0x22bs
        0x226s
        0x225s
        0x22bs
        0x225s
        0x22as
        0x22cs
        0x22ds
        0x22es
        0x22cs
        0x22es
        0x22fs
        0x230s
        0x231s
        0x22ds
        0x230s
        0x22ds
        0x22cs
        0x232s
        0x233s
        0x231s
        0x232s
        0x231s
        0x230s
        0x234s
        0x235s
        0x233s
        0x234s
        0x233s
        0x232s
        0x236s
        0x22cs
        0x22fs
        0x236s
        0x22fs
        0x237s
        0x238s
        0x230s
        0x22cs
        0x238s
        0x22cs
        0x236s
        0x239s
        0x232s
        0x230s
        0x239s
        0x230s
        0x238s
        0x23as
        0x234s
        0x232s
        0x23as
        0x232s
        0x239s
        0x23bs
        0x236s
        0x237s
        0x23bs
        0x237s
        0x23cs
        0x23ds
        0x238s
        0x236s
        0x23ds
        0x236s
        0x23bs
        0x23es
        0x239s
        0x238s
        0x23es
        0x238s
        0x23ds
        0x23fs
        0x23as
        0x239s
        0x23fs
        0x239s
        0x23es
        0x240s
        0x23bs
        0x23cs
        0x240s
        0x23cs
        0x241s
        0x242s
        0x23ds
        0x23bs
        0x242s
        0x23bs
        0x240s
        0x243s
        0x23es
        0x23ds
        0x243s
        0x23ds
        0x242s
        0x244s
        0x23fs
        0x23es
        0x244s
        0x23es
        0x243s
        0x245s
        0x246s
        0x247s
        0x245s
        0x247s
        0x248s
        0x249s
        0x24as
        0x248s
        0x249s
        0x248s
        0x247s
        0x24bs
        0x24cs
        0x24as
        0x24bs
        0x24as
        0x249s
        0x24ds
        0x24es
        0x24cs
        0x24ds
        0x24cs
        0x24bs
        0x24fs
        0x249s
        0x247s
        0x24fs
        0x247s
        0x246s
        0x250s
        0x24bs
        0x249s
        0x250s
        0x249s
        0x24fs
        0x251s
        0x24ds
        0x24bs
        0x251s
        0x24bs
        0x250s
        0x252s
        0x253s
        0x254s
        0x252s
        0x254s
        0x246s
        0x255s
        0x24fs
        0x246s
        0x255s
        0x246s
        0x254s
        0x256s
        0x250s
        0x24fs
        0x256s
        0x24fs
        0x255s
        0x257s
        0x251s
        0x250s
        0x257s
        0x250s
        0x256s
        0x258s
        0x255s
        0x254s
        0x258s
        0x254s
        0x253s
        0x259s
        0x256s
        0x255s
        0x259s
        0x255s
        0x258s
        0x25as
        0x257s
        0x256s
        0x25as
        0x256s
        0x259s
        0x25bs
        0x25cs
        0x25ds
        0x25bs
        0x25ds
        0x25es
        0x25fs
        0x260s
        0x25es
        0x25fs
        0x25es
        0x25ds
        0x261s
        0x262s
        0x260s
        0x261s
        0x260s
        0x25fs
        0x263s
        0x264s
        0x262s
        0x263s
        0x262s
        0x261s
        0x265s
        0x25fs
        0x25ds
        0x265s
        0x25ds
        0x25cs
        0x266s
        0x261s
        0x25fs
        0x266s
        0x25fs
        0x265s
        0x267s
        0x263s
        0x261s
        0x267s
        0x261s
        0x266s
        0x268s
        0x269s
        0x26as
        0x268s
        0x26as
        0x25cs
        0x26bs
        0x265s
        0x25cs
        0x26bs
        0x25cs
        0x26as
        0x26cs
        0x266s
        0x265s
        0x26cs
        0x265s
        0x26bs
        0x26ds
        0x267s
        0x266s
        0x26ds
        0x266s
        0x26cs
        0x26es
        0x26bs
        0x26as
        0x26es
        0x26as
        0x269s
        0x26fs
        0x26cs
        0x26bs
        0x26fs
        0x26bs
        0x26es
        0x270s
        0x26ds
        0x26cs
        0x270s
        0x26cs
        0x26fs
        0x271s
        0x272s
        0x273s
        0x271s
        0x273s
        0x274s
        0x275s
        0x276s
        0x274s
        0x275s
        0x274s
        0x273s
        0x277s
        0x278s
        0x276s
        0x277s
        0x276s
        0x275s
        0x279s
        0x27as
        0x278s
        0x279s
        0x278s
        0x277s
        0x27bs
        0x275s
        0x273s
        0x27bs
        0x273s
        0x272s
        0x27cs
        0x277s
        0x275s
        0x27cs
        0x275s
        0x27bs
        0x27ds
        0x279s
        0x277s
        0x27ds
        0x277s
        0x27cs
        0x27es
        0x27fs
        0x280s
        0x27es
        0x280s
        0x272s
        0x281s
        0x27bs
        0x272s
        0x281s
        0x272s
        0x280s
        0x282s
        0x27cs
        0x27bs
        0x282s
        0x27bs
        0x281s
        0x283s
        0x27ds
        0x27cs
        0x283s
        0x27cs
        0x282s
        0x284s
        0x281s
        0x280s
        0x284s
        0x280s
        0x27fs
        0x285s
        0x282s
        0x281s
        0x285s
        0x281s
        0x284s
        0x286s
        0x283s
        0x282s
        0x286s
        0x282s
        0x285s
        0x287s
        0x288s
        0x289s
        0x287s
        0x289s
        0x28as
        0x28bs
        0x28cs
        0x28as
        0x28bs
        0x28as
        0x289s
        0x28ds
        0x28es
        0x28cs
        0x28ds
        0x28cs
        0x28bs
        0x28fs
        0x290s
        0x28es
        0x28fs
        0x28es
        0x28ds
        0x291s
        0x28bs
        0x289s
        0x291s
        0x289s
        0x288s
        0x292s
        0x28ds
        0x28bs
        0x292s
        0x28bs
        0x291s
        0x293s
        0x28fs
        0x28ds
        0x293s
        0x28ds
        0x292s
        0x294s
        0x295s
        0x296s
        0x294s
        0x296s
        0x288s
        0x297s
        0x291s
        0x288s
        0x297s
        0x288s
        0x296s
        0x298s
        0x292s
        0x291s
        0x298s
        0x291s
        0x297s
        0x299s
        0x293s
        0x292s
        0x299s
        0x292s
        0x298s
        0x29as
        0x297s
        0x296s
        0x29as
        0x296s
        0x295s
        0x29bs
        0x298s
        0x297s
        0x29bs
        0x297s
        0x29as
        0x29cs
        0x299s
        0x298s
        0x29cs
        0x298s
        0x29bs
        0x29ds
        0x29es
        0x29fs
        0x29ds
        0x29fs
        0x2a0s
        0x2a1s
        0x2a2s
        0x29es
        0x2a1s
        0x29es
        0x29ds
        0x2a3s
        0x2a4s
        0x2a2s
        0x2a3s
        0x2a2s
        0x2a1s
        0x2a5s
        0x2a6s
        0x2a4s
        0x2a5s
        0x2a4s
        0x2a3s
        0x2a7s
        0x29ds
        0x2a0s
        0x2a7s
        0x2a0s
        0x2a8s
        0x2a9s
        0x2a1s
        0x29ds
        0x2a9s
        0x29ds
        0x2a7s
        0x2aas
        0x2a3s
        0x2a1s
        0x2aas
        0x2a1s
        0x2a9s
        0x2abs
        0x2a5s
        0x2a3s
        0x2abs
        0x2a3s
        0x2aas
        0x2acs
        0x2a7s
        0x2a8s
        0x2acs
        0x2a8s
        0x2ads
        0x2aes
        0x2a9s
        0x2a7s
        0x2aes
        0x2a7s
        0x2acs
        0x2afs
        0x2aas
        0x2a9s
        0x2afs
        0x2a9s
        0x2aes
        0x2b0s
        0x2abs
        0x2aas
        0x2b0s
        0x2aas
        0x2afs
        0x2b1s
        0x2acs
        0x2ads
        0x2b1s
        0x2ads
        0x2b2s
        0x2b3s
        0x2aes
        0x2acs
        0x2b3s
        0x2acs
        0x2b1s
        0x2b4s
        0x2afs
        0x2aes
        0x2b4s
        0x2aes
        0x2b3s
        0x2b5s
        0x2b0s
        0x2afs
        0x2b5s
        0x2afs
        0x2b4s
        0x2b6s
        0x2b7s
        0x2b8s
        0x2b6s
        0x2b8s
        0x2b9s
        0x2bas
        0x2bbs
        0x2b7s
        0x2bas
        0x2b7s
        0x2b6s
        0x2bcs
        0x2bds
        0x2bbs
        0x2bcs
        0x2bbs
        0x2bas
        0x2bes
        0x2bfs
        0x2bds
        0x2bes
        0x2bds
        0x2bcs
        0x2c0s
        0x2b6s
        0x2b9s
        0x2c0s
        0x2b9s
        0x2c1s
        0x2c2s
        0x2bas
        0x2b6s
        0x2c2s
        0x2b6s
        0x2c0s
        0x2c3s
        0x2bcs
        0x2bas
        0x2c3s
        0x2bas
        0x2c2s
        0x2c4s
        0x2bes
        0x2bcs
        0x2c4s
        0x2bcs
        0x2c3s
        0x2c5s
        0x2c0s
        0x2c1s
        0x2c5s
        0x2c1s
        0x2c6s
        0x2c7s
        0x2c2s
        0x2c0s
        0x2c7s
        0x2c0s
        0x2c5s
        0x2c8s
        0x2c3s
        0x2c2s
        0x2c8s
        0x2c2s
        0x2c7s
        0x2c9s
        0x2c4s
        0x2c3s
        0x2c9s
        0x2c3s
        0x2c8s
        0x2cas
        0x2c5s
        0x2c6s
        0x2cas
        0x2c6s
        0x2cbs
        0x2ccs
        0x2c7s
        0x2c5s
        0x2ccs
        0x2c5s
        0x2cas
        0x2cds
        0x2c8s
        0x2c7s
        0x2cds
        0x2c7s
        0x2ccs
        0x2ces
        0x2c9s
        0x2c8s
        0x2ces
        0x2c8s
        0x2cds
        0x2cfs
        0x2d0s
        0x2d1s
        0x2cfs
        0x2d1s
        0x2d2s
        0x2d3s
        0x2d4s
        0x2d0s
        0x2d3s
        0x2d0s
        0x2cfs
        0x2d5s
        0x2d6s
        0x2d4s
        0x2d5s
        0x2d4s
        0x2d3s
        0x2d7s
        0x2d8s
        0x2d6s
        0x2d7s
        0x2d6s
        0x2d5s
        0x2d9s
        0x2cfs
        0x2d2s
        0x2d9s
        0x2d2s
        0x2das
        0x2dbs
        0x2d3s
        0x2cfs
        0x2dbs
        0x2cfs
        0x2d9s
        0x2dcs
        0x2d5s
        0x2d3s
        0x2dcs
        0x2d3s
        0x2dbs
        0x2dds
        0x2d7s
        0x2d5s
        0x2dds
        0x2d5s
        0x2dcs
        0x2des
        0x2d9s
        0x2das
        0x2des
        0x2das
        0x2dfs
        0x2e0s
        0x2dbs
        0x2d9s
        0x2e0s
        0x2d9s
        0x2des
        0x2e1s
        0x2dcs
        0x2dbs
        0x2e1s
        0x2dbs
        0x2e0s
        0x2e2s
        0x2dds
        0x2dcs
        0x2e2s
        0x2dcs
        0x2e1s
        0x2e3s
        0x2des
        0x2dfs
        0x2e3s
        0x2dfs
        0x2e4s
        0x2e5s
        0x2e0s
        0x2des
        0x2e5s
        0x2des
        0x2e3s
        0x2e6s
        0x2e1s
        0x2e0s
        0x2e6s
        0x2e0s
        0x2e5s
        0x2e7s
        0x2e2s
        0x2e1s
        0x2e7s
        0x2e1s
        0x2e6s
        0x2e8s
        0x2e9s
        0x2eas
        0x2e8s
        0x2eas
        0x2ebs
        0x2ecs
        0x2eds
        0x2e9s
        0x2ecs
        0x2e9s
        0x2e8s
        0x2ees
        0x2efs
        0x2eds
        0x2ees
        0x2eds
        0x2ecs
        0x2f0s
        0x2f1s
        0x2efs
        0x2f0s
        0x2efs
        0x2ees
        0x2f2s
        0x2e8s
        0x2ebs
        0x2f2s
        0x2ebs
        0x2f3s
        0x2f4s
        0x2ecs
        0x2e8s
        0x2f4s
        0x2e8s
        0x2f2s
        0x2f5s
        0x2ees
        0x2ecs
        0x2f5s
        0x2ecs
        0x2f4s
        0x2f6s
        0x2f0s
        0x2ees
        0x2f6s
        0x2ees
        0x2f5s
        0x2f7s
        0x2f2s
        0x2f3s
        0x2f7s
        0x2f3s
        0x2f8s
        0x2f9s
        0x2f4s
        0x2f2s
        0x2f9s
        0x2f2s
        0x2f7s
        0x2fas
        0x2f5s
        0x2f4s
        0x2fas
        0x2f4s
        0x2f9s
        0x2fbs
        0x2f6s
        0x2f5s
        0x2fbs
        0x2f5s
        0x2fas
        0x2fcs
        0x2f7s
        0x2f8s
        0x2fcs
        0x2f8s
        0x2fds
        0x2fes
        0x2f9s
        0x2f7s
        0x2fes
        0x2f7s
        0x2fcs
        0x2ffs
        0x2fas
        0x2f9s
        0x2ffs
        0x2f9s
        0x2fes
        0x300s
        0x2fbs
        0x2fas
        0x300s
        0x2fas
        0x2ffs
        0x132s
        0x139s
        0x301s
        0x139s
        0x13ds
        0x302s
        0x13ds
        0x141s
        0x303s
        0x149s
        0x148s
        0x304s
        0x148s
        0x14ds
        0x305s
        0x14ds
        0x151s
        0x306s
        0x151s
        0x155s
        0x307s
        0x15ds
        0x15cs
        0x308s
        0x15cs
        0x161s
        0x309s
        0x161s
        0x165s
        0x30as
        0x165s
        0x169s
        0x30bs
        0x171s
        0x170s
        0x30cs
        0x170s
        0x175s
        0x30ds
        0x175s
        0x135s
        0x30es
    .end array-data
.end method

.method private setNormalData()V
    .locals 2

    const/16 v0, 0x92d

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ardor3d/scenegraph/MeshData;->setNormalBuffer(Ljava/nio/FloatBuffer;)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x409b47b6
        0x3e83120a
        -0x41430510
        -0x40887e39
        0x3e82c98e
        0x0
        -0x40888399
        -0x417d0df1
        0x0
        -0x409b636f
        -0x417cc09c
        -0x41429eb2    # -0.369883f
        -0x425437c5
        0x3f7eef91
        -0x42ee9036    # -0.035507f
        -0x42437ac4    # -0.092051f
        0x3f7ee9bc
        -0x80000000
        0x3f213587
        0x3f3b5b3e
        0x3e855843
        0x3f2e9ac3
        0x3f3b36df
        0x0
        0x3f4dc0ec
        0x3efc9afe    # 0.49337f
        0x3eaa4873
        0x3f5ecbfb    # 0.8703f
        0x3efc2bb6
        0x0
        -0x40d1041d
        0x3e831b7a
        -0x40d1041d
        -0x40d10c3d
        -0x417c8e04
        -0x40d10c3d
        -0x427b0920
        0x3f7eeb2d
        -0x427b0920
        0x3ef679cc
        0x3f3b8327
        0x3ef679cc
        0x3f1d63cc
        0x3efced2d
        0x3f1d63cc
        -0x41430510
        0x3e83120a
        -0x409b47b6
        -0x41429ed4
        -0x417cc09c
        -0x409b635e
        -0x42ee9036    # -0.035507f
        0x3f7eef91
        -0x425437c5
        0x3e855843
        0x3f3b5b3e
        0x3f213587
        0x3eaa4873
        0x3efc9afe    # 0.49337f
        0x3f4dc0ec
        -0x4503f2d4    # -0.001923f
        0x3e826ce3
        -0x4088722a
        -0x44c549b6    # -0.002849f
        -0x417bf940
        -0x4088a8a0
        -0x46748a16    # -2.66E-4f
        0x3f7ee86c
        -0x42430878
        0x37c9539c    # 2.4E-5f
        0x3f3b3637
        0x3f2e9b7c    # 0.68206f
        0x0
        0x3efc2bb6
        0x3f5ecc0c
        0x3ec11490    # 0.37711f
        0x3e18a9bd    # 0.149085f
        -0x4095fe22
        -0x4503f2d4    # -0.001923f
        0x3e826ce3
        -0x4088722a
        -0x44c549b6    # -0.002849f
        -0x417bf940
        -0x4088a8a0
        0x3ec213e4
        -0x414809f6
        -0x40a5b0bc
        0x3ce14df9    # 0.027503f
        0x3f7df905
        -0x42050375    # -0.122552f
        -0x46748a16    # -2.66E-4f
        0x3f7ee86c
        -0x42430878
        -0x417a5ce6    # -0.26101f
        0x3f3a0d13
        0x3f22a759
        0x37c9539c    # 2.4E-5f
        0x3f3b3637
        0x3f2e9b7c    # 0.68206f
        -0x4155c487
        0x3efc2f1f
        0x3f4de4b4
        0x0
        0x3efc2bb6
        0x3f5ecc0c
        0x3f367126
        0x3d96fc16
        -0x40cd68b6
        0x3f29de48
        -0x412daccd
        -0x40dfeeb3
        0x3dcc3d25
        0x3f7ccd64
        -0x42062dc7    # -0.121983f
        -0x41067e20
        0x3f394802
        0x3efa2596
        -0x40e27f80
        0x3efc3654
        0x3f1d905c    # 0.615484f
        0x3f6ad29a
        0x3e2b1fac
        -0x4146ea64
        0x3f614984
        -0x41558d58
        -0x415294bc
        0x3de89f41
        0x3f7e0ba2
        -0x42bb1af4    # -0.04807f
        -0x40dda858
        0x3f3a3e08
        0x3e86162f
        -0x40b224cc
        0x3efc3a86
        0x3eaa584f
        0x3f77aa47
        0x3e81845e
        0x3c04c272    # 0.008103f
        0x3f7778ee
        -0x417d0fc7
        0x3c2b4741    # 0.010454f
        0x3dbf5ad9
        0x3f7ee148
        0x3aa7e73a    # 0.001281f
        -0x40d15d92
        0x3f3b2fba    # 0.731197f
        -0x464ba51a    # -3.44E-4f
        -0x40a13294
        0x3efc26dd
        -0x479d81f1    # -5.4E-5f
        0x3f64b84a
        0x3e83120a
        0x3ebcfaf0
        0x3f77aa47
        0x3e81845e
        0x3c04c272    # 0.008103f
        0x3f7778ee
        -0x417d0fc7
        0x3c2b4741    # 0.010454f
        0x3f649c91
        -0x417cc09c
        0x3ebd614e    # 0.369883f
        0x3dabc83b
        0x3f7eef91
        0x3d116fca    # 0.035507f
        0x3dbf5ad9
        0x3f7ee148
        0x3aa7e73a    # 0.001281f
        -0x40deca79
        0x3f3b5b3e
        -0x417aa7bd
        -0x40d15d92
        0x3f3b2fba    # 0.731197f
        -0x464ba51a    # -3.44E-4f
        -0x40b23f14
        0x3efc9afe    # 0.49337f
        -0x4155b78d
        -0x40a13294
        0x3efc26dd
        -0x479d81f1    # -5.4E-5f
        0x3f2efbe3
        0x3e831b7a
        0x3f2efbe3
        0x3f2ef3c3
        -0x417c8e04
        0x3f2ef3c3
        0x3d84f6e0
        0x3f7eeb2d
        0x3d84f6e0
        -0x41098634
        0x3f3b8327
        -0x41098634
        -0x40e29c34
        0x3efced2d
        -0x40e29c34
        0x3ebcfaf0
        0x3e83120a
        0x3f64b84a
        0x3ebd612c
        -0x417cc09c
        0x3f649ca2
        0x3d116fca    # 0.035507f
        0x3f7eef91
        0x3dabc83b
        -0x417aa7bd
        0x3f3b5b3e
        -0x40deca79
        -0x4155b78d
        0x3efc9afe    # 0.49337f
        -0x40b23f14
        0x0
        0x3e82c98e
        0x3f7781c7
        0x0
        -0x417d0df1
        0x3f777c67
        -0x80000000
        0x3f7ee9bc
        0x3dbc853c    # 0.092051f
        0x0
        0x3f3b36df
        -0x40d1653d
        -0x80000000
        0x3efc2bb6
        -0x40a133f4
        -0x41430510
        0x3e83120a
        0x3f64b84a
        0x0
        0x3e82c98e
        0x3f7781c7
        0x0
        -0x417d0df1
        0x3f777c67
        -0x41429eb2    # -0.369883f
        -0x417cc09c
        0x3f649c91
        -0x42ee9036    # -0.035507f
        0x3f7eef91
        0x3dabc83b
        -0x80000000
        0x3f7ee9bc
        0x3dbc853c    # 0.092051f
        0x3e855843
        0x3f3b5b3e
        -0x40deca79
        0x0
        0x3f3b36df
        -0x40d1653d
        0x3eaa4873
        0x3efc9afe    # 0.49337f
        -0x40b23f14
        -0x80000000
        0x3efc2bb6
        -0x40a133f4
        -0x40d1041d
        0x3e831b7a
        0x3f2efbe3
        -0x40d10c3d
        -0x417c8e04
        0x3f2ef3c3
        -0x427b0920
        0x3f7eeb2d
        0x3d84f6e0
        0x3ef679cc
        0x3f3b8327
        -0x41098634
        0x3f1d63cc
        0x3efced2d
        -0x40e29c34
        -0x409b47b6
        0x3e83120a
        0x3ebcfaf0
        -0x409b635e
        -0x417cc09c
        0x3ebd612c
        -0x425437c5
        0x3f7eef91
        0x3d116fca    # 0.035507f
        0x3f213587
        0x3f3b5b3e
        -0x417aa7bd
        0x3f4dc0ec
        0x3efc9afe    # 0.49337f
        -0x4155b78d
        -0x40887e39
        0x3e82c98e
        0x0
        -0x40888399
        -0x417d0df1
        0x0
        -0x42437ac4    # -0.092051f
        0x3f7ee9bc
        -0x80000000
        0x3f2e9ac3
        0x3f3b36df
        0x0
        0x3f5ecbfb    # 0.8703f
        0x3efc2bb6
        0x0
        0x3f586ea0
        0x3ece9d73
        0x3eb31d93
        0x3f6a527a
        0x3ece31f9
        -0x80000000
        0x3f5ecbfb    # 0.8703f
        0x3efc2bb6
        0x0
        0x3f4dc0ec
        0x3efc9afe    # 0.49337f
        0x3eaa4873
        0x3f5eb80f    # 0.869996f
        0x3eac78c8
        0x3eb85815
        0x3f711a54
        0x3eac1bfc
        -0x80000000
        0x3f677931
        0x3e52bae0
        0x3ebfa1a1    # 0.37428f
        0x3f7a8b6e
        0x3e52452c
        -0x80000000
        0x3f6c0043
        -0x42781301    # -0.06637f
        0x3ec37500
        0x3f7f7015
        -0x4278572a    # -0.06624f
        0x0
        0x3f2594d1
        0x3ecee5ac
        0x3f2594d1
        0x3f1d63cc
        0x3efced2d
        0x3f1d63cc
        0x3f2a685e
        0x3eacb945
        0x3f2a685e
        0x3f3121de
        0x3e53111f    # 0.20612f
        0x3f3121de
        0x3f349e67
        -0x4277d955    # -0.06648f
        0x3f349e77
        0x3eb31d93
        0x3ece9d95
        0x3f586ea0
        0x3eaa4873
        0x3efc9afe    # 0.49337f
        0x3f4dc0ec
        0x3eb85815
        0x3eac78a7
        0x3f5eb80f    # 0.869996f
        0x3ebfa1a1    # 0.37428f
        0x3e52bae0
        0x3f677931
        0x3ec37500
        -0x42781301    # -0.06637f
        0x3f6c0043
        0x0
        0x3ece31f9
        0x3f6a527a
        0x0
        0x3efc2bb6
        0x3f5ecc0c
        0x0
        0x3eac1bfc
        0x3f711a54
        0x0
        0x3e52452c
        0x3f7a8b6e
        -0x80000000
        -0x4278572a    # -0.06624f
        0x3f7f7015
        -0x414ce26d
        0x3ece9d73
        0x3f586ea0
        0x0
        0x3ece31f9
        0x3f6a527a
        0x0
        0x3efc2bb6
        0x3f5ecc0c
        -0x4155c487
        0x3efc2f1f
        0x3f4de4b4
        -0x4147a7eb
        0x3eac78c8
        0x3f5eb80f    # 0.869996f
        0x0
        0x3eac1bfc
        0x3f711a54
        -0x41405e5f    # -0.37428f
        0x3e52bae0
        0x3f677931
        0x0
        0x3e52452c
        0x3f7a8b6e
        -0x413c8b00
        -0x42781301    # -0.06637f
        0x3f6c0043
        -0x80000000
        -0x4278572a    # -0.06624f
        0x3f7f7015
        -0x40da6b2f
        0x3ecee5ac
        0x3f2594d1
        -0x40e27f80
        0x3efc3654
        0x3f1d905c    # 0.615484f
        -0x40d597a2
        0x3eacb945
        0x3f2a685e
        -0x40cede22
        0x3e53111f    # 0.20612f
        0x3f3121de
        -0x40cb6189
        -0x4277d955    # -0.06648f
        0x3f349e67
        -0x40a79160
        0x3ece9d95
        0x3eb31d93
        -0x40b224cc
        0x3efc3a86
        0x3eaa584f
        -0x40a147f1    # -0.869996f
        0x3eac78a7
        0x3eb85815
        -0x409886cf
        0x3e52bae0
        0x3ebfa1a1    # 0.37428f
        -0x4093ffbd
        -0x42781301    # -0.06637f
        0x3ec37500
        -0x4095ad86
        0x3ece31f9
        0x0
        -0x40a13294
        0x3efc26dd
        -0x479d81f1    # -5.4E-5f
        -0x408ee5ac
        0x3eac1bfc
        0x0
        -0x40857492
        0x3e52452c
        0x0
        -0x40808feb
        -0x4278572a    # -0.06624f
        -0x80000000
        -0x40a79160
        0x3ece9d73
        -0x414ce26d
        -0x4095ad86
        0x3ece31f9
        0x0
        -0x40a13294
        0x3efc26dd
        -0x479d81f1    # -5.4E-5f
        -0x40b23f14
        0x3efc9afe    # 0.49337f
        -0x4155b78d
        -0x40a147f1    # -0.869996f
        0x3eac78c8
        -0x4147a7eb
        -0x408ee5ac
        0x3eac1bfc
        0x0
        -0x409886cf
        0x3e52bae0
        -0x41405e5f    # -0.37428f
        -0x40857492
        0x3e52452c
        0x0
        -0x4093ffbd
        -0x42781301    # -0.06637f
        -0x413c8b00
        -0x40808feb
        -0x4278572a    # -0.06624f
        -0x80000000
        -0x40da6b2f
        0x3ecee5ac
        -0x40da6b2f
        -0x40e29c34
        0x3efced2d
        -0x40e29c34
        -0x40d597a2
        0x3eacb945
        -0x40d597a2
        -0x40cede22
        0x3e53111f    # 0.20612f
        -0x40cede22
        -0x40cb6199
        -0x4277d955    # -0.06648f
        -0x40cb6189
        -0x414ce26d
        0x3ece9d95
        -0x40a79160
        -0x4155b78d
        0x3efc9afe    # 0.49337f
        -0x40b23f14
        -0x4147a7eb
        0x3eac78a7
        -0x40a147f1    # -0.869996f
        -0x41405e5f    # -0.37428f
        0x3e52bae0
        -0x409886cf
        -0x413c8b00
        -0x42781301    # -0.06637f
        -0x4093ffbd
        -0x80000000
        0x3ece31f9
        -0x4095ad86
        -0x80000000
        0x3efc2bb6
        -0x40a133f4
        -0x80000000
        0x3eac1bfc
        -0x408ee5ac
        -0x80000000
        0x3e52452c
        -0x40857492
        0x0
        -0x4278572a    # -0.06624f
        -0x40808feb
        0x3eb31d93
        0x3ece9d73
        -0x40a79160
        -0x80000000
        0x3ece31f9
        -0x4095ad86
        -0x80000000
        0x3efc2bb6
        -0x40a133f4
        0x3eaa4873
        0x3efc9afe    # 0.49337f
        -0x40b23f14
        0x3eb85815
        0x3eac78c8
        -0x40a147f1    # -0.869996f
        -0x80000000
        0x3eac1bfc
        -0x408ee5ac
        0x3ebfa1a1    # 0.37428f
        0x3e52bae0
        -0x409886cf
        -0x80000000
        0x3e52452c
        -0x40857492
        0x3ec37500
        -0x42781301    # -0.06637f
        -0x4093ffbd
        0x0
        -0x4278572a    # -0.06624f
        -0x40808feb
        0x3f2594d1
        0x3ecee5ac
        -0x40da6b2f
        0x3f1d63cc
        0x3efced2d
        -0x40e29c34
        0x3f2a685e
        0x3eacb945
        -0x40d597a2
        0x3f3121de
        0x3e53111f    # 0.20612f
        -0x40cede22
        0x3f349e77
        -0x4277d955    # -0.06648f
        -0x40cb6199
        0x3f586ea0
        0x3ece9d95
        -0x414ce26d
        0x3f4dc0ec
        0x3efc9afe    # 0.49337f
        -0x4155b78d
        0x3f5eb80f    # 0.869996f
        0x3eac78a7
        -0x4147a7eb
        0x3f677931
        0x3e52bae0
        -0x41405e5f    # -0.37428f
        0x3f6c0043
        -0x42781301    # -0.06637f
        -0x413c8b00
        0x3f6a527a
        0x3ece31f9
        -0x80000000
        0x3f5ecbfb    # 0.8703f
        0x3efc2bb6
        0x0
        0x3f711a54
        0x3eac1bfc
        -0x80000000
        0x3f7a8b6e
        0x3e52452c
        -0x80000000
        0x3f7f7015
        -0x4278572a    # -0.06624f
        0x0
        0x3f54d90e
        -0x4120ad04    # -0.43618f
        0x3eb0383b
        0x3f667254
        -0x41210471
        0x0
        0x3f7f7015
        -0x4278572a    # -0.06624f
        0x0
        0x3f6c0043
        -0x42781301    # -0.06637f
        0x3ec37500
        0x3f2c6b48
        -0x40d0b9bb
        0x3e8ea3df
        0x3f3ac7c9
        -0x40d0ee5b
        -0x80000000
        0x3f23f130
        -0x40c77186
        0x3e879d91
        0x3f31a6c6
        -0x40c7aca3
        0x0
        0x3f3ba28c
        -0x40e418e7
        0x3e9b38b4
        0x3f4b403e
        -0x40e45b29
        -0x80000000
        0x3f22d6ed
        -0x41205ec4
        0x3f22d6ed
        0x3f349e67
        -0x4277d955    # -0.06648f
        0x3f349e77
        0x3f03d4bf
        -0x40d090d6
        0x3f03d4bf
        0x3efab389
        -0x40c74f51
        0x3efab389
        0x3f0f8088
        -0x40e3f456
        0x3f0f8088
        0x3eb0383b
        -0x4120ad04    # -0.43618f
        0x3f54d90e
        0x3ec37500
        -0x42781301    # -0.06637f
        0x3f6c0043
        0x3e8ea3df
        -0x40d0b9cb
        0x3f2c6b48
        0x3e879d91
        -0x40c77186
        0x3f23f130
        0x3e9b38b4
        -0x40e418e7
        0x3f3ba28c
        -0x80000000
        -0x41210471
        0x3f667254
        -0x80000000
        -0x4278572a    # -0.06624f
        0x3f7f7015
        0x0
        -0x40d0ee5b
        0x3f3ac7c9
        -0x80000000
        -0x40c7aca3
        0x3f31a6c6
        0x0
        -0x40e45b29
        0x3f4b403e
        -0x414fc7c5
        -0x4120ad04    # -0.43618f
        0x3f54d90e
        -0x80000000
        -0x41210471
        0x3f667254
        -0x80000000
        -0x4278572a    # -0.06624f
        0x3f7f7015
        -0x413c8b00
        -0x42781301    # -0.06637f
        0x3f6c0043
        -0x41715c21
        -0x40d0b9bb
        0x3f2c6b48
        0x0
        -0x40d0ee5b
        0x3f3ac7c9
        -0x4178626f
        -0x40c77186
        0x3f23f130
        -0x80000000
        -0x40c7aca3
        0x3f31a6c6
        -0x4164c74c
        -0x40e418e7
        0x3f3ba28c
        0x0
        -0x40e45b29
        0x3f4b403e
        -0x40dd2913
        -0x41205ec4
        0x3f22d6ed
        -0x40cb6189
        -0x4277d955    # -0.06648f
        0x3f349e67
        -0x40fc2b41
        -0x40d090d6
        0x3f03d4bf
        -0x41054c77
        -0x40c74f51
        0x3efab389
        -0x40f07f78
        -0x40e3f456
        0x3f0f8088
        -0x40ab26f2
        -0x4120ad04    # -0.43618f
        0x3eb0383b
        -0x4093ffbd
        -0x42781301    # -0.06637f
        0x3ec37500
        -0x40d394b8
        -0x40d0b9cb
        0x3e8ea3df
        -0x40dc0ed0
        -0x40c77186
        0x3e879d91
        -0x40c45d74
        -0x40e418e7
        0x3e9b38b4
        -0x40998dac
        -0x41210471
        -0x80000000
        -0x40808feb
        -0x4278572a    # -0.06624f
        -0x80000000
        -0x40c53837
        -0x40d0ee5b
        0x0
        -0x40ce593a
        -0x40c7aca3
        -0x80000000
        -0x40b4bfc2
        -0x40e45b29
        0x0
        -0x40ab26f2
        -0x4120ad04    # -0.43618f
        -0x414fc7c5
        -0x40998dac
        -0x41210471
        -0x80000000
        -0x40808feb
        -0x4278572a    # -0.06624f
        -0x80000000
        -0x4093ffbd
        -0x42781301    # -0.06637f
        -0x413c8b00
        -0x40d394b8
        -0x40d0b9bb
        -0x41715c21
        -0x40c53837
        -0x40d0ee5b
        0x0
        -0x40dc0ed0
        -0x40c77186
        -0x4178626f
        -0x40ce593a
        -0x40c7aca3
        -0x80000000
        -0x40c45d74
        -0x40e418e7
        -0x4164c74c
        -0x40b4bfc2
        -0x40e45b29
        0x0
        -0x40dd2913
        -0x41205ec4
        -0x40dd2913
        -0x40cb6199
        -0x4277d955    # -0.06648f
        -0x40cb6189
        -0x40fc2b41
        -0x40d090d6
        -0x40fc2b41
        -0x41054c77
        -0x40c74f51
        -0x41054c77
        -0x40f07f78
        -0x40e3f456
        -0x40f07f78
        -0x414fc7c5
        -0x4120ad04    # -0.43618f
        -0x40ab26f2
        -0x413c8b00
        -0x42781301    # -0.06637f
        -0x4093ffbd
        -0x41715c21
        -0x40d0b9cb
        -0x40d394b8
        -0x4178626f
        -0x40c77186
        -0x40dc0ed0
        -0x4164c74c
        -0x40e418e7
        -0x40c45d74
        0x0
        -0x41210471
        -0x40998dac
        0x0
        -0x4278572a    # -0.06624f
        -0x40808feb
        -0x80000000
        -0x40d0ee5b
        -0x40c53837
        0x0
        -0x40c7aca3
        -0x40ce593a
        -0x80000000
        -0x40e45b29
        -0x40b4bfc2
        0x3eb0383b
        -0x4120ad04    # -0.43618f
        -0x40ab26f2
        0x0
        -0x41210471
        -0x40998dac
        0x0
        -0x4278572a    # -0.06624f
        -0x40808feb
        0x3ec37500
        -0x42781301    # -0.06637f
        -0x4093ffbd
        0x3e8ea3df
        -0x40d0b9bb
        -0x40d394b8
        -0x80000000
        -0x40d0ee5b
        -0x40c53837
        0x3e879d91
        -0x40c77186
        -0x40dc0ed0
        0x0
        -0x40c7aca3
        -0x40ce593a
        0x3e9b38b4
        -0x40e418e7
        -0x40c45d74
        -0x80000000
        -0x40e45b29
        -0x40b4bfc2
        0x3f22d6ed
        -0x41205ec4
        -0x40dd2913
        0x3f349e77
        -0x4277d955    # -0.06648f
        -0x40cb6199
        0x3f03d4bf
        -0x40d090d6
        -0x40fc2b41
        0x3efab389
        -0x40c74f51
        -0x41054c77
        0x3f0f8088
        -0x40e3f456
        -0x40f07f78
        0x3f54d90e
        -0x4120ad04    # -0.43618f
        -0x414fc7c5
        0x3f6c0043
        -0x42781301    # -0.06637f
        -0x413c8b00
        0x3f2c6b48
        -0x40d0b9cb
        -0x41715c21
        0x3f23f130
        -0x40c77186
        -0x4178626f
        0x3f3ba28c
        -0x40e418e7
        -0x4164c74c
        0x3f667254
        -0x41210471
        0x0
        0x3f7f7015
        -0x4278572a    # -0.06624f
        0x0
        0x3f3ac7c9
        -0x40d0ee5b
        -0x80000000
        0x3f31a6c6
        -0x40c7aca3
        0x0
        0x3f4b403e
        -0x40e45b29
        -0x80000000
        0x3f1383cf
        -0x40b7dbf5    # -0.7818f
        0x3e73ef28
        0x3f1fb539
        -0x40b7ed31
        -0x80000000
        0x3f4b403e
        -0x40e45b29
        -0x80000000
        0x3f3ba28c
        -0x40e418e7
        0x3e9b38b4
        0x3e278e19
        -0x40840af2
        0x3d8a4b99
        0x3e358bc6
        -0x40840e28
        0x0
        0x3d3a0c6b
        -0x40804f2b
        0x3c997c3d    # 0.018736f
        0x3d498d47
        -0x40804f5d
        0x0
        0x0
        -0x40800000    # -1.0f
        -0x80000000
        0x3d3a0c6b
        -0x40804f2b
        -0x436683c3    # -0.018736f
        0x3ee17e35
        -0x40b7b80b
        0x3ee17e35
        0x3f0f8088
        -0x40e3f456
        0x3f0f8088
        0x3dffcd25    # 0.124903f
        -0x4084067d
        0x3dffcd25    # 0.124903f
        0x3d0df9be    # 0.034662f
        -0x40804ec6
        0x3d0df9be    # 0.034662f
        0x3e73ef28
        -0x40b7dbf5    # -0.7818f
        0x3f1383cf
        0x3e9b38b4
        -0x40e418e7
        0x3f3ba28c
        0x3d8a4b99
        -0x40840af2
        0x3e278e19
        0x3c997c3d    # 0.018736f
        -0x40804f2b
        0x3d3a0c6b
        0x0
        -0x40b7ed31
        0x3f1fb539
        0x0
        -0x40e45b29
        0x3f4b403e
        -0x80000000
        -0x40840e28
        0x3e358bc6
        -0x80000000
        -0x40804f5d
        0x3d498d47
        -0x418c10d8
        -0x40b7dbf5    # -0.7818f
        0x3f1383cf
        0x0
        -0x40b7ed31
        0x3f1fb539
        0x0
        -0x40e45b29
        0x3f4b403e
        -0x4164c74c
        -0x40e418e7
        0x3f3ba28c
        -0x4275b467
        -0x40840af2
        0x3e278e19
        -0x80000000
        -0x40840e28
        0x3e358bc6
        -0x436683c3    # -0.018736f
        -0x40804f2b
        0x3d3a0c6b
        -0x80000000
        -0x40804f5d
        0x3d498d47
        -0x411e81cb
        -0x40b7b80b
        0x3ee17e35
        -0x40f07f78
        -0x40e3f456
        0x3f0f8088
        -0x420032db    # -0.124903f
        -0x4084067d
        0x3dffcd25    # 0.124903f
        -0x42f20642    # -0.034662f
        -0x40804ec6
        0x3d0df9be    # 0.034662f
        -0x40ec7c31
        -0x40b7dbf5    # -0.7818f
        0x3e73ef28
        -0x40c45d74
        -0x40e418e7
        0x3e9b38b4
        -0x41d871e7
        -0x40840af2
        0x3d8a4b99
        -0x42c5f395
        -0x40804f2b
        0x3c997c3d    # 0.018736f
        -0x40e04ac7
        -0x40b7ed31
        0x0
        -0x40b4bfc2
        -0x40e45b29
        0x0
        -0x41ca743a
        -0x40840e28
        -0x80000000
        -0x42b672b9
        -0x40804f5d
        -0x80000000
        -0x40ec7c31
        -0x40b7dbf5    # -0.7818f
        -0x418c10d8
        -0x40e04ac7
        -0x40b7ed31
        0x0
        -0x40b4bfc2
        -0x40e45b29
        0x0
        -0x40c45d74
        -0x40e418e7
        -0x4164c74c
        -0x41d871e7
        -0x40840af2
        -0x4275b467
        -0x41ca743a
        -0x40840e28
        -0x80000000
        -0x42c5f395
        -0x40804f2b
        -0x436683c3    # -0.018736f
        -0x42b672b9
        -0x40804f5d
        -0x80000000
        -0x411e81cb
        -0x40b7b80b
        -0x411e81cb
        -0x40f07f78
        -0x40e3f456
        -0x40f07f78
        -0x420032db    # -0.124903f
        -0x4084067d
        -0x420032db    # -0.124903f
        -0x42f20642    # -0.034662f
        -0x40804ec6
        -0x42f20642    # -0.034662f
        -0x418c10d8
        -0x40b7dbf5    # -0.7818f
        -0x40ec7c31
        -0x4164c74c
        -0x40e418e7
        -0x40c45d74
        -0x4275b467
        -0x40840af2
        -0x41d871e7
        -0x436683c3    # -0.018736f
        -0x40804f2b
        -0x42c5f395
        -0x80000000
        -0x40b7ed31
        -0x40e04ac7
        -0x80000000
        -0x40e45b29
        -0x40b4bfc2
        0x0
        -0x40840e28
        -0x41ca743a
        0x0
        -0x40804f5d
        -0x42b672b9
        0x3e73ef28
        -0x40b7dbf5    # -0.7818f
        -0x40ec7c31
        -0x80000000
        -0x40b7ed31
        -0x40e04ac7
        -0x80000000
        -0x40e45b29
        -0x40b4bfc2
        0x3e9b38b4
        -0x40e418e7
        -0x40c45d74
        0x3d8a4b99
        -0x40840af2
        -0x41d871e7
        0x0
        -0x40840e28
        -0x41ca743a
        0x3c997c3d    # 0.018736f
        -0x40804f2b
        -0x42c5f395
        0x0
        -0x40804f5d
        -0x42b672b9
        0x3ee17e35
        -0x40b7b80b
        -0x411e81cb
        0x3f0f8088
        -0x40e3f456
        -0x40f07f78
        0x3dffcd25    # 0.124903f
        -0x4084067d
        -0x420032db    # -0.124903f
        0x3d0df9be    # 0.034662f
        -0x40804ec6
        -0x42f20642    # -0.034662f
        0x3f1383cf
        -0x40b7dbf5    # -0.7818f
        -0x418c10d8
        0x3f3ba28c
        -0x40e418e7
        -0x4164c74c
        0x3e278e19
        -0x40840af2
        -0x4275b467
        0x3f1fb539
        -0x40b7ed31
        -0x80000000
        0x3f4b403e
        -0x40e45b29
        -0x80000000
        0x3e358bc6
        -0x40840e28
        0x0
        0x3d498d47
        -0x40804f5d
        0x0
        0x3d13f9e8
        -0x40a9a986
        0x3f0bad5c
        0x3d204f2b    # 0.039138f
        -0x40803244
        -0x457e5eab    # -9.89E-4f
        0x3bff21b4    # 0.007786f
        -0x408001f7    # -0.99997f
        -0x469d81f1    # -2.16E-4f
        0x3be6a769    # 0.007039f
        -0x40b00065
        0x3f153aa3
        0x3e25bab2
        -0x40b08840
        0x3f1023ea
        0x3e37d1fe
        -0x40842939
        -0x4470d62c    # -0.004369f
        0x3ef6f88c
        -0x40e7a461
        0x3f248b00
        0x3f1cbfb1    # 0.6123f
        -0x40b59e0e
        -0x43d49f95    # -0.01046f
        0x3f3d1cc1    # 0.73872f
        -0x42154fbe
        0x3f2a08f2
        0x3f7c7475
        -0x41d650a4
        -0x44256ffc    # -0.00667f
        0x3b3502ac    # 0.002762f
        0x3c8c23fb    # 0.017107f
        0x3f7ff62b
        -0x4505c897    # -0.001909f
        0x3e26030c
        0x3f7c9ce5
        0x3c2c929b    # 0.010533f
        0x3d9651b1
        0x3f7f4b94
        -0x4278bf7f    # -0.066041f
        0x3e053112    # 0.13007f
        0x3f7d42f6
        -0x423e9d0f
        0x3c87f024    # 0.016594f
        0x3f7ed224
        -0x42b8e8ea    # -0.048606f
        0x3f573227
        0x3f0a19eb
        -0x43e937d2    # -0.009203f
        0x3f5f1b37
        0x3efb07af
        -0x419b57c5
        0x3f4d899c
        0x3f0d804e
        -0x40e754a0
        0x3f0f5a42
        0x3f133c1d
        -0x40b25882
        0x3d8bbf51    # 0.068236f
        0x3f17734b
        -0x428f28c8
        0x3f7f8e9f
        0x3a3a1f4b    # 7.1E-4f
        -0x43d2f7f5    # -0.010561f
        0x3f7ffc54    # 0.999944f
        0x38d801b4    # 1.03E-4f
        -0x417046c7
        0x3f75b49a
        0x3b563cb8    # 0.003269f
        -0x40c01227
        0x3f2967a9
        0x3b8bda94    # 0.004268f
        -0x4080ad9b
        0x3d94eb14    # 0.072714f
        0x3b06f04a    # 0.002059f
        -0x42c18f82    # -0.046494f
        0x3f575771    # 0.841178f
        -0x40f61416
        -0x428f28c8
        0x3f7f8e9f
        0x3a3a1f4b    # 7.1E-4f
        -0x43d2f7f5    # -0.010561f
        0x3f7ffc54    # 0.999944f
        0x38d801b4    # 1.03E-4f
        -0x43eff3ae    # -0.008792f
        0x3f5f1a2a
        -0x4104f377
        -0x41a0dc77
        0x3f4e8ae7
        -0x40f36a2f
        -0x417046c7
        0x3f75b49a
        0x3b563cb8    # 0.003269f
        -0x40e71801
        0x3f0f5ddd    # 0.560026f
        -0x40ed0668
        -0x40c01227
        0x3f2967a9
        0x3b8bda94    # 0.004268f
        -0x40b22d0e    # -0.804f
        0x3d80d888    # 0.062913f
        -0x40e8a116
        -0x4080ad9b
        0x3d94eb14    # 0.072714f
        0x3b06f04a    # 0.002059f
        0x3b051a87    # 0.002031f
        0x3c6e7818    # 0.014555f
        -0x40800714
        -0x451348b2    # -0.001806f
        0x3e259253
        -0x40835e74    # -0.98684f
        0x3c16fa83    # 0.009215f
        0x3d760ae9
        -0x4080791c
        -0x428cf7cb
        0x3de9320e
        -0x40821e71
        -0x424e07e6
        0x3c495bff    # 0.01229f
        -0x4080fce7
        0x3d0a600b    # 0.033783f
        -0x40a998d0
        -0x40f4626f
        0x3bd24e16    # 0.006418f
        -0x40b007ee
        -0x40eaba49
        0x3e20e23b    # 0.157113f
        -0x40b0243e
        -0x40f01462
        0x3ef80410
        -0x40e91f4f
        -0x40da7d24
        0x3f3d2696
        -0x42307f24    # -0.10132f
        -0x40d574c5
        0x3d204f2b    # 0.039138f
        -0x40803244
        -0x457e5eab    # -9.89E-4f
        0x3bff21b4    # 0.007786f
        -0x408001f7    # -0.99997f
        -0x469d81f1    # -2.16E-4f
        0x3e37d1fe
        -0x40842939
        -0x4470d62c    # -0.004369f
        0x3f1cbfb1    # 0.6123f
        -0x40b59e0e
        -0x43d49f95    # -0.01046f
        0x3f7c7475
        -0x41d650a4
        -0x44256ffc    # -0.00667f
        0x3f39c172
        0x3e84c9a7
        0x3f232a17
        0x3f724e9c
        0x3ea53261
        -0x44a3fee3    # -0.003357f
        0x3f7c7475
        -0x41d650a4
        -0x44256ffc    # -0.00667f
        0x3f3d1cc1    # 0.73872f
        -0x42154fbe
        0x3f2a08f2
        0x3f255ca7
        0x3eec89b1
        0x3f1b9379
        0x3f536998
        0x3f1059c9
        -0x440bd018    # -0.007452f
        0x3f0817ec
        0x3f22fc26
        0x3f0f0154
        0x3f26671f
        0x3f428859    # 0.759893f
        -0x441cb03a    # -0.006937f
        0x3ed994e2
        0x3f2e8501
        0x3f18753e
        0x3f084d44
        0x3f58b179
        -0x445421c0    # -0.005245f
        -0x42b4fe7a    # -0.049562f
        -0x435e2ac3    # -0.019755f
        0x3f7fa2ad
        -0x423e9d0f
        0x3c87f024    # 0.016594f
        0x3f7ed224
        -0x42e51a00
        -0x42ee147b    # -0.035625f
        0x3f7fa776
        -0x42e4b44a    # -0.037914f
        -0x42ea7265
        0x3f7fa52b
        -0x41d317f0
        -0x4167739f
        0x3f70850a
        -0x40c1f5e0
        -0x4166d3b7
        0x3f197a57
        -0x40b25882
        0x3d8bbf51    # 0.068236f
        0x3f17734b
        -0x40e161c3
        -0x40f878d9
        0x3f145a3e
        -0x4108576d
        -0x40d07208
        0x3f0b38e7
        -0x411c028e
        -0x40b4a527
        0x3ed38bf0
        -0x4092d00b
        -0x413f5b1d
        0x3b02cf53    # 0.001996f
        -0x4080ad9b
        0x3d94eb14    # 0.072714f
        0x3b06f04a    # 0.002059f
        -0x40beff19
        -0x40d7d1fe
        0x3b8d759f    # 0.004317f
        -0x40ef0bf2
        -0x40acfe58
        0x3b62d1f2    # 0.003461f
        -0x410950fc
        -0x409fac4f
        0x3af29d41    # 0.001851f
        -0x40c15cfb
        -0x41694120
        -0x40e6a982
        -0x4092d00b
        -0x413f5b1d
        0x3b02cf53    # 0.001996f
        -0x4080ad9b
        0x3d94eb14    # 0.072714f
        0x3b06f04a    # 0.002059f
        -0x40b22d0e    # -0.804f
        0x3d80d888    # 0.062913f
        -0x40e8a116
        -0x40e0c7e3
        -0x40f8cd85
        -0x40ebfd61
        -0x40beff19
        -0x40d7d1fe
        0x3b8d759f    # 0.004317f
        -0x4109a3f4
        -0x40cfc8f3    # -0.68834f
        -0x40f50929
        -0x40ef0bf2
        -0x40acfe58
        0x3b62d1f2    # 0.003461f
        -0x411fb741
        -0x40b3f584
        -0x412b239a
        -0x410950fc
        -0x409fac4f
        0x3af29d41    # 0.001851f
        -0x42ca6549    # -0.044337f
        -0x437446fa    # -0.017056f
        -0x408049fd
        -0x424e07e6
        0x3c495bff    # 0.01229f
        -0x4080fce7
        -0x432990f3    # -0.026176f
        -0x43194185    # -0.028167f
        -0x4080307f    # -0.99926f
        -0x4330caa3    # -0.025294f
        -0x4317e77d    # -0.028332f
        -0x40802f51
        -0x41debd0a
        -0x416bd4d0
        -0x408e4b12
        0x3f3a6e33
        0x3e813be2    # 0.25241f
        -0x40dce443
        0x3f3d2696
        -0x42307f24    # -0.10132f
        -0x40d574c5
        0x3f25a565
        0x3eeb6113
        -0x40e44977
        0x3f05e2ef
        0x3f240219
        -0x40f015a0
        0x3ed1e8a3
        0x3f2ecfb7
        -0x40e5346a
        0x3f724e9c
        0x3ea53261
        -0x44a3fee3    # -0.003357f
        0x3f7c7475
        -0x41d650a4
        -0x44256ffc    # -0.00667f
        0x3f536998
        0x3f1059c9
        -0x440bd018    # -0.007452f
        0x3f26671f
        0x3f428859    # 0.759893f
        -0x441cb03a    # -0.006937f
        0x3f084d44
        0x3f58b179
        -0x445421c0    # -0.005245f
        -0x415dd6bf
        0x3f234396
        0x3f33bdad
        -0x40f378ee
        0x3f55fb1e
        -0x4539f341    # -0.001511f
        -0x4193ac93
        0x3f791559
        -0x442a411c    # -0.006523f
        -0x41e373f3
        0x3f2fed0f
        0x3f35cf03    # 0.71019f
        -0x40e62079
        0x3ef16228
        0x3f253459
        -0x409fd406
        0x3ef7327b
        0x3c221640    # 0.009893f
        -0x40dd3661
        0x3ee465c7    # 0.446089f
        0x3f213aa3
        -0x409f589f    # -0.877554f
        0x3ef54c34
        0x3c9c66d3    # 0.019092f
        -0x4120e5e6
        0x3f19dba9
        0x3f2b85d7
        -0x40cdc67e    # -0.69619f
        0x3f37aa15
        0x3cc8adef    # 0.024497f
        0x3e64ab60    # 0.22331f
        0x3bd64d7f    # 0.00654f
        0x3f7987a5
        0x3de38f36
        -0x4251c758    # -0.085069f
        0x3f7d7b20
        0x3e42a8ca
        0x3e1eaee2    # 0.154964f
        0x3f782e66
        0x3bacb85a    # 0.005271f
        0x3e420792
        0x3f7b5bd5    # 0.98187f
        -0x43bf748a    # -0.011752f
        0x3e7c9bc7
        0x3f7811f5
        0x3f128ea4
        -0x40eeae19
        0x3f1774de
        0x3eb01472
        -0x40c6f6d7
        0x3f197311
        0x3f499568
        -0x417cb168
        0x3f0f7da6
        0x3f25a826
        -0x416322f2
        0x3f32b95e
        0x3edae4f3
        -0x410055fc
        0x3f40ea4b
        0x3f2be8bc    # 0.67152f
        -0x40c24ebe
        -0x45945522    # -8.99E-4f
        0x3ed264e5
        -0x40969ced
        0x3aa84be4    # 0.001284f
        0x3f6c09e5
        -0x4139d346
        -0x4412556d    # -0.007253f
        0x3f58cf18    # 0.84691f
        -0x40f7ebf2
        -0x439d041d    # -0.013854f
        0x3f093251
        -0x40a7e271
        -0x43d3e2d6    # -0.010505f
        0x3f142353
        -0x40f05932
        -0x40e87d4e
        0x3f2be8bc    # 0.67152f
        -0x40c24ebe
        -0x45945522    # -8.99E-4f
        0x3ed264e5
        -0x40969ced
        0x3aa84be4    # 0.001284f
        0x3eaeb032
        -0x40c6f512
        -0x40e62963
        0x3f48ed2d
        -0x417f7a4e
        -0x40eef71a
        0x3f6c09e5
        -0x4139d346
        -0x4412556d    # -0.007253f
        0x3f2486be
        -0x41653e92
        -0x40cbc750
        0x3f58cf18    # 0.84691f
        -0x40f7ebf2
        -0x439d041d    # -0.013854f
        0x3ed6514c
        -0x40fffd3f    # -0.500042f
        -0x40bdec0b
        0x3f093251
        -0x40a7e271
        -0x43d3e2d6    # -0.010505f
        0x3e6e6602
        0x3c4ddd6e    # 0.012565f
        -0x40870e1b
        0x3ded2bb2
        -0x425dec5f
        -0x408287e4
        0x3e539f34    # 0.206662f
        0x3e1d4995
        -0x4088a1e0
        0x3cc8b439    # 0.0245f
        0x3e255150
        -0x40836fa0
        0x3b5da48b    # 0.003382f
        0x3e582e88
        -0x4085c582
        -0x415c6541    # -0.31954f
        0x3f221112
        -0x40cb810f
        -0x41f5d9a1    # -0.134912f
        0x3f2fff69    # 0.687491f
        -0x40c954b9
        -0x40e566ae
        0x3eec4220
        -0x40d99ff5    # -0.649903f
        -0x40de415f
        0x3edfd49d
        -0x40dc243e
        -0x4126c15d
        0x3f1cda4d
        -0x40d54fce
        -0x40f378ee
        0x3f55fb1e
        -0x4539f341    # -0.001511f
        -0x4193ac93
        0x3f791559
        -0x442a411c    # -0.006523f
        -0x409fd406
        0x3ef7327b
        0x3c221640    # 0.009893f
        -0x409f589f    # -0.877554f
        0x3ef54c34
        0x3c9c66d3    # 0.019092f
        -0x40cdc67e    # -0.69619f
        0x3f37aa15
        0x3cc8adef    # 0.024497f
        -0x417af3e4
        0x3f4abc62
        0x3f0d73c9
        -0x4125fd8b    # -0.4258f
        0x3f679de5
        0x3c310774    # 0.010805f
        -0x40cdc67e    # -0.69619f
        0x3f37aa15
        0x3cc8adef    # 0.024497f
        -0x4120e5e6
        0x3f19dba9
        0x3f2b85d7
        0x3c1c4977    # 0.009539f
        0x3f7feda6
        -0x434e746d    # -0.021673f
        0x3cb499d0    # 0.022046f
        0x3f7ff002
        0x3ad4bad8    # 0.001623f
        0x3ed1fff8
        0x3eaa7393
        -0x40a6a290
        0x3f7fe5a8
        0x3cd40032    # 0.025879f
        0x3c3d5561    # 0.011556f
        0x3f0aa130
        -0x40f38da4
        -0x40dced81    # -0.637001f
        0x3f35a77e
        -0x40cba27b
        0x3c1e774f    # 0.009672f
        0x3d3db09a
        0x3ee91340
        0x3f63a0b6
        -0x43bf748a    # -0.011752f
        0x3e7c9bc7
        0x3f7811f5
        -0x43d0e347    # -0.010688f
        0x3f7d21ab
        0x3e18793e    # 0.1489f
        -0x42ca3d71
        0x3f2ed59d    # 0.682947f
        -0x40c55886
        0x3dfb8bac
        0x3c174602    # 0.009233f
        -0x4081f30e
        0x3ef6b39a
        -0x41c73abd    # -0.18044f
        0x3f5b83e0
        0x3edae4f3
        -0x410055fc
        0x3f40ea4b
        0x3ee9198b
        0x3f3c9ba6    # 0.73675f
        0x3efff64d    # 0.499926f
        -0x419e2a80    # -0.220541f
        0x3f683dde
        -0x4148902e
        -0x418e6b40
        0x3f284189
        -0x40c8c187
        0x3f3a643d
        -0x40d0900c
        -0x4380a7c6    # -0.015585f
        0x3f093251
        -0x40a7e271
        -0x43d3e2d6    # -0.010505f
        0x3f638455
        0x3eea8da8
        -0x43775fb3    # -0.016678f
        -0x417ad44e
        0x3f773062
        0x3a51fa33    # 8.01E-4f
        -0x4141bc34    # -0.371611f
        0x3f6daa2e
        -0x446f3b21    # -0.004418f
        0x3ef5d830
        -0x41c95bbc
        -0x40a42236
        0x3f3a643d
        -0x40d0900c
        -0x4380a7c6    # -0.015585f
        0x3f093251
        -0x40a7e271
        -0x43d3e2d6    # -0.010505f
        0x3ed6514c
        -0x40fffd3f    # -0.500042f
        -0x40bdec0b
        0x3ef9e8c4
        0x3f378024
        -0x41010cd4
        0x3f638455
        0x3eea8da8
        -0x43775fb3    # -0.016678f
        -0x419caafc
        0x3f67c84b    # 0.9054f
        0x3eb949c7
        -0x417ad44e
        0x3f773062
        0x3a51fa33    # 8.01E-4f
        -0x418ef241    # -0.235404f
        0x3f29c62a    # 0.66318f
        0x3f35e1d2
        -0x4141bc34    # -0.371611f
        0x3f6daa2e
        -0x446f3b21    # -0.004418f
        0x3d70856e
        0x3ee01abd
        -0x409a511a    # -0.8972f
        0x3b5da48b    # 0.003382f
        0x3e582e88
        -0x4085c582
        0x3aadcd2d    # 0.001326f
        0x3f7c8894
        -0x41d80fdc
        -0x42caff6d    # -0.04419f
        0x3f2e8262
        0x3f3af61f
        0x3e0e21d9
        -0x42f3f749
        0x3f7d5ef2    # 0.98973f
        -0x417b72e7
        0x3f4c15b1
        -0x40f4620b
        -0x4126c15d
        0x3f1cda4d
        -0x40d54fce
        0x3c490c4e    # 0.012271f
        0x3f7feee5
        0x3c9dffc5    # 0.019287f
        0x3ecc195d
        0x3eb5b446
        0x3f587d5f
        0x3f099dcb
        -0x40eb295f    # -0.5814f
        0x3f1c5943
        -0x4125fd8b    # -0.4258f
        0x3f679de5
        0x3c310774    # 0.010805f
        -0x40cdc67e    # -0.69619f
        0x3f37aa15
        0x3cc8adef    # 0.024497f
        0x3cb499d0    # 0.022046f
        0x3f7ff002
        0x3ad4bad8    # 0.001623f
        0x3f7fe5a8
        0x3cd40032    # 0.025879f
        0x3c3d5561    # 0.011556f
        0x3f35a77e
        -0x40cba27b
        0x3c1e774f    # 0.009672f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f1556e2
        0x3f10aea7
        0x3f1555a4
        0x3f433c60    # 0.76264f
        0x3f10a622
        0x3ea130be
        0x3f53150e
        0x3f10d877
        0x378e9b39    # 1.7E-5f
        0x3f591559
        -0x4134399b
        0x3eb337a8
        0x3f6aee74
        -0x413498c4
        0x380e9b39    # 3.4E-5f
        0x3f5d3858
        -0x414a1b3b
        0x3eb67f6f
        0x3f6f6db9
        -0x414ac882
        0x38ecfa6a    # 1.13E-4f
        0x3f3892ef
        0x3f2028f6
        0x3e988aad
        0x3f47dcbe
        0x3f1ff8cb
        0x389d4952    # 7.5E-5f
        0x3f26031d
        -0x4133da30
        0x3f2600b0
        0x3f292ee8
        -0x4149c843    # -0.355894f
        0x3f2926c8
        0x3f0d46d4
        0x3f201301
        0x3f0d4174
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x487164c7    # -1.7E-5f
        0x3f10d877
        0x3f53150e
        0x3ea1309c
        0x3f10a72f
        0x3f433ba7
        0x3eb33919
        -0x41343c5c
        0x3f5915be
        0x3eb683c3
        -0x414a233a    # -0.3552f
        0x3f5d3911
        0x3e98913a
        0x3f2021c0
        0x3f3897d9
        -0x47f59685    # -3.3E-5f
        -0x413498c4
        0x3f6aee74
        -0x47130596    # -1.13E-4f
        -0x414ac882
        0x3f6f6db9
        -0x4762b6ae    # -7.5E-5f
        0x3f1ff8cb
        0x3f47dcbe
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40eaaa5c
        0x3f10aea7
        0x3f1556e2
        -0x415ecf42
        0x3f10a622
        0x3f433c60    # 0.76264f
        -0x487164c7    # -1.7E-5f
        0x3f10d877
        0x3f53150e
        -0x414cc858
        -0x4134399b
        0x3f591559
        -0x47f59685    # -3.3E-5f
        -0x413498c4
        0x3f6aee74
        -0x41498091
        -0x414a1b3b
        0x3f5d3858
        -0x47130596    # -1.13E-4f
        -0x414ac882
        0x3f6f6db9
        -0x41677553
        0x3f2028f6
        0x3f3892ef
        -0x4762b6ae    # -7.5E-5f
        0x3f1ff8cb
        0x3f47dcbe
        -0x40d9ff50
        -0x4133da30
        0x3f26031d
        -0x40d6d938
        -0x4149c843    # -0.355894f
        0x3f292ee8
        -0x40f2be8c
        0x3f201301
        0x3f0d46d4
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40aceaf2
        0x3f10d877
        -0x487164c7    # -1.7E-5f
        -0x40bcc459
        0x3f10a72f
        0x3ea1309c
        -0x40a6ea42
        -0x41343c5c
        0x3eb33919
        -0x40a2c6ef
        -0x414a233a    # -0.3552f
        0x3eb683c3
        -0x40c76827
        0x3f2021c0
        0x3e98913a
        -0x4095118c
        -0x413498c4
        -0x47f59685    # -3.3E-5f
        -0x40909247
        -0x414ac882
        -0x47130596    # -1.13E-4f
        -0x40b82342
        0x3f1ff8cb
        -0x4762b6ae    # -7.5E-5f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40eaa91e
        0x3f10aea7
        -0x40eaaa5c
        -0x40bcc3a0    # -0.76264f
        0x3f10a622
        -0x415ecf42
        -0x40aceaf2
        0x3f10d877
        -0x487164c7    # -1.7E-5f
        -0x40a6eaa7
        -0x4134399b
        -0x414cc858
        -0x4095118c
        -0x413498c4
        -0x47f59685    # -3.3E-5f
        -0x40a2c7a8
        -0x414a1b3b
        -0x41498091
        -0x40909247
        -0x414ac882
        -0x47130596    # -1.13E-4f
        -0x40c76d11
        0x3f2028f6
        -0x41677553
        -0x40b82342
        0x3f1ff8cb
        -0x4762b6ae    # -7.5E-5f
        -0x40d9fce3
        -0x4133da30
        -0x40d9ff50
        -0x40d6d118
        -0x4149c843    # -0.355894f
        -0x40d6d938
        -0x40f2b92c
        0x3f201301
        -0x40f2be8c
        0x0
        0x3f800000    # 1.0f
        0x0
        0x378e9b39    # 1.7E-5f
        0x3f10d877
        -0x40aceaf2
        -0x415ecf64
        0x3f10a72f
        -0x40bcc459
        -0x414cc6e7
        -0x41343c5c
        -0x40a6ea42
        -0x41497c3d
        -0x414a233a    # -0.3552f
        -0x40a2c6ef
        -0x41676ec6
        0x3f2021c0
        -0x40c76827
        0x380a697b    # 3.3E-5f
        -0x413498c4
        -0x4095118c
        0x38ecfa6a    # 1.13E-4f
        -0x414ac882
        -0x40909247
        0x389d4952    # 7.5E-5f
        0x3f1ff8cb
        -0x40b82342
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f1555a4
        0x3f10aea7
        -0x40eaa91e
        0x3ea130be
        0x3f10a622
        -0x40bcc3a0    # -0.76264f
        0x378e9b39    # 1.7E-5f
        0x3f10d877
        -0x40aceaf2
        0x3eb337a8
        -0x4134399b
        -0x40a6eaa7
        0x380a697b    # 3.3E-5f
        -0x413498c4
        -0x4095118c
        0x3eb67f6f
        -0x414a1b3b
        -0x40a2c7a8
        0x38ecfa6a    # 1.13E-4f
        -0x414ac882
        -0x40909247
        0x3e988aad
        0x3f2028f6
        -0x40c76d11
        0x389d4952    # 7.5E-5f
        0x3f1ff8cb
        -0x40b82342
        0x3f2600b0
        -0x4133da30
        -0x40d9fce3
        0x3f2926c8
        -0x4149c843    # -0.355894f
        -0x40d6d118
        0x3f0d4174
        0x3f201301
        -0x40f2b92c
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f53150e
        0x3f10d877
        0x378e9b39    # 1.7E-5f
        0x3f433ba7
        0x3f10a72f
        -0x415ecf64
        0x3f5915be
        -0x41343c5c
        -0x414cc6e7
        0x3f5d3911
        -0x414a233a    # -0.3552f
        -0x41497c3d
        0x3f3897d9
        0x3f2021c0
        -0x41676ec6
        0x3f6aee74
        -0x413498c4
        0x380e9b39    # 3.4E-5f
        0x3f6f6db9
        -0x414ac882
        0x38ecfa6a    # 1.13E-4f
        0x3f47dcbe
        0x3f1ff8cb
        0x389d4952    # 7.5E-5f
        0x3e5f35a0    # 0.217978f
        0x3f78c63f
        0x3db8c32b
        0x3e724313
        0x3f78bb80
        0x0
        0x3f47dcbe
        0x3f1ff8cb
        0x389d4952    # 7.5E-5f
        0x3f3892ef
        0x3f2028f6
        0x3e988aad
        0x3e236b4c
        0x3f7c2774
        0x3d871690
        0x3e313cef
        0x3f7c22dd
        0x0
        0x3eb37479
        0x3f6ce13f
        0x3e143676
        0x3ec2686e
        0x3f6cd3e1
        -0x80000000
        0x3ef89f1f
        0x3f59c476
        0x3e4e4f33
        0x3f06d3fa
        0x3f599e1f
        0x0
        0x3e2aa151
        0x3f78ca60
        0x3e2aa151
        0x3f0d46d4
        0x3f201301
        0x3f0d4174
        0x3df9aae7
        0x3f7c2aaa
        0x3df9aae7
        0x3e890bc8
        0x3f6cf323
        0x3e890bc8
        0x3ebe1d00
        0x3f59dd09
        0x3ebe1d00
        0x3db8c32b
        0x3f78c63f
        0x3e5f35a0    # 0.217978f
        0x3e98913a
        0x3f2021c0
        0x3f3897d9
        0x3d871690
        0x3f7c2774
        0x3e236b4c
        0x3e143676
        0x3f6ce13f
        0x3eb37479
        0x3e4e4f33
        0x3f59c476
        0x3ef89f1f
        -0x80000000
        0x3f78bb80
        0x3e724313
        -0x4762b6ae    # -7.5E-5f
        0x3f1ff8cb
        0x3f47dcbe
        -0x80000000
        0x3f7c22dd
        0x3e313cef
        0x0
        0x3f6cd3e1
        0x3ec2686e
        0x0
        0x3f599e1f
        0x3f06d3fa
        -0x42473cd5
        0x3f78c63f
        0x3e5f35a0    # 0.217978f
        -0x80000000
        0x3f78bb80
        0x3e724313
        -0x4762b6ae    # -7.5E-5f
        0x3f1ff8cb
        0x3f47dcbe
        -0x41677553
        0x3f2028f6
        0x3f3892ef
        -0x4278e970
        0x3f7c2774
        0x3e236b4c
        -0x80000000
        0x3f7c22dd
        0x3e313cef
        -0x41ebc98a
        0x3f6ce13f
        0x3eb37479
        0x0
        0x3f6cd3e1
        0x3ec2686e
        -0x41b1b0cd
        0x3f59c476
        0x3ef89f1f
        0x0
        0x3f599e1f
        0x3f06d3fa
        -0x41d55eaf
        0x3f78ca60
        0x3e2aa151
        -0x40f2be8c
        0x3f201301
        0x3f0d46d4
        -0x42065519
        0x3f7c2aaa
        0x3df9aae7
        -0x4176f438
        0x3f6cf323
        0x3e890bc8
        -0x4141e300
        0x3f59dd09
        0x3ebe1d00
        -0x41a0ca60    # -0.217978f
        0x3f78c63f
        0x3db8c32b
        -0x40c76827
        0x3f2021c0
        0x3e98913a
        -0x41dc94b4
        0x3f7c2774
        0x3d871690
        -0x414c8b87
        0x3f6ce13f
        0x3e143676
        -0x410760e1
        0x3f59c476
        0x3e4e4f33
        -0x418dbced
        0x3f78bb80
        -0x80000000
        -0x40b82342
        0x3f1ff8cb
        -0x4762b6ae    # -7.5E-5f
        -0x41cec311
        0x3f7c22dd
        -0x80000000
        -0x413d9792
        0x3f6cd3e1
        0x0
        -0x40f92c06
        0x3f599e1f
        0x0
        -0x41a0ca60    # -0.217978f
        0x3f78c63f
        -0x42473cd5
        -0x418dbced
        0x3f78bb80
        -0x80000000
        -0x40b82342
        0x3f1ff8cb
        -0x4762b6ae    # -7.5E-5f
        -0x40c76d11
        0x3f2028f6
        -0x41677553
        -0x41dc94b4
        0x3f7c2774
        -0x4278e970
        -0x41cec311
        0x3f7c22dd
        -0x80000000
        -0x414c8b87
        0x3f6ce13f
        -0x41ebc98a
        -0x413d9792
        0x3f6cd3e1
        0x0
        -0x410760e1
        0x3f59c476
        -0x41b1b0cd
        -0x40f92c06
        0x3f599e1f
        0x0
        -0x41d55eaf
        0x3f78ca60
        -0x41d55eaf
        -0x40f2b92c
        0x3f201301
        -0x40f2be8c
        -0x42065519
        0x3f7c2aaa
        -0x42065519
        -0x4176f438
        0x3f6cf323
        -0x4176f438
        -0x4141e300
        0x3f59dd09
        -0x4141e300
        -0x42473cd5
        0x3f78c63f
        -0x41a0ca60    # -0.217978f
        -0x41676ec6
        0x3f2021c0
        -0x40c76827
        -0x4278e970
        0x3f7c2774
        -0x41dc94b4
        -0x41ebc98a
        0x3f6ce13f
        -0x414c8b87
        -0x41b1b0cd
        0x3f59c476
        -0x410760e1
        0x0
        0x3f78bb80
        -0x418dbced
        0x389d4952    # 7.5E-5f
        0x3f1ff8cb
        -0x40b82342
        0x0
        0x3f7c22dd
        -0x41cec311
        -0x80000000
        0x3f6cd3e1
        -0x413d9792
        -0x80000000
        0x3f599e1f
        -0x40f92c06
        0x3db8c32b
        0x3f78c63f
        -0x41a0ca60    # -0.217978f
        0x0
        0x3f78bb80
        -0x418dbced
        0x389d4952    # 7.5E-5f
        0x3f1ff8cb
        -0x40b82342
        0x3e988aad
        0x3f2028f6
        -0x40c76d11
        0x3d871690
        0x3f7c2774
        -0x41dc94b4
        0x0
        0x3f7c22dd
        -0x41cec311
        0x3e143676
        0x3f6ce13f
        -0x414c8b87
        -0x80000000
        0x3f6cd3e1
        -0x413d9792
        0x3e4e4f33
        0x3f59c476
        -0x410760e1
        -0x80000000
        0x3f599e1f
        -0x40f92c06
        0x3e2aa151
        0x3f78ca60
        -0x41d55eaf
        0x3f0d4174
        0x3f201301
        -0x40f2b92c
        0x3df9aae7
        0x3f7c2aaa
        -0x42065519
        0x3e890bc8
        0x3f6cf323
        -0x4176f438
        0x3ebe1d00
        0x3f59dd09
        -0x4141e300
        0x3e5f35a0    # 0.217978f
        0x3f78c63f
        -0x42473cd5
        0x3f3897d9
        0x3f2021c0
        -0x41676ec6
        0x3e236b4c
        0x3f7c2774
        -0x4278e970
        0x3eb37479
        0x3f6ce13f
        -0x41ebc98a
        0x3ef89f1f
        0x3f59c476
        -0x41b1b0cd
        0x3e724313
        0x3f78bb80
        0x0
        0x3f47dcbe
        0x3f1ff8cb
        0x389d4952    # 7.5E-5f
        0x3e313cef
        0x3f7c22dd
        0x0
        0x3ec2686e
        0x3f6cd3e1
        -0x80000000
        0x3f06d3fa
        0x3f599e1f
        0x0
        0x0
        -0x40800000    # -1.0f
        -0x80000000
        0x0
        -0x40800000    # -1.0f
        -0x80000000
        0x0
        -0x40800000    # -1.0f
        -0x80000000
        0x0
        -0x40800000    # -1.0f
        -0x80000000
        0x0
        -0x40800000    # -1.0f
        -0x80000000
        0x0
        -0x40800000    # -1.0f
        -0x80000000
        0x0
        -0x40800000    # -1.0f
        -0x80000000
        0x0
        -0x40800000    # -1.0f
        -0x80000000
        0x0
        -0x40800000    # -1.0f
        -0x80000000
        0x0
        -0x40800000    # -1.0f
        -0x80000000
        0x0
        -0x40800000    # -1.0f
        -0x80000000
        0x0
        -0x40800000    # -1.0f
        -0x80000000
        0x0
        -0x40800000    # -1.0f
        -0x80000000
        0x0
        -0x40800000    # -1.0f
        -0x80000000
    .end array-data
.end method

.method private setTextureData()V
    .locals 3

    const/16 v0, 0x61e

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/ardor3d/scenegraph/MeshData;->setTextureBuffer(Ljava/nio/FloatBuffer;I)V

    return-void

    :array_0
    .array-data 4
        0x3fe00000    # 1.75f
        0x3ffccccd    # 1.975f
        0x40000000    # 2.0f
        0x3ffccccd    # 1.975f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x3fe00000    # 1.75f
        0x40000000    # 2.0f
        0x3fe00000    # 1.75f
        0x3ff9999a    # 1.95f
        0x40000000    # 2.0f
        0x3ff9999a    # 1.95f
        0x3fe00000    # 1.75f
        0x3ff66666    # 1.925f
        0x40000000    # 2.0f
        0x3ff66666    # 1.925f
        0x3fe00000    # 1.75f
        0x3ff33333    # 1.9f
        0x40000000    # 2.0f
        0x3ff33333    # 1.9f
        0x3fc00000    # 1.5f
        0x3ffccccd    # 1.975f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
        0x3fc00000    # 1.5f
        0x3ff9999a    # 1.95f
        0x3fc00000    # 1.5f
        0x3ff66666    # 1.925f
        0x3fc00000    # 1.5f
        0x3ff33333    # 1.9f
        0x3fa00000    # 1.25f
        0x3ffccccd    # 1.975f
        0x3fa00000    # 1.25f
        0x40000000    # 2.0f
        0x3fa00000    # 1.25f
        0x3ff9999a    # 1.95f
        0x3fa00000    # 1.25f
        0x3ff66666    # 1.925f
        0x3fa00000    # 1.25f
        0x3ff33333    # 1.9f
        0x3f800000    # 1.0f
        0x3ffccccd    # 1.975f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3ff9999a    # 1.95f
        0x3f800000    # 1.0f
        0x3ff66666    # 1.925f
        0x3f800000    # 1.0f
        0x3ff33333    # 1.9f
        0x3f400000    # 0.75f
        0x3ffccccd    # 1.975f
        0x3f800000    # 1.0f
        0x3ffccccd    # 1.975f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f400000    # 0.75f
        0x40000000    # 2.0f
        0x3f400000    # 0.75f
        0x3ff9999a    # 1.95f
        0x3f800000    # 1.0f
        0x3ff9999a    # 1.95f
        0x3f400000    # 0.75f
        0x3ff66666    # 1.925f
        0x3f800000    # 1.0f
        0x3ff66666    # 1.925f
        0x3f400000    # 0.75f
        0x3ff33333    # 1.9f
        0x3f800000    # 1.0f
        0x3ff33333    # 1.9f
        0x3f000000    # 0.5f
        0x3ffccccd    # 1.975f
        0x3f000000    # 0.5f
        0x40000000    # 2.0f
        0x3f000000    # 0.5f
        0x3ff9999a    # 1.95f
        0x3f000000    # 0.5f
        0x3ff66666    # 1.925f
        0x3f000000    # 0.5f
        0x3ff33333    # 1.9f
        0x3e800000    # 0.25f
        0x3ffccccd    # 1.975f
        0x3e800000    # 0.25f
        0x40000000    # 2.0f
        0x3e800000    # 0.25f
        0x3ff9999a    # 1.95f
        0x3e800000    # 0.25f
        0x3ff66666    # 1.925f
        0x3e800000    # 0.25f
        0x3ff33333    # 1.9f
        0x0
        0x3ffccccd    # 1.975f
        0x0
        0x40000000    # 2.0f
        0x0
        0x3ff9999a    # 1.95f
        0x0
        0x3ff66666    # 1.925f
        0x0
        0x3ff33333    # 1.9f
        0x3fe00000    # 1.75f
        0x3ffccccd    # 1.975f
        0x40000000    # 2.0f
        0x3ffccccd    # 1.975f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x3fe00000    # 1.75f
        0x40000000    # 2.0f
        0x3fe00000    # 1.75f
        0x3ff9999a    # 1.95f
        0x40000000    # 2.0f
        0x3ff9999a    # 1.95f
        0x3fe00000    # 1.75f
        0x3ff66666    # 1.925f
        0x40000000    # 2.0f
        0x3ff66666    # 1.925f
        0x3fe00000    # 1.75f
        0x3ff33333    # 1.9f
        0x40000000    # 2.0f
        0x3ff33333    # 1.9f
        0x3fc00000    # 1.5f
        0x3ffccccd    # 1.975f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
        0x3fc00000    # 1.5f
        0x3ff9999a    # 1.95f
        0x3fc00000    # 1.5f
        0x3ff66666    # 1.925f
        0x3fc00000    # 1.5f
        0x3ff33333    # 1.9f
        0x3fa00000    # 1.25f
        0x3ffccccd    # 1.975f
        0x3fa00000    # 1.25f
        0x40000000    # 2.0f
        0x3fa00000    # 1.25f
        0x3ff9999a    # 1.95f
        0x3fa00000    # 1.25f
        0x3ff66666    # 1.925f
        0x3fa00000    # 1.25f
        0x3ff33333    # 1.9f
        0x3f800000    # 1.0f
        0x3ffccccd    # 1.975f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3ff9999a    # 1.95f
        0x3f800000    # 1.0f
        0x3ff66666    # 1.925f
        0x3f800000    # 1.0f
        0x3ff33333    # 1.9f
        0x3f400000    # 0.75f
        0x3ffccccd    # 1.975f
        0x3f800000    # 1.0f
        0x3ffccccd    # 1.975f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f400000    # 0.75f
        0x40000000    # 2.0f
        0x3f400000    # 0.75f
        0x3ff9999a    # 1.95f
        0x3f800000    # 1.0f
        0x3ff9999a    # 1.95f
        0x3f400000    # 0.75f
        0x3ff66666    # 1.925f
        0x3f800000    # 1.0f
        0x3ff66666    # 1.925f
        0x3f400000    # 0.75f
        0x3ff33333    # 1.9f
        0x3f800000    # 1.0f
        0x3ff33333    # 1.9f
        0x3f000000    # 0.5f
        0x3ffccccd    # 1.975f
        0x3f000000    # 0.5f
        0x40000000    # 2.0f
        0x3f000000    # 0.5f
        0x3ff9999a    # 1.95f
        0x3f000000    # 0.5f
        0x3ff66666    # 1.925f
        0x3f000000    # 0.5f
        0x3ff33333    # 1.9f
        0x3e800000    # 0.25f
        0x3ffccccd    # 1.975f
        0x3e800000    # 0.25f
        0x40000000    # 2.0f
        0x3e800000    # 0.25f
        0x3ff9999a    # 1.95f
        0x3e800000    # 0.25f
        0x3ff66666    # 1.925f
        0x3e800000    # 0.25f
        0x3ff33333    # 1.9f
        0x0
        0x3ffccccd    # 1.975f
        0x0
        0x40000000    # 2.0f
        0x0
        0x3ff9999a    # 1.95f
        0x0
        0x3ff66666    # 1.925f
        0x0
        0x3ff33333    # 1.9f
        0x3fe00000    # 1.75f
        0x3fd66666    # 1.675f
        0x40000000    # 2.0f
        0x3fd66666    # 1.675f
        0x40000000    # 2.0f
        0x3ff33333    # 1.9f
        0x3fe00000    # 1.75f
        0x3ff33333    # 1.9f
        0x3fe00000    # 1.75f
        0x3fb9999a    # 1.45f
        0x40000000    # 2.0f
        0x3fb9999a    # 1.45f
        0x3fe00000    # 1.75f
        0x3f9ccccd    # 1.225f
        0x40000000    # 2.0f
        0x3f9ccccd    # 1.225f
        0x3fe00000    # 1.75f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
        0x3fd66666    # 1.675f
        0x3fc00000    # 1.5f
        0x3ff33333    # 1.9f
        0x3fc00000    # 1.5f
        0x3fb9999a    # 1.45f
        0x3fc00000    # 1.5f
        0x3f9ccccd    # 1.225f
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
        0x3fd66666    # 1.675f
        0x3fa00000    # 1.25f
        0x3ff33333    # 1.9f
        0x3fa00000    # 1.25f
        0x3fb9999a    # 1.45f
        0x3fa00000    # 1.25f
        0x3f9ccccd    # 1.225f
        0x3fa00000    # 1.25f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3fd66666    # 1.675f
        0x3f800000    # 1.0f
        0x3ff33333    # 1.9f
        0x3f800000    # 1.0f
        0x3fb9999a    # 1.45f
        0x3f800000    # 1.0f
        0x3f9ccccd    # 1.225f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x3fd66666    # 1.675f
        0x3f800000    # 1.0f
        0x3fd66666    # 1.675f
        0x3f800000    # 1.0f
        0x3ff33333    # 1.9f
        0x3f400000    # 0.75f
        0x3ff33333    # 1.9f
        0x3f400000    # 0.75f
        0x3fb9999a    # 1.45f
        0x3f800000    # 1.0f
        0x3fb9999a    # 1.45f
        0x3f400000    # 0.75f
        0x3f9ccccd    # 1.225f
        0x3f800000    # 1.0f
        0x3f9ccccd    # 1.225f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3fd66666    # 1.675f
        0x3f000000    # 0.5f
        0x3ff33333    # 1.9f
        0x3f000000    # 0.5f
        0x3fb9999a    # 1.45f
        0x3f000000    # 0.5f
        0x3f9ccccd    # 1.225f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
        0x3fd66666    # 1.675f
        0x3e800000    # 0.25f
        0x3ff33333    # 1.9f
        0x3e800000    # 0.25f
        0x3fb9999a    # 1.45f
        0x3e800000    # 0.25f
        0x3f9ccccd    # 1.225f
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
        0x0
        0x3fd66666    # 1.675f
        0x0
        0x3ff33333    # 1.9f
        0x0
        0x3fb9999a    # 1.45f
        0x0
        0x3f9ccccd    # 1.225f
        0x0
        0x3f800000    # 1.0f
        0x3fe00000    # 1.75f
        0x3fd66666    # 1.675f
        0x40000000    # 2.0f
        0x3fd66666    # 1.675f
        0x40000000    # 2.0f
        0x3ff33333    # 1.9f
        0x3fe00000    # 1.75f
        0x3ff33333    # 1.9f
        0x3fe00000    # 1.75f
        0x3fb9999a    # 1.45f
        0x40000000    # 2.0f
        0x3fb9999a    # 1.45f
        0x3fe00000    # 1.75f
        0x3f9ccccd    # 1.225f
        0x40000000    # 2.0f
        0x3f9ccccd    # 1.225f
        0x3fe00000    # 1.75f
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
        0x3fd66666    # 1.675f
        0x3fc00000    # 1.5f
        0x3ff33333    # 1.9f
        0x3fc00000    # 1.5f
        0x3fb9999a    # 1.45f
        0x3fc00000    # 1.5f
        0x3f9ccccd    # 1.225f
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
        0x3fd66666    # 1.675f
        0x3fa00000    # 1.25f
        0x3ff33333    # 1.9f
        0x3fa00000    # 1.25f
        0x3fb9999a    # 1.45f
        0x3fa00000    # 1.25f
        0x3f9ccccd    # 1.225f
        0x3fa00000    # 1.25f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3fd66666    # 1.675f
        0x3f800000    # 1.0f
        0x3ff33333    # 1.9f
        0x3f800000    # 1.0f
        0x3fb9999a    # 1.45f
        0x3f800000    # 1.0f
        0x3f9ccccd    # 1.225f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x3fd66666    # 1.675f
        0x3f800000    # 1.0f
        0x3fd66666    # 1.675f
        0x3f800000    # 1.0f
        0x3ff33333    # 1.9f
        0x3f400000    # 0.75f
        0x3ff33333    # 1.9f
        0x3f400000    # 0.75f
        0x3fb9999a    # 1.45f
        0x3f800000    # 1.0f
        0x3fb9999a    # 1.45f
        0x3f400000    # 0.75f
        0x3f9ccccd    # 1.225f
        0x3f800000    # 1.0f
        0x3f9ccccd    # 1.225f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3fd66666    # 1.675f
        0x3f000000    # 0.5f
        0x3ff33333    # 1.9f
        0x3f000000    # 0.5f
        0x3fb9999a    # 1.45f
        0x3f000000    # 0.5f
        0x3f9ccccd    # 1.225f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
        0x3fd66666    # 1.675f
        0x3e800000    # 0.25f
        0x3ff33333    # 1.9f
        0x3e800000    # 0.25f
        0x3fb9999a    # 1.45f
        0x3e800000    # 0.25f
        0x3f9ccccd    # 1.225f
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
        0x0
        0x3fd66666    # 1.675f
        0x0
        0x3ff33333    # 1.9f
        0x0
        0x3fb9999a    # 1.45f
        0x0
        0x3f9ccccd    # 1.225f
        0x0
        0x3f800000    # 1.0f
        0x3fe00000    # 1.75f
        0x3f59999a    # 0.85f
        0x40000000    # 2.0f
        0x3f59999a    # 0.85f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3fe00000    # 1.75f
        0x3f800000    # 1.0f
        0x3fe00000    # 1.75f
        0x3f333333    # 0.7f
        0x40000000    # 2.0f
        0x3f333333    # 0.7f
        0x3fe00000    # 1.75f
        0x3f0ccccd    # 0.55f
        0x40000000    # 2.0f
        0x3f0ccccd    # 0.55f
        0x3fe00000    # 1.75f
        0x3ecccccd    # 0.4f
        0x40000000    # 2.0f
        0x3ecccccd    # 0.4f
        0x3fc00000    # 1.5f
        0x3f59999a    # 0.85f
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
        0x3f333333    # 0.7f
        0x3fc00000    # 1.5f
        0x3f0ccccd    # 0.55f
        0x3fc00000    # 1.5f
        0x3ecccccd    # 0.4f
        0x3fa00000    # 1.25f
        0x3f59999a    # 0.85f
        0x3fa00000    # 1.25f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
        0x3f333333    # 0.7f
        0x3fa00000    # 1.25f
        0x3f0ccccd    # 0.55f
        0x3fa00000    # 1.25f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
        0x3f0ccccd    # 0.55f
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
        0x3f400000    # 0.75f
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3f400000    # 0.75f
        0x3f0ccccd    # 0.55f
        0x3f800000    # 1.0f
        0x3f0ccccd    # 0.55f
        0x3f400000    # 0.75f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
        0x3f000000    # 0.5f
        0x3f59999a    # 0.85f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f333333    # 0.7f
        0x3f000000    # 0.5f
        0x3f0ccccd    # 0.55f
        0x3f000000    # 0.5f
        0x3ecccccd    # 0.4f
        0x3e800000    # 0.25f
        0x3f59999a    # 0.85f
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
        0x3f333333    # 0.7f
        0x3e800000    # 0.25f
        0x3f0ccccd    # 0.55f
        0x3e800000    # 0.25f
        0x3ecccccd    # 0.4f
        0x0
        0x3f59999a    # 0.85f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f333333    # 0.7f
        0x0
        0x3f0ccccd    # 0.55f
        0x0
        0x3ecccccd    # 0.4f
        0x3fe00000    # 1.75f
        0x3f59999a    # 0.85f
        0x40000000    # 2.0f
        0x3f59999a    # 0.85f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
        0x3fe00000    # 1.75f
        0x3f800000    # 1.0f
        0x3fe00000    # 1.75f
        0x3f333333    # 0.7f
        0x40000000    # 2.0f
        0x3f333333    # 0.7f
        0x3fe00000    # 1.75f
        0x3f0ccccd    # 0.55f
        0x40000000    # 2.0f
        0x3f0ccccd    # 0.55f
        0x3fe00000    # 1.75f
        0x3ecccccd    # 0.4f
        0x40000000    # 2.0f
        0x3ecccccd    # 0.4f
        0x3fc00000    # 1.5f
        0x3f59999a    # 0.85f
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
        0x3f333333    # 0.7f
        0x3fc00000    # 1.5f
        0x3f0ccccd    # 0.55f
        0x3fc00000    # 1.5f
        0x3ecccccd    # 0.4f
        0x3fa00000    # 1.25f
        0x3f59999a    # 0.85f
        0x3fa00000    # 1.25f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
        0x3f333333    # 0.7f
        0x3fa00000    # 1.25f
        0x3f0ccccd    # 0.55f
        0x3fa00000    # 1.25f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
        0x3f0ccccd    # 0.55f
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
        0x3f400000    # 0.75f
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3f400000    # 0.75f
        0x3f0ccccd    # 0.55f
        0x3f800000    # 1.0f
        0x3f0ccccd    # 0.55f
        0x3f400000    # 0.75f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
        0x3f000000    # 0.5f
        0x3f59999a    # 0.85f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f333333    # 0.7f
        0x3f000000    # 0.5f
        0x3f0ccccd    # 0.55f
        0x3f000000    # 0.5f
        0x3ecccccd    # 0.4f
        0x3e800000    # 0.25f
        0x3f59999a    # 0.85f
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
        0x3f333333    # 0.7f
        0x3e800000    # 0.25f
        0x3f0ccccd    # 0.55f
        0x3e800000    # 0.25f
        0x3ecccccd    # 0.4f
        0x0
        0x3f59999a    # 0.85f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f333333    # 0.7f
        0x0
        0x3f0ccccd    # 0.55f
        0x0
        0x3ecccccd    # 0.4f
        0x3fe00000    # 1.75f
        0x3e99999a    # 0.3f
        0x40000000    # 2.0f
        0x3e99999a    # 0.3f
        0x40000000    # 2.0f
        0x3ecccccd    # 0.4f
        0x3fe00000    # 1.75f
        0x3ecccccd    # 0.4f
        0x3fe00000    # 1.75f
        0x3e4ccccd    # 0.2f
        0x40000000    # 2.0f
        0x3e4ccccd    # 0.2f
        0x3fe00000    # 1.75f
        0x3dcccccd    # 0.1f
        0x40000000    # 2.0f
        0x3dcccccd    # 0.1f
        0x3fe00000    # 1.75f
        0x0
        0x3e800000    # 0.25f
        0x3dcccccd    # 0.1f
        0x3fc00000    # 1.5f
        0x3e99999a    # 0.3f
        0x3fc00000    # 1.5f
        0x3ecccccd    # 0.4f
        0x3fc00000    # 1.5f
        0x3e4ccccd    # 0.2f
        0x3fc00000    # 1.5f
        0x3dcccccd    # 0.1f
        0x3fa00000    # 1.25f
        0x3e99999a    # 0.3f
        0x3fa00000    # 1.25f
        0x3ecccccd    # 0.4f
        0x3fa00000    # 1.25f
        0x3e4ccccd    # 0.2f
        0x3fa00000    # 1.25f
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
        0x3f400000    # 0.75f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
        0x3f400000    # 0.75f
        0x3ecccccd    # 0.4f
        0x3f400000    # 0.75f
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
        0x3f400000    # 0.75f
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
        0x3f000000    # 0.5f
        0x3e99999a    # 0.3f
        0x3f000000    # 0.5f
        0x3ecccccd    # 0.4f
        0x3f000000    # 0.5f
        0x3e4ccccd    # 0.2f
        0x3f000000    # 0.5f
        0x3dcccccd    # 0.1f
        0x3e800000    # 0.25f
        0x3e99999a    # 0.3f
        0x3e800000    # 0.25f
        0x3ecccccd    # 0.4f
        0x3e800000    # 0.25f
        0x3e4ccccd    # 0.2f
        0x3e800000    # 0.25f
        0x3dcccccd    # 0.1f
        0x0
        0x3e99999a    # 0.3f
        0x0
        0x3ecccccd    # 0.4f
        0x0
        0x3e4ccccd    # 0.2f
        0x0
        0x3dcccccd    # 0.1f
        0x3fe00000    # 1.75f
        0x3e99999a    # 0.3f
        0x40000000    # 2.0f
        0x3e99999a    # 0.3f
        0x40000000    # 2.0f
        0x3ecccccd    # 0.4f
        0x3fe00000    # 1.75f
        0x3ecccccd    # 0.4f
        0x3fe00000    # 1.75f
        0x3e4ccccd    # 0.2f
        0x40000000    # 2.0f
        0x3e4ccccd    # 0.2f
        0x3fe00000    # 1.75f
        0x3dcccccd    # 0.1f
        0x40000000    # 2.0f
        0x3dcccccd    # 0.1f
        0x3fc00000    # 1.5f
        0x3e99999a    # 0.3f
        0x3fc00000    # 1.5f
        0x3ecccccd    # 0.4f
        0x3fc00000    # 1.5f
        0x3e4ccccd    # 0.2f
        0x3fc00000    # 1.5f
        0x3dcccccd    # 0.1f
        0x3fa00000    # 1.25f
        0x3e99999a    # 0.3f
        0x3fa00000    # 1.25f
        0x3ecccccd    # 0.4f
        0x3fa00000    # 1.25f
        0x3e4ccccd    # 0.2f
        0x3fa00000    # 1.25f
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
        0x3f400000    # 0.75f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
        0x3f400000    # 0.75f
        0x3ecccccd    # 0.4f
        0x3f400000    # 0.75f
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
        0x3f400000    # 0.75f
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
        0x3f000000    # 0.5f
        0x3e99999a    # 0.3f
        0x3f000000    # 0.5f
        0x3ecccccd    # 0.4f
        0x3f000000    # 0.5f
        0x3e4ccccd    # 0.2f
        0x3f000000    # 0.5f
        0x3dcccccd    # 0.1f
        0x3e800000    # 0.25f
        0x3e99999a    # 0.3f
        0x3e800000    # 0.25f
        0x3ecccccd    # 0.4f
        0x3e800000    # 0.25f
        0x3e4ccccd    # 0.2f
        0x0
        0x3e99999a    # 0.3f
        0x0
        0x3ecccccd    # 0.4f
        0x0
        0x3e4ccccd    # 0.2f
        0x0
        0x3dcccccd    # 0.1f
        0x3f600000    # 0.875f
        0x3f600000    # 0.875f
        0x3f800000    # 1.0f
        0x3f600000    # 0.875f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f600000    # 0.875f
        0x3f800000    # 1.0f
        0x3f600000    # 0.875f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x3f600000    # 0.875f
        0x3f200000    # 0.625f
        0x3f800000    # 1.0f
        0x3f200000    # 0.625f
        0x3f600000    # 0.875f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f600000    # 0.875f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x3f400000    # 0.75f
        0x3f400000    # 0.75f
        0x3f200000    # 0.625f
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3f200000    # 0.625f
        0x3f600000    # 0.875f
        0x3f200000    # 0.625f
        0x3f800000    # 1.0f
        0x3f200000    # 0.625f
        0x3f400000    # 0.75f
        0x3f200000    # 0.625f
        0x3f200000    # 0.625f
        0x3f200000    # 0.625f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f600000    # 0.875f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3f200000    # 0.625f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3ec00000    # 0.375f
        0x3f600000    # 0.875f
        0x3f000000    # 0.5f
        0x3f600000    # 0.875f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3ec00000    # 0.375f
        0x3f800000    # 1.0f
        0x3ec00000    # 0.375f
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3ec00000    # 0.375f
        0x3f200000    # 0.625f
        0x3f000000    # 0.5f
        0x3f200000    # 0.625f
        0x3ec00000    # 0.375f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3e800000    # 0.25f
        0x3f600000    # 0.875f
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
        0x3f400000    # 0.75f
        0x3e800000    # 0.25f
        0x3f200000    # 0.625f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3e000000    # 0.125f
        0x3f600000    # 0.875f
        0x3e000000    # 0.125f
        0x3f800000    # 1.0f
        0x3e000000    # 0.125f
        0x3f400000    # 0.75f
        0x3e000000    # 0.125f
        0x3f200000    # 0.625f
        0x3e000000    # 0.125f
        0x3f000000    # 0.5f
        0x0
        0x3f600000    # 0.875f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f400000    # 0.75f
        0x0
        0x3f200000    # 0.625f
        0x0
        0x3f000000    # 0.5f
        0x3f600000    # 0.875f
        0x3ec00000    # 0.375f
        0x3f800000    # 1.0f
        0x3ec00000    # 0.375f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f600000    # 0.875f
        0x3f000000    # 0.5f
        0x3f600000    # 0.875f
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
        0x3f600000    # 0.875f
        0x3e000000    # 0.125f
        0x3f800000    # 1.0f
        0x3e000000    # 0.125f
        0x3f600000    # 0.875f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f400000    # 0.75f
        0x3ec00000    # 0.375f
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3e800000    # 0.25f
        0x3f400000    # 0.75f
        0x3e000000    # 0.125f
        0x3f400000    # 0.75f
        0x0
        0x3f200000    # 0.625f
        0x3ec00000    # 0.375f
        0x3f200000    # 0.625f
        0x3f000000    # 0.5f
        0x3f200000    # 0.625f
        0x3e800000    # 0.25f
        0x3f200000    # 0.625f
        0x3e000000    # 0.125f
        0x3f200000    # 0.625f
        0x0
        0x3f000000    # 0.5f
        0x3ec00000    # 0.375f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3e000000    # 0.125f
        0x3f000000    # 0.5f
        0x0
        0x3ec00000    # 0.375f
        0x3ec00000    # 0.375f
        0x3f000000    # 0.5f
        0x3ec00000    # 0.375f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3ec00000    # 0.375f
        0x3f000000    # 0.5f
        0x3ec00000    # 0.375f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3e800000    # 0.25f
        0x3ec00000    # 0.375f
        0x3e000000    # 0.125f
        0x3f000000    # 0.5f
        0x3e000000    # 0.125f
        0x3ec00000    # 0.375f
        0x0
        0x3f000000    # 0.5f
        0x0
        0x3e800000    # 0.25f
        0x3ec00000    # 0.375f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x3e000000    # 0.125f
        0x3e800000    # 0.25f
        0x0
        0x3e000000    # 0.125f
        0x3ec00000    # 0.375f
        0x3e000000    # 0.125f
        0x3f000000    # 0.5f
        0x3e000000    # 0.125f
        0x3e800000    # 0.25f
        0x3e000000    # 0.125f
        0x3e000000    # 0.125f
        0x3e000000    # 0.125f
        0x0
        0x0
        0x3ec00000    # 0.375f
        0x0
        0x3f000000    # 0.5f
        0x0
        0x3e800000    # 0.25f
        0x0
        0x3e000000    # 0.125f
        0x0
        0x0
        0x3f200000    # 0.625f
        0x3e666666    # 0.225f
        0x3f000000    # 0.5f
        0x3e666666    # 0.225f
        0x3f000000    # 0.5f
        0x0
        0x3f200000    # 0.625f
        0x0
        0x3f200000    # 0.625f
        0x3ee66666    # 0.45f
        0x3f000000    # 0.5f
        0x3ee66666    # 0.45f
        0x3f200000    # 0.625f
        0x3f2ccccd    # 0.675f
        0x3f000000    # 0.5f
        0x3f2ccccd    # 0.675f
        0x3f200000    # 0.625f
        0x3f666666    # 0.9f
        0x3f000000    # 0.5f
        0x3f666666    # 0.9f
        0x3f400000    # 0.75f
        0x3e666666    # 0.225f
        0x3f400000    # 0.75f
        0x0
        0x3f400000    # 0.75f
        0x3ee66666    # 0.45f
        0x3f400000    # 0.75f
        0x3f2ccccd    # 0.675f
        0x3f400000    # 0.75f
        0x3f666666    # 0.9f
        0x3f600000    # 0.875f
        0x3e666666    # 0.225f
        0x3f600000    # 0.875f
        0x0
        0x3f600000    # 0.875f
        0x3ee66666    # 0.45f
        0x3f600000    # 0.875f
        0x3f2ccccd    # 0.675f
        0x3f600000    # 0.875f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
        0x3e666666    # 0.225f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3ee66666    # 0.45f
        0x3f800000    # 1.0f
        0x3f2ccccd    # 0.675f
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
        0x3e000000    # 0.125f
        0x3e666666    # 0.225f
        0x0
        0x3e666666    # 0.225f
        0x0
        0x0
        0x3e000000    # 0.125f
        0x0
        0x3e000000    # 0.125f
        0x3ee66666    # 0.45f
        0x0
        0x3ee66666    # 0.45f
        0x3e000000    # 0.125f
        0x3f2ccccd    # 0.675f
        0x0
        0x3f2ccccd    # 0.675f
        0x3e000000    # 0.125f
        0x3f666666    # 0.9f
        0x0
        0x3f666666    # 0.9f
        0x3e800000    # 0.25f
        0x3e666666    # 0.225f
        0x3e800000    # 0.25f
        0x0
        0x3e800000    # 0.25f
        0x3ee66666    # 0.45f
        0x3e800000    # 0.25f
        0x3f2ccccd    # 0.675f
        0x3e800000    # 0.25f
        0x3f666666    # 0.9f
        0x3ec00000    # 0.375f
        0x3e666666    # 0.225f
        0x3ec00000    # 0.375f
        0x0
        0x3ec00000    # 0.375f
        0x3ee66666    # 0.45f
        0x3ec00000    # 0.375f
        0x3f2ccccd    # 0.675f
        0x3ec00000    # 0.375f
        0x3f666666    # 0.9f
        0x3f000000    # 0.5f
        0x3e666666    # 0.225f
        0x3f000000    # 0.5f
        0x0
        0x3f000000    # 0.5f
        0x3ee66666    # 0.45f
        0x3f000000    # 0.5f
        0x3f2ccccd    # 0.675f
        0x3f000000    # 0.5f
        0x3f666666    # 0.9f
        0x3f200000    # 0.625f
        0x3f6ccccd    # 0.925f
        0x3f000000    # 0.5f
        0x3f6ccccd    # 0.925f
        0x3f000000    # 0.5f
        0x3f666666    # 0.9f
        0x3f200000    # 0.625f
        0x3f666666    # 0.9f
        0x3f200000    # 0.625f
        0x3f733333    # 0.95f
        0x3f000000    # 0.5f
        0x3f733333    # 0.95f
        0x3f200000    # 0.625f
        0x3f79999a    # 0.975f
        0x3f000000    # 0.5f
        0x3f79999a    # 0.975f
        0x3f200000    # 0.625f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x3f6ccccd    # 0.925f
        0x3f400000    # 0.75f
        0x3f666666    # 0.9f
        0x3f400000    # 0.75f
        0x3f733333    # 0.95f
        0x3f400000    # 0.75f
        0x3f79999a    # 0.975f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3f600000    # 0.875f
        0x3f6ccccd    # 0.925f
        0x3f600000    # 0.875f
        0x3f666666    # 0.9f
        0x3f600000    # 0.875f
        0x3f733333    # 0.95f
        0x3f600000    # 0.875f
        0x3f79999a    # 0.975f
        0x3f600000    # 0.875f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f6ccccd    # 0.925f
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
        0x3f79999a    # 0.975f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3e000000    # 0.125f
        0x3f6ccccd    # 0.925f
        0x0
        0x3f6ccccd    # 0.925f
        0x0
        0x3f666666    # 0.9f
        0x3e000000    # 0.125f
        0x3f666666    # 0.9f
        0x3e000000    # 0.125f
        0x3f733333    # 0.95f
        0x0
        0x3f733333    # 0.95f
        0x3e000000    # 0.125f
        0x3f79999a    # 0.975f
        0x0
        0x3f79999a    # 0.975f
        0x3e000000    # 0.125f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
        0x3f6ccccd    # 0.925f
        0x3e800000    # 0.25f
        0x3f666666    # 0.9f
        0x3e800000    # 0.25f
        0x3f733333    # 0.95f
        0x3e800000    # 0.25f
        0x3f79999a    # 0.975f
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
        0x3ec00000    # 0.375f
        0x3f6ccccd    # 0.925f
        0x3ec00000    # 0.375f
        0x3f666666    # 0.9f
        0x3ec00000    # 0.375f
        0x3f733333    # 0.95f
        0x3ec00000    # 0.375f
        0x3f79999a    # 0.975f
        0x3ec00000    # 0.375f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f6ccccd    # 0.925f
        0x3f000000    # 0.5f
        0x3f666666    # 0.9f
        0x3f000000    # 0.5f
        0x3f733333    # 0.95f
        0x3f000000    # 0.5f
        0x3f79999a    # 0.975f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x3f400000    # 0.75f
        0x3f600000    # 0.875f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x3f600000    # 0.875f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f600000    # 0.875f
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
        0x3f600000    # 0.875f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3e800000    # 0.25f
        0x3f400000    # 0.75f
        0x0
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f200000    # 0.625f
        0x3f400000    # 0.75f
        0x3f200000    # 0.625f
        0x3f000000    # 0.5f
        0x3f200000    # 0.625f
        0x3e800000    # 0.25f
        0x3f200000    # 0.625f
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
        0x3f400000    # 0.75f
        0x3ec00000    # 0.375f
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3ec00000    # 0.375f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3ec00000    # 0.375f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3e800000    # 0.25f
        0x3ec00000    # 0.375f
        0x0
        0x3f000000    # 0.5f
        0x0
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x0
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
        0x0
        0x3f400000    # 0.75f
        0x3e000000    # 0.125f
        0x3f400000    # 0.75f
        0x3e000000    # 0.125f
        0x3f000000    # 0.5f
        0x3e000000    # 0.125f
        0x3e800000    # 0.25f
        0x3e000000    # 0.125f
        0x0
        0x0
        0x3f000000    # 0.5f
        0x0
        0x3e800000    # 0.25f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x3f400000    # 0.75f
        0x3f600000    # 0.875f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x3f600000    # 0.875f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f600000    # 0.875f
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
        0x3f600000    # 0.875f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3e800000    # 0.25f
        0x3f400000    # 0.75f
        0x0
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f200000    # 0.625f
        0x3f400000    # 0.75f
        0x3f200000    # 0.625f
        0x3f000000    # 0.5f
        0x3f200000    # 0.625f
        0x3e800000    # 0.25f
        0x3f200000    # 0.625f
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
        0x3f400000    # 0.75f
        0x3ec00000    # 0.375f
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3ec00000    # 0.375f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3ec00000    # 0.375f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3e800000    # 0.25f
        0x3ec00000    # 0.375f
        0x0
        0x3f000000    # 0.5f
        0x0
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x0
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
        0x0
        0x3f400000    # 0.75f
        0x3e000000    # 0.125f
        0x3f400000    # 0.75f
        0x3e000000    # 0.125f
        0x3f000000    # 0.5f
        0x3e000000    # 0.125f
        0x3e800000    # 0.25f
        0x3e000000    # 0.125f
        0x0
        0x0
        0x3f000000    # 0.5f
        0x0
        0x3e800000    # 0.25f
        0x0
        0x0
        0x3f600000    # 0.875f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f600000    # 0.875f
        0x3f800000    # 1.0f
        0x3f600000    # 0.875f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f600000    # 0.875f
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
        0x3f600000    # 0.875f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f400000    # 0.75f
        0x3f400000    # 0.75f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3e800000    # 0.25f
        0x3f400000    # 0.75f
        0x0
        0x3f200000    # 0.625f
        0x3f400000    # 0.75f
        0x3f200000    # 0.625f
        0x3f800000    # 1.0f
        0x3f200000    # 0.625f
        0x3f000000    # 0.5f
        0x3f200000    # 0.625f
        0x3e800000    # 0.25f
        0x3f200000    # 0.625f
        0x0
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x0
        0x3ec00000    # 0.375f
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3ec00000    # 0.375f
        0x3f800000    # 1.0f
        0x3ec00000    # 0.375f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3ec00000    # 0.375f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3e800000    # 0.25f
        0x3ec00000    # 0.375f
        0x0
        0x3f000000    # 0.5f
        0x0
        0x3e800000    # 0.25f
        0x3f400000    # 0.75f
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x0
        0x3e000000    # 0.125f
        0x3f400000    # 0.75f
        0x3e000000    # 0.125f
        0x3f800000    # 1.0f
        0x3e000000    # 0.125f
        0x3f000000    # 0.5f
        0x3e000000    # 0.125f
        0x3e800000    # 0.25f
        0x3e000000    # 0.125f
        0x0
        0x0
        0x3f400000    # 0.75f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f000000    # 0.5f
        0x0
        0x3e800000    # 0.25f
        0x0
        0x0
        0x3f600000    # 0.875f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f600000    # 0.875f
        0x3f800000    # 1.0f
        0x3f600000    # 0.875f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f600000    # 0.875f
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
        0x3f600000    # 0.875f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f400000    # 0.75f
        0x3f400000    # 0.75f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3e800000    # 0.25f
        0x3f400000    # 0.75f
        0x0
        0x3f200000    # 0.625f
        0x3f400000    # 0.75f
        0x3f200000    # 0.625f
        0x3f800000    # 1.0f
        0x3f200000    # 0.625f
        0x3f000000    # 0.5f
        0x3f200000    # 0.625f
        0x3e800000    # 0.25f
        0x3f200000    # 0.625f
        0x0
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x0
        0x3ec00000    # 0.375f
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3ec00000    # 0.375f
        0x3f800000    # 1.0f
        0x3ec00000    # 0.375f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3ec00000    # 0.375f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3e800000    # 0.25f
        0x3ec00000    # 0.375f
        0x0
        0x3f000000    # 0.5f
        0x0
        0x3e800000    # 0.25f
        0x3f400000    # 0.75f
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x0
        0x3e000000    # 0.125f
        0x3f400000    # 0.75f
        0x3e000000    # 0.125f
        0x3f800000    # 1.0f
        0x3e000000    # 0.125f
        0x3f000000    # 0.5f
        0x3e000000    # 0.125f
        0x3e800000    # 0.25f
        0x3e000000    # 0.125f
        0x0
        0x0
        0x3f400000    # 0.75f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f000000    # 0.5f
        0x0
        0x3e800000    # 0.25f
        0x0
        0x0
        0x3fc00000    # 1.5f
        0x0
        0x3fa00000    # 1.25f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f400000    # 0.75f
        0x0
        0x3f000000    # 0.5f
        0x0
        0x3e800000    # 0.25f
        0x0
        0x0
        0x0
        0x3fe00000    # 1.75f
        0x0
        0x3fc00000    # 1.5f
        0x0
        0x3fa00000    # 1.25f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f400000    # 0.75f
        0x0
        0x3f000000    # 0.5f
        0x0
        0x3e800000    # 0.25f
        0x0
    .end array-data
.end method

.method private setVertexData()V
    .locals 2

    const/16 v0, 0x92d

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ardor3d/scenegraph/MeshData;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3fb85e28
        0x403312d9
        0x3f1ce333
        0x3fc7db4f
        0x403312d9
        0x0
        0x3fcaaf2f
        0x402dbabb
        0x0
        0x3fbaf9ed
        0x402dbabb
        0x3f1f1b6f
        0x3fbb64c6
        0x4034dae3
        0x3f1f765b
        0x3fcb2301
        0x4034dae3
        0x0
        0x3fc18cb6
        0x403312d9
        0x3f24b368
        0x3fd1cf58
        0x403312d9
        0x0
        0x3fc854eb
        0x402dbabb
        0x3f2a78d4
        0x3fd9296a
        0x402dbabb
        0x0
        0x3f8de5f3    # 1.10858f
        0x403312d9
        0x3f8de5f3    # 1.10858f
        0x3f8fe7e6
        0x402dbabb
        0x3f8fe7e6
        0x3f903a22
        0x4034dae3
        0x3f903a22
        0x3f94f70e
        0x403312d9
        0x3f94f70e
        0x3f9a2f52
        0x402dbabb
        0x3f9a2f52
        0x3f1ce333
        0x403312d9
        0x3fb85e28
        0x3f1f1b6f
        0x402dbabb
        0x3fbaf9ed
        0x3f1f765b
        0x4034dae3
        0x3fbb64c6
        0x3f24b368
        0x403312d9
        0x3fc18cb6
        0x3f2a78d4
        0x402dbabb
        0x3fc854eb
        0x0
        0x403312d9
        0x3fc7db4f
        0x0
        0x402dbabb
        0x3fcaaf2f
        0x0
        0x4034dae3
        0x3fcb2301
        0x0
        0x403312d9
        0x3fd1cf58
        0x0
        0x402dbabb
        0x3fd9296a
        -0x40de7978
        0x403312d9
        0x3fb85e28
        0x0
        0x403312d9
        0x3fc7db4f
        0x0
        0x402dbabb
        0x3fcaaf2f
        -0x40d5e625
        0x402dbabb
        0x3fbaf9ed
        -0x40df29d7
        0x4034dae3
        0x3fbb64c6
        0x0
        0x4034dae3
        0x3fcb2301
        -0x40db209f
        0x403312d9
        0x3fc18cb6
        0x0
        0x403312d9
        0x3fd1cf58
        -0x40d5872c
        0x402dbabb
        0x3fc854eb
        0x0
        0x402dbabb
        0x3fd9296a
        -0x40700a58
        0x403312d9
        0x3f8de5f3    # 1.10858f
        -0x406b353f
        0x402dbabb
        0x3f8fe7e6
        -0x406f2983
        0x4034dae3
        0x3f903a22
        -0x406af568
        0x403312d9
        0x3f94f70e
        -0x4065d0ae
        0x402dbabb
        0x3f9a2f52
        -0x4046dbf5
        0x403312d9
        0x3f1ce333
        -0x40433101
        0x402dbabb
        0x3f1f1b6f
        -0x40446099
        0x4034dae3
        0x3f1f765b
        -0x403e6bf5
        0x403312d9
        0x3f24b368
        -0x4037ab15
        0x402dbabb
        0x3f2a78d4
        -0x403824b1
        0x403312d9
        0x0
        -0x403550d1
        0x402dbabb
        0x0
        -0x4034dcff
        0x4034dae3
        0x0
        -0x402e30a8
        0x403312d9
        0x0
        -0x4026d696
        0x402dbabb
        0x0
        -0x4047a1d8
        0x403312d9
        -0x40e31ccd
        -0x403824b1
        0x403312d9
        0x0
        -0x403550d1
        0x402dbabb
        0x0
        -0x40450613
        0x402dbabb
        -0x40e0e491
        -0x40449b3a
        0x4034dae3
        -0x40e089a5
        -0x4034dcff
        0x4034dae3
        0x0
        -0x403e734a
        0x403312d9
        -0x40db4c98
        -0x402e30a8
        0x403312d9
        0x0
        -0x4037ab15
        0x402dbabb
        -0x40d5872c
        -0x4026d696
        0x402dbabb
        0x0
        -0x40721a0d    # -1.10858f
        0x403312d9
        -0x40721a0d    # -1.10858f
        -0x4070181a
        0x402dbabb
        -0x4070181a
        -0x406fc5de
        0x4034dae3
        -0x406fc5de
        -0x406b08f2
        0x403312d9
        -0x406b08f2
        -0x4065d0ae
        0x402dbabb
        -0x4065d0ae
        -0x40e31ccd
        0x403312d9
        -0x4047a1d8
        -0x40e0e491
        0x402dbabb
        -0x40450613
        -0x40e089a5
        0x4034dae3
        -0x40449b3a
        -0x40db4c98
        0x403312d9
        -0x403e734a
        -0x40d5872c
        0x402dbabb
        -0x4037ab15
        0x0
        0x403312d9
        -0x403824b1
        0x0
        0x402dbabb
        -0x403550d1
        0x0
        0x4034dae3
        -0x4034dcff
        0x0
        0x403312d9
        -0x402e30a8
        0x0
        0x402dbabb
        -0x4026d696
        0x3f1ce333
        0x403312d9
        -0x4047a1d8
        0x0
        0x403312d9
        -0x403824b1
        0x0
        0x402dbabb
        -0x403550d1
        0x3f1f1b6f
        0x402dbabb
        -0x40450613
        0x3f1f765b
        0x4034dae3
        -0x40449b3a
        0x0
        0x4034dae3
        -0x4034dcff
        0x3f24b368
        0x403312d9
        -0x403e734a
        0x0
        0x403312d9
        -0x402e30a8
        0x3f2a78d4
        0x402dbabb
        -0x4037ab15
        0x0
        0x402dbabb
        -0x4026d696
        0x3f8de5f3    # 1.10858f
        0x403312d9
        -0x40721a0d    # -1.10858f
        0x3f8fe7e6
        0x402dbabb
        -0x4070181a
        0x3f903a22
        0x4034dae3
        -0x406fc5de
        0x3f94f70e
        0x403312d9
        -0x406b08f2
        0x3f9a2f52
        0x402dbabb
        -0x4065d0ae
        0x3fb85e28
        0x403312d9
        -0x40e31ccd
        0x3fbaf9ed
        0x402dbabb
        -0x40e0e491
        0x3fbb64c6
        0x4034dae3
        -0x40e089a5
        0x3fc18cb6
        0x403312d9
        -0x40db4c98
        0x3fc854eb
        0x402dbabb
        -0x40d5872c
        0x3fc7db4f
        0x403312d9
        0x0
        0x3fcaaf2f
        0x402dbabb
        0x0
        0x3fcb2301
        0x4034dae3
        0x0
        0x3fd1cf58
        0x403312d9
        0x0
        0x3fd9296a
        0x402dbabb
        0x0
        0x3fe0d9fc
        0x40114fd0
        0x3f3f5648
        0x3ff3bdd1
        0x40114fd0
        0x0
        0x3fd9296a
        0x402dbabb
        0x0
        0x3fc854eb
        0x402dbabb
        0x3f2a78d4
        0x3ff63db8
        0x3feace61
        0x3f5189da
        0x400576c9
        0x3feace61
        0x0
        0x4002af66
        0x3fb50652
        0x3f5e69a4
        0x400daa03
        0x3fb50652
        0x0
        0x40058df3
        0x3f824c0c
        0x3f634bc6
        0x4010c646
        0x3f824c0c
        0x0
        0x3fad0e73
        0x40114fd0
        0x3fad0e73
        0x3f9a2f52
        0x402dbabb
        0x3f9a2f52
        0x3fbd84d5
        0x3feace61
        0x3fbd84d5
        0x3fc929bd
        0x3fb50652
        0x3fc929bd
        0x3fcd946e
        0x3f824c0c
        0x3fcd946e
        0x3f3f5648
        0x40114fd0
        0x3fe0d9fc
        0x3f2a78d4
        0x402dbabb
        0x3fc854eb
        0x3f5189da
        0x3feace61
        0x3ff63db8
        0x3f5e69a4
        0x3fb50652
        0x4002af66
        0x3f634bc6
        0x3f824c0c
        0x40058df3
        0x0
        0x40114fd0
        0x3ff3bdd1
        0x0
        0x402dbabb
        0x3fd9296a
        0x0
        0x3feace61
        0x400576c9
        0x0
        0x3fb50652
        0x400daa03
        0x0
        0x3f824c0c
        0x4010c646
        -0x40c0a9b8
        0x40114fd0
        0x3fe0d9fc
        0x0
        0x40114fd0
        0x3ff3bdd1
        0x0
        0x402dbabb
        0x3fd9296a
        -0x40d5872c
        0x402dbabb
        0x3fc854eb
        -0x40ae7626
        0x3feace61
        0x3ff63db8
        0x0
        0x3feace61
        0x400576c9
        -0x40a1965c
        0x3fb50652
        0x4002af66
        0x0
        0x3fb50652
        0x400daa03
        -0x409cb43a
        0x3f824c0c
        0x40058df3
        0x0
        0x3f824c0c
        0x4010c646
        -0x4052f18d
        0x40114fd0
        0x3fad0e73
        -0x4065d0ae
        0x402dbabb
        0x3f9a2f52
        -0x40427b2b
        0x3feace61
        0x3fbd84d5
        -0x4036d643
        0x3fb50652
        0x3fc929bd
        -0x40326b92
        0x3f824c0c
        0x3fcd946e
        -0x401f2604
        0x40114fd0
        0x3f3f5648
        -0x4037ab15
        0x402dbabb
        0x3f2a78d4
        -0x4009c248
        0x3feace61
        0x3f5189da
        -0x3ffd509a
        0x3fb50652
        0x3f5e69a4
        -0x3ffa720d
        0x3f824c0c
        0x3f634bc6
        -0x400c422f
        0x40114fd0
        0x0
        -0x4026d696
        0x402dbabb
        0x0
        -0x3ffa8937
        0x3feace61
        0x0
        -0x3ff255fd
        0x3fb50652
        0x0
        -0x3fef39ba
        0x3f824c0c
        0x0
        -0x401f2604
        0x40114fd0
        -0x40c0a9b8
        -0x400c422f
        0x40114fd0
        0x0
        -0x4026d696
        0x402dbabb
        0x0
        -0x4037ab15
        0x402dbabb
        -0x40d5872c
        -0x4009c248
        0x3feace61
        -0x40ae7626
        -0x3ffa8937
        0x3feace61
        0x0
        -0x3ffd509a
        0x3fb50652
        -0x40a1965c
        -0x3ff255fd
        0x3fb50652
        0x0
        -0x3ffa720d
        0x3f824c0c
        -0x409cb43a
        -0x3fef39ba
        0x3f824c0c
        0x0
        -0x4052f18d
        0x40114fd0
        -0x4052f18d
        -0x4065d0ae
        0x402dbabb
        -0x4065d0ae
        -0x40427b2b
        0x3feace61
        -0x40427b2b
        -0x4036d643
        0x3fb50652
        -0x4036d643
        -0x40326b92
        0x3f824c0c
        -0x40326b92
        -0x40c0a9b8
        0x40114fd0
        -0x401f2604
        -0x40d5872c
        0x402dbabb
        -0x4037ab15
        -0x40ae7626
        0x3feace61
        -0x4009c248
        -0x40a1965c
        0x3fb50652
        -0x3ffd509a
        -0x409cb43a
        0x3f824c0c
        -0x3ffa720d
        0x0
        0x40114fd0
        -0x400c422f
        0x0
        0x402dbabb
        -0x4026d696
        0x0
        0x3feace61
        -0x3ffa8937
        0x0
        0x3fb50652
        -0x3ff255fd
        0x0
        0x3f824c0c
        -0x3fef39ba
        0x3f3f5648
        0x40114fd0
        -0x401f2604
        0x0
        0x40114fd0
        -0x400c422f
        0x0
        0x402dbabb
        -0x4026d696
        0x3f2a78d4
        0x402dbabb
        -0x4037ab15
        0x3f5189da
        0x3feace61
        -0x4009c248
        0x0
        0x3feace61
        -0x3ffa8937
        0x3f5e69a4
        0x3fb50652
        -0x3ffd509a
        0x0
        0x3fb50652
        -0x3ff255fd
        0x3f634bc6
        0x3f824c0c
        -0x3ffa720d
        0x0
        0x3f824c0c
        -0x3fef39ba
        0x3fad0e73
        0x40114fd0
        -0x4052f18d
        0x3f9a2f52
        0x402dbabb
        -0x4065d0ae
        0x3fbd84d5
        0x3feace61
        -0x40427b2b
        0x3fc929bd
        0x3fb50652
        -0x4036d643
        0x3fcd946e
        0x3f824c0c
        -0x40326b92
        0x3fe0d9fc
        0x40114fd0
        -0x40c0a9b8
        0x3fc854eb
        0x402dbabb
        -0x40d5872c
        0x3ff63db8
        0x3feace61
        -0x40ae7626
        0x4002af66
        0x3fb50652
        -0x40a1965c
        0x40058df3
        0x3f824c0c
        -0x409cb43a
        0x3ff3bdd1
        0x40114fd0
        0x0
        0x3fd9296a
        0x402dbabb
        0x0
        0x400576c9
        0x3feace61
        0x0
        0x400daa03
        0x3fb50652
        0x0
        0x4010c646
        0x3f824c0c
        0x0
        0x40005667
        0x3f2ebf53
        0x3f5a6acf
        0x400b1e88
        0x3f2ebf53
        0x0
        0x4010c646
        0x3f824c0c
        0x0
        0x40058df3
        0x3f824c0c
        0x3f634bc6
        0x3fe9b868
        0x3ede973f
        0x3f46e24d
        0x3ffd5afa
        0x3ede973f
        0x0
        0x3fd2c403
        0x3e88679c
        0x3f3359ca
        0x3fe478e7
        0x3e88679c
        0x0
        0x3fc854eb
        0x3e2dbabd
        0x3f2a78d4
        0x3fd9296a
        0x3e2dbabd
        0x0
        0x3fc58ca1
        0x3f2ebf53
        0x3fc58ca1
        0x3fcd946e
        0x3f824c0c
        0x3fcd946e
        0x3fb3e1e0
        0x3ede973f
        0x3fb3e1e0
        0x3fa2371f
        0x3e88679c
        0x3fa2371f
        0x3f9a2f52
        0x3e2dbabd
        0x3f9a2f52
        0x3f5a6acf
        0x3f2ebf53
        0x40005667
        0x3f634bc6
        0x3f824c0c
        0x40058df3
        0x3f46e24d
        0x3ede973f
        0x3fe9b868
        0x3f3359ca
        0x3e88679c
        0x3fd2c403
        0x3f2a78d4
        0x3e2dbabd
        0x3fc854eb
        0x0
        0x3f2ebf53
        0x400b1e88
        0x0
        0x3f824c0c
        0x4010c646
        0x0
        0x3ede973f
        0x3ffd5afa
        0x0
        0x3e88679c
        0x3fe478e7
        0x0
        0x3e2dbabd
        0x3fd9296a
        -0x40a59531
        0x3f2ebf53
        0x40005667
        0x0
        0x3f2ebf53
        0x400b1e88
        0x0
        0x3f824c0c
        0x4010c646
        -0x409cb43a
        0x3f824c0c
        0x40058df3
        -0x40b91db3
        0x3ede973f
        0x3fe9b868
        0x0
        0x3ede973f
        0x3ffd5afa
        -0x40cca636
        0x3e88679c
        0x3fd2c403
        0x0
        0x3e88679c
        0x3fe478e7
        -0x40d5872c
        0x3e2dbabd
        0x3fc854eb
        0x0
        0x3e2dbabd
        0x3fd9296a
        -0x403a735f
        0x3f2ebf53
        0x3fc58ca1
        -0x40326b92
        0x3f824c0c
        0x3fcd946e
        -0x404c1e20
        0x3ede973f
        0x3fb3e1e0
        -0x405dc8e1
        0x3e88679c
        0x3fa2371f
        -0x4065d0ae
        0x3e2dbabd
        0x3f9a2f52
        -0x3fffa999
        0x3f2ebf53
        0x3f5a6acf
        -0x3ffa720d
        0x3f824c0c
        0x3f634bc6
        -0x40164798
        0x3ede973f
        0x3f46e24d
        -0x402d3bfd
        0x3e88679c
        0x3f3359ca
        -0x4037ab15
        0x3e2dbabd
        0x3f2a78d4
        -0x3ff4e178
        0x3f2ebf53
        0x0
        -0x3fef39ba
        0x3f824c0c
        0x0
        -0x4002a506
        0x3ede973f
        0x0
        -0x401b8719
        0x3e88679c
        0x0
        -0x4026d696
        0x3e2dbabd
        0x0
        -0x3fffa999
        0x3f2ebf53
        -0x40a59531
        -0x3ff4e178
        0x3f2ebf53
        0x0
        -0x3fef39ba
        0x3f824c0c
        0x0
        -0x3ffa720d
        0x3f824c0c
        -0x409cb43a
        -0x40164798
        0x3ede973f
        -0x40b91db3
        -0x4002a506
        0x3ede973f
        0x0
        -0x402d3bfd
        0x3e88679c
        -0x40cca636
        -0x401b8719
        0x3e88679c
        0x0
        -0x4037ab15
        0x3e2dbabd
        -0x40d5872c
        -0x4026d696
        0x3e2dbabd
        0x0
        -0x403a735f
        0x3f2ebf53
        -0x403a735f
        -0x40326b92
        0x3f824c0c
        -0x40326b92
        -0x404c1e20
        0x3ede973f
        -0x404c1e20
        -0x405dc8e1
        0x3e88679c
        -0x405dc8e1
        -0x4065d0ae
        0x3e2dbabd
        -0x4065d0ae
        -0x40a59531
        0x3f2ebf53
        -0x3fffa999
        -0x409cb43a
        0x3f824c0c
        -0x3ffa720d
        -0x40b91db3
        0x3ede973f
        -0x40164798
        -0x40cca636
        0x3e88679c
        -0x402d3bfd
        -0x40d5872c
        0x3e2dbabd
        -0x4037ab15
        0x0
        0x3f2ebf53
        -0x3ff4e178
        0x0
        0x3f824c0c
        -0x3fef39ba
        0x0
        0x3ede973f
        -0x4002a506
        0x0
        0x3e88679c
        -0x401b8719
        0x0
        0x3e2dbabd
        -0x4026d696
        0x3f5a6acf
        0x3f2ebf53
        -0x3fffa999
        0x0
        0x3f2ebf53
        -0x3ff4e178
        0x0
        0x3f824c0c
        -0x3fef39ba
        0x3f634bc6
        0x3f824c0c
        -0x3ffa720d
        0x3f46e24d
        0x3ede973f
        -0x40164798
        0x0
        0x3ede973f
        -0x4002a506
        0x3f3359ca
        0x3e88679c
        -0x402d3bfd
        0x0
        0x3e88679c
        -0x401b8719
        0x3f2a78d4
        0x3e2dbabd
        -0x4037ab15
        0x0
        0x3e2dbabd
        -0x4026d696
        0x3fc58ca1
        0x3f2ebf53
        -0x403a735f
        0x3fcd946e
        0x3f824c0c
        -0x40326b92
        0x3fb3e1e0
        0x3ede973f
        -0x404c1e20
        0x3fa2371f
        0x3e88679c
        -0x405dc8e1
        0x3f9a2f52
        0x3e2dbabd
        -0x4065d0ae
        0x40005667
        0x3f2ebf53
        -0x40a59531
        0x40058df3
        0x3f824c0c
        -0x409cb43a
        0x3fe9b868
        0x3ede973f
        -0x40b91db3
        0x3fd2c403
        0x3e88679c
        -0x40cca636
        0x3fc854eb
        0x3e2dbabd
        -0x40d5872c
        0x400b1e88
        0x3f2ebf53
        0x0
        0x4010c646
        0x3f824c0c
        0x0
        0x3ffd5afa
        0x3ede973f
        0x0
        0x3fe478e7
        0x3e88679c
        0x0
        0x3fd9296a
        0x3e2dbabd
        0x0
        0x3fc3caff
        0x3ddbe056
        0x3f269c18
        0x3fd43ddf
        0x3ddbe056
        0x0
        0x3fd9296a
        0x3e2dbabd
        0x0
        0x3fc854eb
        0x3e2dbabd
        0x3f2a78d4
        0x3fab88b7
        0x3d592967    # 0.053018f
        0x3f11f776
        0x3fb9f1dc
        0x3d592967    # 0.053018f
        0x0
        0x3f5f2e9a
        0x3c6ee0c6
        0x3ebdea9c
        0x3f71ee88
        0x3c6ee0c6
        0x0
        0x0
        0x0
        0x0
        0x3f5f2e9a
        0x3c6ee0c6
        -0x41421564
        0x3f96b10d
        0x3ddbe056
        0x3f96b10d
        0x3f9a2f52
        0x3e2dbabd
        0x3f9a2f52
        0x3f840552
        0x3d592967    # 0.053018f
        0x3f840552
        0x3f2bc584
        0x3c6ee0c6
        0x3f2bc584
        0x3f269c18
        0x3ddbe056
        0x3fc3caff
        0x3f2a78d4
        0x3e2dbabd
        0x3fc854eb
        0x3f11f776
        0x3d592967    # 0.053018f
        0x3fab88b7
        0x3ebdea9c
        0x3c6ee0c6
        0x3f5f2e9a
        0x0
        0x3ddbe056
        0x3fd43ddf
        0x0
        0x3e2dbabd
        0x3fd9296a
        0x0
        0x3d592967    # 0.053018f
        0x3fb9f1dc
        0x0
        0x3c6ee0c6
        0x3f71ee88
        -0x40d963e8
        0x3ddbe056
        0x3fc3caff
        0x0
        0x3ddbe056
        0x3fd43ddf
        0x0
        0x3e2dbabd
        0x3fd9296a
        -0x40d5872c
        0x3e2dbabd
        0x3fc854eb
        -0x40ee088a
        0x3d592967    # 0.053018f
        0x3fab88b7
        0x0
        0x3d592967    # 0.053018f
        0x3fb9f1dc
        -0x41421564
        0x3c6ee0c6
        0x3f5f2e9a
        0x0
        0x3c6ee0c6
        0x3f71ee88
        -0x40694ef3
        0x3ddbe056
        0x3f96b10d
        -0x4065d0ae
        0x3e2dbabd
        0x3f9a2f52
        -0x407bfaae
        0x3d592967    # 0.053018f
        0x3f840552
        -0x40d43a7c
        0x3c6ee0c6
        0x3f2bc584
        -0x403c3501
        0x3ddbe056
        0x3f269c18
        -0x4037ab15
        0x3e2dbabd
        0x3f2a78d4
        -0x40547749
        0x3d592967    # 0.053018f
        0x3f11f776
        -0x40a0d166
        0x3c6ee0c6
        0x3ebdea9c
        -0x402bc221
        0x3ddbe056
        0x0
        -0x4026d696
        0x3e2dbabd
        0x0
        -0x40460e24
        0x3d592967    # 0.053018f
        0x0
        -0x408e1178
        0x3c6ee0c6
        0x0
        -0x403c3501
        0x3ddbe056
        -0x40d963e8
        -0x402bc221
        0x3ddbe056
        0x0
        -0x4026d696
        0x3e2dbabd
        0x0
        -0x4037ab15
        0x3e2dbabd
        -0x40d5872c
        -0x40547749
        0x3d592967    # 0.053018f
        -0x40ee088a
        -0x40460e24
        0x3d592967    # 0.053018f
        0x0
        -0x40a0d166
        0x3c6ee0c6
        -0x41421564
        -0x408e1178
        0x3c6ee0c6
        0x0
        -0x40694ef3
        0x3ddbe056
        -0x40694ef3
        -0x4065d0ae
        0x3e2dbabd
        -0x4065d0ae
        -0x407bfaae
        0x3d592967    # 0.053018f
        -0x407bfaae
        -0x40d43a7c
        0x3c6ee0c6
        -0x40d43a7c
        -0x40d963e8
        0x3ddbe056
        -0x403c3501
        -0x40d5872c
        0x3e2dbabd
        -0x4037ab15
        -0x40ee088a
        0x3d592967    # 0.053018f
        -0x40547749
        -0x41421564
        0x3c6ee0c6
        -0x40a0d166
        0x0
        0x3ddbe056
        -0x402bc221
        0x0
        0x3e2dbabd
        -0x4026d696
        0x0
        0x3d592967    # 0.053018f
        -0x40460e24
        0x0
        0x3c6ee0c6
        -0x408e1178
        0x3f269c18
        0x3ddbe056
        -0x403c3501
        0x0
        0x3ddbe056
        -0x402bc221
        0x0
        0x3e2dbabd
        -0x4026d696
        0x3f2a78d4
        0x3e2dbabd
        -0x4037ab15
        0x3f11f776
        0x3d592967    # 0.053018f
        -0x40547749
        0x0
        0x3d592967    # 0.053018f
        -0x40460e24
        0x3ebdea9c
        0x3c6ee0c6
        -0x40a0d166
        0x0
        0x3c6ee0c6
        -0x408e1178
        0x3f96b10d
        0x3ddbe056
        -0x40694ef3
        0x3f9a2f52
        0x3e2dbabd
        -0x4065d0ae
        0x3f840552
        0x3d592967    # 0.053018f
        -0x407bfaae
        0x3f2bc584
        0x3c6ee0c6
        -0x40d43a7c
        0x3fc3caff
        0x3ddbe056
        -0x40d963e8
        0x3fc854eb
        0x3e2dbabd
        -0x40d5872c
        0x3fab88b7
        0x3d592967    # 0.053018f
        -0x40ee088a
        0x3fd43ddf
        0x3ddbe056
        0x0
        0x3fd9296a
        0x3e2dbabd
        0x0
        0x3fb9f1dc
        0x3d592967    # 0.053018f
        0x0
        0x3f71ee88
        0x3c6ee0c6
        0x0
        -0x3fe95ac9
        0x4014d5b6
        0x3e437212
        -0x3fea5caa
        0x40125468
        0x0
        -0x40185c5c
        0x4012958e
        0x0
        -0x401a9f75
        0x4015210a
        0x3e437212
        -0x3fcef658
        0x4012c66a
        0x3e437212
        -0x3fd15da2
        0x40108c5e
        0x0
        -0x3fbeb4fa
        0x400d2f2f
        0x3e437212
        -0x3fc1decf
        0x400bb68b
        0x0
        -0x3fb92948
        0x40024c0c
        0x3e437212
        -0x3fbc8dee
        0x40024c0c
        0x0
        -0x3fe72373
        0x401a5896
        0x3e824c0d
        -0x401f997a
        0x401aba4f
        0x3e824c0d
        -0x3fc9acb3
        0x4017ac86
        0x3e824c0d
        -0x3fb7bf59
        0x40106bca
        0x3e824c0d
        -0x3fb1b243
        0x40024c0c
        0x3e824c0d
        -0x3fe4ec1d
        0x401fdb75
        0x3e437212
        -0x4024937d
        0x40205393
        0x3e437212
        -0x3fc4630e
        0x401c92a1
        0x3e437212
        -0x3fb0c9b8
        0x4013a866
        0x3e437212
        -0x3faa3b3c
        0x40024c0c
        0x3e437212
        -0x3fe3ea3d
        0x40225cc3
        0x0
        -0x4026d696
        0x4022df0f
        0x0
        -0x3fc1fbc4
        0x401eccae
        0x0
        -0x3fad9fe1
        0x4015210a
        0x0
        -0x3fa6d696
        0x40024c0c
        0x0
        -0x3fe4ec1d
        0x401fdb75
        -0x41bc8dee
        -0x3fe3ea3d
        0x40225cc3
        0x0
        -0x4026d696
        0x4022df0f
        0x0
        -0x4024937d
        0x40205393
        -0x41bc8dee
        -0x3fc4630e
        0x401c92a1
        -0x41bc8dee
        -0x3fc1fbc4
        0x401eccae
        0x0
        -0x3fb0c9b8
        0x4013a866
        -0x41bc8dee
        -0x3fad9fe1
        0x4015210a
        0x0
        -0x3faa3b3c
        0x40024c0c
        -0x41bc8dee
        -0x3fa6d696
        0x40024c0c
        0x0
        -0x3fe72373
        0x401a5896
        -0x417db3f3
        -0x401f997a
        0x401aba4f
        -0x417db3f3
        -0x3fc9acb3
        0x4017ac86
        -0x417db3f3
        -0x3fb7bf59
        0x40106bca
        -0x417db3f3
        -0x3fb1b243
        0x40024c0c
        -0x417db3f3
        -0x3fe95ac9
        0x4014d5b6
        -0x41bc8dee
        -0x401a9f75
        0x4015210a
        -0x41bc8dee
        -0x3fcef658
        0x4012c66a
        -0x41bc8dee
        -0x3fbeb4fa
        0x400d2f2f
        -0x41bc8dee
        -0x3fb92948
        0x40024c0c
        -0x41bc8dee
        -0x3fea5caa
        0x40125468
        0x0
        -0x40185c5c
        0x4012958e
        0x0
        -0x3fd15da2
        0x40108c5e
        0x0
        -0x3fc1decf
        0x400bb68b
        0x0
        -0x3fbc8dee
        0x40024c0c
        0x0
        -0x3fbc4c53
        0x3fe43956    # 1.7829998f
        0x3e437212
        -0x3fbf61cd
        0x3fe712dd
        0x0
        -0x3fbc8dee
        0x40024c0c
        0x0
        -0x3fb92948
        0x40024c0c
        0x3e437212
        -0x3fc6203d
        0x3fbf191f
        0x3e437212
        -0x3fc8513d
        0x3fc37212
        0x0
        -0x3fd7452b
        0x3f9a730d
        0x3e437212
        -0x3fd809f8
        0x3f9fd147
        0x0
        -0x3ff05b46
        0x3f770581
        0x3e437212
        -0x3fef39ba
        0x3f824c0c
        0x0
        -0x3fb5837d
        0x3fddf460
        0x3e824c0d
        -0x3fb1b243
        0x40024c0c
        0x3e824c0d
        -0x3fc14e08
        0x3fb5889f
        0x3e824c0d
        -0x3fd59433
        0x3f8ea3c1
        0x3e824c0d
        -0x3ff2d848
        0x3f59296a
        0x3e824c0d
        -0x3faebaa6
        0x3fd7af6a
        0x3e437212
        -0x3faa3b3c
        0x40024c0c
        0x3e437212
        -0x3fbc7bd5
        0x3fabf81e
        0x3e437212
        -0x3fd3e33c
        0x3f82d474
        0x3e437212
        -0x3ff5554a
        0x3f3b4d52
        0x3e437212
        -0x3faba52d
        0x3fd4d5e3
        0x0
        -0x3fa6d696
        0x40024c0c
        0x0
        -0x3fba4ad5
        0x3fa79f2a
        0x0
        -0x3fd31e6e
        0x3f7aec73
        0x0
        -0x3ff676d7
        0x3f2dbabb
        0x0
        -0x3faebaa6
        0x3fd7af6a
        -0x41bc8dee
        -0x3faba52d
        0x3fd4d5e3
        0x0
        -0x3fa6d696
        0x40024c0c
        0x0
        -0x3faa3b3c
        0x40024c0c
        -0x41bc8dee
        -0x3fbc7bd5
        0x3fabf81e
        -0x41bc8dee
        -0x3fba4ad5
        0x3fa79f2a
        0x0
        -0x3fd3e33c
        0x3f82d474
        -0x41bc8dee
        -0x3fd31e6e
        0x3f7aec73
        0x0
        -0x3ff5554a
        0x3f3b4d52
        -0x41bc8dee
        -0x3ff676d7
        0x3f2dbabb
        0x0
        -0x3fb5837d
        0x3fddf460
        -0x417db3f3
        -0x3fb1b243
        0x40024c0c
        -0x417db3f3
        -0x3fc14e08
        0x3fb5889f
        -0x417db3f3
        -0x3fd59433
        0x3f8ea3c1
        -0x417db3f3
        -0x3ff2d848
        0x3f59296a
        -0x417db3f3
        -0x3fbc4c53
        0x3fe43956    # 1.7829998f
        -0x41bc8dee
        -0x3fb92948
        0x40024c0c
        -0x41bc8dee
        -0x3fc6203d
        0x3fbf191f
        -0x41bc8dee
        -0x3fd7452b
        0x3f9a730d
        -0x41bc8dee
        -0x3ff05b46
        0x3f770581
        -0x41bc8dee
        -0x3fbf61cd
        0x3fe712dd
        0x0
        -0x3fbc8dee
        0x40024c0c
        0x0
        -0x3fc8513d
        0x3fc37212
        0x0
        -0x3fd809f8
        0x3f9fd147
        0x0
        -0x3fef39ba
        0x3f824c0c
        0x0
        0x40206eb8
        0x3fd069ee
        0x3ec21f4d
        0x401dc816
        0x3fde4061
        0x0
        0x3ff61ddf
        0x3fce4dbd
        0x0
        0x3ff61ddf
        0x3fbba42e
        0x3ed6fd7a
        0x403037bd
        0x3ffc890e
        0x3e943681
        0x402cd317
        0x40024c0c
        0x0
        0x40393776
        0x40181508
        0x3e4c9b6a
        0x403514cd
        0x40198a48
        0x0
        0x404a3b5d
        0x402dbabb
        0x3e22df10
        0x40437212
        0x402dbabb
        0x0
        0x402643b5
        0x3fb1f88a
        0x3f016a33
        0x3ff61ddf
        0x3f92958e
        0x3f0f53a7
        0x4037aec3
        0x3feace61
        0x3ec59e01
        0x40425086
        0x4014dfe3
        0x3e88679c
        0x4059296a
        0x402dbabb
        0x3e59296a
        0x402c18b1
        0x3f938725
        0x3ec21f4d
        0x3ff61ddf
        0x3f530dd9
        0x3ed6fd7a
        0x403f25c8
        0x3fd913b2
        0x3e943681
        0x404b6995
        0x4011aabf
        0x3e4c9b6a
        0x40681775
        0x402dbabb
        0x3e22df10
        0x402ebf53
        0x3f85b0b2
        0x0
        0x3ff61ddf
        0x3f2dbabb
        0x0
        0x40428a6e
        0x3fd104a8
        0x0
        0x404f8c3f
        0x40103581
        0x0
        0x406ee0c0
        0x402dbabb
        0x0
        0x402c18b1
        0x3f938725
        -0x413de0b3
        0x402ebf53
        0x3f85b0b2
        0x0
        0x3ff61ddf
        0x3f2dbabb
        0x0
        0x3ff61ddf
        0x3f530dd9
        -0x41290286
        0x403f25c8
        0x3fd913b2
        -0x416bc97f
        0x40428a6e
        0x3fd104a8
        0x0
        0x404b6995
        0x4011aabf
        -0x41b36496
        0x404f8c3f
        0x40103581
        0x0
        0x40681775
        0x402dbabb
        -0x41dd20f0
        0x406ee0c0
        0x402dbabb
        0x0
        0x402643b5
        0x3fb1f88a
        -0x40fe95cd
        0x3ff61ddf
        0x3f92958e
        -0x40f0ac59
        0x4037aec3
        0x3feace61
        -0x413a61ff
        0x40425086
        0x4014dfe3
        -0x41779864
        0x4059296a
        0x402dbabb
        -0x41a6d696
        0x40206eb8
        0x3fd069ee
        -0x413de0b3
        0x3ff61ddf
        0x3fbba42e
        -0x41290286
        0x403037bd
        0x3ffc890e
        -0x416bc97f
        0x40393776
        0x40181508
        -0x41b36496
        0x404a3b5d
        0x402dbabb
        -0x41dd20f0
        0x401dc816
        0x3fde4061
        0x0
        0x3ff61ddf
        0x3fce4dbd
        0x0
        0x402cd317
        0x40024c0c
        0x0
        0x403514cd
        0x40198a48
        0x0
        0x40437212
        0x402dbabb
        0x0
        0x404fea92
        0x4030eeaf
        0x3e18b11d
        0x4048a5ff
        0x4030c883
        0x0
        0x40437212
        0x402dbabb
        0x0
        0x404a3b5d
        0x402dbabb
        0x3e22df10
        0x405350ce
        0x40320a2f
        0x3e024c0c
        0x404c7e76
        0x4031cd1b
        0x0
        0x40536ad2
        0x4030fdf4    # 2.7655f
        0x3dd7cdf5
        0x404da003
        0x4030c883
        0x0
        0x404f3561
        0x402dbabb
        0x3dc37215
        0x404aaf2f
        0x402dbabb
        0x0
        0x405fe7d9
        0x403142aa
        0x3e4b96d2
        0x4059296a
        0x402dbabb
        0x3e59296a
        0x406252c3
        0x4032908d
        0x3e2dbabd
        0x406028ff
        0x40317387
        0x3e0fdea3
        0x4059296a
        0x402dbabb
        0x3e024c0c
        0x406fe520
        0x403196a6
        0x3e18b11d
        0x40681775
        0x402dbabb
        0x3e22df10
        0x407154b8
        0x403316eb
        0x3e024c0c
        0x406ce72d
        0x4031e91a
        0x3dd7cdf5
        0x40631d72
        0x402dbabb
        0x3dc37215
        0x407729b3
        0x4031bcd2
        0x0
        0x406ee0c0
        0x402dbabb
        0x0
        0x4078270f
        0x40335400
        0x0
        0x4072b1fa
        0x40321e8b
        0x0
        0x4067a3a4
        0x402dbabb
        0x0
        0x406fe520
        0x403196a6
        -0x41e74ee3
        0x407729b3
        0x4031bcd2
        0x0
        0x406ee0c0
        0x402dbabb
        0x0
        0x40681775
        0x402dbabb
        -0x41dd20f0
        0x407154b8
        0x403316eb
        -0x41fdb3f4
        0x4078270f
        0x40335400
        0x0
        0x406ce72d
        0x4031e91a
        -0x4228320b
        0x4072b1fa
        0x40321e8b
        0x0
        0x40631d72
        0x402dbabb
        -0x423c8deb
        0x4067a3a4
        0x402dbabb
        0x0
        0x405fe7d9
        0x403142aa
        -0x41b4692e
        0x4059296a
        0x402dbabb
        -0x41a6d696
        0x406252c3
        0x4032908d
        -0x41d24543
        0x406028ff
        0x40317387
        -0x41f0215d
        0x4059296a
        0x402dbabb
        -0x41fdb3f4
        0x404fea92
        0x4030eeaf
        -0x41e74ee3
        0x404a3b5d
        0x402dbabb
        -0x41dd20f0
        0x405350ce
        0x40320a2f
        -0x41fdb3f4
        0x40536ad2
        0x4030fdf4    # 2.7655f
        -0x4228320b
        0x404f3561
        0x402dbabb
        -0x423c8deb
        0x4048a5ff
        0x4030c883
        0x0
        0x40437212
        0x402dbabb
        0x0
        0x404c7e76
        0x4031cd1b
        0x0
        0x404da003
        0x4030c883
        0x0
        0x404aaf2f
        0x402dbabb
        0x0
        0x0
        0x40640515
        0x0
        0x3e8c3c07
        0x40607500
        0x3e8c3c07
        0x3eb60964
        0x40607500
        0x3e1b41f4
        0x3ec5415a
        0x40607500
        0x0
        0x3eadae91
        0x4057cdf3
        0x3e141bdc
        0x3ebc34f6
        0x4057cdf3
        0x0
        0x3e5264e4
        0x404d1db8
        0x3db3453a
        0x3e640516
        0x404d1db8
        0x0
        0x3e55afea
        0x40437212
        0x3db5d636
        0x3e67a3a4
        0x40437212
        0x0
        0x3e85ca2d
        0x4057cdf3
        0x3e85ca2d
        0x3e220429
        0x404d1db8
        0x3e220429
        0x3e2476be
        0x40437212
        0x3e2476be
        0x0
        0x40640515
        0x0
        0x0
        0x40607500
        0x3ec5415a
        0x3e1b41f4
        0x40607500
        0x3eb60964
        0x3e141bdc
        0x4057cdf3
        0x3eadae91
        0x3db3453a
        0x404d1db8
        0x3e5264e4
        0x3db5d636
        0x40437212
        0x3e55afea
        0x0
        0x4057cdf3
        0x3ebc34f6
        0x0
        0x404d1db8
        0x3e640516
        0x0
        0x40437212
        0x3e67a3a4
        0x0
        0x40640515
        0x0
        -0x4173c3f9
        0x40607500
        0x3e8c3c07
        -0x41e4be0c
        0x40607500
        0x3eb60964
        0x0
        0x40607500
        0x3ec5415a
        -0x41ebe424
        0x4057cdf3
        0x3eadae91
        0x0
        0x4057cdf3
        0x3ebc34f6
        -0x424cbac6
        0x404d1db8
        0x3e5264e4
        0x0
        0x404d1db8
        0x3e640516
        -0x424a29ca
        0x40437212
        0x3e55afea
        0x0
        0x40437212
        0x3e67a3a4
        -0x417a35d3
        0x4057cdf3
        0x3e85ca2d
        -0x41ddfbd7
        0x404d1db8
        0x3e220429
        -0x41db8942
        0x40437212
        0x3e2476be
        0x0
        0x40640515
        0x0
        -0x413abea6
        0x40607500
        0x0
        -0x4149f69c
        0x40607500
        0x3e1b41f4
        -0x4152516f
        0x4057cdf3
        0x3e141bdc
        -0x41ad9b1c
        0x404d1db8
        0x3db3453a
        -0x41aa5016
        0x40437212
        0x3db5d636
        -0x4143cb0a
        0x4057cdf3
        0x0
        -0x419bfaea
        0x404d1db8
        0x0
        -0x41985c5c
        0x40437212
        0x0
        0x0
        0x40640515
        0x0
        -0x4173c3f9
        0x40607500
        -0x4173c3f9
        -0x4149f69c
        0x40607500
        -0x41e4be0c
        -0x413abea6
        0x40607500
        0x0
        -0x4152516f
        0x4057cdf3
        -0x41ebe424
        -0x4143cb0a
        0x4057cdf3
        0x0
        -0x41ad9b1c
        0x404d1db8
        -0x424cbac6
        -0x419bfaea
        0x404d1db8
        0x0
        -0x41aa5016
        0x40437212
        -0x424a29ca
        -0x41985c5c
        0x40437212
        0x0
        -0x417a35d3
        0x4057cdf3
        -0x417a35d3
        -0x41ddfbd7
        0x404d1db8
        -0x41ddfbd7
        -0x41db8942
        0x40437212
        -0x41db8942
        0x0
        0x40640515
        0x0
        0x0
        0x40607500
        -0x413abea6
        -0x41e4be0c
        0x40607500
        -0x4149f69c
        -0x41ebe424
        0x4057cdf3
        -0x4152516f
        -0x424cbac6
        0x404d1db8
        -0x41ad9b1c
        -0x424a29ca
        0x40437212
        -0x41aa5016
        0x0
        0x4057cdf3
        -0x4143cb0a
        0x0
        0x404d1db8
        -0x419bfaea
        0x0
        0x40437212
        -0x41985c5c
        0x0
        0x40640515
        0x0
        0x3e8c3c07
        0x40607500
        -0x4173c3f9
        0x3e1b41f4
        0x40607500
        -0x4149f69c
        0x0
        0x40607500
        -0x413abea6
        0x3e141bdc
        0x4057cdf3
        -0x4152516f
        0x0
        0x4057cdf3
        -0x4143cb0a
        0x3db3453a
        0x404d1db8
        -0x41ad9b1c
        0x0
        0x404d1db8
        -0x419bfaea
        0x3db5d636
        0x40437212
        -0x41aa5016
        0x0
        0x40437212
        -0x41985c5c
        0x3e85ca2d
        0x4057cdf3
        -0x417a35d3
        0x3e220429
        0x404d1db8
        -0x41ddfbd7
        0x3e2476be
        0x40437212
        -0x41db8942
        0x0
        0x40640515
        0x0
        0x3ec5415a
        0x40607500
        0x0
        0x3eb60964
        0x40607500
        -0x41e4be0c
        0x3eadae91
        0x4057cdf3
        -0x41ebe424
        0x3e5264e4
        0x404d1db8
        -0x424cbac6
        0x3e55afea
        0x40437212
        -0x424a29ca
        0x3ebc34f6
        0x4057cdf3
        0x0
        0x3e640516
        0x404d1db8
        0x0
        0x3e67a3a4
        0x40437212
        0x0
        0x3ef3bcaa
        0x403cffa4
        0x3e4f6855
        0x3f041b53
        0x403cffa4
        0x0
        0x3e67a3a4
        0x40437212
        0x0
        0x3e55afea
        0x40437212
        0x3db5d636
        0x3f5c5d6a
        0x40389666
        0x3ebb84e8
        0x3f6ee0c0
        0x40389666
        0x0
        0x3f9a6c21
        0x40342d28
        0x3f0367cd
        0x3fa76541
        0x40342d28
        0x0
        0x3fad9eef
        0x402dbabb
        0x3f13be0d
        0x3fbc34f5
        0x402dbabb
        0x0
        0x3ebb9772
        0x403cffa4
        0x3ebb9772
        0x3e2476be
        0x40437212
        0x3e2476be
        0x3f299a74
        0x40389666
        0x3f299a74
        0x3f6db39f
        0x40342d28
        0x3f6db39f
        0x3f85a07a
        0x402dbabb
        0x3f85a07a
        0x3e4f6855
        0x403cffa4
        0x3ef3bcaa
        0x3db5d636
        0x40437212
        0x3e55afea
        0x3ebb84e8
        0x40389666
        0x3f5c5d6a
        0x3f0367cd
        0x40342d28
        0x3f9a6c21
        0x3f13be0d
        0x402dbabb
        0x3fad9eef
        0x0
        0x403cffa4
        0x3f041b53
        0x0
        0x40437212
        0x3e67a3a4
        0x0
        0x40389666
        0x3f6ee0c0
        0x0
        0x40342d28
        0x3fa76541
        0x0
        0x402dbabb
        0x3fbc34f5
        -0x41b097ab
        0x403cffa4
        0x3ef3bcaa
        0x0
        0x403cffa4
        0x3f041b53
        0x0
        0x40437212
        0x3e67a3a4
        -0x424a29ca
        0x40437212
        0x3e55afea
        -0x41447b18
        0x40389666
        0x3f5c5d6a
        0x0
        0x40389666
        0x3f6ee0c0
        -0x40fc9833
        0x40342d28
        0x3f9a6c21
        0x0
        0x40342d28
        0x3fa76541
        -0x40ec41f3
        0x402dbabb
        0x3fad9eef
        0x0
        0x402dbabb
        0x3fbc34f5
        -0x4144688e
        0x403cffa4
        0x3ebb9772
        -0x41db8942
        0x40437212
        0x3e2476be
        -0x40d6658c
        0x40389666
        0x3f299a74
        -0x40924c61
        0x40342d28
        0x3f6db39f
        -0x407a5f86
        0x402dbabb
        0x3f85a07a
        -0x410c4356
        0x403cffa4
        0x3e4f6855
        -0x41aa5016
        0x40437212
        0x3db5d636
        -0x40a3a296
        0x40389666
        0x3ebb84e8
        -0x406593df
        0x40342d28
        0x3f0367cd
        -0x40526111
        0x402dbabb
        0x3f13be0d
        -0x40fbe4ad
        0x403cffa4
        0x0
        -0x41985c5c
        0x40437212
        0x0
        -0x40911f40
        0x40389666
        0x0
        -0x40589abf
        0x40342d28
        0x0
        -0x4043cb0b
        0x402dbabb
        0x0
        -0x410c4356
        0x403cffa4
        -0x41b097ab
        -0x40fbe4ad
        0x403cffa4
        0x0
        -0x41985c5c
        0x40437212
        0x0
        -0x41aa5016
        0x40437212
        -0x424a29ca
        -0x40a3a296
        0x40389666
        -0x41447b18
        -0x40911f40
        0x40389666
        0x0
        -0x406593df
        0x40342d28
        -0x40fc9833
        -0x40589abf
        0x40342d28
        0x0
        -0x40526111
        0x402dbabb
        -0x40ec41f3
        -0x4043cb0b
        0x402dbabb
        0x0
        -0x4144688e
        0x403cffa4
        -0x4144688e
        -0x41db8942
        0x40437212
        -0x41db8942
        -0x40d6658c
        0x40389666
        -0x40d6658c
        -0x40924c61
        0x40342d28
        -0x40924c61
        -0x407a5f86
        0x402dbabb
        -0x407a5f86
        -0x41b097ab
        0x403cffa4
        -0x410c4356
        -0x424a29ca
        0x40437212
        -0x41aa5016
        -0x41447b18
        0x40389666
        -0x40a3a296
        -0x40fc9833
        0x40342d28
        -0x406593df
        -0x40ec41f3
        0x402dbabb
        -0x40526111
        0x0
        0x403cffa4
        -0x40fbe4ad
        0x0
        0x40437212
        -0x41985c5c
        0x0
        0x40389666
        -0x40911f40
        0x0
        0x40342d28
        -0x40589abf
        0x0
        0x402dbabb
        -0x4043cb0b
        0x3e4f6855
        0x403cffa4
        -0x410c4356
        0x0
        0x403cffa4
        -0x40fbe4ad
        0x0
        0x40437212
        -0x41985c5c
        0x3db5d636
        0x40437212
        -0x41aa5016
        0x3ebb84e8
        0x40389666
        -0x40a3a296
        0x0
        0x40389666
        -0x40911f40
        0x3f0367cd
        0x40342d28
        -0x406593df
        0x0
        0x40342d28
        -0x40589abf
        0x3f13be0d
        0x402dbabb
        -0x40526111
        0x0
        0x402dbabb
        -0x4043cb0b
        0x3ebb9772
        0x403cffa4
        -0x4144688e
        0x3e2476be
        0x40437212
        -0x41db8942
        0x3f299a74
        0x40389666
        -0x40d6658c
        0x3f6db39f
        0x40342d28
        -0x40924c61
        0x3f85a07a
        0x402dbabb
        -0x407a5f86
        0x3ef3bcaa
        0x403cffa4
        -0x41b097ab
        0x3e55afea
        0x40437212
        -0x424a29ca
        0x3f5c5d6a
        0x40389666
        -0x41447b18
        0x3f9a6c21
        0x40342d28
        -0x40fc9833
        0x3fad9eef
        0x402dbabb
        -0x40ec41f3
        0x3f041b53
        0x403cffa4
        0x0
        0x3e67a3a4
        0x40437212
        0x0
        0x3f6ee0c0
        0x40389666
        0x0
        0x3fa76541
        0x40342d28
        0x0
        0x3fbc34f5
        0x402dbabb
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public resetData()V
    .locals 0

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Teapot;->setVertexData()V

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Teapot;->setNormalData()V

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Teapot;->setTextureData()V

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/shape/Teapot;->setIndexData()V

    return-void
.end method

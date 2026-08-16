.class public final Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile$LoadedData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadedData"
.end annotation


# instance fields
.field public final heightBuffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public final layerBuffers:[Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public final layerGuids:[Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;[Ljava/lang/String;[Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "heightBuffer",
            "layerGuids",
            "layerBuffers"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile$LoadedData;->heightBuffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile$LoadedData;->layerGuids:[Ljava/lang/String;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Native/NativeTerrainDataFile$LoadedData;->layerBuffers:[Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-void
.end method

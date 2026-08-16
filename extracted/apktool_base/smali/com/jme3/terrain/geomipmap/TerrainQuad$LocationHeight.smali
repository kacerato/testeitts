.class public Lcom/jme3/terrain/geomipmap/TerrainQuad$LocationHeight;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/terrain/geomipmap/TerrainQuad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocationHeight"
.end annotation


# instance fields
.field h:F

.field final synthetic this$0:Lcom/jme3/terrain/geomipmap/TerrainQuad;

.field x:I

.field z:I


# direct methods
.method public constructor <init>(Lcom/jme3/terrain/geomipmap/TerrainQuad;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad$LocationHeight;->this$0:Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/terrain/geomipmap/TerrainQuad;IIF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad$LocationHeight;->this$0:Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p2, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad$LocationHeight;->x:I

    .line 4
    iput p3, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad$LocationHeight;->z:I

    .line 5
    iput p4, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad$LocationHeight;->h:F

    return-void
.end method

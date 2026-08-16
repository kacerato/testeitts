.class public Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel$Factory;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$j;
.source "TerrainToolsPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$j;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 36
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;->PANEL_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "TerrainToolsPanel"

    return-object v0
.end method

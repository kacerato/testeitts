.class public Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel$Factory;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$j;
.source "TerrainStudioPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
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

    .line 30
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel;->PANEL_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 35
    const-string v0, "TerrainStudioPanel"

    return-object v0
.end method

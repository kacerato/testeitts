.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/DunesProceduralBrush$a$a;
.super Lt5/k$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/DunesProceduralBrush$a;->onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/DunesProceduralBrush$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/DunesProceduralBrush$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/DunesProceduralBrush$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/DunesProceduralBrush$a;

    invoke-direct {p0}, Lt5/k$f;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/DunesProceduralBrush$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/DunesProceduralBrush$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/DunesProceduralBrush$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->P:Le4/c;

    const/16 v1, 0x8

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Le4/c;->a:I

    return-void
.end method

.method public get()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/DunesProceduralBrush$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/DunesProceduralBrush$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/DunesProceduralBrush$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->P:Le4/c;

    iget v0, v0, Le4/c;->a:I

    return v0
.end method

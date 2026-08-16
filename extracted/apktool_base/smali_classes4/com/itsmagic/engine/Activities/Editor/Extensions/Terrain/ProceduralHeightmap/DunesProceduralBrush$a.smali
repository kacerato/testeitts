.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/DunesProceduralBrush$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/DunesProceduralBrush;->d(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/DunesProceduralBrush;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/DunesProceduralBrush;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$terrain"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/DunesProceduralBrush$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/DunesProceduralBrush;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/DunesProceduralBrush$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "context",
            "tbButton"
        }
    .end annotation

    sget-object p3, Lr4/a$e;->Below:Lr4/a$e;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/DunesProceduralBrush$a$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/DunesProceduralBrush$a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralHeightmap/DunesProceduralBrush$a;)V

    const-string v1, "Dunes"

    invoke-static {p1, v1, p2, p3, v0}, Lt5/k;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Lr4/a$e;Lt5/k$g;)V

    return-void
.end method

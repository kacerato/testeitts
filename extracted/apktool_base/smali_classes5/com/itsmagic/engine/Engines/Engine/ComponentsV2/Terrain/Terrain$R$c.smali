.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$R$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$R;->onCreate(Landroid/view/View;Landroid/content/Context;LC5/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$R;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$R;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$R$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$R;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(ZLandroid/view/View;Landroid/content/Context;LM7/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "v",
            "context",
            "tbToggle",
            "isFromUserAction"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$R$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$R;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$R;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object p2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->tab:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$Z;

    sget-object p3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$Z;->HeightMap:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$Z;

    if-eq p2, p3, :cond_0

    iput-object p3, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->tab:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$Z;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    :cond_0
    return-void
.end method

.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z;->onCreate(Landroid/view/View;Landroid/content/Context;LC5/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$finalI"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z$c;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z;

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z$c;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z$c;->b:I

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->access$1202(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;I)I

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z$c;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z$c;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;

    invoke-interface {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;->b()V

    return-void
.end method

.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z;->onCreate(Landroid/view/View;Landroid/content/Context;LC5/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
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
            "v",
            "scrollX",
            "scrollY",
            "oldScrollX",
            "oldScrollY"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->access$902(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;I)I

    return-void
.end method

.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrb/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a;->b(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newLayer"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)Li9/c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)Li9/c;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->access$300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    move-result-object v0

    invoke-virtual {p1, v0}, Li9/c;->m(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;)V

    :cond_0
    return-void
.end method

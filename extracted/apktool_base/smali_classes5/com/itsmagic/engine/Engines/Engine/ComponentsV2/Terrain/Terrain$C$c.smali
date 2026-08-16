.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C$c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C$c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->applyHeightmap()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C$c$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C$c$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C$c;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

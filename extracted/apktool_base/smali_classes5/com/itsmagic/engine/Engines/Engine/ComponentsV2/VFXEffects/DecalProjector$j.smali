.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF5/c$q0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector$j;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector$j$a;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector$j$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector$j;I)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public get()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector$j;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;->access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/DecalProjector;)I

    move-result v0

    return v0
.end method

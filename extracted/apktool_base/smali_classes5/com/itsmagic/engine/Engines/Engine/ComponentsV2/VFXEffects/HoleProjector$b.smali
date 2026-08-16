.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lib/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "globalMatrix"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/HoleProjector;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    return-void
.end method

.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lib/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "globalMatrix"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;)I

    move-result p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const/4 v2, 0x0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->x4([FI)I

    move-result v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->access$002(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;I)I

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;)V

    :cond_0
    return-void
.end method

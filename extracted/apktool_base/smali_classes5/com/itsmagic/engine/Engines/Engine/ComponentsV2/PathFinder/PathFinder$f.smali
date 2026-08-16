.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$f;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    const-string v0, "==NAV-MESH=="

    invoke-static {v0, p1}, LG3/b;->e(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$f;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->access$300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;)Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$f;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->access$402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :cond_0
    return-void
.end method

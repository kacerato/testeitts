.class public Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->d(Ljava/lang/String;Landroid/content/Context;Lrb/a;)LC5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lrb/a;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;Lrb/a;Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$layerListener",
            "val$types",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference$a;->d:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference$a;->a:Lrb/a;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference$a;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference$a;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->int_value:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference$a;->d:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->layerGUID:LAc/b;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference$a;->a:Lrb/a;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Lrb/a;->a(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference$a;->d:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->layerGUID:LAc/b;

    if-nez v1, :cond_1

    new-instance v1, LAc/b;

    invoke-direct {v1}, LAc/b;-><init>()V

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->layerGUID:LAc/b;

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference$a;->d:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference$a;->c:Landroid/content/Context;

    invoke-static {v1}, LK8/a;->m(Landroid/content/Context;)Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->g()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    move-result-object v1

    new-instance v2, LAc/b;

    invoke-direct {v2, p1}, LAc/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->c(LAc/b;)Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->a(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;)Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference$a;->d:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->layerGUID:LAc/b;

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->guid:LAc/b;

    invoke-virtual {v0, v1}, LAc/b;->t0(LAc/b;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference$a;->a:Lrb/a;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lrb/a;->a(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;)V

    :cond_2
    :goto_0
    return-void
.end method

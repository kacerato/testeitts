.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrb/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->getPhysicsEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$z;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newLayer"
        }
    .end annotation

    sget-object p1, LCc/c;->k:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$z;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$3000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)LMc/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$z;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$3000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)LMc/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$L;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$L;->b:Li9/b;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$z;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$3100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    move-result-object v2

    invoke-virtual {v1, v2}, Li9/b;->p(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

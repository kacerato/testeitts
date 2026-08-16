.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$q$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$q$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$q$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$q$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$q$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$q$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lt6/j;->J1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BasePool - clear all objects"

    invoke-static {v0}, Lt6/j;->S1(Ljava/lang/String;)Lt6/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$q$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$q$a;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$q$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$q;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$q;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$2700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$q$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$q$a;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$q$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$q;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$q;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->delete(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    invoke-static {v0}, Lt6/j;->P1(Lt6/e;)V

    return-void

    :goto_2
    invoke-static {v0}, Lt6/j;->P1(Lt6/e;)V

    throw v1
.end method

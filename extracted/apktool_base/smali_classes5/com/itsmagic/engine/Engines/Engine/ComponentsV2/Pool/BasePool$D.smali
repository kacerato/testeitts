.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$D;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$D;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$D;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$800(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)LDc/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$D;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$900(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)Lm9/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lm9/h;->p(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$D;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$1000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)Lm9/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lm9/e;->B(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$D;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$1100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    move-result-object v0

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$D;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->access$1202(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Z)Z

    :cond_2
    return-void
.end method

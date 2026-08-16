.class public final LJAVARuntime/ObjectPool;
.super LJAVARuntime/PoolComponent;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "ObjectPool",
        "Components"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/PoolComponent;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LJAVARuntime/PoolComponent;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V

    return-void
.end method

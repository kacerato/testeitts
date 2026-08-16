.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$L;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "L"
.end annotation


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

.field public final b:Li9/b;

.field public final c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;Li9/b;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pooledObject",
            "localStaticbody",
            "opce"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$L;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$L;->b:Li9/b;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$L;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$K;

    return-void
.end method

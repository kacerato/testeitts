.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$o$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$o;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/Exception;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$o;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$o;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$e"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$o$f;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$o;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$o$f;->b:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$o$f;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$o;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$o;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$o$f;->b:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ops!"

    invoke-static {v1, v0}, LZ6/i;->y1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

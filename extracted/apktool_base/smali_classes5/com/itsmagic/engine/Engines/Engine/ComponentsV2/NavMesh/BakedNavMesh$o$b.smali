.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$o$b;
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
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$o;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$o;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$o$b;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Limit of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$o$b;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$o;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$o;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tiles has been reached, the NavMesh bake will be incomplete, you can increase limits in nav mesh settings!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ops!"

    invoke-static {v1, v0}, LZ6/i;->y1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

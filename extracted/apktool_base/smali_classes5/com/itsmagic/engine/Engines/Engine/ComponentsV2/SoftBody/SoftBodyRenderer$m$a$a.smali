.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$m$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$m$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$m$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$m$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$m$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$m$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$m$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$m$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$m$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$m;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$m;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$m;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->access$600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$s;)V

    return-void
.end method

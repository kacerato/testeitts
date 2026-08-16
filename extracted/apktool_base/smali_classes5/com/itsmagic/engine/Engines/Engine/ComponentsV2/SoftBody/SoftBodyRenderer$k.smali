.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lib/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$k;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "globalMatrix"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$k;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)LRb/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, LQb/a;->d()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$k;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)[F

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o([F)[F

    invoke-static {}, LQb/a;->i()Lcom/google/android/filament/TransformManager;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$k;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)LRb/c;

    move-result-object v0

    invoke-virtual {v0}, LRb/c;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/filament/TransformManager;->h(I)I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer$k;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;->access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/SoftBody/SoftBodyRenderer;)[F

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/filament/TransformManager;->u(I[F)V

    return-void
.end method

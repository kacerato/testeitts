.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2$a$a;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Utils/Variable;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2$a$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2$a$a;Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$variable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2$a$a$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2$a$a;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2$a$a$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lt6/j;->J1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PrecomputedAtmosphereSkybox2 - set auto height"

    invoke-static {v0}, Lt6/j;->S1(Ljava/lang/String;)Lt6/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2$a$a$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2$a$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2$a$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2$a;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2$a$a$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2;->access$2102(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/PrecomputedAtmosphereSkybox2;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lt6/j;->P1(Lt6/e;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lt6/j;->P1(Lt6/e;)V

    throw v1
.end method

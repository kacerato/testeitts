.class public Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$i$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$i$c$a;->a(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:F

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$i$c$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$i$c$a;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$3",
            "val$value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$i$c$a$a;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$i$c$a;

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$i$c$a$a;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$i$c$a$a;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$i$c$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$i$c$a;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$i$c;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$i$c;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$i;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$i;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i0()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$i$c$a$a;->b:F

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->n(FFF)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->i0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$i$c$a$a;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$i$c$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$i$c$a;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$i$c;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$i$c;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$i;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$i;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->q(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V

    return-void
.end method

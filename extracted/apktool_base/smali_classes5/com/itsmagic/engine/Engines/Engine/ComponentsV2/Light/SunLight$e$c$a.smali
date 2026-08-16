.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$e$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$e$c;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Utils/Variable;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$e$c;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$e$c;Lcom/itsmagic/engine/Engines/Utils/Variable;)V
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$e$c$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$e$c;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$e$c$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$e$c$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$e$c;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$e$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$e;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$e;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight$e$c$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;->setShadowBias(F)V

    return-void
.end method

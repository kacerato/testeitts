.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$z;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$z;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$z$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$z$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$z;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$z;->a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$z;)LJAVARuntime/Component;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$z$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$z;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$z;->b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$z;)Lcom/itsmagic/engine/Engines/Input/Key;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$z$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$z;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$z;->a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$z;)LJAVARuntime/Component;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$z$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$z;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$z;->b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$z;)Lcom/itsmagic/engine/Engines/Input/Key;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Input/Key;->m()LJAVARuntime/Key;

    move-result-object v1

    invoke-virtual {v0, v1}, LJAVARuntime/Component;->onKeyDown(LJAVARuntime/Key;)V

    :cond_0
    return-void
.end method

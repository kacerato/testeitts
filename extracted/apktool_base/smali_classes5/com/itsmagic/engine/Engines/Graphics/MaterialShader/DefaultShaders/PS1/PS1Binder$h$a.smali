.class public Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/PS1/PS1Binder$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/PS1/PS1Binder$h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Utils/Variable;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/PS1/PS1Binder$h;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/PS1/PS1Binder$h;Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$variable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/PS1/PS1Binder$h$a;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/PS1/PS1Binder$h;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/PS1/PS1Binder$h$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/PS1/PS1Binder$h$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-static {v0}, Lyb/b;->u(Ljava/lang/String;)Lub/g;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/PS1/PS1Binder$h$a;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/PS1/PS1Binder$h;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/PS1/PS1Binder$h;->a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/PS1/PS1Binder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/PS1/PS1Binder;->T0(LJAVARuntime/Texture;)V

    return-void
.end method

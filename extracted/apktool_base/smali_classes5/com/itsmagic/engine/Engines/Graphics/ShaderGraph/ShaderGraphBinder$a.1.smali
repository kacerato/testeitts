.class public Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->Z0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$a;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, LQb/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$a$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$a$a;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$a;)V

    const/4 v1, 0x1

    invoke-static {v1, v0}, LK8/a;->h(ILjava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$a;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->B0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;Z)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$a;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->V0()V

    return-void
.end method

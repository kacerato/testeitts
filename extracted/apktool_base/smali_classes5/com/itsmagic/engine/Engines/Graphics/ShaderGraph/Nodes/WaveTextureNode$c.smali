.class public Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$c;
.super LF5/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode;->p(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF5/c$n0<",
        "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$c;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode;

    invoke-direct {p0}, LF5/c$n0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$c;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode;->J(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enumObject"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$e;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$c;->e(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$e;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$c;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode;->direction:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$e;

    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$e;->X:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$e;

    :goto_0
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode;->direction:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$e;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode;->K(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode;)V

    return-void
.end method

.method public e(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$e;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enumObject"
        }
    .end annotation

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$e;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$c;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode;->direction:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$e;

    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$e;->X:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$e;

    goto :goto_0

    :goto_1
    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$e;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$c;->d(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/WaveTextureNode$e;)V

    return-void
.end method

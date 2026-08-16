.class public Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->H(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat4Node;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat4Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$x;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$x;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat4Node;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$x;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat4Node;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat4Node;->value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    const-string v2, ""

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$x;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat4Node;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat4Node;->value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->f()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$x;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat4Node;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawFloat4Node;->value:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    iget p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->m(F)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$x;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->V0()V

    :cond_0
    return-void
.end method

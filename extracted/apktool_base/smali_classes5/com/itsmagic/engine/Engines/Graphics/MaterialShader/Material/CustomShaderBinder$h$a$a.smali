.class public Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$h$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$h$a;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Utils/Variable;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$h$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$h$a;Lcom/itsmagic/engine/Engines/Utils/Variable;)V
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$h$a$a;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$h$a;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$h$a$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$h$a$a;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$h$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$h$a;->a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$h;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$h;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$h$a$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Utils/Variable;->int_value:I

    const/16 v2, 0x7fff

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, -0x8000

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->n0(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$h$a$a;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$h$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$h$a;->a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$h;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$h;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$h;->a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->F0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    return-void
.end method

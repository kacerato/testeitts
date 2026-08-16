.class public Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$g$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$g$b;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Utils/Variable;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$g$b;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$g$b;Lcom/itsmagic/engine/Engines/Utils/Variable;)V
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$g$b$a;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$g$b;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$g$b$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$g$b$a;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$g$b;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$g$b;->a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$g;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$g;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$g$b$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->d1(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$g$b$a;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$g$b;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$g$b;->a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$g;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$g;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$g;->a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->F0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    return-void
.end method

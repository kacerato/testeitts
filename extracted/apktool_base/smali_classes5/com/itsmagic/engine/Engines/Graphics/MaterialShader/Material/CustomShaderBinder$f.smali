.class public Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->H(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LVb/b;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;LVb/b;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$param",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$f;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$f;->a:LVb/b;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$f;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$f;->a:LVb/b;

    iget-object v1, v0, LVb/b;->f:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, LVb/b;->f:Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$f;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$f;->a:LVb/b;

    iget-object v3, v3, LVb/b;->f:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->H0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$f;->a:LVb/b;

    iget-object v1, v0, LVb/b;->f:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, LVb/b;->f:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$f;->a:LVb/b;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_1
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, v0, LVb/b;->f:Ljava/lang/Object;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$f;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$f;->a:LVb/b;

    iget-object v0, v0, LVb/b;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->E0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$f;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder$f;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->F0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    :cond_2
    return-void
.end method

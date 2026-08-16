.class public Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$o;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$o;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$o;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$newRefractionType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$o$a;->c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$o;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$o$a;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$o$a;->c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$o;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$o;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->C0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$o$a;->c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$o;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$o;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->J()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$o$a;->c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$o;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$o;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->J()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->C()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$o$a;->c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$o;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$o;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->J()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v1

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$o$a;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    iput-object v3, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->refractionType:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->k()V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->B()Ljava/util/List;

    move-result-object v0

    const-string v1, "refractionType"

    const-string v2, "String"

    invoke-static {v1, v2, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$o$a;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->o(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$o$a;->c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$o;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$o;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->P()V

    return-void
.end method

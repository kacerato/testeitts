.class public Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$o;
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
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;


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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$o;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$o;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->refractionType:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    sget-object v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;->THIN:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

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

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;->THIN:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;->NONE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$o;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->refractionType:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$o$a;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$o$a;-><init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$o;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/b;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

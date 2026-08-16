.class public Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$y;
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
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawColorNode;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawColorNode;)V
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$y;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$y;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawColorNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$y;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawColorNode;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawColorNode;->value:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFFF)V

    :goto_0
    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

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

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->color_value:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$y;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawColorNode;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawColorNode;->value:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$y;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->V0()V

    :cond_0
    return-void
.end method

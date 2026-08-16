.class public Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$j;
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
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$a"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$j;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$j;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$j;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    if-nez v1, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>()V

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$j;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->f()F

    move-result v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$j;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$j;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$j;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    iget-object v5, v5, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->getZ()F

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(FFFF)V

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->color_value:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$j;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    if-nez v1, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>()V

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$j;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->color_value:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->n(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$j;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->color_value:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->o(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$j;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->color_value:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->p(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$j;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->color_value:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->m(F)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$j;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->V0()V

    :cond_1
    return-void
.end method

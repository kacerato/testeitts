.class public LN6/f$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ6/f$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LN6/f;->D1(Landroid/view/View;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

.field public final synthetic b:LN6/f;


# direct methods
.method public constructor <init>(LN6/f;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LN6/f$j;->b:LN6/f;

    iput-object p2, p0, LN6/f$j;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "Attribute"

    :goto_0
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->name:Ljava/lang/String;

    iget-object p1, p0, LN6/f$j;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->COLOR:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne p1, v1, :cond_1

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    if-eqz p1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->n(F)V

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->o(F)V

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->p(F)V

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->v4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->m(F)V

    :cond_1
    iget-object p1, p0, LN6/f$j;->b:LN6/f;

    invoke-static {p1}, LN6/f;->v1(LN6/f;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object p1

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    if-eqz p1, :cond_2

    iget-object p1, p0, LN6/f$j;->b:LN6/f;

    invoke-static {p1}, LN6/f;->v1(LN6/f;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object p1

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->attributes:Ljava/util/List;

    if-eqz p1, :cond_2

    iget-object p1, p0, LN6/f$j;->b:LN6/f;

    invoke-static {p1}, LN6/f;->v1(LN6/f;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object p1

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->attributes:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p1, p0, LN6/f$j;->b:LN6/f;

    invoke-static {p1}, LN6/f;->v1(LN6/f;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->k()V

    iget-object p1, p0, LN6/f$j;->b:LN6/f;

    invoke-static {p1}, LN6/f;->w1(LN6/f;)LN6/H;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, LN6/f$j;->b:LN6/f;

    invoke-static {p1}, LN6/f;->w1(LN6/f;)LN6/H;

    move-result-object p1

    invoke-virtual {p1}, LN6/H;->b0()V

    :cond_3
    iget-object p1, p0, LN6/f$j;->b:LN6/f;

    invoke-static {p1}, LN6/f;->x1(LN6/f;)V

    return-void
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

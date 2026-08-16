.class public LN6/p$x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LN6/p;->l0(Landroid/view/View;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

.field public final synthetic d:LN6/p;


# direct methods
.method public constructor <init>(LN6/p;IILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$actualIndex",
            "val$inputIndex",
            "val$type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LN6/p$x;->d:LN6/p;

    iput p2, p0, LN6/p$x;->a:I

    iput p3, p0, LN6/p$x;->b:I

    iput-object p4, p0, LN6/p$x;->c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    iget-object v0, p0, LN6/p$x;->d:LN6/p;

    invoke-static {v0}, LN6/p;->k(LN6/p;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object v0

    iget v1, p0, LN6/p$x;->a:I

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->k(I)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    const-string v2, ""

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->fileIPP:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    const-string v0, ""

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    iget-object v1, p0, LN6/p$x;->d:LN6/p;

    invoke-static {v1}, LN6/p;->m(LN6/p;)LN6/H;

    move-result-object v1

    invoke-virtual {v1}, LN6/H;->getGraphData()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object v1

    iget-object v2, p0, LN6/p$x;->d:LN6/p;

    invoke-static {v2}, LN6/p;->k(LN6/p;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object v2

    iget v3, p0, LN6/p$x;->a:I

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->k(I)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v0, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->fileIPP:Ljava/lang/String;

    :cond_2
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/A;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/A;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/A;->b(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SHADER_GRAPH_MAX_TEXTURES_LIMIT_REACHED:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v0, p0, LN6/p$x;->d:LN6/p;

    invoke-static {v0}, LN6/p;->k(LN6/p;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object v0

    iget v1, p0, LN6/p$x;->a:I

    invoke-static {v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->c(ILjava/lang/String;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->F(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;)V

    iget-object p1, p0, LN6/p$x;->d:LN6/p;

    iget v0, p0, LN6/p$x;->b:I

    iget-object v1, p0, LN6/p$x;->c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-static {p1, v0, v1}, LN6/p;->l(LN6/p;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    iget-object p1, p0, LN6/p$x;->d:LN6/p;

    invoke-static {p1}, LN6/p;->m(LN6/p;)LN6/H;

    move-result-object p1

    invoke-virtual {p1}, LN6/H;->b0()V

    return-void
.end method

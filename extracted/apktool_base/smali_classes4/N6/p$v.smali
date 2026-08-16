.class public LN6/p$v;
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

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:LN6/p;


# direct methods
.method public constructor <init>(LN6/p;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$inputIndex",
            "val$type",
            "val$compIndex",
            "val$actualIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LN6/p$v;->e:LN6/p;

    iput p2, p0, LN6/p$v;->a:I

    iput-object p3, p0, LN6/p$v;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    iput p4, p0, LN6/p$v;->c:I

    iput p5, p0, LN6/p$v;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 4

    iget-object v0, p0, LN6/p$v;->e:LN6/p;

    iget v1, p0, LN6/p$v;->a:I

    iget-object v2, p0, LN6/p$v;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-static {v0, v1, v2}, LN6/p;->o(LN6/p;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)[F

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, LN6/p$v;->c:I

    aget v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 8
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
    iget-object v0, p0, LN6/p$v;->e:LN6/p;

    iget v1, p0, LN6/p$v;->a:I

    iget-object v2, p0, LN6/p$v;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-static {v0, v1, v2}, LN6/p;->o(LN6/p;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v3, v0, v2

    const/4 v4, 0x2

    aget v5, v0, v4

    const/4 v6, 0x3

    aget v0, v0, v6

    iget v7, p0, LN6/p$v;->c:I

    if-nez v7, :cond_1

    iget v1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    :cond_1
    if-ne v7, v2, :cond_2

    iget v3, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    :cond_2
    if-ne v7, v4, :cond_3

    iget v5, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    :cond_3
    if-ne v7, v6, :cond_4

    iget v0, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    :cond_4
    iget-object p1, p0, LN6/p$v;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT2:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne p1, v2, :cond_5

    iget p1, p0, LN6/p$v;->d:I

    invoke-static {p1, v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->d(IFF)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;

    move-result-object p1

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT3:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne p1, v2, :cond_6

    iget p1, p0, LN6/p$v;->d:I

    invoke-static {p1, v1, v3, v5}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->e(IFFF)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;

    move-result-object p1

    goto :goto_0

    :cond_6
    iget p1, p0, LN6/p$v;->d:I

    invoke-static {p1, v1, v3, v5, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->f(IFFFF)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;

    move-result-object p1

    :goto_0
    iget-object v0, p0, LN6/p$v;->e:LN6/p;

    invoke-static {v0}, LN6/p;->k(LN6/p;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->F(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;)V

    iget-object p1, p0, LN6/p$v;->e:LN6/p;

    iget v0, p0, LN6/p$v;->a:I

    iget-object v1, p0, LN6/p$v;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-static {p1, v0, v1}, LN6/p;->l(LN6/p;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    iget-object p1, p0, LN6/p$v;->e:LN6/p;

    invoke-static {p1}, LN6/p;->m(LN6/p;)LN6/H;

    move-result-object p1

    invoke-virtual {p1}, LN6/H;->b0()V

    return-void
.end method

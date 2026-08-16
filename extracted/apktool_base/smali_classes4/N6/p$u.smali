.class public LN6/p$u;
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

    iput-object p1, p0, LN6/p$u;->d:LN6/p;

    iput p2, p0, LN6/p$u;->a:I

    iput p3, p0, LN6/p$u;->b:I

    iput-object p4, p0, LN6/p$u;->c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LN6/p$u;->d:LN6/p;

    iget v3, p0, LN6/p$u;->b:I

    invoke-static {v2, v3}, LN6/p;->n(LN6/p;I)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LN6/p$u;->d:LN6/p;

    invoke-static {v0}, LN6/p;->k(LN6/p;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    move-result-object v0

    iget v1, p0, LN6/p$u;->a:I

    iget p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    invoke-static {v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->g(IF)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->F(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;)V

    iget-object p1, p0, LN6/p$u;->d:LN6/p;

    iget v0, p0, LN6/p$u;->b:I

    iget-object v1, p0, LN6/p$u;->c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-static {p1, v0, v1}, LN6/p;->l(LN6/p;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    iget-object p1, p0, LN6/p$u;->d:LN6/p;

    invoke-static {p1}, LN6/p;->m(LN6/p;)LN6/H;

    move-result-object p1

    invoke-virtual {p1}, LN6/H;->b0()V

    return-void
.end method

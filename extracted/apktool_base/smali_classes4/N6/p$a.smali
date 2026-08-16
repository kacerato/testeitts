.class public LN6/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LN6/p;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawSliderNode;

.field public final synthetic b:LN6/p;


# direct methods
.method public constructor <init>(LN6/p;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawSliderNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$raw"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LN6/p$a;->b:LN6/p;

    iput-object p2, p0, LN6/p$a;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawSliderNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v1, p0, LN6/p$a;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawSliderNode;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawSliderNode;->value:F

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;F)V

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

    iget-object v0, p0, LN6/p$a;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawSliderNode;

    iget p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    iput p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/RawSliderNode;->value:F

    iget-object p1, p0, LN6/p$a;->b:LN6/p;

    invoke-static {p1}, LN6/p;->m(LN6/p;)LN6/H;

    move-result-object p1

    invoke-virtual {p1}, LN6/H;->b0()V

    :cond_0
    return-void
.end method

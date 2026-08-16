.class public LN6/p$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LN6/p;->i0(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;ZIILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

.field public final synthetic b:LN6/p;


# direct methods
.method public constructor <init>(LN6/p;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LN6/p$s;->b:LN6/p;

    iput-object p2, p0, LN6/p$s;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;
    .locals 1

    iget-object v0, p0, LN6/p$s;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    return-object v0
.end method

.method public b(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;I)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "targetNode",
            "targetInputIndex"
        }
    .end annotation

    iget-object v0, p0, LN6/p$s;->b:LN6/p;

    iget-object v1, p0, LN6/p$s;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-static {v0, v1, p1, p2}, LN6/p;->j(LN6/p;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;I)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object p1

    return-object p1
.end method

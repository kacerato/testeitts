.class public LN6/H$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LN6/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LN6/H;


# direct methods
.method public constructor <init>(LN6/H;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LN6/H$a;->b:LN6/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LN6/H$a;->b:LN6/H;

    invoke-static {v0}, LN6/H;->k(LN6/H;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LN6/H$a;->b:LN6/H;

    invoke-static {v0}, LN6/H;->k(LN6/H;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->k()V

    :cond_0
    iget-object v0, p0, LN6/H$a;->b:LN6/H;

    invoke-static {v0}, LN6/H;->l(LN6/H;)V

    return-void
.end method

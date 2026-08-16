.class public LN6/f$a;
.super LZ6/c$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LN6/f;->E1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

.field public final synthetic b:LN6/f;


# direct methods
.method public constructor <init>(LN6/f;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)V
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

    iput-object p1, p0, LN6/f$a;->b:LN6/f;

    iput-object p2, p0, LN6/f$a;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    invoke-direct {p0}, LZ6/c$h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LZ6/c$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    invoke-super {p0, p1}, LZ6/c$h;->a(LZ6/c$g;)V

    iget-object p1, p0, LN6/f$a;->b:LN6/f;

    invoke-static {p1}, LN6/f;->v1(LN6/f;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object p1

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    if-eqz p1, :cond_0

    iget-object p1, p0, LN6/f$a;->b:LN6/f;

    invoke-static {p1}, LN6/f;->v1(LN6/f;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object p1

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->attributes:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object p1, p0, LN6/f$a;->b:LN6/f;

    invoke-static {p1}, LN6/f;->v1(LN6/f;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object p1

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->attributes:Ljava/util/List;

    iget-object v0, p0, LN6/f$a;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, LN6/f$a;->b:LN6/f;

    invoke-static {p1}, LN6/f;->v1(LN6/f;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->k()V

    iget-object p1, p0, LN6/f$a;->b:LN6/f;

    invoke-static {p1}, LN6/f;->w1(LN6/f;)LN6/H;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LN6/f$a;->b:LN6/f;

    invoke-static {p1}, LN6/f;->w1(LN6/f;)LN6/H;

    move-result-object p1

    invoke-virtual {p1}, LN6/H;->b0()V

    :cond_1
    iget-object p1, p0, LN6/f$a;->b:LN6/f;

    invoke-static {p1}, LN6/f;->x1(LN6/f;)V

    return-void
.end method

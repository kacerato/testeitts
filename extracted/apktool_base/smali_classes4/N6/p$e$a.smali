.class public LN6/p$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH3/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LN6/p$e;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LN6/p$e;


# direct methods
.method public constructor <init>(LN6/p$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LN6/p$e$a;->a:LN6/p$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSelected()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LN6/p$e$a;->a:LN6/p$e;

    iget-object v0, v0, LN6/p$e;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->K()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onSelected(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    iget-object v0, p0, LN6/p$e$a;->a:LN6/p$e;

    iget-object v0, v0, LN6/p$e;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/PbrPresetNode;->P(Ljava/lang/String;)V

    iget-object p1, p0, LN6/p$e$a;->a:LN6/p$e;

    iget-object p1, p1, LN6/p$e;->b:LN6/p;

    invoke-static {p1}, LN6/p;->p(LN6/p;)V

    iget-object p1, p0, LN6/p$e$a;->a:LN6/p$e;

    iget-object p1, p1, LN6/p$e;->b:LN6/p;

    invoke-virtual {p1}, LN6/p;->f0()V

    iget-object p1, p0, LN6/p$e$a;->a:LN6/p$e;

    iget-object p1, p1, LN6/p$e;->b:LN6/p;

    invoke-static {p1}, LN6/p;->m(LN6/p;)LN6/H;

    move-result-object p1

    invoke-virtual {p1}, LN6/H;->b0()V

    return-void
.end method

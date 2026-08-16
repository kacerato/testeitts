.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor$c;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor$c$a;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object p1

    new-instance v0, Ln4/d;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor$c$a;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor$c;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor$c;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->access$000(Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ln4/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->B0(Ln4/f;)Z

    return-void
.end method

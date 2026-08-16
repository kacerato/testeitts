.class public Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->t1()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$target"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$b;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$b;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->u1(Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;)V

    return-void
.end method

.class public Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/q$a$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->B1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$k;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$k;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->y1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "models"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$k;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->q1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;)Le7/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Le7/a;->i(Ljava/util/List;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$k;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->y1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

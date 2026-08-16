.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->updateOnEditor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$n;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$n;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->access$000(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)Lub/n;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$n;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->access$000(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)Lub/n;

    move-result-object v2

    invoke-virtual {v2}, Lub/p;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_3

    move v2, v0

    :goto_1
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$n;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->access$000(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)Lub/n;

    move-result-object v3

    invoke-virtual {v3}, Lub/p;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$n;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->access$000(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)Lub/n;

    move-result-object v3

    invoke-virtual {v3}, Lub/p;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    rem-int/lit8 v4, v1, 0x40

    const/4 v5, 0x3

    if-lt v4, v5, :cond_1

    rem-int/lit8 v3, v3, 0x40

    if-ge v3, v5, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$n;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->access$000(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)Lub/n;

    move-result-object v3

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->g0()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v4

    invoke-virtual {v3, v1, v2, v4}, Lub/n;->Y(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto :goto_3

    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$n;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->access$000(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)Lub/n;

    move-result-object v3

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->h0()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v4

    invoke-virtual {v3, v1, v2, v4}, Lub/n;->Y(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$n;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->access$000(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)Lub/n;

    move-result-object v0

    invoke-virtual {v0}, Lub/n;->apply()V

    :cond_4
    return-void
.end method

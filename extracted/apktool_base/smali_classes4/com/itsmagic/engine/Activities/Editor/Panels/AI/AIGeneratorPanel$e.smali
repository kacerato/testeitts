.class public Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$e;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$e;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$e;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->q1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$e;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->p1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel$e;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->q1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

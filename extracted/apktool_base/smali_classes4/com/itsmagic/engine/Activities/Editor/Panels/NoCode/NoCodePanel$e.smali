.class public Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->w1(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$e;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "context",
            "tbButton"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$e;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->p1(Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;)Le6/X;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$e;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->p1(Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;)Le6/X;

    move-result-object p1

    invoke-virtual {p1}, Le6/X;->B()V

    :cond_0
    return-void
.end method

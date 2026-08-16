.class public Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->x1(Landroid/widget/LinearLayout;)V
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

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$g;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/content/Context;LM7/e;)V
    .locals 2
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

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$g;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->q1(Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel$g;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;->r1(Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Ldd/b;

    const-string v0, "No NoCode on object."

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1}, Ldd/b;-><init>(Ljava/lang/String;Z)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object p3, Lr4/a$e;->Below:Lr4/a$e;

    invoke-static {p1, p3, p2}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    return-void
.end method

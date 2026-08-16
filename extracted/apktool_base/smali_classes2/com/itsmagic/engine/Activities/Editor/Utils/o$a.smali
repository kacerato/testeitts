.class public final Lcom/itsmagic/engine/Activities/Editor/Utils/o$a;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/o;->a(Landroid/widget/TextView;Ljava/util/List;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Utils/n;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Utils/n;)V
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/o$a;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/n;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.text.Spannable"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/text/Spannable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/o$a;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/n;

    iget-object v0, p1, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/b;

    invoke-interface {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/b;->a(Lcom/itsmagic/engine/Activities/Editor/Utils/n;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const-string v0, "textPaint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/o$a;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/n;

    iget v0, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->b:I

    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    return-void
.end method

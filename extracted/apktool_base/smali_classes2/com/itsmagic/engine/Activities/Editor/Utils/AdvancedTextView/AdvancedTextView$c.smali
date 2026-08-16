.class public Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$c;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;->e(Landroid/text/SpannableStringBuilder;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$d;

.field public final synthetic c:Ljava/lang/CharSequence;

.field public final synthetic d:Landroid/text/SpannableStringBuilder;

.field public final synthetic e:Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$d;Ljava/lang/CharSequence;Landroid/text/SpannableStringBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$t",
            "val$insert",
            "val$ssb"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$c;->e:Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$c;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$d;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$c;->c:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$c;->d:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$c;->d:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$c;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$d;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$d;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/n;

    iget-object v0, p1, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/b;

    invoke-interface {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/b;->a(Lcom/itsmagic/engine/Activities/Editor/Utils/n;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 5
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textPaint"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$c;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$d;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$d;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/n;

    iget v0, v0, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->b:I

    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$c;->c:Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/Spanned;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/text/Spanned;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v4, Landroid/text/style/UnderlineSpan;

    invoke-interface {v1, v3, v0, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/UnderlineSpan;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$c;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$d;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$d;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/n;

    iget-boolean v1, v1, Lcom/itsmagic/engine/Activities/Editor/Utils/n;->e:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    :cond_3
    :goto_1
    return-void
.end method

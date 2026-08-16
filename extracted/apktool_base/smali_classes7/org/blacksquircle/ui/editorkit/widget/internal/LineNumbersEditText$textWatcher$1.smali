.class public final Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText$textWatcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;


# direct methods
.method public constructor <init>(Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;)V
    .locals 0

    iput-object p1, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText$textWatcher$1;->this$0:Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText$textWatcher$1;->this$0:Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;

    invoke-virtual {v0, p1}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->doAfterTextChanged(Landroid/text/Editable;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText$textWatcher$1;->this$0:Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->doBeforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText$textWatcher$1;->this$0:Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->doOnTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

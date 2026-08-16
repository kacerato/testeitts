.class public Lcom/itsmagic/engine/Activities/Editor/Utils/F;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "184"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "formats"
        }
    .end annotation

    const-string v0, "@ANY@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "any"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static b(Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const v0, 0x7f0904fd

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/view/View;)Lcom/google/android/material/textfield/TextInputEditText;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const v0, 0x7f0904fd

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method public static d(Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "view"
        }
    .end annotation

    if-eqz p1, :cond_0

    const v0, 0x7f0904fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static e(Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "view"
        }
    .end annotation

    const v0, 0x7f0904fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz p1, :cond_5

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;->FloatNumber:Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;

    if-ne p0, v0, :cond_0

    const/16 p0, 0x3002

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;->IntNumber:Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;

    if-ne p0, v0, :cond_1

    const/16 p0, 0x1002

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;->MultiLineText:Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;

    if-ne p0, v0, :cond_2

    const/high16 p0, 0x40000

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;->Default:Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;->SingleLineText:Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;

    if-ne p0, v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;->Password:Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;

    if-ne p0, v0, :cond_5

    const/16 p0, 0x81

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setInputType(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public static f(Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;Lcom/google/android/material/textfield/TextInputEditText;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "tiet"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;->FloatNumber:Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;

    if-ne p0, v0, :cond_0

    const/16 p0, 0x3002

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;->IntNumber:Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;

    if-ne p0, v0, :cond_1

    const/16 p0, 0x1002

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;->MultiLineText:Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;

    if-ne p0, v0, :cond_2

    const/high16 p0, 0x40000

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;->Default:Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;->SingleLineText:Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;

    if-ne p0, v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;->Password:Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;

    if-ne p0, v0, :cond_5

    const/16 p0, 0x81

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setInputType(I)V

    :cond_5
    :goto_0
    return-void
.end method

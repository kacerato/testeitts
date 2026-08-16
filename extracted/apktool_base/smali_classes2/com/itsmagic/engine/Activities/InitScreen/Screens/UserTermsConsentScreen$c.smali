.class public Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;->e(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/view/LayoutInflater;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/Calendar;

.field public final synthetic b:Landroidx/appcompat/widget/AppCompatEditText;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;Ljava/util/Calendar;Landroidx/appcompat/widget/AppCompatEditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$myCalendar",
            "val$editText"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$c;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$c;->a:Ljava/util/Calendar;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$c;->b:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "year",
            "month",
            "day"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$c;->a:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$c;->a:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, p3}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$c;->a:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {p1, v1, p4}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;->m()Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;

    move-result-object p1

    add-int/2addr p3, v0

    invoke-virtual {p1, p4, p3, p2}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->i(III)V

    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p3, "dd/MM/yyyy"

    invoke-direct {p1, p3, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$c;->b:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object p3, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$c;->a:Ljava/util/Calendar;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

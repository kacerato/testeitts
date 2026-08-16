.class public Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;->e(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/view/LayoutInflater;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$activity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$e;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$e;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;->m()Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;

    move-result-object p1

    iget-boolean p1, p1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->configured:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;->m()Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;

    move-result-object v2

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->acceptedAt:Ljava/lang/String;

    invoke-static {}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;->m()Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;

    move-result-object p1

    iget p1, p1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->month:I

    if-lez p1, :cond_1

    invoke-static {}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;->m()Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;

    move-result-object p1

    iget p1, p1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->month:I

    const/16 v1, 0xc

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;->m()Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;

    move-result-object p1

    iget p1, p1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->year:I

    invoke-static {}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;->m()Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;

    move-result-object v1

    iget v1, v1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->month:I

    invoke-static {}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;->m()Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;

    move-result-object v2

    iget v2, v2, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->day:I

    invoke-static {p1, v1, v2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p1

    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v1

    invoke-static {}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;->m()Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;

    move-result-object v2

    invoke-static {p1, v1}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;->n(Ljava/time/LocalDate;Ljava/time/LocalDate;)I

    move-result p1

    iput p1, v2, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->age:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;->m()Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->termsAccepted:Z

    invoke-static {}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;->m()Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;

    move-result-object p1

    iput v0, p1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->version:I

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$e;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;->q()V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$e;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/InitScreen/a;->a()V

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$e;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$e;->b:Landroid/app/Activity;

    const-string v1, "Invalid date month"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$e;->b:Landroid/app/Activity;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->FILL_BIRTHDAY_WARNING:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.class public Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;
.super Lcom/itsmagic/engine/Activities/InitScreen/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;
    }
.end annotation


# static fields
.field public static final b:I = 0x1

.field public static c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/InitScreen/a;-><init>()V

    return-void
.end method

.method public static synthetic m()Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;

    return-object v0
.end method

.method public static n(Ljava/time/LocalDate;Ljava/time/LocalDate;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "birthDate",
            "currentDate"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Ljava/time/Period;->between(Ljava/time/LocalDate;Ljava/time/LocalDate;)Ljava/time/Period;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Period;->getYears()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static o()Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;->p(Landroid/content/Context;)Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;

    move-result-object v0

    return-object v0
.end method

.method public static p(Landroid/content/Context;)Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    :try_start_0
    const-string v1, "terms"

    const-string v2, "terms.config"

    invoke-static {v1, v2, p0}, LX7/a;->C(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;

    sput-object p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    sget-object p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;

    if-nez p0, :cond_1

    new-instance p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;-><init>()V

    sput-object p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;

    :cond_1
    sget-object p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;

    return-object p0
.end method


# virtual methods
.method public e(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "activity",
            "layoutInflater"
        }
    .end annotation

    const p1, 0x7f0c01cc

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p3, 0x7f090544

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f0904f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->USER_TERMS_CONSENT_TITLE:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->USER_TERMS_CONSENT_TEXT:LAc/b;

    invoke-static {p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    const v0, 0x7f0903da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->USER_TERMS_CONSENT_PRIVACY_POLICY_TEXT:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$a;

    invoke-direct {v1, p0, p2}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$a;-><init>(Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0903db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->USER_TERMS_CONSENT_TERMS_AND_CONDITIONS_TEXT:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$b;

    invoke-direct {v1, p0, p2}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$b;-><init>(Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->USER_TERMS_INFORM_BIRTHDAY:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$c;

    invoke-direct {v1, p0, p3, v0}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$c;-><init>(Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;Ljava/util/Calendar;Landroidx/appcompat/widget/AppCompatEditText;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;

    iget-boolean v3, v2, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->configured:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    iget v2, v2, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->year:I

    invoke-virtual {p3, v3, v2}, Ljava/util/Calendar;->set(II)V

    sget-object v2, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;

    iget v2, v2, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->month:I

    const/4 v3, 0x2

    invoke-virtual {p3, v3, v2}, Ljava/util/Calendar;->set(II)V

    sget-object v2, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;

    iget v2, v2, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->day:I

    const/4 v3, 0x5

    invoke-virtual {p3, v3, v2}, Ljava/util/Calendar;->set(II)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "dd/MM/yyyy"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance v2, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$d;

    invoke-direct {v2, p0, p2, v1, p3}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$d;-><init>(Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;Landroid/app/Activity;Landroid/app/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f090165

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CONTINUE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$e;

    invoke-direct {v0, p0, p2}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$e;-><init>(Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;Landroid/app/Activity;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public i(Landroid/app/Activity;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    sget-object p1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->termsAccepted:Z

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget p1, p1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->version:I

    if-eq p1, v0, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public k(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;->p(Landroid/content/Context;)Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;

    return-void
.end method

.method public q()V
    .locals 4

    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "terms.config"

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/InitScreen/a;->b()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "terms"

    invoke-static {v3, v1, v0, v2}, LX7/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    return-void
.end method

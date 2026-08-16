.class public Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen;
.super Lcom/itsmagic/engine/Activities/InitScreen/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;
    }
.end annotation


# static fields
.field public static final b:I = 0x1

.field public static c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/InitScreen/a;-><init>()V

    return-void
.end method

.method public static synthetic m()Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;

    return-object v0
.end method

.method public static n()Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen;->o(Landroid/content/Context;)Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;

    move-result-object v0

    return-object v0
.end method

.method public static o(Landroid/content/Context;)Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;

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
    sget-object v1, LW7/b;->e:LX7/a;

    const-string v1, "terms"

    const-string v2, "ads.config"

    invoke-static {v1, v2, p0}, LX7/a;->C(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;

    sput-object p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    sget-object p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;

    if-nez p0, :cond_1

    new-instance p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;-><init>()V

    sput-object p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;

    :cond_1
    sget-object p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;

    return-object p0
.end method


# virtual methods
.method public e(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1
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

    const p1, 0x7f0c01c9

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090544

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f0904f9

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->USER_ADS_CONSENT_TITLE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->USER_ADS_CONSENT_TEXT:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0901bb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->USER_ADS_CONSENT_DONT_SELL:LAc/b;

    invoke-static {p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p3, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$a;

    invoke-direct {p3, p0}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$a;-><init>(Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen;)V

    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p2, 0x7f090091

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->USER_ADS_CONSENT_AGREE:LAc/b;

    invoke-static {p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p3, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$b;

    invoke-direct {p3, p0}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$b;-><init>(Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0901b5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->USER_ADS_CONSENT_DISAGREE:LAc/b;

    invoke-static {p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p3, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$c;

    invoke-direct {p3, p0}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$c;-><init>(Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    sget-object p1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;->termsAccepted:Z

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object p1, p1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;->ads:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms$a;

    sget-object v1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms$a;->Undefined:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms$a;

    if-ne p1, v1, :cond_2

    return v0

    :cond_2
    sget-object p1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;

    iget p1, p1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;->version:I

    if-eq p1, v0, :cond_3

    return v0

    :cond_3
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

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen;->o(Landroid/content/Context;)Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;

    return-void
.end method

.method public p()V
    .locals 4

    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, LW7/b;->e:LX7/a;

    const-string v1, "ads.config"

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/InitScreen/a;->b()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "terms"

    invoke-static {v3, v1, v0, v2}, LX7/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    return-void
.end method

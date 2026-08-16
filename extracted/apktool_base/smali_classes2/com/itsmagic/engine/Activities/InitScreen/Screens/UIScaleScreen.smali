.class public Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;
.super Lcom/itsmagic/engine/Activities/InitScreen/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$Settings;
    }
.end annotation


# static fields
.field public static b:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$Settings;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/InitScreen/a;-><init>()V

    return-void
.end method

.method public static synthetic m(Landroid/app/Activity;Landroid/widget/LinearLayout;F)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;->r(Landroid/app/Activity;Landroid/widget/LinearLayout;F)V

    return-void
.end method

.method public static synthetic n()Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$Settings;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;->b:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$Settings;

    return-object v0
.end method

.method public static o(Landroid/app/Activity;)D
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p0, p0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr p0, v2

    div-float/2addr v1, v0

    float-to-double v2, p0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    float-to-double v0, v1

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static p()Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$Settings;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;->b:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$Settings;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;->q(Landroid/content/Context;)Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$Settings;

    move-result-object v0

    return-object v0
.end method

.method public static q(Landroid/content/Context;)Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$Settings;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;->b:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$Settings;

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
    const-string v1, "uiscale"

    const-string v2, "settings.config"

    invoke-static {v1, v2, p0}, LX7/a;->C(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$Settings;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$Settings;

    sput-object p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;->b:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$Settings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    sget-object p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;->b:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$Settings;

    if-nez p0, :cond_1

    new-instance p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$Settings;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$Settings;-><init>()V

    sput-object p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;->b:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$Settings;

    :cond_1
    sget-object p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;->b:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$Settings;

    return-object p0
.end method

.method public static r(Landroid/app/Activity;Landroid/widget/LinearLayout;F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "contentArea",
            "scale"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, p2, v1}, LNc/b;->E(FFF)F

    move-result p2

    invoke-static {p0, p2}, Lw3/k;->a(Landroid/content/Context;F)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0c0081

    invoke-static {p2, p0, p1}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;->s(ILandroid/view/LayoutInflater;Landroid/widget/LinearLayout;)V

    const p2, 0x7f0c00eb

    invoke-static {p2, p0, p1}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;->s(ILandroid/view/LayoutInflater;Landroid/widget/LinearLayout;)V

    const p2, 0x7f0c00ee

    invoke-static {p2, p0, p1}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;->s(ILandroid/view/LayoutInflater;Landroid/widget/LinearLayout;)V

    const p2, 0x7f0c00e7

    invoke-static {p2, p0, p1}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;->s(ILandroid/view/LayoutInflater;Landroid/widget/LinearLayout;)V

    const p2, 0x7f0c00d7

    invoke-static {p2, p0, p1}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;->s(ILandroid/view/LayoutInflater;Landroid/widget/LinearLayout;)V

    const p2, 0x7f0c008e

    invoke-static {p2, p0, p1}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;->s(ILandroid/view/LayoutInflater;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public static s(ILandroid/view/LayoutInflater;Landroid/widget/LinearLayout;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "layout",
            "inflater",
            "content"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 p2, -0x2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public e(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 4
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

    const p1, 0x7f0c01c7

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p3, 0x7f090544

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const p3, 0x7f0904f9

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;->o(Landroid/app/Activity;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4023000000000000L    # 9.5

    cmpl-double p3, v0, v2

    if-ltz p3, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object p3

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p3, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->uiScale:F

    goto :goto_0

    :cond_0
    const-wide/high16 v2, 0x401a000000000000L    # 6.5

    cmpl-double p3, v0, v2

    if-ltz p3, :cond_1

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object p3

    const v0, 0x3f8ccccd    # 1.1f

    iput v0, p3, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->uiScale:F

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object p3

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p3, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->uiScale:F

    :goto_0
    const p3, 0x7f09015d

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    const v0, 0x7f0904fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$a;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$a;-><init>(Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;Lcom/google/android/material/textfield/TextInputEditText;Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v2

    iget v2, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->uiScale:F

    const/4 v3, 0x2

    invoke-static {v2, v3}, LTc/b;->p(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090312

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090087

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$b;

    invoke-direct {v3, p0, p2, p3, v0}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$b;-><init>(Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;Landroid/app/Activity;Landroid/widget/LinearLayout;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$c;

    invoke-direct {v1, p0, p2, p3, v0}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$c;-><init>(Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;Landroid/app/Activity;Landroid/widget/LinearLayout;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090091

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CONTINUE:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$d;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$d;-><init>(Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->uiScale:F

    invoke-static {p2, p3, v0}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;->r(Landroid/app/Activity;Landroid/widget/LinearLayout;F)V

    return-object p1
.end method

.method public i(Landroid/app/Activity;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    sget-object p1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;->b:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$Settings;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-boolean p1, p1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$Settings;->executed:Z

    if-nez p1, :cond_1

    return v0

    :cond_1
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

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;->q(Landroid/content/Context;)Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$Settings;

    return-void
.end method

.method public t()V
    .locals 4

    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;->b:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$Settings;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "settings.config"

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/InitScreen/a;->b()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "uiscale"

    invoke-static {v3, v1, v0, v2}, LX7/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    return-void
.end method

.class public Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;->e(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/view/LayoutInflater;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/android/material/textfield/TextInputEditText;

.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic d:Landroid/widget/LinearLayout;

.field public final synthetic e:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;Lcom/google/android/material/textfield/TextInputEditText;Landroid/app/Activity;Landroid/widget/LinearLayout;)V
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
            "val$textInputEditText",
            "val$activity",
            "val$contentArea"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$a;->e:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$a;->b:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$a;->c:Landroid/app/Activity;

    iput-object p4, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$a;->d:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "actionId",
            "event"
        }
    .end annotation

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p3, 0x42

    if-ne p2, p3, :cond_1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LNc/b;->u1(Ljava/lang/String;)F

    move-result p1

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object p2

    const p3, 0x3dcccccd    # 0.1f

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p3, p1, v0}, LNc/b;->E(FFF)F

    move-result p1

    iput p1, p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->uiScale:F

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$a;->b:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object p3

    iget p3, p3, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->uiScale:F

    const/4 v0, 0x2

    invoke-static {p3, v0}, LTc/b;->p(FI)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->e()V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$a;->c:Landroid/app/Activity;

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$a;->d:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object p3

    iget p3, p3, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->uiScale:F

    invoke-static {p1, p2, p3}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;->m(Landroid/app/Activity;Landroid/widget/LinearLayout;F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    invoke-static {}, LIc/i;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p1, 0x1

    return p1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.class public Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;->e(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/view/LayoutInflater;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Landroid/widget/LinearLayout;

.field public final synthetic d:Lcom/google/android/material/textfield/TextInputEditText;

.field public final synthetic e:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;Landroid/app/Activity;Landroid/widget/LinearLayout;Lcom/google/android/material/textfield/TextInputEditText;)V
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
            "val$activity",
            "val$contentArea",
            "val$textInputEditText"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$b;->e:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$b;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$b;->c:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$b;->d:Lcom/google/android/material/textfield/TextInputEditText;

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
            "view"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object p1

    iget v0, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->uiScale:F

    const v1, 0x3dcccccd    # 0.1f

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->uiScale:F

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object p1

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->uiScale:F

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v0, v2}, LNc/b;->E(FFF)F

    move-result v0

    iput v0, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->uiScale:F

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->e()V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$b;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$b;->c:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v1

    iget v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->uiScale:F

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen;->m(Landroid/app/Activity;Landroid/widget/LinearLayout;F)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UIScaleScreen$b;->d:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v1

    iget v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->uiScale:F

    const/4 v2, 0x2

    invoke-static {v1, v2}, LTc/b;->p(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

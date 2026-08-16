.class public Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen;->e(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/view/LayoutInflater;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$a;->a:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buttonView",
            "isChecked"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen;->m()Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;

    move-result-object p1

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;->doNotSell:Z

    return-void
.end method

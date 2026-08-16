.class public Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen;->e(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/view/LayoutInflater;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen;


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

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$b;->b:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen;

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

    invoke-static {}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen;->m()Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;->termsAccepted:Z

    invoke-static {}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen;->m()Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;

    move-result-object p1

    sget-object v1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms$a;->HasConsent:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms$a;

    iput-object v1, p1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;->ads:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms$a;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen;->m()Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;

    move-result-object v2

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;->acceptedAt:Ljava/lang/String;

    invoke-static {}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen;->m()Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;

    move-result-object p1

    iput v0, p1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;->version:I

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$b;->b:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen;->p()V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$b;->b:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/InitScreen/a;->a()V

    return-void
.end method

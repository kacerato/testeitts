.class public Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$b;
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

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$b;->c:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$b;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const-string p1, "https://itsmagic.com.br/terms-and-conditions.html"

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$b;->b:Landroid/app/Activity;

    invoke-static {p1, v0}, LIc/i;->p(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

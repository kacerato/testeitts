.class public Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$d;
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

.field public final synthetic c:Landroid/app/DatePickerDialog$OnDateSetListener;

.field public final synthetic d:Ljava/util/Calendar;

.field public final synthetic e:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;Landroid/app/Activity;Landroid/app/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;)V
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
            "val$dateListener",
            "val$myCalendar"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$d;->e:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$d;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$d;->c:Landroid/app/DatePickerDialog$OnDateSetListener;

    iput-object p4, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$d;->d:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;->m()Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;

    move-result-object p1

    iget-boolean p1, p1, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->configured:Z

    if-eqz p1, :cond_0

    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$d;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$d;->c:Landroid/app/DatePickerDialog$OnDateSetListener;

    invoke-static {}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;->m()Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;

    move-result-object v0

    iget v3, v0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->year:I

    invoke-static {}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;->m()Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;

    move-result-object v0

    iget v4, v0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->month:I

    invoke-static {}, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;->m()Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;

    move-result-object v0

    iget v5, v0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->day:I

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/app/DatePickerDialog;

    iget-object v7, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$d;->b:Landroid/app/Activity;

    iget-object v8, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$d;->c:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$d;->d:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$d;->d:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/16 v9, 0x7d0

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void
.end method

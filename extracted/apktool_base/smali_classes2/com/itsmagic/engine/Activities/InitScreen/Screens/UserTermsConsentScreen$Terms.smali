.class public Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Terms"
.end annotation


# instance fields
.field acceptedAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field age:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field configured:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field day:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field month:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field termsAccepted:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field version:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field year:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->day:I

    iput v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->month:I

    iput v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->year:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->configured:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->termsAccepted:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->acceptedAt:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->age:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->day:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->month:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->year:I

    return v0
.end method

.method public f()Z
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->age:I

    const/16 v1, 0xd

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->configured:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->termsAccepted:Z

    return v0
.end method

.method public i(III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "day",
            "month",
            "year"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->day:I

    iput p2, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->month:I

    iput p3, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->year:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserTermsConsentScreen$Terms;->configured:Z

    return-void
.end method

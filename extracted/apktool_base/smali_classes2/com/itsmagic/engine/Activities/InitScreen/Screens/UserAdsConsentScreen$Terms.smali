.class public Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Terms"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms$a;
    }
.end annotation


# instance fields
.field acceptedAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field ads:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms$a;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field doNotSell:Z
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


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms$a;->Undefined:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms$a;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;->ads:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;->termsAccepted:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;->doNotSell:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;->acceptedAt:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms$a;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;->ads:Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms$a;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;->doNotSell:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/InitScreen/Screens/UserAdsConsentScreen$Terms;->termsAccepted:Z

    return v0
.end method

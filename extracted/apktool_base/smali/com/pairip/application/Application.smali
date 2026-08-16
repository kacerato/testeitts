.class public Lcom/pairip/application/Application;
.super Lcom/itsmagic/engine/Activities/App;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/App;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/pairip/licensecheck/LicenseClient;->checkLicense(Landroid/content/Context;)V

    invoke-super {p0, p1}, Lcom/pairip/application/Application;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/j$b;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/j$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/j$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "productID",
            "listener"
        }
    .end annotation

    invoke-static {p0}, LT5/b;->D(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "Package not found"

    invoke-interface {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/j$a;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p0}, LT5/b;->P(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/j$a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/j$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageServerID",
            "listener"
        }
    .end annotation

    invoke-static {p0}, LT5/b;->D(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "Package not found"

    invoke-interface {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/j$b;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;->version:I

    invoke-static {p0}, LT5/b;->P(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/j$b;->c(ILjava/lang/String;)V

    return-void
.end method

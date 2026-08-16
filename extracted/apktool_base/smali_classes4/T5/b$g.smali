.class public LT5/b$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LT5/b;->Z(Z)Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Database;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aPackage"
        }
    .end annotation

    iget p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;->appMajorVersion:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "aPackage"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    invoke-virtual {p0, p1}, LT5/b$g;->a(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)Z

    move-result p1

    return p1
.end method

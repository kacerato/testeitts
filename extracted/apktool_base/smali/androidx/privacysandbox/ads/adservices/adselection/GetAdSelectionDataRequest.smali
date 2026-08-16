.class public final Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/privacysandbox/ads/adservices/common/ExperimentalFeatures$Ext10OptIn;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataRequest$Ext10Impl;,
        Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataRequest$Ext12Impl;
    }
.end annotation


# instance fields
.field private final coordinatorOriginUri:Landroid/net/Uri;

.field private final seller:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;


# direct methods
.method public constructor <init>(Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;)V
    .locals 2

    .line 1
    const-string v0, "seller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataRequest;-><init>(Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;Landroid/net/Uri;ILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;Landroid/net/Uri;)V
    .locals 1

    const-string v0, "seller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataRequest;->seller:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    .line 4
    iput-object p2, p0, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataRequest;->coordinatorOriginUri:Landroid/net/Uri;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;Landroid/net/Uri;ILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataRequest;-><init>(Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic getCoordinatorOriginUri$annotations()V
    .locals 0
    .annotation runtime Landroidx/privacysandbox/ads/adservices/common/ExperimentalFeatures$Ext12OptIn;
    .end annotation

    return-void
.end method


# virtual methods
.method public final convertToAdServices$ads_adservices_release()Landroid/adservices/adselection/GetAdSelectionDataRequest;
    .locals 3

    sget-object v0, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;->INSTANCE:Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;

    invoke-virtual {v0}, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;->adServicesVersion()I

    move-result v1

    const/16 v2, 0xc

    if-ge v1, v2, :cond_1

    invoke-virtual {v0}, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;->extServicesVersionS()I

    move-result v0

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataRequest$Ext10Impl;->Companion:Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataRequest$Ext10Impl$Companion;

    invoke-virtual {v0, p0}, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataRequest$Ext10Impl$Companion;->convertGetAdSelectionDataRequest(Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataRequest;)Landroid/adservices/adselection/GetAdSelectionDataRequest;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    sget-object v0, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataRequest$Ext12Impl;->Companion:Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataRequest$Ext12Impl$Companion;

    invoke-virtual {v0, p0}, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataRequest$Ext12Impl$Companion;->convertGetAdSelectionDataRequest(Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataRequest;)Landroid/adservices/adselection/GetAdSelectionDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataRequest;->seller:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    check-cast p1, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataRequest;

    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataRequest;->seller:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataRequest;->coordinatorOriginUri:Landroid/net/Uri;

    iget-object p1, p1, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataRequest;->coordinatorOriginUri:Landroid/net/Uri;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getCoordinatorOriginUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataRequest;->coordinatorOriginUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getSeller()Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;
    .locals 1

    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataRequest;->seller:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataRequest;->seller:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    invoke-virtual {v0}, Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataRequest;->coordinatorOriginUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetAdSelectionDataRequest: seller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataRequest;->seller:Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", coordinatorOriginUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/GetAdSelectionDataRequest;->coordinatorOriginUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

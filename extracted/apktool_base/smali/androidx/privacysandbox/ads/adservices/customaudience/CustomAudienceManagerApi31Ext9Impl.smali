.class public final Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudienceManagerApi31Ext9Impl;
.super Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudienceManagerImplCommon;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/privacysandbox/ads/adservices/customaudience/a;->a(Landroid/content/Context;)Landroid/adservices/customaudience/CustomAudienceManager;

    move-result-object p1

    const-string v0, "get(context)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudienceManagerImplCommon;-><init>(Landroid/adservices/customaudience/CustomAudienceManager;)V

    return-void
.end method

.class public abstract Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures$Api33Ext5JavaImpl;,
        Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;->Companion:Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final from(Landroid/content/Context;)Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;
    .locals 1
    .annotation runtime LLf/o;
    .end annotation

    sget-object v0, Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;->Companion:Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures$Companion;

    invoke-virtual {v0, p0}, Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures$Companion;->from(Landroid/content/Context;)Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract deleteRegistrationsAsync(Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;)Lcom/google/common/util/concurrent/Z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;",
            ")",
            "Lcom/google/common/util/concurrent/Z<",
            "Lnf/P0;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMeasurementApiStatusAsync()Lcom/google/common/util/concurrent/Z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/Z<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerSourceAsync(Landroid/net/Uri;Landroid/view/InputEvent;)Lcom/google/common/util/concurrent/Z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/view/InputEvent;",
            ")",
            "Lcom/google/common/util/concurrent/Z<",
            "Lnf/P0;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerSourceAsync(Landroidx/privacysandbox/ads/adservices/measurement/SourceRegistrationRequest;)Lcom/google/common/util/concurrent/Z;
    .annotation runtime Landroidx/privacysandbox/ads/adservices/common/ExperimentalFeatures$RegisterSourceOptIn;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/measurement/SourceRegistrationRequest;",
            ")",
            "Lcom/google/common/util/concurrent/Z<",
            "Lnf/P0;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerTriggerAsync(Landroid/net/Uri;)Lcom/google/common/util/concurrent/Z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/common/util/concurrent/Z<",
            "Lnf/P0;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerWebSourceAsync(Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;)Lcom/google/common/util/concurrent/Z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/measurement/WebSourceRegistrationRequest;",
            ")",
            "Lcom/google/common/util/concurrent/Z<",
            "Lnf/P0;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerWebTriggerAsync(Landroidx/privacysandbox/ads/adservices/measurement/WebTriggerRegistrationRequest;)Lcom/google/common/util/concurrent/Z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/measurement/WebTriggerRegistrationRequest;",
            ")",
            "Lcom/google/common/util/concurrent/Z<",
            "Lnf/P0;",
            ">;"
        }
    .end annotation
.end method

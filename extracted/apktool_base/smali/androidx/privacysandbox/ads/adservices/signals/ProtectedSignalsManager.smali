.class public abstract Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager$Companion;

.field private static final TAG:Ljava/lang/String; = "ProtectedSignalsManager"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager;->Companion:Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final obtain(Landroid/content/Context;)Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager;
    .locals 1
    .annotation runtime LLf/o;
    .end annotation

    .annotation runtime Landroidx/privacysandbox/ads/adservices/common/ExperimentalFeatures$Ext12OptIn;
    .end annotation

    sget-object v0, Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager;->Companion:Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager$Companion;

    invoke-virtual {v0, p0}, Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager$Companion;->obtain(Landroid/content/Context;)Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract updateSignals(Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;Lyf/f;)Ljava/lang/Object;
    .annotation runtime Landroidx/privacysandbox/ads/adservices/common/ExperimentalFeatures$Ext12OptIn;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

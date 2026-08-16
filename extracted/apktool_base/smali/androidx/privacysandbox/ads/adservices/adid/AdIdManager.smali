.class public abstract Landroidx/privacysandbox/ads/adservices/adid/AdIdManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/privacysandbox/ads/adservices/adid/AdIdManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/privacysandbox/ads/adservices/adid/AdIdManager$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/privacysandbox/ads/adservices/adid/AdIdManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/privacysandbox/ads/adservices/adid/AdIdManager$Companion;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Landroidx/privacysandbox/ads/adservices/adid/AdIdManager;->Companion:Landroidx/privacysandbox/ads/adservices/adid/AdIdManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final obtain(Landroid/content/Context;)Landroidx/privacysandbox/ads/adservices/adid/AdIdManager;
    .locals 1
    .annotation runtime LLf/o;
    .end annotation

    sget-object v0, Landroidx/privacysandbox/ads/adservices/adid/AdIdManager;->Companion:Landroidx/privacysandbox/ads/adservices/adid/AdIdManager$Companion;

    invoke-virtual {v0, p0}, Landroidx/privacysandbox/ads/adservices/adid/AdIdManager$Companion;->obtain(Landroid/content/Context;)Landroidx/privacysandbox/ads/adservices/adid/AdIdManager;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getAdId(Lyf/f;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/f<",
            "-",
            "Landroidx/privacysandbox/ads/adservices/adid/AdId;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

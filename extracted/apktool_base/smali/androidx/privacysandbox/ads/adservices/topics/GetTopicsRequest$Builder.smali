.class public final Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGetTopicsRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetTopicsRequest.kt\nandroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,88:1\n1#2:89\n*E\n"
.end annotation


# instance fields
.field private adsSdkName:Ljava/lang/String;

.field private shouldRecordObservation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$Builder;->adsSdkName:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$Builder;->shouldRecordObservation:Z

    return-void
.end method


# virtual methods
.method public final build()Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;
    .locals 3

    new-instance v0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$Builder;->adsSdkName:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$Builder;->shouldRecordObservation:Z

    invoke-direct {v0, v1, v2}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final setAdsSdkName(Ljava/lang/String;)Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$Builder;
    .locals 1

    const-string v0, "adsSdkName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$Builder;->adsSdkName:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "adsSdkName must be set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setShouldRecordObservation(Z)Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest$Builder;->shouldRecordObservation:Z

    return-object p0
.end method

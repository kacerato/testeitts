.class public Lcom/google/android/filament/utils/DeviceUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/filament/Engine;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/utils/DeviceUtils;->nGetGpuDriverInfo(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static native nGetGpuDriverInfo(J)Ljava/lang/String;
.end method

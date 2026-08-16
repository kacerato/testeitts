.class public final Lcom/android/tools/r8/shaking/A;
.super Lcom/android/tools/r8/shaking/C;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/C;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/shaking/s2;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/shaking/s2;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/shaking/s2;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

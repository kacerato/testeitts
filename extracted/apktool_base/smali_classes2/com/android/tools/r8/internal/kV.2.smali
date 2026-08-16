.class public final enum Lcom/android/tools/r8/internal/kV;
.super Lcom/android/tools/r8/internal/mV;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "KEY"

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/mV;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

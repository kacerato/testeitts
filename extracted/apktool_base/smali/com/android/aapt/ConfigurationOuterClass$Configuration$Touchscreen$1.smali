.class Lcom/android/aapt/ConfigurationOuterClass$Configuration$Touchscreen$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/D0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/ConfigurationOuterClass$Configuration$Touchscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/D0$d<",
        "Lcom/android/aapt/ConfigurationOuterClass$Configuration$Touchscreen;",
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
.method public findValueByNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Touchscreen;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Touchscreen;->forNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Touchscreen;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/D0$c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Touchscreen$1;->findValueByNumber(I)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Touchscreen;

    move-result-object p1

    return-object p1
.end method

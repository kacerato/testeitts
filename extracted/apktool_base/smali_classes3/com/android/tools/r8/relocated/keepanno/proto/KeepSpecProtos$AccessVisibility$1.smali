.class Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/RI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/internal/RI;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/android/tools/r8/internal/QI;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility$1;->findValueByNumber(I)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->forNumber(I)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    move-result-object p1

    return-object p1
.end method

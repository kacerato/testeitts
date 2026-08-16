.class public final Lcom/android/tools/r8/internal/AX;
.super Lcom/android/tools/r8/internal/yX;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/yX;-><init>(Ljava/util/AbstractMap;)V

    return-void
.end method

.method public static a()Lcom/android/tools/r8/internal/AX;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/AX;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/AX;-><init>(Ljava/util/HashMap;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Lcom/android/tools/r8/graph/F2;
    .locals 0

    check-cast p1, Lcom/android/tools/r8/graph/F2;

    return-object p1
.end method

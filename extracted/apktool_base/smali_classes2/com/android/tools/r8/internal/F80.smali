.class public final Lcom/android/tools/r8/internal/F80;
.super Lcom/android/tools/r8/internal/j1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/j1;-><init>()V

    return-void
.end method

.method public static b(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O80;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/O80;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/O80;-><init>(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/F80;->b(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O80;

    move-result-object p1

    return-object p1
.end method

.class public final Lcom/android/tools/r8/internal/Xs0;
.super Lcom/android/tools/r8/internal/Ys0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/Ys0;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "Invalid attempt at getting a value from a no-value continue state."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final f()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

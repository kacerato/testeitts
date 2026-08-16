.class public Lcom/android/tools/r8/internal/tp;
.super Lcom/android/tools/r8/internal/dp;
.source "SourceFile"


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/dp;-><init>(III)V

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/Op;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/dp;-><init>(ILcom/android/tools/r8/internal/Op;)V

    return-void
.end method


# virtual methods
.method public final O()Lcom/android/tools/r8/internal/Mw0;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Mw0;->c:Lcom/android/tools/r8/internal/Mw0;

    return-object v0
.end method

.method public final P()Lcom/android/tools/r8/internal/NB;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/NB;->c:Lcom/android/tools/r8/internal/NB;

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    const-string v0, "IfGe"

    return-object v0
.end method

.method public final v()I
    .locals 1

    const/16 v0, 0x35

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    const-string v0, "if-ge"

    return-object v0
.end method

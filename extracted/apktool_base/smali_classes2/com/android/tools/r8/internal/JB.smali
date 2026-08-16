.class public final enum Lcom/android/tools/r8/internal/JB;
.super Lcom/android/tools/r8/internal/NB;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x3

    const-string v1, "LE"

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/NB;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 2
    const-string v0, "<="

    return-object v0
.end method

.method public final a(I)Z
    .locals 0

    .line 1
    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

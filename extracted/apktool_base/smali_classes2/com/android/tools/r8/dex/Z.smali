.class public final Lcom/android/tools/r8/dex/Z;
.super Lcom/android/tools/r8/dex/c0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/dex/f0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/dex/c0;-><init>(Lcom/android/tools/r8/dex/f0;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final b(II)Z
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/dex/e0;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

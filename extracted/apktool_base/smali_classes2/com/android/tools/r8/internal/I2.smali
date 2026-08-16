.class public abstract Lcom/android/tools/r8/internal/I2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Lcom/android/tools/r8/internal/B5;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/AI0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/AI0;-><init>(I)V

    return-object v0
.end method

.method public static synthetic a(ILcom/android/tools/r8/internal/vb;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/W9;
    .locals 2

    .line 1
    new-instance p1, Lcom/android/tools/r8/internal/z9;

    int-to-long v0, p0

    sget-object p0, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {p1, v0, v1, p0}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    return-object p1
.end method

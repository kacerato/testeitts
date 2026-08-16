.class public abstract Lcom/android/tools/r8/graph/a3;
.super Lcom/android/tools/r8/graph/R2;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/R2;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/V2;JILcom/android/tools/r8/dex/y;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p4, v0}, Lcom/android/tools/r8/dex/y;->d(I)V

    .line 3
    invoke-virtual {p4, p3, p1, p2}, Lcom/android/tools/r8/dex/y;->a(IJ)I

    move-result p1

    add-int/lit8 p2, p1, 0x1

    neg-int p2, p2

    .line 4
    invoke-virtual {p4, p2}, Lcom/android/tools/r8/dex/y;->d(I)V

    add-int/lit8 p2, p1, -0x1

    .line 5
    invoke-static {p0, p2, p4}, Lcom/android/tools/r8/graph/R2;->a(Lcom/android/tools/r8/graph/V2;ILcom/android/tools/r8/dex/y;)V

    .line 6
    invoke-virtual {p4, p1}, Lcom/android/tools/r8/dex/y;->d(I)V

    return-void
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final P0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final U0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final V0()V
    .locals 0

    return-void
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/graph/R2;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/R2;->a(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

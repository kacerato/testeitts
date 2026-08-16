.class public final Lcom/android/tools/r8/shaking/z1;
.super Lcom/android/tools/r8/shaking/C1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/C1;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 0

    .line 3
    check-cast p1, Lcom/android/tools/r8/shaking/t1;

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/t1;->b()I

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/shaking/t1;

    check-cast p2, Lcom/android/tools/r8/shaking/t1;

    .line 2
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/shaking/t1;->a(Lcom/android/tools/r8/shaking/t1;)Z

    move-result p1

    return p1
.end method

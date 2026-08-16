.class public final Lcom/android/tools/r8/internal/f40;
.super Lcom/android/tools/r8/internal/zm0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/zm0;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/h1;)Z
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->w0()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->c1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->y1()Lcom/android/tools/r8/internal/Ux;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/I91;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/I91;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ux;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 4
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/V60;)I

    move-result p1

    const/4 v0, -0x1

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    move v1, v2

    :cond_1
    xor-int/lit8 p1, v1, 0x1

    return p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "OnlyStaticDefinitions"

    return-object v0
.end method

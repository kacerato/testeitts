.class public final Lcom/android/tools/r8/internal/u00;
.super Lcom/android/tools/r8/internal/zm0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/zm0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/qu1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/qu1;-><init>()V

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "NoNativeMethods"

    return-object v0
.end method

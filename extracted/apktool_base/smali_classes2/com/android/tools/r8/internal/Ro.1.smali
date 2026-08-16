.class public abstract Lcom/android/tools/r8/internal/Ro;
.super Lcom/android/tools/r8/internal/tn;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/android/tools/r8/internal/tn;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Op;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/tn;-><init>(Lcom/android/tools/r8/internal/w8;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Np;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V
    .locals 0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Np;->v()I

    move-result p2

    invoke-static {p1, p2, p6}, Lcom/android/tools/r8/internal/Np;->a(IILjava/nio/ShortBuffer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Np;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

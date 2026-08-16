.class public final Lcom/android/tools/r8/internal/i00;
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
    .locals 0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->Q0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    return p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "NoInnerClasses"

    return-object v0
.end method

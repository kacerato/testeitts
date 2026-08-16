.class public abstract Lcom/android/tools/r8/internal/Of;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Vf;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/ZC;Lcom/android/tools/r8/internal/bD;)I
    .locals 1

    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/bD;->a(Lcom/android/tools/r8/internal/Vf;)Lcom/android/tools/r8/internal/B60$b;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/tools/r8/internal/ZC;->c()Lcom/android/tools/r8/internal/Vf;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/bD;->a(Lcom/android/tools/r8/internal/Vf;)Lcom/android/tools/r8/internal/B60$b;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;)I

    move-result p1

    return p1
.end method

.method public final getKind()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

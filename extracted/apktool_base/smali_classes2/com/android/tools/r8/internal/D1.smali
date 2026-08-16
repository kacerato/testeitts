.class public abstract Lcom/android/tools/r8/internal/D1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/android/tools/r8/internal/Os0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateType:",
        "Lcom/android/tools/r8/internal/D1<",
        "TStateType;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Lcom/android/tools/r8/internal/Os0;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/D1;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/D1;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/D1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/D1;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/D1;
.end method

.method public final b()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public clone()Lcom/android/tools/r8/internal/D1;
    .locals 1

    .line 2
    invoke-interface {p0}, Lcom/android/tools/r8/internal/Os0;->c()Lcom/android/tools/r8/internal/D1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/D1;->clone()Lcom/android/tools/r8/internal/D1;

    move-result-object v0

    return-object v0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

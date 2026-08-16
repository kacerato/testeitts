.class public abstract Lcom/android/tools/r8/internal/yo0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/r1;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/internal/r1;",
        "Ljava/lang/Comparable<",
        "Lcom/android/tools/r8/internal/yo0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/internal/Wr0;Lcom/android/tools/r8/internal/Wr0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E1:",
            "Ljava/lang/Exception;",
            "E2:",
            "Ljava/lang/Exception;",
            ">(",
            "Lcom/android/tools/r8/internal/Wr0<",
            "-",
            "Lcom/android/tools/r8/internal/to0;",
            "TE1;>;",
            "Lcom/android/tools/r8/internal/Wr0<",
            "-",
            "Lcom/android/tools/r8/internal/vo0;",
            "TE2;>;)V^TE1;^TE2;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/StringBuilder;)V
.end method

.method public abstract c()Lcom/android/tools/r8/graph/J2;
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/tools/r8/internal/yo0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yo0;->c()Lcom/android/tools/r8/graph/J2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/yo0;->c()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/J2;->b(Lcom/android/tools/r8/graph/J2;)I

    move-result p1

    return p1
.end method

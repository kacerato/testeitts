.class public abstract Lcom/android/tools/r8/internal/z4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/android/tools/r8/internal/r1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/internal/Xr0;Lcom/android/tools/r8/internal/Xr0;)Ljava/lang/Object;
.end method

.method public abstract a(Lcom/android/tools/r8/internal/Wr0;Lcom/android/tools/r8/internal/Wr0;)V
.end method

.method public abstract a(Ljava/io/OutputStreamWriter;)V
.end method

.method public abstract c()Lcom/android/tools/r8/graph/J2;
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/tools/r8/internal/z4;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/z4;->c()Lcom/android/tools/r8/graph/J2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/z4;->c()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/J2;->b(Lcom/android/tools/r8/graph/J2;)I

    move-result p1

    return p1
.end method

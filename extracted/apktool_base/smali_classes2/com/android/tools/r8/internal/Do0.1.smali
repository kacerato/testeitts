.class public abstract Lcom/android/tools/r8/internal/Do0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ZR;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/Set;)Lcom/android/tools/r8/internal/EE;
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/Set;Lcom/android/tools/r8/internal/YR;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/internal/EE;
    .locals 0

    if-nez p8, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p7}, Lcom/android/tools/r8/internal/Do0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/Set;)Lcom/android/tools/r8/internal/EE;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic a()Lcom/android/tools/r8/internal/YR;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

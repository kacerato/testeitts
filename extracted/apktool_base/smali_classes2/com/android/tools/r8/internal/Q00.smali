.class public abstract Lcom/android/tools/r8/internal/Q00;
.super Lcom/android/tools/r8/internal/Iw0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Iw0;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Iw0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Bo0;Lcom/android/tools/r8/internal/b2;)Lcom/android/tools/r8/internal/Iw0;
    .locals 0

    .line 3
    invoke-virtual/range {p0 .. p6}, Lcom/android/tools/r8/internal/Q00;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Iw0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Bo0;Lcom/android/tools/r8/internal/b2;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Iw0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Bo0;)Lcom/android/tools/r8/internal/Iw0;
    .locals 7

    const/4 v3, 0x0

    .line 1
    sget-object v6, Lcom/android/tools/r8/internal/b2;->a:Lcom/android/tools/r8/internal/b2;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/Q00;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Iw0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Bo0;Lcom/android/tools/r8/internal/b2;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p1

    return-object p1
.end method

.method public abstract b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Iw0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Bo0;Lcom/android/tools/r8/internal/b2;)Lcom/android/tools/r8/internal/Q00;
.end method

.method public final d()Lcom/android/tools/r8/internal/Q00;
    .locals 0

    return-object p0
.end method

.method public final k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

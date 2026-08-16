.class public final Lcom/android/tools/r8/graph/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Jq0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/O;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/O;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/graph/L;->a:Lcom/android/tools/r8/graph/O;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/pf;)I
    .locals 3

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/W9;

    check-cast p2, Lcom/android/tools/r8/internal/W9;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/L;->a:Lcom/android/tools/r8/graph/O;

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->C()I

    move-result v1

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W9;->C()I

    move-result v2

    invoke-virtual {p3, v1, v2}, Lcom/android/tools/r8/internal/pf;->a(II)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-virtual {p1, p2, p3, v0}, Lcom/android/tools/r8/internal/W9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/Object;Lcom/android/tools/r8/internal/rA;)V
    .locals 0

    .line 6
    check-cast p1, Lcom/android/tools/r8/internal/W9;

    .line 7
    new-instance p1, Lcom/android/tools/r8/internal/av0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/av0;-><init>()V

    throw p1
.end method

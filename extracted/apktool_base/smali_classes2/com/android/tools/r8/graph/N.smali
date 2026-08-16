.class public final Lcom/android/tools/r8/graph/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Jq0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/O;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/O;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/graph/N;->a:Lcom/android/tools/r8/graph/O;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/pf;)I
    .locals 1

    .line 1
    check-cast p1, Lcom/android/tools/r8/graph/G$a;

    check-cast p2, Lcom/android/tools/r8/graph/G$a;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/N;->a:Lcom/android/tools/r8/graph/O;

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/tools/r8/graph/G$a;->a(Lcom/android/tools/r8/graph/G$a;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/Object;Lcom/android/tools/r8/internal/rA;)V
    .locals 0

    .line 3
    check-cast p1, Lcom/android/tools/r8/graph/G$a;

    .line 4
    new-instance p1, Lcom/android/tools/r8/internal/av0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/av0;-><init>()V

    throw p1
.end method

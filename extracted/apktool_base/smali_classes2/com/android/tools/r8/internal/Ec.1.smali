.class public final Lcom/android/tools/r8/internal/Ec;
.super Lcom/android/tools/r8/internal/Gc;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/t70;Lcom/android/tools/r8/internal/Ki;Lcom/android/tools/r8/internal/JI;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Gc;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/t70;Lcom/android/tools/r8/internal/Ki;Lcom/android/tools/r8/internal/JI;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/ns0;
    .locals 2

    .line 2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->b1()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Gc;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/ns0;->a(Lcom/android/tools/r8/internal/nJ;Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/tools/r8/internal/Gc;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/ns0;)V

    return-object v0
.end method

.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

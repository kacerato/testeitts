.class public final Lcom/android/tools/r8/internal/ci;
.super Lcom/android/tools/r8/internal/t5;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/t5;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/QT;)Ljava/util/Collection;
    .locals 1

    new-instance p1, Lcom/android/tools/r8/internal/ga;

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->g5:Lcom/android/tools/r8/graph/o1;

    iget-object p2, p2, Lcom/android/tools/r8/graph/o1;->a:Lcom/android/tools/r8/graph/A2;

    const/16 p3, 0xb6

    const/4 v0, 0x0

    invoke-direct {p1, p3, p2, v0}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance p2, Lcom/android/tools/r8/internal/kb;

    sget-object p3, Lcom/android/tools/r8/internal/kb$a;->c:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {p2, p3}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    return-object p1
.end method

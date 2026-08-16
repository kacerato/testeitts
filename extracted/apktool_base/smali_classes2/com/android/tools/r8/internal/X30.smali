.class public final Lcom/android/tools/r8/internal/X30;
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
    .locals 2

    const/4 p1, 0x1

    invoke-interface {p3, p1}, Lcom/android/tools/r8/internal/QT;->a(I)V

    new-instance p1, Lcom/android/tools/r8/internal/kb;

    sget-object p3, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {p1, p3}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance p3, Lcom/android/tools/r8/internal/ga;

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1$c;->d:Lcom/android/tools/r8/graph/A2;

    const/16 v0, 0xb6

    const/4 v1, 0x0

    invoke-direct {p3, v0, p2, v1}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance p2, Lcom/android/tools/r8/internal/kb;

    sget-object v0, Lcom/android/tools/r8/internal/kb$a;->c:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {p2, v0}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    invoke-static {p1, p3, p2}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    return-object p1
.end method

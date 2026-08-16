.class public Lcom/android/tools/r8/internal/uB;
.super Lcom/android/tools/r8/internal/lB;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/internal/lB<",
        "Lcom/android/tools/r8/internal/WS<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/lB;-><init>(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/v8;Lcom/android/tools/r8/internal/ns0;Ljava/lang/String;)Lcom/android/tools/r8/graph/i0;
    .locals 1

    const-string p4, "Finalize LIR code"

    invoke-virtual {p3, p4}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    new-instance p4, Lcom/android/tools/r8/internal/i60;

    invoke-direct {p4}, Lcom/android/tools/r8/internal/i60;-><init>()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/lB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-static {p2, p1, v0, p4}, Lcom/android/tools/r8/internal/UA;->a(Lcom/android/tools/r8/internal/v8;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/bT;)Lcom/android/tools/r8/internal/WS;

    move-result-object p1

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p1
.end method

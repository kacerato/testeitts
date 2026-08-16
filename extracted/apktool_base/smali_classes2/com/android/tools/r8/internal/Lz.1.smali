.class public final Lcom/android/tools/r8/internal/Lz;
.super Lcom/android/tools/r8/internal/vt0;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/vt0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/vt0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Lz;->a:Lcom/android/tools/r8/internal/vt0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/vt0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Object;
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lz;->a:Lcom/android/tools/r8/internal/vt0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/vt0;->a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/qL;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lz;->a:Lcom/android/tools/r8/internal/vt0;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vt0;->a(Lcom/android/tools/r8/internal/qL;Ljava/lang/Object;)V

    return-void
.end method

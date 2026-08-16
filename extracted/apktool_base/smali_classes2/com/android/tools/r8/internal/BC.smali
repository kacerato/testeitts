.class public final Lcom/android/tools/r8/internal/BC;
.super Lcom/android/tools/r8/internal/WB;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/nS;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/nS;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/nS;-><init>()V

    invoke-direct {p0}, Lcom/android/tools/r8/internal/WB;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/BC;->a:Lcom/android/tools/r8/internal/nS;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/WB;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/BC;->a:Lcom/android/tools/r8/internal/nS;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/F0;->a(Ljava/lang/Object;I)I

    return-object p0
.end method

.method public final a(Ljava/lang/Object;I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/BC;->a:Lcom/android/tools/r8/internal/nS;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/F0;->a(Ljava/lang/Object;I)I

    return-void
.end method

.method public final b(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/BC;
    .locals 1

    instance-of v0, p1, Lcom/android/tools/r8/internal/LY;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/tools/r8/internal/LY;

    new-instance v0, Lcom/android/tools/r8/internal/MA0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/MA0;-><init>(Lcom/android/tools/r8/internal/BC;)V

    invoke-interface {p1, v0}, Lcom/android/tools/r8/internal/LY;->a(Ljava/util/function/ObjIntConsumer;)V

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/WB;->a(Ljava/lang/Iterable;)V

    return-object p0
.end method

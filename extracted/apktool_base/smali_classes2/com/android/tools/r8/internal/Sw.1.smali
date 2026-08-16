.class public Lcom/android/tools/r8/internal/Sw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Sw;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/internal/Pw;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sw;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    new-instance v1, Lcom/android/tools/r8/internal/oW0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/oW0;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Pw;

    return-object p1
.end method

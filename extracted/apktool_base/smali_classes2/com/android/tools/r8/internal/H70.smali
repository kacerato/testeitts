.class public final Lcom/android/tools/r8/internal/H70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/K70;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/A2;

.field public final synthetic b:Lcom/android/tools/r8/internal/L70;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/L70;Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/H70;->b:Lcom/android/tools/r8/internal/L70;

    iput-object p2, p0, Lcom/android/tools/r8/internal/H70;->a:Lcom/android/tools/r8/graph/A2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/p1;Lcom/android/tools/r8/internal/p1;)V
    .locals 0

    .line 5
    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/p1;->a(Lcom/android/tools/r8/internal/p1;)Lcom/android/tools/r8/internal/p1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/K70;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/H70;->b:Lcom/android/tools/r8/internal/L70;

    iget-object v0, v0, Lcom/android/tools/r8/internal/L70;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/android/tools/r8/internal/H70;->a:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/p1;

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/H70;->b:Lcom/android/tools/r8/internal/L70;

    new-instance v2, Lcom/android/tools/r8/internal/uG0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/uG0;-><init>(Lcom/android/tools/r8/internal/p1;)V

    invoke-virtual {v1, p1, v2}, Lcom/android/tools/r8/internal/L70;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/L70;

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/H70;->b:Lcom/android/tools/r8/internal/L70;

    iget-object v0, v0, Lcom/android/tools/r8/internal/L70;->e:Lcom/android/tools/r8/internal/J70;

    iget-object v1, p0, Lcom/android/tools/r8/internal/H70;->a:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/J70;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/K70;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/H70;->b:Lcom/android/tools/r8/internal/L70;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/L70;->a(Lcom/android/tools/r8/graph/M2;)V

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/H70;->b:Lcom/android/tools/r8/internal/L70;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/L70;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

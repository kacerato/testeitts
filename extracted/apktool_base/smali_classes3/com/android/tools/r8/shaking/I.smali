.class public final Lcom/android/tools/r8/shaking/I;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/shaking/N;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/shaking/N;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/I;->a:Lcom/android/tools/r8/shaking/N;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E5;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E5;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/E0;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/I;->a:Lcom/android/tools/r8/shaking/N;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/shaking/l6;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/shaking/l6;-><init>(Lcom/android/tools/r8/shaking/N;)V

    iget-object v2, p0, Lcom/android/tools/r8/shaking/I;->a:Lcom/android/tools/r8/shaking/N;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/tools/r8/shaking/m6;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/shaking/m6;-><init>(Lcom/android/tools/r8/shaking/N;)V

    .line 3
    invoke-virtual {v0, p1, p2, v1, v3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Lcom/android/tools/r8/internal/SL0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/JA;

.field public final synthetic c:Lcom/android/tools/r8/graph/j;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/JA;Lcom/android/tools/r8/graph/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/SL0;->b:Lcom/android/tools/r8/internal/JA;

    iput-object p2, p0, Lcom/android/tools/r8/internal/SL0;->c:Lcom/android/tools/r8/graph/j;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/SL0;->b:Lcom/android/tools/r8/internal/JA;

    iget-object v1, p0, Lcom/android/tools/r8/internal/SL0;->c:Lcom/android/tools/r8/graph/j;

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/LA;->a(Lcom/android/tools/r8/internal/JA;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/j1;)Z

    move-result p1

    return p1
.end method

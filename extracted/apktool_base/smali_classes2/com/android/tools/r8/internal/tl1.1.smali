.class public final synthetic Lcom/android/tools/r8/internal/tl1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/synthesis/M;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/mm;

.field public final synthetic b:Ljava/lang/Iterable;

.field public final synthetic c:Lcom/android/tools/r8/graph/M2;

.field public final synthetic d:Lcom/android/tools/r8/graph/M2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/mm;Ljava/lang/Iterable;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/tl1;->a:Lcom/android/tools/r8/internal/mm;

    iput-object p2, p0, Lcom/android/tools/r8/internal/tl1;->b:Ljava/lang/Iterable;

    iput-object p3, p0, Lcom/android/tools/r8/internal/tl1;->c:Lcom/android/tools/r8/graph/M2;

    iput-object p4, p0, Lcom/android/tools/r8/internal/tl1;->d:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/tl1;->a:Lcom/android/tools/r8/internal/mm;

    iget-object v1, p0, Lcom/android/tools/r8/internal/tl1;->b:Ljava/lang/Iterable;

    iget-object v2, p0, Lcom/android/tools/r8/internal/tl1;->c:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/tl1;->d:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/mm;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;

    move-result-object p1

    return-object p1
.end method

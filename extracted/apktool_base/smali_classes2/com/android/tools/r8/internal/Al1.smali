.class public final synthetic Lcom/android/tools/r8/internal/Al1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/mm;

.field public final synthetic c:Lcom/android/tools/r8/graph/M2;

.field public final synthetic d:Lcom/android/tools/r8/graph/M2;

.field public final synthetic e:Ljava/lang/Iterable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/mm;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Al1;->b:Lcom/android/tools/r8/internal/mm;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Al1;->c:Lcom/android/tools/r8/graph/M2;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Al1;->d:Lcom/android/tools/r8/graph/M2;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Al1;->e:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Al1;->b:Lcom/android/tools/r8/internal/mm;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Al1;->c:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Al1;->d:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Al1;->e:Ljava/lang/Iterable;

    check-cast p1, Lcom/android/tools/r8/synthesis/N;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/mm;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Ljava/lang/Iterable;Lcom/android/tools/r8/synthesis/N;)V

    return-void
.end method

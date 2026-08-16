.class public final Lcom/android/tools/r8/graph/u5;
.super Lcom/android/tools/r8/internal/vf;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/android/tools/r8/graph/w5;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/naming/r0;Ljava/util/function/ToIntFunction;Ljava/util/function/ToIntFunction;Lcom/android/tools/r8/graph/w5;)V
    .locals 0

    iput-object p4, p0, Lcom/android/tools/r8/graph/u5;->e:Lcom/android/tools/r8/graph/w5;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/vf;-><init>(Lcom/android/tools/r8/naming/r0;Ljava/util/function/ToIntFunction;Ljava/util/function/ToIntFunction;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/u5;->e:Lcom/android/tools/r8/graph/w5;

    iget-object v0, v0, Lcom/android/tools/r8/graph/w5;->h:Lcom/android/tools/r8/internal/gd0;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/gd0;->b(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lcom/android/tools/r8/graph/u5;->e:Lcom/android/tools/r8/graph/w5;

    iget-object v0, v0, Lcom/android/tools/r8/graph/w5;->h:Lcom/android/tools/r8/internal/gd0;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/gd0;->b(Ljava/lang/Object;)I

    move-result p2

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/u5;->e:Lcom/android/tools/r8/graph/w5;

    iget-object v0, v0, Lcom/android/tools/r8/graph/w5;->i:Lcom/android/tools/r8/internal/gd0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/gd0;->b(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lcom/android/tools/r8/graph/u5;->e:Lcom/android/tools/r8/graph/w5;

    iget-object v0, v0, Lcom/android/tools/r8/graph/w5;->i:Lcom/android/tools/r8/internal/gd0;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/gd0;->b(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

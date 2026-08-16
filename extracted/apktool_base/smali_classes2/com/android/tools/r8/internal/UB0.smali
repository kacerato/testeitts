.class public final synthetic Lcom/android/tools/r8/internal/UB0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Cm;

.field public final synthetic c:Lcom/android/tools/r8/graph/M2;

.field public final synthetic d:Lcom/android/tools/r8/graph/M2;

.field public final synthetic e:Lcom/android/tools/r8/graph/f0;

.field public final synthetic f:Ljava/lang/Iterable;

.field public final synthetic g:Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Cm;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/f0;Ljava/lang/Iterable;Ljava/util/function/BiFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/UB0;->b:Lcom/android/tools/r8/internal/Cm;

    iput-object p2, p0, Lcom/android/tools/r8/internal/UB0;->c:Lcom/android/tools/r8/graph/M2;

    iput-object p3, p0, Lcom/android/tools/r8/internal/UB0;->d:Lcom/android/tools/r8/graph/M2;

    iput-object p4, p0, Lcom/android/tools/r8/internal/UB0;->e:Lcom/android/tools/r8/graph/f0;

    iput-object p5, p0, Lcom/android/tools/r8/internal/UB0;->f:Ljava/lang/Iterable;

    iput-object p6, p0, Lcom/android/tools/r8/internal/UB0;->g:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/UB0;->b:Lcom/android/tools/r8/internal/Cm;

    iget-object v1, p0, Lcom/android/tools/r8/internal/UB0;->c:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/UB0;->d:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/UB0;->e:Lcom/android/tools/r8/graph/f0;

    iget-object v4, p0, Lcom/android/tools/r8/internal/UB0;->f:Ljava/lang/Iterable;

    iget-object v5, p0, Lcom/android/tools/r8/internal/UB0;->g:Ljava/util/function/BiFunction;

    move-object v6, p1

    check-cast v6, Lcom/android/tools/r8/synthesis/p;

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/f0;Ljava/lang/Iterable;Ljava/util/function/BiFunction;Lcom/android/tools/r8/synthesis/p;)V

    return-void
.end method

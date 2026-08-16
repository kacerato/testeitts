.class public final synthetic Lcom/android/tools/r8/shaking/Z8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/N;

.field public final synthetic c:Lcom/android/tools/r8/graph/l1;

.field public final synthetic d:Lcom/android/tools/r8/graph/H5;

.field public final synthetic e:Lcom/android/tools/r8/shaking/J;

.field public final synthetic f:Lcom/android/tools/r8/shaking/K;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/J;Lcom/android/tools/r8/shaking/K;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/Z8;->b:Lcom/android/tools/r8/shaking/N;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/Z8;->c:Lcom/android/tools/r8/graph/l1;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/Z8;->d:Lcom/android/tools/r8/graph/H5;

    iput-object p4, p0, Lcom/android/tools/r8/shaking/Z8;->e:Lcom/android/tools/r8/shaking/J;

    iput-object p5, p0, Lcom/android/tools/r8/shaking/Z8;->f:Lcom/android/tools/r8/shaking/K;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/shaking/Z8;->b:Lcom/android/tools/r8/shaking/N;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/Z8;->c:Lcom/android/tools/r8/graph/l1;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/Z8;->d:Lcom/android/tools/r8/graph/H5;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/Z8;->e:Lcom/android/tools/r8/shaking/J;

    iget-object v4, p0, Lcom/android/tools/r8/shaking/Z8;->f:Lcom/android/tools/r8/shaking/K;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/graph/D3$a;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/J;Lcom/android/tools/r8/shaking/K;Lcom/android/tools/r8/graph/D3$a;)V

    return-void
.end method

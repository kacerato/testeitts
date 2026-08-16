.class public final synthetic Lcom/android/tools/r8/shaking/A6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/I4;

.field public final synthetic c:Lcom/android/tools/r8/shaking/R3;

.field public final synthetic d:Lcom/android/tools/r8/graph/M2;

.field public final synthetic e:Lcom/android/tools/r8/graph/G0;

.field public final synthetic f:Lcom/android/tools/r8/shaking/W2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/I4;Lcom/android/tools/r8/shaking/R3;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/shaking/W2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/A6;->b:Lcom/android/tools/r8/shaking/I4;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/A6;->c:Lcom/android/tools/r8/shaking/R3;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/A6;->d:Lcom/android/tools/r8/graph/M2;

    iput-object p4, p0, Lcom/android/tools/r8/shaking/A6;->e:Lcom/android/tools/r8/graph/G0;

    iput-object p5, p0, Lcom/android/tools/r8/shaking/A6;->f:Lcom/android/tools/r8/shaking/W2;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/shaking/A6;->b:Lcom/android/tools/r8/shaking/I4;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/A6;->c:Lcom/android/tools/r8/shaking/R3;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/A6;->d:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/A6;->e:Lcom/android/tools/r8/graph/G0;

    iget-object v4, p0, Lcom/android/tools/r8/shaking/A6;->f:Lcom/android/tools/r8/shaking/W2;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/shaking/k;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/shaking/R3;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/G0;Lcom/android/tools/r8/shaking/W2;Lcom/android/tools/r8/shaking/k;)V

    return-void
.end method

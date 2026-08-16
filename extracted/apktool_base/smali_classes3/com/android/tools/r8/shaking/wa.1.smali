.class public final synthetic Lcom/android/tools/r8/shaking/wa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/S0;

.field public final synthetic c:Lcom/android/tools/r8/graph/A2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/S0;Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/wa;->b:Lcom/android/tools/r8/shaking/S0;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/wa;->c:Lcom/android/tools/r8/graph/A2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/wa;->b:Lcom/android/tools/r8/shaking/S0;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/wa;->c:Lcom/android/tools/r8/graph/A2;

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/experimental/graphinfo/MethodGraphNode;

    move-result-object p1

    return-object p1
.end method

.class Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/dx/ssa/SsaInsn$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->analyzeInstructions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;


# direct methods
.method public constructor <init>(Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;->this$0:Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private processInsn(Lcom/android/dx/ssa/SsaInsn;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getLocalAssignment()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;->this$0:Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;

    invoke-static {v2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->access$200(Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;->this$0:Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;

    invoke-static {v3}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->access$200(Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    instance-of v0, p1, Lcom/android/dx/ssa/NormalSsaInsn;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    const/16 v1, 0x38

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;->this$0:Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;

    invoke-static {v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->access$300(Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast p1, Lcom/android/dx/ssa/NormalSsaInsn;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/dx/ssa/Optimizer;->getAdvice()Lcom/android/dx/rop/code/TranslationAdvice;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/dx/rop/code/TranslationAdvice;->requiresSourcesInOrder(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/RegisterSpecList;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;->this$0:Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;

    invoke-static {v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->access$400(Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast p1, Lcom/android/dx/ssa/NormalSsaInsn;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/android/dx/ssa/PhiInsn;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;->this$0:Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;

    invoke-static {v0}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->access$500(Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast p1, Lcom/android/dx/ssa/PhiInsn;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public visitMoveInsn(Lcom/android/dx/ssa/NormalSsaInsn;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;->processInsn(Lcom/android/dx/ssa/SsaInsn;)V

    return-void
.end method

.method public visitNonMoveInsn(Lcom/android/dx/ssa/NormalSsaInsn;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;->processInsn(Lcom/android/dx/ssa/SsaInsn;)V

    return-void
.end method

.method public visitPhiInsn(Lcom/android/dx/ssa/PhiInsn;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;->processInsn(Lcom/android/dx/ssa/SsaInsn;)V

    return-void
.end method

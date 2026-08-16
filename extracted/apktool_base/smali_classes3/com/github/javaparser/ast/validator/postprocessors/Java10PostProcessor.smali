.class public Lcom/github/javaparser/ast/validator/postprocessors/Java10PostProcessor;
.super Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;
.source "SourceFile"


# static fields
.field private static FORBIDEN_PARENT_CONTEXT_TO_DETECT_POTENTIAL_VAR_TYPE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final varNodeCreator:Lcom/github/javaparser/Processor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/github/javaparser/ast/validator/postprocessors/Java10PostProcessor;->FORBIDEN_PARENT_CONTEXT_TO_DETECT_POTENTIAL_VAR_TYPE:Ljava/util/List;

    const-class v1, Lcom/github/javaparser/ast/expr/ClassExpr;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/github/javaparser/Processor;

    invoke-direct {p0, v0}, Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;-><init>([Lcom/github/javaparser/Processor;)V

    new-instance v0, Lcom/github/javaparser/ast/validator/postprocessors/Java10PostProcessor$1;

    invoke-direct {v0, p0}, Lcom/github/javaparser/ast/validator/postprocessors/Java10PostProcessor$1;-><init>(Lcom/github/javaparser/ast/validator/postprocessors/Java10PostProcessor;)V

    iput-object v0, p0, Lcom/github/javaparser/ast/validator/postprocessors/Java10PostProcessor;->varNodeCreator:Lcom/github/javaparser/Processor;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;->add(Lcom/github/javaparser/Processor;)Lcom/github/javaparser/ast/validator/postprocessors/PostProcessors;

    return-void
.end method

.method public static synthetic access$000()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/github/javaparser/ast/validator/postprocessors/Java10PostProcessor;->FORBIDEN_PARENT_CONTEXT_TO_DETECT_POTENTIAL_VAR_TYPE:Ljava/util/List;

    return-object v0
.end method

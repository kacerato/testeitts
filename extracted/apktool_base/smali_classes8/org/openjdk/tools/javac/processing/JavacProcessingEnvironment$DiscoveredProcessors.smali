.class Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DiscoveredProcessors"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;",
        ">;"
    }
.end annotation


# instance fields
.field procStateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;",
            ">;"
        }
    .end annotation
.end field

.field processorIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Lorg/openjdk/javax/annotation/processing/Processor;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Lorg/openjdk/javax/annotation/processing/Processor;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->processorIterator:Ljava/util/Iterator;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->procStateList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->processorIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;->close()V

    :cond_0
    return-void
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->iterator()Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;
    .locals 1

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;

    invoke-direct {v0, p0, p0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;-><init>(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;)V

    return-object v0
.end method

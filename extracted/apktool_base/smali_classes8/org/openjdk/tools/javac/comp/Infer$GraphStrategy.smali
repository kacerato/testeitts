.class interface abstract Lorg/openjdk/tools/javac/comp/Infer$GraphStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Infer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GraphStrategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/Infer$GraphStrategy$NodeNotFoundException;
    }
.end annotation


# virtual methods
.method public abstract done()Z
.end method

.method public abstract pickNode(Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;)Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/comp/Infer$GraphStrategy$NodeNotFoundException;
        }
    .end annotation
.end method

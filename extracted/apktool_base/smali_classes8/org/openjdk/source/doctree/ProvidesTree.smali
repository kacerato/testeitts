.class public interface abstract Lorg/openjdk/source/doctree/ProvidesTree;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/doctree/BlockTagTree;


# virtual methods
.method public abstract getDescription()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getServiceType()Lorg/openjdk/source/doctree/ReferenceTree;
.end method

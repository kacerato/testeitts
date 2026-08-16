.class public interface abstract Lorg/openjdk/source/doctree/SerialFieldTree;
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

.method public abstract getName()Lorg/openjdk/source/doctree/IdentifierTree;
.end method

.method public abstract getType()Lorg/openjdk/source/doctree/ReferenceTree;
.end method

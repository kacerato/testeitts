.class public interface abstract Lorg/openjdk/source/doctree/LinkTree;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/doctree/InlineTagTree;


# virtual methods
.method public abstract getLabel()Ljava/util/List;
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

.method public abstract getReference()Lorg/openjdk/source/doctree/ReferenceTree;
.end method

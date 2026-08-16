.class public interface abstract Lorg/openjdk/source/doctree/StartElementTree;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/doctree/DocTree;


# virtual methods
.method public abstract getAttributes()Ljava/util/List;
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

.method public abstract getName()Lorg/openjdk/javax/lang/model/element/Name;
.end method

.method public abstract isSelfClosing()Z
.end method

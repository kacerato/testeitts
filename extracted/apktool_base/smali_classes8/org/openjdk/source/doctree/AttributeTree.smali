.class public interface abstract Lorg/openjdk/source/doctree/AttributeTree;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/doctree/DocTree;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/source/doctree/AttributeTree$ValueKind;
    }
.end annotation


# virtual methods
.method public abstract getName()Lorg/openjdk/javax/lang/model/element/Name;
.end method

.method public abstract getValue()Ljava/util/List;
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

.method public abstract getValueKind()Lorg/openjdk/source/doctree/AttributeTree$ValueKind;
.end method

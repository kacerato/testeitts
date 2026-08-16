.class public interface abstract Lcom/android/aapt/Resources$StyleOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/e1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StyleOrBuilder"
.end annotation


# virtual methods
.method public abstract getEntry(I)Lcom/android/aapt/Resources$Style$Entry;
.end method

.method public abstract getEntryCount()I
.end method

.method public abstract getEntryList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$Style$Entry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEntryOrBuilder(I)Lcom/android/aapt/Resources$Style$EntryOrBuilder;
.end method

.method public abstract getEntryOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/aapt/Resources$Style$EntryOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getParent()Lcom/android/aapt/Resources$Reference;
.end method

.method public abstract getParentOrBuilder()Lcom/android/aapt/Resources$ReferenceOrBuilder;
.end method

.method public abstract getParentSource()Lcom/android/aapt/Resources$Source;
.end method

.method public abstract getParentSourceOrBuilder()Lcom/android/aapt/Resources$SourceOrBuilder;
.end method

.method public abstract hasParent()Z
.end method

.method public abstract hasParentSource()Z
.end method

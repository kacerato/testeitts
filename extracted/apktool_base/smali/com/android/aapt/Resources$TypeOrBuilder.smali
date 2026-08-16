.class public interface abstract Lcom/android/aapt/Resources$TypeOrBuilder;
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
    name = "TypeOrBuilder"
.end annotation


# virtual methods
.method public abstract getEntry(I)Lcom/android/aapt/Resources$Entry;
.end method

.method public abstract getEntryCount()I
.end method

.method public abstract getEntryList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$Entry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEntryOrBuilder(I)Lcom/android/aapt/Resources$EntryOrBuilder;
.end method

.method public abstract getEntryOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/aapt/Resources$EntryOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameBytes()Lcom/google/protobuf/x;
.end method

.method public abstract getTypeId()Lcom/android/aapt/Resources$TypeId;
.end method

.method public abstract getTypeIdOrBuilder()Lcom/android/aapt/Resources$TypeIdOrBuilder;
.end method

.method public abstract hasTypeId()Z
.end method

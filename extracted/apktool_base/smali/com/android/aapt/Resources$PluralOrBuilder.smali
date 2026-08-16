.class public interface abstract Lcom/android/aapt/Resources$PluralOrBuilder;
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
    name = "PluralOrBuilder"
.end annotation


# virtual methods
.method public abstract getEntry(I)Lcom/android/aapt/Resources$Plural$Entry;
.end method

.method public abstract getEntryCount()I
.end method

.method public abstract getEntryList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$Plural$Entry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEntryOrBuilder(I)Lcom/android/aapt/Resources$Plural$EntryOrBuilder;
.end method

.method public abstract getEntryOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/aapt/Resources$Plural$EntryOrBuilder;",
            ">;"
        }
    .end annotation
.end method

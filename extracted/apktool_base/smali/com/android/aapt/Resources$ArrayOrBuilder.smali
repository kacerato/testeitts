.class public interface abstract Lcom/android/aapt/Resources$ArrayOrBuilder;
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
    name = "ArrayOrBuilder"
.end annotation


# virtual methods
.method public abstract getElement(I)Lcom/android/aapt/Resources$Array$Element;
.end method

.method public abstract getElementCount()I
.end method

.method public abstract getElementList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$Array$Element;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getElementOrBuilder(I)Lcom/android/aapt/Resources$Array$ElementOrBuilder;
.end method

.method public abstract getElementOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/aapt/Resources$Array$ElementOrBuilder;",
            ">;"
        }
    .end annotation
.end method

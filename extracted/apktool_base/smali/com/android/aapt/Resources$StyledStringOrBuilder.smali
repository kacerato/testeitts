.class public interface abstract Lcom/android/aapt/Resources$StyledStringOrBuilder;
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
    name = "StyledStringOrBuilder"
.end annotation


# virtual methods
.method public abstract getSpan(I)Lcom/android/aapt/Resources$StyledString$Span;
.end method

.method public abstract getSpanCount()I
.end method

.method public abstract getSpanList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$StyledString$Span;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSpanOrBuilder(I)Lcom/android/aapt/Resources$StyledString$SpanOrBuilder;
.end method

.method public abstract getSpanOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/aapt/Resources$StyledString$SpanOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract getValueBytes()Lcom/google/protobuf/x;
.end method

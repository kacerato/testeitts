.class public interface abstract Lcom/android/aapt/Resources$AttributeOrBuilder;
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
    name = "AttributeOrBuilder"
.end annotation


# virtual methods
.method public abstract getFormatFlags()I
.end method

.method public abstract getMaxInt()I
.end method

.method public abstract getMinInt()I
.end method

.method public abstract getSymbol(I)Lcom/android/aapt/Resources$Attribute$Symbol;
.end method

.method public abstract getSymbolCount()I
.end method

.method public abstract getSymbolList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$Attribute$Symbol;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSymbolOrBuilder(I)Lcom/android/aapt/Resources$Attribute$SymbolOrBuilder;
.end method

.method public abstract getSymbolOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/aapt/Resources$Attribute$SymbolOrBuilder;",
            ">;"
        }
    .end annotation
.end method

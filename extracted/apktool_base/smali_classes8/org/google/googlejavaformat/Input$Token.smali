.class public interface abstract Lorg/google/googlejavaformat/Input$Token;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Token"
.end annotation


# virtual methods
.method public abstract getTok()Lorg/google/googlejavaformat/Input$Tok;
.end method

.method public abstract getToksAfter()Lcom/google/common/collect/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "+",
            "Lorg/google/googlejavaformat/Input$Tok;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getToksBefore()Lcom/google/common/collect/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "+",
            "Lorg/google/googlejavaformat/Input$Tok;",
            ">;"
        }
    .end annotation
.end method

.class public interface abstract LD2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LD2/p;
.end annotation

.annotation runtime LI2/f;
    value = "Implement it normally"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lv2/a;
.end annotation

.annotation build Lv2/c;
.end annotation


# virtual methods
.method public abstract a([BII)Z
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getResult()Ljava/lang/Object;
    .annotation runtime LD2/C;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

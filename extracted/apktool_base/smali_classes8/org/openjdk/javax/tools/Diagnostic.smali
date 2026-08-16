.class public interface abstract Lorg/openjdk/javax/tools/Diagnostic;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/javax/tools/Diagnostic$Kind;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final NOPOS:J = -0x1L


# virtual methods
.method public abstract getCode()Ljava/lang/String;
.end method

.method public abstract getColumnNumber()J
.end method

.method public abstract getEndPosition()J
.end method

.method public abstract getKind()Lorg/openjdk/javax/tools/Diagnostic$Kind;
.end method

.method public abstract getLineNumber()J
.end method

.method public abstract getMessage(Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract getPosition()J
.end method

.method public abstract getSource()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method public abstract getStartPosition()J
.end method

.class public interface abstract Lorg/openjdk/tools/javac/api/DiagnosticFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration;,
        Lorg/openjdk/tools/javac/api/DiagnosticFormatter$PositionKind;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Lorg/openjdk/javax/tools/Diagnostic<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract displaySource(Lorg/openjdk/javax/tools/Diagnostic;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)Z"
        }
    .end annotation
.end method

.method public abstract format(Lorg/openjdk/javax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract formatKind(Lorg/openjdk/javax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract formatMessage(Lorg/openjdk/javax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract formatPosition(Lorg/openjdk/javax/tools/Diagnostic;Lorg/openjdk/tools/javac/api/DiagnosticFormatter$PositionKind;Ljava/util/Locale;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lorg/openjdk/tools/javac/api/DiagnosticFormatter$PositionKind;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract formatSource(Lorg/openjdk/javax/tools/Diagnostic;ZLjava/util/Locale;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;Z",
            "Ljava/util/Locale;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getConfiguration()Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration;
.end method

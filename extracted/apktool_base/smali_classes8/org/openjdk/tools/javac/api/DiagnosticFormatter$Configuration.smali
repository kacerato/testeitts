.class public interface abstract Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/api/DiagnosticFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;,
        Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;
    }
.end annotation


# virtual methods
.method public abstract getMultilineLimit(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;)I
.end method

.method public abstract getVisible()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setMultilineLimit(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;I)V
.end method

.method public abstract setVisible(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;",
            ">;)V"
        }
    .end annotation
.end method

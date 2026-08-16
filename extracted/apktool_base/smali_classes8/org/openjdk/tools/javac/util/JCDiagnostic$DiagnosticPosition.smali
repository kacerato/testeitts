.class public interface abstract Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/JCDiagnostic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DiagnosticPosition"
.end annotation


# virtual methods
.method public abstract getEndPosition(Lorg/openjdk/tools/javac/tree/EndPosTable;)I
.end method

.method public abstract getPreferredPosition()I
.end method

.method public abstract getStartPosition()I
.end method

.method public abstract getTree()Lorg/openjdk/tools/javac/tree/JCTree;
.end method

.class public interface abstract Lorg/eclipse/jdt/core/IBuffer$ITextEditCapability;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/core/IBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ITextEditCapability"
.end annotation


# virtual methods
.method public abstract applyTextEdit(Lorg/eclipse/text/edits/TextEdit;Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/text/edits/UndoEdit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

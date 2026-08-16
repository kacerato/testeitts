.class public Lorg/eclipse/jdt/internal/core/DocumentAdapter;
.super Lorg/eclipse/jface/text/Document;
.source "SourceFile"


# instance fields
.field private buffer:Lorg/eclipse/jdt/core/IBuffer;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IBuffer;)V
    .locals 1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IBuffer;->getContents()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jface/text/Document;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/DocumentAdapter;->buffer:Lorg/eclipse/jdt/core/IBuffer;

    return-void
.end method


# virtual methods
.method public replace(IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jface/text/BadLocationException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jface/text/Document;->replace(IILjava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DocumentAdapter;->buffer:Lorg/eclipse/jdt/core/IBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/eclipse/jdt/core/IBuffer;->replace(IILjava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/eclipse/jface/text/Document;->set(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/DocumentAdapter;->buffer:Lorg/eclipse/jdt/core/IBuffer;

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/core/IBuffer;->setContents(Ljava/lang/String;)V

    return-void
.end method

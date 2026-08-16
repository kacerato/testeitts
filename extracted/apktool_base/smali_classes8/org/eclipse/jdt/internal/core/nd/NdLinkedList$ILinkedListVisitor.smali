.class public interface abstract Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$ILinkedListVisitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ILinkedListVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract visit(Ljava/lang/Object;SI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;SI)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation
.end method

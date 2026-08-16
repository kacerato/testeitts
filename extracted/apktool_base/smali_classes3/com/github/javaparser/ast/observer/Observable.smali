.class public interface abstract Lcom/github/javaparser/ast/observer/Observable;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract isRegistered(Lcom/github/javaparser/ast/observer/AstObserver;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation
.end method

.method public abstract register(Lcom/github/javaparser/ast/observer/AstObserver;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation
.end method

.method public abstract unregister(Lcom/github/javaparser/ast/observer/AstObserver;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation
.end method

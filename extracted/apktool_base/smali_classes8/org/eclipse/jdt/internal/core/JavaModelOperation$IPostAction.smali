.class public interface abstract Lorg/eclipse/jdt/internal/core/JavaModelOperation$IPostAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/JavaModelOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPostAction"
.end annotation


# virtual methods
.method public abstract getID()Ljava/lang/String;
.end method

.method public abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

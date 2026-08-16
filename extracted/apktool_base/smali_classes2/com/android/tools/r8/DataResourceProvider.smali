.class public interface abstract Lcom/android/tools/r8/DataResourceProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/DataResourceProvider$Visitor;
    }
.end annotation


# virtual methods
.method public abstract accept(Lcom/android/tools/r8/DataResourceProvider$Visitor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/ResourceException;
        }
    .end annotation
.end method

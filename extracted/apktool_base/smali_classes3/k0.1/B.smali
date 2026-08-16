.class public interface abstract annotation Lk0/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lof/e;
    value = .enum Lof/a;->RUNTIME:Lof/a;
.end annotation

.annotation runtime Lof/f;
    allowedTargets = {
        .enum Lof/b;->VALUE_PARAMETER:Lof/b;
    }
.end annotation


# virtual methods
.method public abstract description()Ljava/lang/String;
.end method

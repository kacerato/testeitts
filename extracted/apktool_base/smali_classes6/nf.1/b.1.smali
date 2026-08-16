.class public interface abstract annotation Lnf/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build LDf/f;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation build Lnf/l0;
    version = "1.3"
.end annotation

.annotation runtime Lof/e;
    value = .enum Lof/a;->BINARY:Lof/a;
.end annotation

.annotation runtime Lof/f;
    allowedTargets = {
        .enum Lof/b;->VALUE_PARAMETER:Lof/b;,
        .enum Lof/b;->FUNCTION:Lof/b;,
        .enum Lof/b;->PROPERTY:Lof/b;
    }
.end annotation

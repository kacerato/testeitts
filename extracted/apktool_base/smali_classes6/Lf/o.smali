.class public interface abstract annotation LLf/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lof/c;
.end annotation

.annotation runtime Lof/e;
    value = .enum Lof/a;->RUNTIME:Lof/a;
.end annotation

.annotation runtime Lof/f;
    allowedTargets = {
        .enum Lof/b;->FUNCTION:Lof/b;,
        .enum Lof/b;->PROPERTY:Lof/b;,
        .enum Lof/b;->PROPERTY_GETTER:Lof/b;,
        .enum Lof/b;->PROPERTY_SETTER:Lof/b;
    }
.end annotation

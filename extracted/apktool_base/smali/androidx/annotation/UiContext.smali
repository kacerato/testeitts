.class public interface abstract annotation Landroidx/annotation/UiContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lof/e;
    value = .enum Lof/a;->SOURCE:Lof/a;
.end annotation

.annotation runtime Lof/f;
    allowedTargets = {
        .enum Lof/b;->ANNOTATION_CLASS:Lof/b;,
        .enum Lof/b;->CLASS:Lof/b;,
        .enum Lof/b;->FUNCTION:Lof/b;,
        .enum Lof/b;->PROPERTY_GETTER:Lof/b;,
        .enum Lof/b;->PROPERTY_SETTER:Lof/b;,
        .enum Lof/b;->VALUE_PARAMETER:Lof/b;,
        .enum Lof/b;->FIELD:Lof/b;
    }
.end annotation

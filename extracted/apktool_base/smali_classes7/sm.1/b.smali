.class public interface abstract annotation Lsm/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime LLm/F;
    value = {
        Lsm/e;
    }
.end annotation

.annotation runtime LLm/e;
    value = {
        .enum LLm/I;->IMPLICIT_UPPER_BOUND:LLm/I;,
        .enum LLm/I;->IMPLICIT_LOWER_BOUND:LLm/I;,
        .enum LLm/I;->EXCEPTION_PARAMETER:LLm/I;
    }
.end annotation

.annotation runtime LLm/h;
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE_PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation

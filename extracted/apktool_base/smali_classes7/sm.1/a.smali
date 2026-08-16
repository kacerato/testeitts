.class public interface abstract annotation Lsm/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime LLm/F;
    value = {
        Lsm/d;,
        Lsm/b;
    }
.end annotation

.annotation runtime LLm/G;
    value = {
        .enum LLm/I;->EXPLICIT_LOWER_BOUND:LLm/I;,
        .enum LLm/I;->EXPLICIT_UPPER_BOUND:LLm/I;
    }
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

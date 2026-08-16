.class public interface abstract annotation Lqm/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime LLm/B;
    value = {
        .enum LLm/s;->INT:LLm/s;,
        .enum LLm/s;->LONG:LLm/s;,
        .enum LLm/s;->FLOAT:LLm/s;,
        .enum LLm/s;->DOUBLE:LLm/s;,
        .enum LLm/s;->BOOLEAN:LLm/s;
    }
.end annotation

.annotation runtime LLm/F;
    value = {
        Lqm/e;
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

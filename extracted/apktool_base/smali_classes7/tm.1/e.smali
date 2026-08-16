.class public interface abstract annotation Ltm/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime LLm/B;
    value = {
        .enum LLm/s;->PRIMITIVE:LLm/s;,
        .enum LLm/s;->STRING:LLm/s;
    }
.end annotation

.annotation runtime LLm/F;
    value = {
        Ltm/h;
    }
.end annotation

.annotation runtime LLm/e;
    typeKinds = {
        .enum LLm/H;->BOOLEAN:LLm/H;,
        .enum LLm/H;->BYTE:LLm/H;,
        .enum LLm/H;->CHAR:LLm/H;,
        .enum LLm/H;->DOUBLE:LLm/H;,
        .enum LLm/H;->FLOAT:LLm/H;,
        .enum LLm/H;->INT:LLm/H;,
        .enum LLm/H;->LONG:LLm/H;,
        .enum LLm/H;->SHORT:LLm/H;
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

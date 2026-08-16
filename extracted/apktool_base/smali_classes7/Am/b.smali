.class public interface abstract annotation LAm/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime LLm/F;
    value = {
        LAm/g;
    }
.end annotation

.annotation runtime LLm/K;
    typeKinds = {
        .enum LLm/H;->FLOAT:LLm/H;,
        .enum LLm/H;->DOUBLE:LLm/H;
    }
    types = {
        Ljava/lang/Float;,
        Ljava/lang/Double;
    }
.end annotation

.annotation runtime LLm/e;
    typeKinds = {
        .enum LLm/H;->BYTE:LLm/H;,
        .enum LLm/H;->INT:LLm/H;,
        .enum LLm/H;->LONG:LLm/H;,
        .enum LLm/H;->SHORT:LLm/H;,
        .enum LLm/H;->FLOAT:LLm/H;,
        .enum LLm/H;->DOUBLE:LLm/H;
    }
    types = {
        Ljava/lang/Byte;,
        Ljava/lang/Integer;,
        Ljava/lang/Long;,
        Ljava/lang/Short;,
        Ljava/lang/Float;,
        Ljava/lang/Double;
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

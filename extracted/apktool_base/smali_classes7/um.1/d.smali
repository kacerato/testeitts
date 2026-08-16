.class public interface abstract annotation Lum/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime LLm/F;
    value = {
        Lum/f;
    }
.end annotation

.annotation runtime LLm/K;
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
    types = {
        Ljava/lang/String;
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
    types = {
        Ljava/lang/String;,
        Ljava/lang/Void;
    }
    value = {
        .enum LLm/I;->EXCEPTION_PARAMETER:LLm/I;,
        .enum LLm/I;->UPPER_BOUND:LLm/I;
    }
.end annotation

.annotation runtime LLm/h;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lum/d;
        value = {}
    .end subannotation
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


# virtual methods
.method public abstract value()[Ljava/lang/String;
    .annotation runtime LLm/r;
    .end annotation
.end method

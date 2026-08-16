.class public interface abstract annotation LI2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build LI2/k;
    modifier = {
        .enum LI2/o;->PUBLIC:LI2/o;,
        .enum LI2/o;->PRIVATE:LI2/o;,
        .enum LI2/o;->STATIC:LI2/o;,
        .enum LI2/o;->FINAL:LI2/o;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation

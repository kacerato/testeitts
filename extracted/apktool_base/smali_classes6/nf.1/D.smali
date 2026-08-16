.class public interface abstract annotation Lnf/D;
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

.annotation build Lnf/l0;
    version = "2.2"
.end annotation

.annotation runtime Lof/c;
.end annotation

.annotation runtime Lof/f;
    allowedTargets = {
        .enum Lof/b;->FUNCTION:Lof/b;
    }
.end annotation

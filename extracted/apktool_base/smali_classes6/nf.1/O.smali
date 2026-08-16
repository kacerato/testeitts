.class public interface abstract annotation Lnf/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation build Lnf/l0;
    version = "2.3"
.end annotation

.annotation runtime Lof/f;
    allowedTargets = {
        .enum Lof/b;->FILE:Lof/b;,
        .enum Lof/b;->CLASS:Lof/b;
    }
.end annotation

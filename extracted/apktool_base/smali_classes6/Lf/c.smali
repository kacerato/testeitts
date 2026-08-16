.class public interface abstract annotation LLf/c;
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
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation build Lnf/l0;
    version = "1.2"
.end annotation

.annotation runtime Lnf/o;
    level = .enum Lnf/q;->HIDDEN:Lnf/q;
    message = "Switch to new -jvm-default modes: `enable` or `no-compatibility`"
.end annotation

.annotation runtime Lof/f;
    allowedTargets = {
        .enum Lof/b;->FUNCTION:Lof/b;,
        .enum Lof/b;->PROPERTY:Lof/b;
    }
.end annotation

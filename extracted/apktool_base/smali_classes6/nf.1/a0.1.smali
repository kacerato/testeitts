.class public interface abstract annotation Lnf/a0;
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
    value = {}
.end annotation

.annotation build Lnf/l0;
    version = "1.1"
.end annotation

.annotation runtime Lof/c;
.end annotation

.annotation runtime Lof/f;
    allowedTargets = {
        .enum Lof/b;->TYPE:Lof/b;
    }
.end annotation


# virtual methods
.method public abstract name()Ljava/lang/String;
.end method

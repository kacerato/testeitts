.class public interface abstract annotation LLf/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation build Lnf/l0;
    version = "1.9"
.end annotation

.annotation runtime Lnf/o;
    message = "Please migrate to kotlin.jvm.KotlinActual in kotlin-annotations-jvm. ImplicitlyActualizedByJvmDeclaration will be dropped in future versions of Kotlin. See https://youtrack.jetbrains.com/issue/KT-67202"
.end annotation

.annotation runtime Lnf/p;
    errorSince = "2.1"
.end annotation

.annotation build Lnf/v;
.end annotation

.annotation runtime Lof/c;
.end annotation

.annotation runtime Lof/e;
    value = .enum Lof/a;->BINARY:Lof/a;
.end annotation

.annotation runtime Lof/f;
    allowedTargets = {
        .enum Lof/b;->CLASS:Lof/b;
    }
.end annotation

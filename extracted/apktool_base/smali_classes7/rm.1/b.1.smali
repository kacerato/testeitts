.class public interface abstract annotation Lrm/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime LLm/c;
    qualifier = Lrm/i;
.end annotation

.annotation runtime LLm/p;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lrm/b;
        offset = {}
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrm/b$a;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Repeatable;
    value = Lrm/b$a;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract expression()[Ljava/lang/String;
.end method

.method public abstract offset()[Ljava/lang/String;
    .annotation runtime LLm/A;
        value = "offset"
    .end annotation

    .annotation runtime LLm/r;
    .end annotation
.end method

.method public abstract result()Z
.end method

.method public abstract targetValue()[Ljava/lang/String;
    .annotation runtime LLm/A;
        value = "value"
    .end annotation

    .annotation runtime LLm/r;
    .end annotation
.end method

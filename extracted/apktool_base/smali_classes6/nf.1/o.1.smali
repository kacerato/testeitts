.class public interface abstract annotation Lnf/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lnf/o;
        level = .enum Lnf/q;->WARNING:Lnf/q;
        replaceWith = .subannotation Lnf/g0;
            expression = ""
            imports = {}
        .end subannotation
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lof/c;
.end annotation

.annotation runtime Lof/f;
    allowedTargets = {
        .enum Lof/b;->CLASS:Lof/b;,
        .enum Lof/b;->FUNCTION:Lof/b;,
        .enum Lof/b;->PROPERTY:Lof/b;,
        .enum Lof/b;->ANNOTATION_CLASS:Lof/b;,
        .enum Lof/b;->CONSTRUCTOR:Lof/b;,
        .enum Lof/b;->PROPERTY_SETTER:Lof/b;,
        .enum Lof/b;->PROPERTY_GETTER:Lof/b;,
        .enum Lof/b;->TYPEALIAS:Lof/b;
    }
.end annotation


# virtual methods
.method public abstract level()Lnf/q;
.end method

.method public abstract message()Ljava/lang/String;
.end method

.method public abstract replaceWith()Lnf/g0;
.end method

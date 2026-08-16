.class public interface abstract annotation Landroidx/annotation/FloatRange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroidx/annotation/FloatRange;
        from = -Infinity
        fromInclusive = true
        to = Infinity
        toInclusive = true
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->LOCAL_VARIABLE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lof/c;
.end annotation

.annotation runtime Lof/e;
    value = .enum Lof/a;->BINARY:Lof/a;
.end annotation

.annotation runtime Lof/f;
    allowedTargets = {
        .enum Lof/b;->FUNCTION:Lof/b;,
        .enum Lof/b;->PROPERTY_GETTER:Lof/b;,
        .enum Lof/b;->PROPERTY_SETTER:Lof/b;,
        .enum Lof/b;->VALUE_PARAMETER:Lof/b;,
        .enum Lof/b;->FIELD:Lof/b;,
        .enum Lof/b;->LOCAL_VARIABLE:Lof/b;,
        .enum Lof/b;->ANNOTATION_CLASS:Lof/b;
    }
.end annotation


# virtual methods
.method public abstract from()D
.end method

.method public abstract fromInclusive()Z
.end method

.method public abstract to()D
.end method

.method public abstract toInclusive()Z
.end method

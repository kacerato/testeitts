.class public interface abstract annotation LJAVARuntime/ShowIf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation LJAVARuntime/ShowIf;
        enumValue = ""
        isTrue = true
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/ShowIf$List;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Repeatable;
    value = LJAVARuntime/ShowIf$List;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract enumValue()Ljava/lang/String;
.end method

.method public abstract isTrue()Z
.end method

.method public abstract value()Ljava/lang/String;
.end method

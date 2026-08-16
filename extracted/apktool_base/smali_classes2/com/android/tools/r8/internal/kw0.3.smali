.class public interface abstract annotation Lcom/android/tools/r8/internal/kw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/android/tools/r8/internal/kw0;
        constraintAdditions = {}
        constraints = {}
        description = ""
        kind = .enum Lcom/android/tools/r8/internal/EO;->DEFAULT:Lcom/android/tools/r8/internal/EO;
        memberAccess = {}
        preconditions = {}
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract constraintAdditions()[Lcom/android/tools/r8/internal/sN;
.end method

.method public abstract constraints()[Lcom/android/tools/r8/internal/sN;
.end method

.method public abstract description()Ljava/lang/String;
.end method

.method public abstract kind()Lcom/android/tools/r8/internal/EO;
.end method

.method public abstract memberAccess()[Lcom/android/tools/r8/internal/GV;
.end method

.method public abstract preconditions()[Lcom/android/tools/r8/internal/aN;
.end method

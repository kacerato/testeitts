.class public interface abstract annotation LEf/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation LEf/q;
        errorCode = -0x1
        level = .enum Lnf/q;->ERROR:Lnf/q;
        message = ""
        versionKind = .enum LEf/r;->LANGUAGE_VERSION:LEf/r;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LEf/q$a;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Repeatable;
    value = LEf/q$a;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation build Lnf/l0;
    version = "1.2"
.end annotation

.annotation runtime Lof/d;
.end annotation

.annotation runtime Lof/e;
    value = .enum Lof/a;->SOURCE:Lof/a;
.end annotation

.annotation runtime Lof/f;
    allowedTargets = {
        .enum Lof/b;->CLASS:Lof/b;,
        .enum Lof/b;->FUNCTION:Lof/b;,
        .enum Lof/b;->PROPERTY:Lof/b;,
        .enum Lof/b;->CONSTRUCTOR:Lof/b;,
        .enum Lof/b;->TYPEALIAS:Lof/b;
    }
.end annotation


# virtual methods
.method public abstract errorCode()I
.end method

.method public abstract level()Lnf/q;
.end method

.method public abstract message()Ljava/lang/String;
.end method

.method public abstract version()Ljava/lang/String;
.end method

.method public abstract versionKind()LEf/r;
.end method

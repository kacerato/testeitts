.class public interface abstract annotation Lvm/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime LLm/p;
.end annotation

.annotation runtime LLm/x;
    qualifier = Lvm/f;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm/b$a;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Repeatable;
    value = Lvm/b$a;
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
.method public abstract map()[Ljava/lang/String;
    .annotation runtime LLm/A;
        value = "value"
    .end annotation

    .annotation runtime LLm/r;
    .end annotation
.end method

.method public abstract value()[Ljava/lang/String;
.end method

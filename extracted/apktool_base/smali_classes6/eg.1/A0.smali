.class public interface abstract annotation Leg/A0;
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
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation build Lnf/h0;
    level = .enum Lnf/h0$a;->WARNING:Lnf/h0$a;
    message = "This declaration is in a preview state and can be changed in a backwards-incompatible manner with a best-effort migration. Its usage should be marked with \'@kotlinx.coroutines.FlowPreview\' or \'@OptIn(kotlinx.coroutines.FlowPreview::class)\' if you accept the drawback of relying on preview API"
.end annotation

.annotation runtime Lof/c;
.end annotation

.annotation runtime Lof/e;
    value = .enum Lof/a;->BINARY:Lof/a;
.end annotation

.annotation runtime Lof/f;
    allowedTargets = {
        .enum Lof/b;->CLASS:Lof/b;,
        .enum Lof/b;->FUNCTION:Lof/b;,
        .enum Lof/b;->TYPEALIAS:Lof/b;,
        .enum Lof/b;->PROPERTY:Lof/b;
    }
.end annotation

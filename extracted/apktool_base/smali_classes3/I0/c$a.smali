.class public interface abstract annotation LI0/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation LI0/c$a;
        creatorIsFinal = true
        doNotParcelTypeDefaultValues = false
        validate = false
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = LI0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "a"
.end annotation


# virtual methods
.method public abstract creator()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract creatorIsFinal()Z
.end method

.method public abstract doNotParcelTypeDefaultValues()Z
.end method

.method public abstract validate()Z
.end method

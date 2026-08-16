.class public final Lcom/google/common/reflect/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/AnnotatedElement;


# annotations
.annotation runtime Lcom/google/common/reflect/d;
.end annotation

.annotation build Lv2/a;
.end annotation


# instance fields
.field public final a:Lcom/google/common/reflect/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/reflect/f<",
            "**>;"
        }
    .end annotation
.end field

.field public final b:I

.field public final c:Lcom/google/common/reflect/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/reflect/p<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Lcom/google/common/collect/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/reflect/f;ILcom/google/common/reflect/p;[Ljava/lang/annotation/Annotation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/f<",
            "**>;I",
            "Lcom/google/common/reflect/p<",
            "*>;[",
            "Ljava/lang/annotation/Annotation;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/reflect/i;->a:Lcom/google/common/reflect/f;

    iput p2, p0, Lcom/google/common/reflect/i;->b:I

    iput-object p3, p0, Lcom/google/common/reflect/i;->c:Lcom/google/common/reflect/p;

    invoke-static {p4}, Lcom/google/common/collect/g1;->u([Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/reflect/i;->d:Lcom/google/common/collect/g1;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/reflect/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/f<",
            "**>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/i;->a:Lcom/google/common/reflect/f;

    return-object v0
.end method

.method public b()Lcom/google/common/reflect/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/p<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/i;->c:Lcom/google/common/reflect/p;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/common/reflect/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/reflect/i;

    iget v0, p0, Lcom/google/common/reflect/i;->b:I

    iget v2, p1, Lcom/google/common/reflect/i;->b:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/common/reflect/i;->a:Lcom/google/common/reflect/f;

    iget-object p1, p1, Lcom/google/common/reflect/i;->a:Lcom/google/common/reflect/f;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/reflect/i;->d:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Lcom/google/common/collect/g1;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/annotation/Annotation;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/annotation/Annotation;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/reflect/i;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)[TA;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/i;->getDeclaredAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method

.method public getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/reflect/i;->d:Lcom/google/common/collect/g1;

    invoke-static {v0}, Lcom/google/common/collect/p0;->s(Ljava/lang/Iterable;)Lcom/google/common/collect/p0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/p0;->m(Ljava/lang/Class;)Lcom/google/common/collect/p0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/p0;->o()Lw2/C;

    move-result-object p1

    invoke-virtual {p1}, Lw2/C;->j()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/annotation/Annotation;

    return-object p1
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 2

    iget-object v0, p0, Lcom/google/common/reflect/i;->d:Lcom/google/common/collect/g1;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/c1;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public getDeclaredAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)[TA;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/i;->d:Lcom/google/common/collect/g1;

    invoke-static {v0}, Lcom/google/common/collect/p0;->s(Ljava/lang/Iterable;)Lcom/google/common/collect/p0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/p0;->m(Ljava/lang/Class;)Lcom/google/common/collect/p0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/p0;->C(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/annotation/Annotation;

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/common/reflect/i;->b:I

    return v0
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/i;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/common/reflect/i;->c:Lcom/google/common/reflect/p;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/common/reflect/i;->b:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xf

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " arg"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

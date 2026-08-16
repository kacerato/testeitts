.class public abstract Lcom/android/tools/r8/internal/rN;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;Ljava/util/function/Consumer;)V
    .locals 5

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;->hasElement()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;->getElement()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ConstraintElement;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ConstraintElement;->getNumber()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/internal/rN;->a:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ConstraintElement;->CONSTRAINT_UNSPECIFIED:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ConstraintElement;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    .line 6
    :pswitch_0
    sget-object p0, Lcom/android/tools/r8/internal/jN;->b:Lcom/android/tools/r8/internal/jN;

    goto :goto_1

    .line 7
    :pswitch_1
    sget-object p0, Lcom/android/tools/r8/internal/hN;->b:Lcom/android/tools/r8/internal/hN;

    goto :goto_1

    .line 8
    :pswitch_2
    sget-object p0, Lcom/android/tools/r8/internal/iN;->b:Lcom/android/tools/r8/internal/iN;

    goto :goto_1

    .line 9
    :pswitch_3
    sget-object p0, Lcom/android/tools/r8/internal/gN;->b:Lcom/android/tools/r8/internal/gN;

    goto :goto_1

    .line 10
    :pswitch_4
    sget-object p0, Lcom/android/tools/r8/internal/mN;->b:Lcom/android/tools/r8/internal/mN;

    goto :goto_1

    .line 11
    :pswitch_5
    sget-object p0, Lcom/android/tools/r8/internal/lN;->b:Lcom/android/tools/r8/internal/lN;

    goto :goto_1

    .line 12
    :pswitch_6
    sget-object p0, Lcom/android/tools/r8/internal/fN;->b:Lcom/android/tools/r8/internal/fN;

    goto :goto_1

    .line 13
    :pswitch_7
    sget-object p0, Lcom/android/tools/r8/internal/eN;->b:Lcom/android/tools/r8/internal/eN;

    goto :goto_1

    .line 14
    :pswitch_8
    sget-object p0, Lcom/android/tools/r8/internal/oN;->b:Lcom/android/tools/r8/internal/oN;

    goto :goto_1

    .line 15
    :pswitch_9
    sget-object p0, Lcom/android/tools/r8/internal/qN;->b:Lcom/android/tools/r8/internal/qN;

    goto :goto_1

    .line 16
    :pswitch_a
    sget-object p0, Lcom/android/tools/r8/internal/pN;->b:Lcom/android/tools/r8/internal/pN;

    goto :goto_1

    .line 17
    :pswitch_b
    sget-object p0, Lcom/android/tools/r8/internal/nN;->b:Lcom/android/tools/r8/internal/nN;

    goto :goto_1

    .line 18
    :pswitch_c
    sget-object p0, Lcom/android/tools/r8/internal/kN;->b:Lcom/android/tools/r8/internal/kN;

    :goto_1
    if-eqz p0, :cond_f

    .line 19
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 20
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;->hasAnnotation()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;->getAnnotation()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern;

    move-result-object p0

    sget-object v0, Lcom/android/tools/r8/internal/IM;->c:Lcom/android/tools/r8/internal/IM;

    .line 22
    new-instance v1, Lcom/android/tools/r8/internal/HM;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/HM;-><init>()V

    .line 23
    sget-boolean v2, Lcom/android/tools/r8/internal/HM;->c:Z

    if-nez v2, :cond_4

    iget-object v3, v1, Lcom/android/tools/r8/internal/HM;->a:Lcom/android/tools/r8/internal/mP;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 24
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern;->hasName()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern;->getName()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassNamePattern;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/r8/internal/mP;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassNamePattern;)Lcom/android/tools/r8/internal/mP;

    move-result-object v3

    .line 26
    iput-object v3, v1, Lcom/android/tools/r8/internal/HM;->a:Lcom/android/tools/r8/internal/mP;

    :cond_5
    const/4 v3, 0x3

    if-nez v2, :cond_7

    .line 27
    iget v4, v1, Lcom/android/tools/r8/internal/HM;->b:I

    if-eq v4, v3, :cond_6

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 28
    :cond_7
    :goto_3
    iput v3, v1, Lcom/android/tools/r8/internal/HM;->b:I

    .line 29
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern;->hasRetention()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 30
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationPattern;->getRetention()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationRetention;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotationRetention;->getNumber()I

    move-result p0

    const/4 v4, 0x1

    if-eq p0, v4, :cond_a

    const/4 v4, 0x2

    if-eq p0, v4, :cond_9

    if-nez v2, :cond_b

    .line 31
    iget p0, v1, Lcom/android/tools/r8/internal/HM;->b:I

    if-ne p0, v3, :cond_8

    goto :goto_4

    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 32
    :cond_9
    iput v4, v1, Lcom/android/tools/r8/internal/HM;->b:I

    goto :goto_4

    .line 33
    :cond_a
    iput v4, v1, Lcom/android/tools/r8/internal/HM;->b:I

    .line 34
    :cond_b
    :goto_4
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/HM;->a()Lcom/android/tools/r8/internal/IM;

    move-result-object p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p0, v0, :cond_c

    .line 36
    sget-object p0, Lcom/android/tools/r8/internal/dN;->c:Lcom/android/tools/r8/internal/dN;

    goto :goto_5

    .line 37
    :cond_c
    sget-object v0, Lcom/android/tools/r8/internal/IM;->d:Lcom/android/tools/r8/internal/IM;

    if-ne p0, v0, :cond_d

    .line 38
    sget-object p0, Lcom/android/tools/r8/internal/dN;->d:Lcom/android/tools/r8/internal/dN;

    goto :goto_5

    .line 39
    :cond_d
    sget-object v0, Lcom/android/tools/r8/internal/IM;->e:Lcom/android/tools/r8/internal/IM;

    if-ne p0, v0, :cond_e

    .line 40
    sget-object p0, Lcom/android/tools/r8/internal/dN;->e:Lcom/android/tools/r8/internal/dN;

    goto :goto_5

    .line 41
    :cond_e
    new-instance v0, Lcom/android/tools/r8/internal/dN;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/dN;-><init>(Lcom/android/tools/r8/internal/IM;)V

    move-object p0, v0

    .line 42
    :goto_5
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_f
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract a()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ConstraintElement;
.end method

.method public abstract a(Lcom/android/tools/r8/internal/aP;)V
.end method

.method public abstract a(Lcom/android/tools/r8/internal/tN;)V
.end method

.method public a(Ljava/util/Set;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;
    .locals 2

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/rN;->a()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ConstraintElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;->setElement(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ConstraintElement;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

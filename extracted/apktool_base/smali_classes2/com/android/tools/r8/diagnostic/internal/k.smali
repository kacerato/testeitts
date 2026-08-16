.class public abstract Lcom/android/tools/r8/diagnostic/internal/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Comparator;

.field public static final synthetic b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/diagnostic/internal/B;

    invoke-direct {v0}, Lcom/android/tools/r8/diagnostic/internal/B;-><init>()V

    sput-object v0, Lcom/android/tools/r8/diagnostic/internal/k;->a:Ljava/util/Comparator;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;)I
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;->isMissingClass()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    .line 2
    invoke-interface {p0}, Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;->asMissingClass()Lcom/android/tools/r8/diagnostic/MissingClassInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/tools/r8/diagnostic/MissingClassInfo;->getClassReference()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p0

    .line 3
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;->isMissingClass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;->asMissingClass()Lcom/android/tools/r8/diagnostic/MissingClassInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingClassInfo;->getClassReference()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/android/tools/r8/internal/Xd;->a()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 6
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;->isMissingField()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;->asMissingField()Lcom/android/tools/r8/diagnostic/MissingFieldInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingFieldInfo;->getFieldReference()Lcom/android/tools/r8/references/FieldReference;

    move-result-object p1

    .line 8
    invoke-static {}, Lcom/android/tools/r8/internal/Xd;->a()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/references/FieldReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_1

    return p0

    :cond_1
    return v1

    .line 9
    :cond_2
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;->asMissingMethod()Lcom/android/tools/r8/diagnostic/MissingMethodInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingMethodInfo;->getMethodReference()Lcom/android/tools/r8/references/MethodReference;

    move-result-object p1

    .line 10
    invoke-static {}, Lcom/android/tools/r8/internal/Xd;->a()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/references/MethodReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    return p0

    :cond_3
    return v1

    .line 11
    :cond_4
    invoke-interface {p0}, Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;->isMissingField()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 12
    invoke-interface {p0}, Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;->asMissingField()Lcom/android/tools/r8/diagnostic/MissingFieldInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/tools/r8/diagnostic/MissingFieldInfo;->getFieldReference()Lcom/android/tools/r8/references/FieldReference;

    move-result-object p0

    .line 13
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;->isMissingClass()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;->asMissingClass()Lcom/android/tools/r8/diagnostic/MissingClassInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingClassInfo;->getClassReference()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p1

    .line 15
    sget-object v0, Lcom/android/tools/r8/internal/Gw;->a:Ljava/util/Comparator;

    .line 16
    invoke-static {}, Lcom/android/tools/r8/internal/Xd;->a()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/references/FieldReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    move p0, v1

    :goto_0
    mul-int/2addr p0, v1

    return p0

    .line 17
    :cond_6
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;->isMissingField()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 18
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;->asMissingField()Lcom/android/tools/r8/diagnostic/MissingFieldInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingFieldInfo;->getFieldReference()Lcom/android/tools/r8/references/FieldReference;

    move-result-object p1

    .line 19
    sget-object v0, Lcom/android/tools/r8/internal/Gw;->a:Ljava/util/Comparator;

    .line 20
    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 21
    :cond_7
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;->asMissingMethod()Lcom/android/tools/r8/diagnostic/MissingMethodInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingMethodInfo;->getMethodReference()Lcom/android/tools/r8/references/MethodReference;

    move-result-object p1

    .line 22
    sget-object v0, Lcom/android/tools/r8/internal/Gw;->a:Ljava/util/Comparator;

    .line 23
    invoke-virtual {p0}, Lcom/android/tools/r8/references/FieldReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/tools/r8/references/MethodReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p1

    .line 24
    invoke-static {}, Lcom/android/tools/r8/internal/Xd;->a()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_8

    return p0

    :cond_8
    return v1

    .line 25
    :cond_9
    invoke-interface {p0}, Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;->asMissingMethod()Lcom/android/tools/r8/diagnostic/MissingMethodInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/tools/r8/diagnostic/MissingMethodInfo;->getMethodReference()Lcom/android/tools/r8/references/MethodReference;

    move-result-object p0

    .line 26
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;->isMissingClass()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 27
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;->asMissingClass()Lcom/android/tools/r8/diagnostic/MissingClassInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingClassInfo;->getClassReference()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p1

    .line 28
    sget-object v0, Lcom/android/tools/r8/internal/hX;->a:Ljava/util/Comparator;

    .line 29
    invoke-static {}, Lcom/android/tools/r8/internal/Xd;->a()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_1

    :cond_a
    move p0, v1

    :goto_1
    mul-int/2addr p0, v1

    return p0

    .line 30
    :cond_b
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;->isMissingField()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 31
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;->asMissingField()Lcom/android/tools/r8/diagnostic/MissingFieldInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingFieldInfo;->getFieldReference()Lcom/android/tools/r8/references/FieldReference;

    move-result-object p1

    .line 32
    sget-object v0, Lcom/android/tools/r8/internal/hX;->a:Ljava/util/Comparator;

    .line 33
    sget-object v0, Lcom/android/tools/r8/internal/Gw;->a:Ljava/util/Comparator;

    .line 34
    invoke-virtual {p1}, Lcom/android/tools/r8/references/FieldReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p0

    .line 35
    invoke-static {}, Lcom/android/tools/r8/internal/Xd;->a()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_2

    :cond_c
    move p0, v1

    :goto_2
    mul-int/2addr p0, v1

    return p0

    .line 36
    :cond_d
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;->asMissingMethod()Lcom/android/tools/r8/diagnostic/MissingMethodInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingMethodInfo;->getMethodReference()Lcom/android/tools/r8/references/MethodReference;

    move-result-object p1

    .line 37
    invoke-static {}, Lcom/android/tools/r8/internal/hX;->a()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/diagnostic/DefinitionClassContext;)V
    .locals 2

    .line 53
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/DefinitionClassContext;->getClassReference()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p1

    invoke-static {}, Lcom/android/tools/r8/internal/Xd;->a()Ljava/util/Comparator;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 56
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/diagnostic/DefinitionFieldContext;)V
    .locals 2

    .line 57
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/DefinitionFieldContext;->getFieldReference()Lcom/android/tools/r8/references/FieldReference;

    move-result-object p1

    .line 58
    sget-object v0, Lcom/android/tools/r8/internal/Gw;->a:Ljava/util/Comparator;

    .line 59
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 61
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/diagnostic/DefinitionMethodContext;)V
    .locals 2

    .line 62
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/DefinitionMethodContext;->getMethodReference()Lcom/android/tools/r8/references/MethodReference;

    move-result-object p1

    .line 63
    invoke-static {}, Lcom/android/tools/r8/internal/hX;->a()Ljava/util/Comparator;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 66
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/diagnostic/MissingClassInfo;)V
    .locals 1

    .line 46
    const-string v0, "Missing class "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingClassInfo;->getClassReference()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;)V
    .locals 4

    .line 38
    new-instance v0, Lcom/android/tools/r8/diagnostic/internal/y;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/diagnostic/internal/y;-><init>(Ljava/lang/StringBuilder;)V

    new-instance v1, Lcom/android/tools/r8/diagnostic/internal/z;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/diagnostic/internal/z;-><init>(Ljava/lang/StringBuilder;)V

    new-instance v2, Lcom/android/tools/r8/diagnostic/internal/A;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/diagnostic/internal/A;-><init>(Ljava/lang/StringBuilder;)V

    .line 39
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;->isMissingClass()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;->asMissingClass()Lcom/android/tools/r8/diagnostic/MissingClassInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    .line 41
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;->isMissingField()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;->asMissingField()Lcom/android/tools/r8/diagnostic/MissingFieldInfo;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    .line 43
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/diagnostic/internal/k;->b:Z

    if-nez v0, :cond_3

    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;->isMissingMethod()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 44
    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;->asMissingMethod()Lcom/android/tools/r8/diagnostic/MissingMethodInfo;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 45
    :goto_1
    invoke-static {p0, p1}, Lcom/android/tools/r8/diagnostic/internal/k;->b(Ljava/lang/StringBuilder;Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;)V

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;Ljava/lang/String;)V
    .locals 2

    .line 67
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;->getReferencedFromContexts()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    .line 68
    sget-boolean v1, Lcom/android/tools/r8/diagnostic/internal/k;->b:Z

    if-nez v1, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 69
    :cond_1
    :goto_0
    const-string v1, " (referenced from: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lt p1, v0, :cond_2

    .line 70
    const-string p2, " and "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " other context"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x2

    if-lt p1, p2, :cond_2

    .line 71
    const-string p1, "s"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_2
    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/diagnostic/MissingFieldInfo;)V
    .locals 1

    .line 48
    const-string v0, "Missing field "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingFieldInfo;->getFieldReference()Lcom/android/tools/r8/references/FieldReference;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/Gw;->a(Lcom/android/tools/r8/references/FieldReference;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static synthetic a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/diagnostic/MissingMethodInfo;)V
    .locals 1

    .line 50
    const-string v0, "Missing method "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingMethodInfo;->getMethodReference()Lcom/android/tools/r8/references/MethodReference;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/hX;->b(Lcom/android/tools/r8/references/MethodReference;)Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static b(Ljava/lang/StringBuilder;Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;)V
    .locals 8

    new-instance v0, Lcom/android/tools/r8/internal/C7;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/C7;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/C7;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/C7;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/C7;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/C7;-><init>()V

    invoke-interface {p1}, Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;->getReferencedFromContexts()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/diagnostic/DefinitionContext;

    new-instance v5, Lcom/android/tools/r8/diagnostic/internal/v;

    invoke-direct {v5, v0}, Lcom/android/tools/r8/diagnostic/internal/v;-><init>(Lcom/android/tools/r8/internal/C7;)V

    new-instance v6, Lcom/android/tools/r8/diagnostic/internal/w;

    invoke-direct {v6, v1}, Lcom/android/tools/r8/diagnostic/internal/w;-><init>(Lcom/android/tools/r8/internal/C7;)V

    new-instance v7, Lcom/android/tools/r8/diagnostic/internal/x;

    invoke-direct {v7, v2}, Lcom/android/tools/r8/diagnostic/internal/x;-><init>(Lcom/android/tools/r8/internal/C7;)V

    invoke-static {v4, v5, v6, v7}, Lcom/android/tools/r8/diagnostic/internal/d;->a(Lcom/android/tools/r8/diagnostic/DefinitionContext;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/references/FieldReference;

    invoke-static {v0}, Lcom/android/tools/r8/internal/Gw;->a(Lcom/android/tools/r8/references/FieldReference;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/diagnostic/internal/k;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/references/MethodReference;

    invoke-static {v0}, Lcom/android/tools/r8/internal/hX;->b(Lcom/android/tools/r8/references/MethodReference;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/diagnostic/internal/k;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/references/ClassReference;

    invoke-interface {v0}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/diagnostic/internal/k;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

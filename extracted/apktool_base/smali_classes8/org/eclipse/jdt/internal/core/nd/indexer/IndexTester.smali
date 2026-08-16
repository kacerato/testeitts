.class public Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester$TypeAnnotationWrapper;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;TT;)V"
        }
    .end annotation

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ": expected = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", actual = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static compareAnnotations(Ljava/lang/String;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)V
    .locals 3

    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_4

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ": An annotation had an unexpected value"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ": The expected and actual number of annotations differed. Expected: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", actual: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ": Actual null for the binary annotations"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    if-eqz p2, :cond_7

    array-length p1, p2

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ": Expected null for the binary annotations"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    return-void
.end method

.method private static compareFields(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getName()[C

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->safeString([C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v0

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->compareAnnotations(Ljava/lang/String;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": Constants not equal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v1

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": The generic signature did not match"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getGenericSignature()[C

    move-result-object v1

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getGenericSignature()[C

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->compareGenericSignatures(Ljava/lang/String;[C[C)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": The modifiers did not match"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IGenericField;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IGenericField;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": The tag bits did not match"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getTagBits()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getTagBits()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": The names did not match"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getName()[C

    move-result-object v1

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getName()[C

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    move-result-object v0

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->compareTypeAnnotations(Ljava/lang/String;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ": The type names did not match"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getTypeName()[C

    move-result-object p1

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getTypeName()[C

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static compareGenericSignatures(Ljava/lang/String;[C[C)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static compareMethods(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getSelector()[C

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->safeString([C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v0

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->compareAnnotations(Ljava/lang/String;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": The argument names didn\'t match."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IGenericMethod;->getArgumentNames()[[C

    move-result-object v1

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IGenericMethod;->getArgumentNames()[[C

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": The default values didn\'t match."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getDefaultValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": The exception type names did not match."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getExceptionTypeNames()[[C

    move-result-object v1

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getExceptionTypeNames()[[C

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": The method\'s generic signature did not match"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getGenericSignature()[C

    move-result-object v1

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getGenericSignature()[C

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->compareGenericSignatures(Ljava/lang/String;[C[C)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": The method descriptors did not match."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getMethodDescriptor()[C

    move-result-object v1

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getMethodDescriptor()[C

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": The modifiers didn\'t match."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IGenericMethod;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IGenericMethod;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getAnnotatedParametersCount()I

    move-result v1

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getAnnotatedParametersCount()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_2

    move v3, v1

    :goto_1
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getAnnotatedParametersCount()I

    move-result v4

    if-lt v3, v4, :cond_1

    :goto_2
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getAnnotatedParametersCount()I

    move-result v3

    if-lt v1, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": The selectors did not match"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getSelector()[C

    move-result-object v1

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getSelector()[C

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": The tag bits did not match"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getTagBits()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getTagBits()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    move-result-object p1

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->compareTypeAnnotations(Ljava/lang/String;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;)V

    return-void

    :cond_0
    new-array v3, v2, [Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    invoke-interface {p2, v1, v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getParameterAnnotations(I[C)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->compareAnnotations(Ljava/lang/String;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    new-array v4, v2, [Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    invoke-interface {p1, v3, v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getParameterAnnotations(I[C)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->compareAnnotations(Ljava/lang/String;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {p1, v3, v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getParameterAnnotations(I[C)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v4

    invoke-interface {p2, v3, v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getParameterAnnotations(I[C)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->compareAnnotations(Ljava/lang/String;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method private static compareTypeAnnotations(Ljava/lang/String;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;)V
    .locals 4

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ": Expected null for the annotation list but found: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": The expected and actual number of type annotations did not match"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    array-length v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_2

    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": Type annotation number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " did not match"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v2, p1, v0

    aget-object v3, p2, v0

    invoke-static {v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, [C

    if-eqz v0, :cond_0

    check-cast p0, [C

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_1b

    if-nez p1, :cond_1

    goto/16 :goto_3

    :cond_1
    instance-of v2, p0, Lorg/eclipse/jdt/internal/compiler/env/ClassSignature;

    if-eqz v2, :cond_3

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/env/ClassSignature;

    if-nez v0, :cond_2

    return v1

    :cond_2
    check-cast p0, Lorg/eclipse/jdt/internal/compiler/env/ClassSignature;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/ClassSignature;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/env/ClassSignature;->getTypeName()[C

    move-result-object p0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/env/ClassSignature;->getTypeName()[C

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p0

    return p0

    :cond_3
    instance-of v2, p0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    if-eqz v2, :cond_8

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;->getElementValuePairs()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;

    move-result-object v2

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;->getElementValuePairs()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;

    move-result-object v3

    array-length p0, v2

    array-length p1, v3

    if-eq p0, p1, :cond_4

    return v1

    :cond_4
    move p0, v1

    :goto_0
    array-length p1, v2

    if-lt p0, p1, :cond_5

    return v0

    :cond_5
    aget-object p1, v2, p0

    aget-object v4, v3, p0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;->getName()[C

    move-result-object v5

    invoke-interface {v4}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;->getName()[C

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v5

    if-nez v5, :cond_6

    return v1

    :cond_6
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v4}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v4}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_8
    instance-of v2, p0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    if-eqz v2, :cond_9

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester$TypeAnnotationWrapper;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester$TypeAnnotationWrapper;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;)V

    new-instance p0, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester$TypeAnnotationWrapper;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester$TypeAnnotationWrapper;-><init>(Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;)V

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester$TypeAnnotationWrapper;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_9
    instance-of v2, p0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eqz v2, :cond_d

    instance-of v2, p1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-nez v2, :cond_a

    return v1

    :cond_a
    instance-of v1, p0, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;

    if-eqz v1, :cond_b

    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;

    if-eqz v1, :cond_b

    move-object v1, p0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;

    move-object v2, p1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/impl/DoubleConstant;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_b

    return v0

    :cond_b
    instance-of v1, p0, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;

    if-eqz v1, :cond_c

    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;

    if-eqz v1, :cond_c

    move-object v1, p0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;

    move-object v2, p1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/impl/FloatConstant;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_c

    return v0

    :cond_c
    check-cast p0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->hasSameValue(Lorg/eclipse/jdt/internal/compiler/impl/Constant;)Z

    move-result p0

    return p0

    :cond_d
    instance-of v2, p0, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;

    if-eqz v2, :cond_10

    instance-of v2, p1, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;

    if-nez v2, :cond_e

    return v1

    :cond_e
    check-cast p0, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;->getEnumConstantName()[C

    move-result-object v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;->getEnumConstantName()[C

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;->getTypeName()[C

    move-result-object p0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;->getTypeName()[C

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_f

    return v0

    :cond_f
    return v1

    :cond_10
    instance-of v2, p0, [C

    if-eqz v2, :cond_11

    check-cast p0, [C

    check-cast p1, [C

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->equals([C[C)Z

    move-result p0

    return p0

    :cond_11
    instance-of v2, p0, [[C

    if-eqz v2, :cond_12

    check-cast p0, [[C

    check-cast p1, [[C

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->equals([[C[[C)Z

    move-result p0

    return p0

    :cond_12
    instance-of v2, p0, [[[C

    if-eqz v2, :cond_16

    move-object v2, p0

    check-cast v2, [[[C

    move-object v3, p1

    check-cast v3, [[[C

    array-length p0, v2

    array-length p1, v3

    if-eq p0, p1, :cond_13

    return v1

    :cond_13
    move p0, v1

    :goto_1
    array-length p1, v2

    if-lt p0, p1, :cond_14

    return v0

    :cond_14
    aget-object p1, v2, p0

    aget-object v4, v3, p0

    invoke-static {p1, v4}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    return v1

    :cond_15
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_16
    instance-of v2, p0, [Ljava/lang/Object;

    if-eqz v2, :cond_1a

    move-object v2, p0

    check-cast v2, [Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, [Ljava/lang/Object;

    array-length p0, v2

    array-length p1, v3

    if-eq p0, p1, :cond_17

    return v1

    :cond_17
    move p0, v1

    :goto_2
    array-length p1, v2

    if-lt p0, p1, :cond_18

    return v0

    :cond_18
    aget-object p1, v2, p0

    aget-object v4, v3, p0

    invoke-static {p1, v4}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    return v1

    :cond_19
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_1a
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1b
    :goto_3
    return v1
.end method

.method private static safeString([C)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "<unnamed>"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static testType(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)V
    .locals 7

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getName()[C

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->safeString([C)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    move-result-object v1

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->compareTypeAnnotations(Ljava/lang/String;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;)V

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v1

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->compareAnnotations(Ljava/lang/String;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": The generic signature did not match"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getGenericSignature()[C

    move-result-object v2

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getGenericSignature()[C

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->compareGenericSignatures(Ljava/lang/String;[C[C)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": The enclosing method name did not match"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getEnclosingMethod()[C

    move-result-object v3

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getEnclosingMethod()[C

    move-result-object v4

    invoke-static {v1, v3, v4}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getEnclosingTypeName()[C

    move-result-object v2

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getEnclosingTypeName()[C

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getFields()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;

    move-result-object v1

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getFields()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4

    if-nez v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "Expected fields was null -- actual fields were not"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    array-length v4, v1

    array-length v5, v2

    if-ne v4, v5, :cond_3

    move v4, v3

    :goto_1
    array-length v5, v2

    if-lt v4, v5, :cond_2

    goto :goto_2

    :cond_2
    aget-object v5, v1, v4

    aget-object v6, v2, v4

    invoke-static {v0, v5, v6}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->compareFields(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "The expected and actual number of fields did not match"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IDependent;->getFileName()[C

    move-result-object v1

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IDependent;->getFileName()[C

    move-result-object v2

    const-string v4, "The file name did not match"

    invoke-static {v4, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getInterfaceNames()[[C

    move-result-object v1

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getInterfaceNames()[[C

    move-result-object v2

    const-string v4, "The interface names did not match"

    invoke-static {v4, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getMethods()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    move-result-object v1

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getMethods()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    move-result-object v2

    if-eq v1, v2, :cond_8

    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    array-length v4, v1

    array-length v5, v2

    if-ne v4, v5, :cond_6

    :goto_3
    array-length v4, v2

    if-lt v3, v4, :cond_5

    goto :goto_4

    :cond_5
    aget-object v4, v2, v3

    aget-object v5, v1, v3

    invoke-static {v0, v5, v4}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->compareMethods(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The number of methods didn\'t match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "One of the method arrays was null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_4
    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getMissingTypeNames()[[[C

    move-result-object v1

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getMissingTypeNames()[[[C

    move-result-object v2

    const-string v3, "The missing type names did not match"

    invoke-static {v3, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IGenericType;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IGenericType;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "The modifiers don\'t match"

    invoke-static {v3, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getName()[C

    move-result-object v1

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getName()[C

    move-result-object v2

    const-string v3, "The names don\'t match."

    invoke-static {v3, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getSourceName()[C

    move-result-object v1

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getSourceName()[C

    move-result-object v2

    const-string v3, "The source name doesn\'t match"

    invoke-static {v3, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getSuperclassName()[C

    move-result-object v1

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getSuperclassName()[C

    move-result-object v2

    const-string v3, "The superclass name doesn\'t match"

    invoke-static {v3, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getTagBits()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getTagBits()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "The tag bits don\'t match."

    invoke-static {v3, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    move-result-object p0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/nd/indexer/IndexTester;->compareTypeAnnotations(Ljava/lang/String;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;)V

    return-void
.end method

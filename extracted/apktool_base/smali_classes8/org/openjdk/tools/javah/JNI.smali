.class public Lorg/openjdk/tools/javah/JNI;
.super Lorg/openjdk/tools/javah/Gen;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javah/Util;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javah/Gen;-><init>(Lorg/openjdk/tools/javah/Util;)V

    return-void
.end method


# virtual methods
.method public getIncludes()Ljava/lang/String;
    .locals 1

    const-string v0, "#include <jni.h>"

    return-object v0
.end method

.method public final jniType(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javah/Util$Exit;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javah/Gen;->elems:Lorg/openjdk/javax/lang/model/util/Elements;

    const-string v1, "java.lang.Throwable"

    invoke-interface {v0, v1}, Lorg/openjdk/javax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Lorg/openjdk/javax/lang/model/element/TypeElement;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javah/Gen;->elems:Lorg/openjdk/javax/lang/model/util/Elements;

    const-string v2, "java.lang.Class"

    invoke-interface {v1, v2}, Lorg/openjdk/javax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Lorg/openjdk/javax/lang/model/element/TypeElement;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javah/Gen;->elems:Lorg/openjdk/javax/lang/model/util/Elements;

    const-string v3, "java.lang.String"

    invoke-interface {v2, v3}, Lorg/openjdk/javax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Lorg/openjdk/javax/lang/model/element/TypeElement;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javah/Gen;->types:Lorg/openjdk/javax/lang/model/util/Types;

    invoke-interface {v3, p1}, Lorg/openjdk/javax/lang/model/util/Types;->asElement(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/element/Element;

    move-result-object v3

    sget-object v4, Lorg/openjdk/tools/javah/JNI$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v4, v5

    packed-switch v5, :pswitch_data_0

    iget-object p1, p0, Lorg/openjdk/tools/javah/Gen;->util:Lorg/openjdk/tools/javah/Util;

    const-string v0, "jni.unknown.type"

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javah/Util;->bug(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    const-string p1, "void"

    return-object p1

    :pswitch_1
    invoke-interface {v3, v2}, Lorg/openjdk/javax/lang/model/element/Element;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "jstring"

    return-object p1

    :cond_0
    iget-object v2, p0, Lorg/openjdk/tools/javah/Gen;->types:Lorg/openjdk/javax/lang/model/util/Types;

    invoke-interface {v0}, Lorg/openjdk/javax/lang/model/element/Element;->asType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Lorg/openjdk/javax/lang/model/util/Types;->isAssignable(Lorg/openjdk/javax/lang/model/type/TypeMirror;Lorg/openjdk/javax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "jthrowable"

    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javah/Gen;->types:Lorg/openjdk/javax/lang/model/util/Types;

    invoke-interface {v1}, Lorg/openjdk/javax/lang/model/element/Element;->asType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/openjdk/javax/lang/model/util/Types;->isAssignable(Lorg/openjdk/javax/lang/model/type/TypeMirror;Lorg/openjdk/javax/lang/model/type/TypeMirror;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "jclass"

    return-object p1

    :cond_2
    const-string p1, "jobject"

    return-object p1

    :pswitch_2
    check-cast p1, Lorg/openjdk/javax/lang/model/type/ArrayType;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/ArrayType;->getComponentType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->getKind()Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_1

    new-instance v0, Ljava/lang/Error;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/type/TypeMirror;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    const-string p1, "jobjectArray"

    return-object p1

    :pswitch_4
    const-string p1, "jdoubleArray"

    return-object p1

    :pswitch_5
    const-string p1, "jfloatArray"

    return-object p1

    :pswitch_6
    const-string p1, "jlongArray"

    return-object p1

    :pswitch_7
    const-string p1, "jintArray"

    return-object p1

    :pswitch_8
    const-string p1, "jshortArray"

    return-object p1

    :pswitch_9
    const-string p1, "jcharArray"

    return-object p1

    :pswitch_a
    const-string p1, "jbyteArray"

    return-object p1

    :pswitch_b
    const-string p1, "jbooleanArray"

    return-object p1

    :pswitch_c
    const-string p1, "jdouble"

    return-object p1

    :pswitch_d
    const-string p1, "jfloat"

    return-object p1

    :pswitch_e
    const-string p1, "jlong"

    return-object p1

    :pswitch_f
    const-string p1, "jint"

    return-object p1

    :pswitch_10
    const-string p1, "jshort"

    return-object p1

    :pswitch_11
    const-string p1, "jchar"

    return-object p1

    :pswitch_12
    const-string p1, "jbyte"

    return-object p1

    :pswitch_13
    const-string p1, "jboolean"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public write(Ljava/io/OutputStream;Lorg/openjdk/javax/lang/model/element/TypeElement;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javah/Util$Exit;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javah/Gen;->mangler:Lorg/openjdk/tools/javah/Mangle;

    invoke-interface {p2}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getQualifiedName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javah/Mangle;->mangle(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javah/Gen;->wrapWriter(Ljava/io/OutputStream;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javah/Gen;->guardBegin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javah/Gen;->cppGuardBegin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javah/Gen;->getAllFields(Lorg/openjdk/javax/lang/model/element/TypeElement;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/javax/lang/model/element/VariableElement;

    invoke-interface {v3}, Lorg/openjdk/javax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v4

    sget-object v5, Lorg/openjdk/javax/lang/model/element/Modifier;->STATIC:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2, v3}, Lorg/openjdk/tools/javah/Gen;->defineForStatic(Lorg/openjdk/javax/lang/model/element/TypeElement;Lorg/openjdk/javax/lang/model/element/VariableElement;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_7

    :cond_2
    invoke-interface {p2}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/javax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/javax/lang/model/element/ExecutableElement;

    invoke-interface {v4}, Lorg/openjdk/javax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v5

    sget-object v6, Lorg/openjdk/javax/lang/model/element/Modifier;->NATIVE:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/openjdk/tools/javah/Gen;->types:Lorg/openjdk/javax/lang/model/util/Types;

    invoke-interface {v4}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getReturnType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/openjdk/javax/lang/model/util/Types;->erasure(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v5

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javah/Gen;->signature(Lorg/openjdk/javax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/openjdk/tools/javah/TypeSignature;

    iget-object v8, p0, Lorg/openjdk/tools/javah/Gen;->elems:Lorg/openjdk/javax/lang/model/util/Elements;

    invoke-direct {v7, v8}, Lorg/openjdk/tools/javah/TypeSignature;-><init>(Lorg/openjdk/javax/lang/model/util/Elements;)V

    invoke-interface {v4}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    :cond_4
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/openjdk/javax/lang/model/element/ExecutableElement;

    if-eq v11, v4, :cond_4

    invoke-interface {v11}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Lorg/openjdk/javax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v11

    sget-object v12, Lorg/openjdk/javax/lang/model/element/Modifier;->NATIVE:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v10, v2

    goto :goto_2

    :cond_5
    const-string v9, "/*"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " * Class:     "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " * Method:    "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lorg/openjdk/tools/javah/Gen;->mangler:Lorg/openjdk/tools/javah/Mangle;

    const/4 v12, 0x2

    invoke-virtual {v11, v8, v12}, Lorg/openjdk/tools/javah/Mangle;->mangle(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " * Signature: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6, v5}, Lorg/openjdk/tools/javah/TypeSignature;->getTypeSignature(Ljava/lang/String;Lorg/openjdk/javax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v6, " */"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JNIEXPORT "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Lorg/openjdk/tools/javah/JNI;->jniType(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " JNICALL "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/openjdk/tools/javah/Gen;->mangler:Lorg/openjdk/tools/javah/Mangle;

    if-eqz v10, :cond_6

    const/16 v7, 0x8

    goto :goto_3

    :cond_6
    const/4 v7, 0x7

    :goto_3
    invoke-virtual {v5, v4, p2, v7}, Lorg/openjdk/tools/javah/Mangle;->mangleMethod(Lorg/openjdk/javax/lang/model/element/ExecutableElement;Lorg/openjdk/javax/lang/model/element/TypeElement;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "  (JNIEnv *, "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/openjdk/javax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openjdk/javax/lang/model/element/VariableElement;

    iget-object v8, p0, Lorg/openjdk/tools/javah/Gen;->types:Lorg/openjdk/javax/lang/model/util/Types;

    invoke-interface {v7}, Lorg/openjdk/javax/lang/model/element/Element;->asType()Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v7

    invoke-interface {v8, v7}, Lorg/openjdk/javax/lang/model/util/Types;->erasure(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Lorg/openjdk/javax/lang/model/type/TypeMirror;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-interface {v4}, Lorg/openjdk/javax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v4

    sget-object v5, Lorg/openjdk/javax/lang/model/element/Modifier;->STATIC:Lorg/openjdk/javax/lang/model/element/Modifier;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "jclass"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    const-string v4, "jobject"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_5
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/javax/lang/model/type/TypeMirror;

    const-string v6, ", "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lorg/openjdk/tools/javah/JNI;->jniType(Lorg/openjdk/javax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ");"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/openjdk/tools/javah/Gen;->lineSep:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0}, Lorg/openjdk/tools/javah/Gen;->cppGuardEnd()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javah/Gen;->guardEnd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/openjdk/tools/javah/TypeSignature$SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :goto_7
    iget-object p2, p0, Lorg/openjdk/tools/javah/Gen;->util:Lorg/openjdk/tools/javah/Util;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "jni.sigerror"

    invoke-virtual {p2, v0, p1}, Lorg/openjdk/tools/javah/Util;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_8
    return-void
.end method

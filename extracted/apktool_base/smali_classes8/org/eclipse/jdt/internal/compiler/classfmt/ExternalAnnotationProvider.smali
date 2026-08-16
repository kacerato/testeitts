.class public Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$BasicAnnotationWalker;,
        Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$DispatchingAnnotationWalker;,
        Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$FieldAnnotationWalker;,
        Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$IMethodAnnotationWalker;,
        Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$MethodAnnotationWalker;,
        Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$SingleMarkerAnnotation;,
        Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$SuperTypesAnnotationWalker;,
        Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$TypeParametersAnnotationWalker;
    }
.end annotation


# static fields
.field public static final ANNOTATION_FILE_EXTENSION:Ljava/lang/String; = "eea"

.field public static final ANNOTATION_FILE_SUFFIX:Ljava/lang/String; = ".eea"

.field public static final CLASS_PREFIX:Ljava/lang/String; = "class "

.field public static final NONNULL:C = '1'

.field public static final NO_ANNOTATION:C = '@'

.field public static final NULLABLE:C = '0'

.field public static final SUPER_PREFIX:Ljava/lang/String; = "super "

.field private static final TYPE_PARAMETER_PREFIX:Ljava/lang/String; = " <"


# instance fields
.field NONNULL_ANNOTATION:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$SingleMarkerAnnotation;

.field NULLABLE_ANNOTATION:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$SingleMarkerAnnotation;

.field private fieldAnnotationSources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private methodAnnotationSources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field supertypeAnnotationSources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private typeName:Ljava/lang/String;

.field typeParametersAnnotationSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->typeName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->initialize(Ljava/io/InputStream;)V

    return-void
.end method

.method public static assertClassHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    const-string v0, "class "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->trimTail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mismatching class name in annotation file, expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but header said "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "missing class header in annotation file for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static extractSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->trimTail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private initialize(Ljava/io/InputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, " <"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/LineNumberReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->typeName:Ljava/lang/String;

    invoke-static {p1, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->assertClassHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p1, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_0
    :try_start_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p1, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :cond_1
    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->typeParametersAnnotationSource:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez p1, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-void

    :catchall_1
    move-exception p1

    move-object v1, p1

    goto/16 :goto_5

    :cond_2
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string v0, "super "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_4
    const/4 v3, -0x1

    :try_start_8
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/16 v6, 0x20

    const/4 v7, 0x0

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move v8, v3

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move v8, v4

    move-object v4, v1

    :goto_0
    :try_start_9
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_e

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_6

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v6, :cond_7

    move-object p1, v9

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v9, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1

    :catch_0
    move-object v4, v1

    move v8, v3

    :catch_1
    move-object v5, v1

    :goto_1
    if-eqz v4, :cond_f

    if-nez v5, :cond_8

    goto/16 :goto_4

    :cond_8
    :try_start_a
    invoke-static {v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->trimTail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->supertypeAnnotationSources:Ljava/util/Map;

    if-nez v0, :cond_9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->supertypeAnnotationSources:Ljava/util/Map;

    :cond_9
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->supertypeAnnotationSources:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x4c

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3b

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_a
    const-string v0, "("

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->methodAnnotationSources:Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->methodAnnotationSources:Ljava/util/Map;

    :cond_b
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->methodAnnotationSources:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->fieldAnnotationSources:Ljava/util/Map;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->fieldAnnotationSources:Ljava/util/Map;

    :cond_d
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->fieldAnnotationSources:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x3a

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_2
    move-object p1, v1

    :goto_3
    if-nez p1, :cond_2

    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-nez p1, :cond_2

    :try_start_b
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    return-void

    :cond_f
    :goto_4
    if-ne v8, v3, :cond_10

    :try_start_c
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v8

    :cond_10
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal format in annotation file for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->typeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :goto_5
    :try_start_d
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_6
    if-eqz v1, :cond_12

    if-eq v1, p1, :cond_11

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_11
    move-object p1, v1

    :cond_12
    throw p1
.end method

.method public static trimTail(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    :cond_0
    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public forField([C[CLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->fieldAnnotationSources:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/16 v1, 0x3a

    invoke-static {p1, p2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$FieldAnnotationWalker;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$FieldAnnotationWalker;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;[CILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    return-object p2

    :cond_0
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    return-object p1
.end method

.method public forMethod([C[CLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->methodAnnotationSources:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$MethodAnnotationWalker;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$MethodAnnotationWalker;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;[CILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    return-object p2

    :cond_0
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    return-object p1
.end method

.method public forTypeHeader(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->typeParametersAnnotationSource:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->supertypeAnnotationSources:Ljava/util/Map;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    return-object p1

    :cond_1
    :goto_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$DispatchingAnnotationWalker;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$DispatchingAnnotationWalker;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    return-object v0
.end method

.method public initAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->NULLABLE_ANNOTATION:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$SingleMarkerAnnotation;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$1;

    invoke-direct {v0, p0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$1;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->NULLABLE_ANNOTATION:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$SingleMarkerAnnotation;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->NONNULL_ANNOTATION:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$SingleMarkerAnnotation;

    if-nez v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$2;

    invoke-direct {v0, p0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$2;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->NONNULL_ANNOTATION:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$SingleMarkerAnnotation;

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "External Annotations for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->typeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "Methods:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->methodAnnotationSources:Ljava/util/Map;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

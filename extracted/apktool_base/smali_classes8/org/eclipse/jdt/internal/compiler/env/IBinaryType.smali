.class public interface abstract Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IGenericType;


# static fields
.field public static final NoField:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;

.field public static final NoInterface:[[C

.field public static final NoMethod:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

.field public static final NoNestedType:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryNestedType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->NoInterface:[[C

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/env/IBinaryNestedType;

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->NoNestedType:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryNestedType;

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->NoField:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->NoMethod:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    return-void
.end method


# virtual methods
.method public abstract enrichWithExternalAnnotationsFor(Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
.end method

.method public abstract getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
.end method

.method public abstract getEnclosingMethod()[C
.end method

.method public abstract getEnclosingTypeName()[C
.end method

.method public abstract getExternalAnnotationStatus()Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;
.end method

.method public abstract getFields()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;
.end method

.method public abstract getGenericSignature()[C
.end method

.method public abstract getInterfaceNames()[[C
.end method

.method public abstract getMemberTypes()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryNestedType;
.end method

.method public abstract getMethods()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;
.end method

.method public abstract getMissingTypeNames()[[[C
.end method

.method public abstract getModule()[C
.end method

.method public abstract getName()[C
.end method

.method public abstract getSourceName()[C
.end method

.method public abstract getSuperclassName()[C
.end method

.method public abstract getTagBits()J
.end method

.method public abstract getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;
.end method

.method public abstract isAnonymous()Z
.end method

.method public abstract isLocal()Z
.end method

.method public abstract isMember()Z
.end method

.method public abstract sourceFileName()[C
.end method

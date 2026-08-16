.class public interface abstract Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AnnotationDefaultName:[C

.field public static final BootstrapMethodsName:[C

.field public static final CodeName:[C

.field public static final ConstantValueName:[C

.field public static final DeprecatedName:[C

.field public static final EnclosingMethodName:[C

.field public static final ExceptionsName:[C

.field public static final InconsistentHierarchy:[C

.field public static final InnerClassName:[C

.field public static final LineNumberTableName:[C

.field public static final LocalVariableTableName:[C

.field public static final LocalVariableTypeTableName:[C

.field public static final MethodParametersName:[C

.field public static final MissingTypesName:[C

.field public static final ModuleMainClass:[C

.field public static final ModuleName:[C

.field public static final ModulePackages:[C

.field public static final NestHost:[C

.field public static final NestMembers:[C

.field public static final RuntimeInvisibleAnnotationsName:[C

.field public static final RuntimeInvisibleParameterAnnotationsName:[C

.field public static final RuntimeInvisibleTypeAnnotationsName:[C

.field public static final RuntimeVisibleAnnotationsName:[C

.field public static final RuntimeVisibleParameterAnnotationsName:[C

.field public static final RuntimeVisibleTypeAnnotationsName:[C

.field public static final SignatureName:[C

.field public static final SourceName:[C

.field public static final StackMapName:[C

.field public static final StackMapTableName:[C

.field public static final SyntheticName:[C

.field public static final VarargsName:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Synthetic"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->SyntheticName:[C

    const-string v0, "ConstantValue"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->ConstantValueName:[C

    const-string v0, "LineNumberTable"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->LineNumberTableName:[C

    const-string v0, "LocalVariableTable"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->LocalVariableTableName:[C

    const-string v0, "InnerClasses"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->InnerClassName:[C

    const-string v0, "Code"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->CodeName:[C

    const-string v0, "Exceptions"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->ExceptionsName:[C

    const-string v0, "SourceFile"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->SourceName:[C

    const-string v0, "Deprecated"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->DeprecatedName:[C

    const-string v0, "Signature"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->SignatureName:[C

    const-string v0, "LocalVariableTypeTable"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->LocalVariableTypeTableName:[C

    const-string v0, "EnclosingMethod"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->EnclosingMethodName:[C

    const-string v0, "Module"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->ModuleName:[C

    const-string v0, "ModuleMainClass"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->ModuleMainClass:[C

    const-string v0, "ModulePackages"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->ModulePackages:[C

    const-string v0, "AnnotationDefault"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->AnnotationDefaultName:[C

    const-string v0, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->RuntimeInvisibleAnnotationsName:[C

    const-string v0, "RuntimeVisibleAnnotations"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->RuntimeVisibleAnnotationsName:[C

    const-string v0, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->RuntimeInvisibleParameterAnnotationsName:[C

    const-string v0, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->RuntimeVisibleParameterAnnotationsName:[C

    const-string v0, "StackMapTable"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->StackMapTableName:[C

    const-string v0, "InconsistentHierarchy"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->InconsistentHierarchy:[C

    const-string v0, "Varargs"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->VarargsName:[C

    const-string v0, "StackMap"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->StackMapName:[C

    const-string v0, "MissingTypes"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->MissingTypesName:[C

    const-string v0, "BootstrapMethods"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->BootstrapMethodsName:[C

    const-string v0, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->RuntimeVisibleTypeAnnotationsName:[C

    const-string v0, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->RuntimeInvisibleTypeAnnotationsName:[C

    const-string v0, "MethodParameters"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->MethodParametersName:[C

    const-string v0, "NestHost"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->NestHost:[C

    const-string v0, "NestMembers"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->NestMembers:[C

    return-void
.end method

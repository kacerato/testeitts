.class public final Lcom/android/dx/dex/file/AnnotationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACCESS_FLAGS_STRING:Lcom/android/dx/rop/cst/CstString;

.field private static final ANNOTATION_DEFAULT_TYPE:Lcom/android/dx/rop/cst/CstType;

.field private static final ENCLOSING_CLASS_TYPE:Lcom/android/dx/rop/cst/CstType;

.field private static final ENCLOSING_METHOD_TYPE:Lcom/android/dx/rop/cst/CstType;

.field private static final INNER_CLASS_TYPE:Lcom/android/dx/rop/cst/CstType;

.field private static final MEMBER_CLASSES_TYPE:Lcom/android/dx/rop/cst/CstType;

.field private static final NAME_STRING:Lcom/android/dx/rop/cst/CstString;

.field private static final SIGNATURE_TYPE:Lcom/android/dx/rop/cst/CstType;

.field private static final SOURCE_DEBUG_EXTENSION_TYPE:Lcom/android/dx/rop/cst/CstType;

.field private static final THROWS_TYPE:Lcom/android/dx/rop/cst/CstType;

.field private static final VALUE_STRING:Lcom/android/dx/rop/cst/CstString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Ldalvik/annotation/AnnotationDefault;"

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dx/rop/cst/CstType;->intern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/CstType;

    move-result-object v0

    sput-object v0, Lcom/android/dx/dex/file/AnnotationUtils;->ANNOTATION_DEFAULT_TYPE:Lcom/android/dx/rop/cst/CstType;

    const-string v0, "Ldalvik/annotation/EnclosingClass;"

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dx/rop/cst/CstType;->intern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/CstType;

    move-result-object v0

    sput-object v0, Lcom/android/dx/dex/file/AnnotationUtils;->ENCLOSING_CLASS_TYPE:Lcom/android/dx/rop/cst/CstType;

    const-string v0, "Ldalvik/annotation/EnclosingMethod;"

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dx/rop/cst/CstType;->intern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/CstType;

    move-result-object v0

    sput-object v0, Lcom/android/dx/dex/file/AnnotationUtils;->ENCLOSING_METHOD_TYPE:Lcom/android/dx/rop/cst/CstType;

    const-string v0, "Ldalvik/annotation/InnerClass;"

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dx/rop/cst/CstType;->intern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/CstType;

    move-result-object v0

    sput-object v0, Lcom/android/dx/dex/file/AnnotationUtils;->INNER_CLASS_TYPE:Lcom/android/dx/rop/cst/CstType;

    const-string v0, "Ldalvik/annotation/MemberClasses;"

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dx/rop/cst/CstType;->intern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/CstType;

    move-result-object v0

    sput-object v0, Lcom/android/dx/dex/file/AnnotationUtils;->MEMBER_CLASSES_TYPE:Lcom/android/dx/rop/cst/CstType;

    const-string v0, "Ldalvik/annotation/Signature;"

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dx/rop/cst/CstType;->intern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/CstType;

    move-result-object v0

    sput-object v0, Lcom/android/dx/dex/file/AnnotationUtils;->SIGNATURE_TYPE:Lcom/android/dx/rop/cst/CstType;

    const-string v0, "Ldalvik/annotation/SourceDebugExtension;"

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dx/rop/cst/CstType;->intern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/CstType;

    move-result-object v0

    sput-object v0, Lcom/android/dx/dex/file/AnnotationUtils;->SOURCE_DEBUG_EXTENSION_TYPE:Lcom/android/dx/rop/cst/CstType;

    const-string v0, "Ldalvik/annotation/Throws;"

    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dx/rop/cst/CstType;->intern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/CstType;

    move-result-object v0

    sput-object v0, Lcom/android/dx/dex/file/AnnotationUtils;->THROWS_TYPE:Lcom/android/dx/rop/cst/CstType;

    new-instance v0, Lcom/android/dx/rop/cst/CstString;

    const-string v1, "accessFlags"

    invoke-direct {v0, v1}, Lcom/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/dx/dex/file/AnnotationUtils;->ACCESS_FLAGS_STRING:Lcom/android/dx/rop/cst/CstString;

    new-instance v0, Lcom/android/dx/rop/cst/CstString;

    const-string v1, "name"

    invoke-direct {v0, v1}, Lcom/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/dx/dex/file/AnnotationUtils;->NAME_STRING:Lcom/android/dx/rop/cst/CstString;

    new-instance v0, Lcom/android/dx/rop/cst/CstString;

    const-string v1, "value"

    invoke-direct {v0, v1}, Lcom/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/dx/dex/file/AnnotationUtils;->VALUE_STRING:Lcom/android/dx/rop/cst/CstString;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeAnnotationDefault(Lcom/android/dx/rop/annotation/Annotation;)Lcom/android/dx/rop/annotation/Annotation;
    .locals 4

    new-instance v0, Lcom/android/dx/rop/annotation/Annotation;

    sget-object v1, Lcom/android/dx/dex/file/AnnotationUtils;->ANNOTATION_DEFAULT_TYPE:Lcom/android/dx/rop/cst/CstType;

    sget-object v2, Lcom/android/dx/rop/annotation/AnnotationVisibility;->SYSTEM:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/annotation/Annotation;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/annotation/AnnotationVisibility;)V

    new-instance v1, Lcom/android/dx/rop/annotation/NameValuePair;

    sget-object v2, Lcom/android/dx/dex/file/AnnotationUtils;->VALUE_STRING:Lcom/android/dx/rop/cst/CstString;

    new-instance v3, Lcom/android/dx/rop/cst/CstAnnotation;

    invoke-direct {v3, p0}, Lcom/android/dx/rop/cst/CstAnnotation;-><init>(Lcom/android/dx/rop/annotation/Annotation;)V

    invoke-direct {v1, v2, v3}, Lcom/android/dx/rop/annotation/NameValuePair;-><init>(Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/Constant;)V

    invoke-virtual {v0, v1}, Lcom/android/dx/rop/annotation/Annotation;->put(Lcom/android/dx/rop/annotation/NameValuePair;)V

    invoke-virtual {v0}, Lcom/android/dx/util/MutabilityControl;->setImmutable()V

    return-object v0
.end method

.method private static makeCstArray(Lcom/android/dx/rop/type/TypeList;)Lcom/android/dx/rop/cst/CstArray;
    .locals 4

    invoke-interface {p0}, Lcom/android/dx/rop/type/TypeList;->size()I

    move-result v0

    new-instance v1, Lcom/android/dx/rop/cst/CstArray$List;

    invoke-direct {v1, v0}, Lcom/android/dx/rop/cst/CstArray$List;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p0, v2}, Lcom/android/dx/rop/type/TypeList;->getType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v3

    invoke-static {v3}, Lcom/android/dx/rop/cst/CstType;->intern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/CstType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/dx/rop/cst/CstArray$List;->set(ILcom/android/dx/rop/cst/Constant;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/dx/util/MutabilityControl;->setImmutable()V

    new-instance p0, Lcom/android/dx/rop/cst/CstArray;

    invoke-direct {p0, v1}, Lcom/android/dx/rop/cst/CstArray;-><init>(Lcom/android/dx/rop/cst/CstArray$List;)V

    return-object p0
.end method

.method public static makeEnclosingClass(Lcom/android/dx/rop/cst/CstType;)Lcom/android/dx/rop/annotation/Annotation;
    .locals 3

    new-instance v0, Lcom/android/dx/rop/annotation/Annotation;

    sget-object v1, Lcom/android/dx/dex/file/AnnotationUtils;->ENCLOSING_CLASS_TYPE:Lcom/android/dx/rop/cst/CstType;

    sget-object v2, Lcom/android/dx/rop/annotation/AnnotationVisibility;->SYSTEM:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/annotation/Annotation;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/annotation/AnnotationVisibility;)V

    new-instance v1, Lcom/android/dx/rop/annotation/NameValuePair;

    sget-object v2, Lcom/android/dx/dex/file/AnnotationUtils;->VALUE_STRING:Lcom/android/dx/rop/cst/CstString;

    invoke-direct {v1, v2, p0}, Lcom/android/dx/rop/annotation/NameValuePair;-><init>(Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/Constant;)V

    invoke-virtual {v0, v1}, Lcom/android/dx/rop/annotation/Annotation;->put(Lcom/android/dx/rop/annotation/NameValuePair;)V

    invoke-virtual {v0}, Lcom/android/dx/util/MutabilityControl;->setImmutable()V

    return-object v0
.end method

.method public static makeEnclosingMethod(Lcom/android/dx/rop/cst/CstMethodRef;)Lcom/android/dx/rop/annotation/Annotation;
    .locals 3

    new-instance v0, Lcom/android/dx/rop/annotation/Annotation;

    sget-object v1, Lcom/android/dx/dex/file/AnnotationUtils;->ENCLOSING_METHOD_TYPE:Lcom/android/dx/rop/cst/CstType;

    sget-object v2, Lcom/android/dx/rop/annotation/AnnotationVisibility;->SYSTEM:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/annotation/Annotation;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/annotation/AnnotationVisibility;)V

    new-instance v1, Lcom/android/dx/rop/annotation/NameValuePair;

    sget-object v2, Lcom/android/dx/dex/file/AnnotationUtils;->VALUE_STRING:Lcom/android/dx/rop/cst/CstString;

    invoke-direct {v1, v2, p0}, Lcom/android/dx/rop/annotation/NameValuePair;-><init>(Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/Constant;)V

    invoke-virtual {v0, v1}, Lcom/android/dx/rop/annotation/Annotation;->put(Lcom/android/dx/rop/annotation/NameValuePair;)V

    invoke-virtual {v0}, Lcom/android/dx/util/MutabilityControl;->setImmutable()V

    return-object v0
.end method

.method public static makeInnerClass(Lcom/android/dx/rop/cst/CstString;I)Lcom/android/dx/rop/annotation/Annotation;
    .locals 3

    new-instance v0, Lcom/android/dx/rop/annotation/Annotation;

    sget-object v1, Lcom/android/dx/dex/file/AnnotationUtils;->INNER_CLASS_TYPE:Lcom/android/dx/rop/cst/CstType;

    sget-object v2, Lcom/android/dx/rop/annotation/AnnotationVisibility;->SYSTEM:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/annotation/Annotation;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/annotation/AnnotationVisibility;)V

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/dx/rop/cst/CstKnownNull;->THE_ONE:Lcom/android/dx/rop/cst/CstKnownNull;

    :goto_0
    new-instance v1, Lcom/android/dx/rop/annotation/NameValuePair;

    sget-object v2, Lcom/android/dx/dex/file/AnnotationUtils;->NAME_STRING:Lcom/android/dx/rop/cst/CstString;

    invoke-direct {v1, v2, p0}, Lcom/android/dx/rop/annotation/NameValuePair;-><init>(Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/Constant;)V

    invoke-virtual {v0, v1}, Lcom/android/dx/rop/annotation/Annotation;->put(Lcom/android/dx/rop/annotation/NameValuePair;)V

    new-instance p0, Lcom/android/dx/rop/annotation/NameValuePair;

    sget-object v1, Lcom/android/dx/dex/file/AnnotationUtils;->ACCESS_FLAGS_STRING:Lcom/android/dx/rop/cst/CstString;

    invoke-static {p1}, Lcom/android/dx/rop/cst/CstInteger;->make(I)Lcom/android/dx/rop/cst/CstInteger;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/dx/rop/annotation/NameValuePair;-><init>(Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/Constant;)V

    invoke-virtual {v0, p0}, Lcom/android/dx/rop/annotation/Annotation;->put(Lcom/android/dx/rop/annotation/NameValuePair;)V

    invoke-virtual {v0}, Lcom/android/dx/util/MutabilityControl;->setImmutable()V

    return-object v0
.end method

.method public static makeMemberClasses(Lcom/android/dx/rop/type/TypeList;)Lcom/android/dx/rop/annotation/Annotation;
    .locals 3

    invoke-static {p0}, Lcom/android/dx/dex/file/AnnotationUtils;->makeCstArray(Lcom/android/dx/rop/type/TypeList;)Lcom/android/dx/rop/cst/CstArray;

    move-result-object p0

    new-instance v0, Lcom/android/dx/rop/annotation/Annotation;

    sget-object v1, Lcom/android/dx/dex/file/AnnotationUtils;->MEMBER_CLASSES_TYPE:Lcom/android/dx/rop/cst/CstType;

    sget-object v2, Lcom/android/dx/rop/annotation/AnnotationVisibility;->SYSTEM:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/annotation/Annotation;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/annotation/AnnotationVisibility;)V

    new-instance v1, Lcom/android/dx/rop/annotation/NameValuePair;

    sget-object v2, Lcom/android/dx/dex/file/AnnotationUtils;->VALUE_STRING:Lcom/android/dx/rop/cst/CstString;

    invoke-direct {v1, v2, p0}, Lcom/android/dx/rop/annotation/NameValuePair;-><init>(Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/Constant;)V

    invoke-virtual {v0, v1}, Lcom/android/dx/rop/annotation/Annotation;->put(Lcom/android/dx/rop/annotation/NameValuePair;)V

    invoke-virtual {v0}, Lcom/android/dx/util/MutabilityControl;->setImmutable()V

    return-object v0
.end method

.method public static makeSignature(Lcom/android/dx/rop/cst/CstString;)Lcom/android/dx/rop/annotation/Annotation;
    .locals 8

    new-instance v0, Lcom/android/dx/rop/annotation/Annotation;

    sget-object v1, Lcom/android/dx/dex/file/AnnotationUtils;->SIGNATURE_TYPE:Lcom/android/dx/rop/cst/CstType;

    sget-object v2, Lcom/android/dx/rop/annotation/AnnotationVisibility;->SYSTEM:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/annotation/Annotation;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/annotation/AnnotationVisibility;)V

    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_5

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v6, v4, 0x1

    const/16 v7, 0x4c

    if-ne v5, v7, :cond_2

    :goto_1
    if-ge v6, v1, :cond_4

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x3b

    if-ne v5, v7, :cond_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_0
    const/16 v7, 0x3c

    if-ne v5, v7, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v6, v1, :cond_4

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-instance v1, Lcom/android/dx/rop/cst/CstArray$List;

    invoke-direct {v1, p0}, Lcom/android/dx/rop/cst/CstArray$List;-><init>(I)V

    :goto_4
    if-ge v3, p0, :cond_6

    new-instance v4, Lcom/android/dx/rop/cst/CstString;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lcom/android/dx/rop/cst/CstArray$List;->set(ILcom/android/dx/rop/cst/Constant;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Lcom/android/dx/util/MutabilityControl;->setImmutable()V

    new-instance p0, Lcom/android/dx/rop/annotation/NameValuePair;

    sget-object v2, Lcom/android/dx/dex/file/AnnotationUtils;->VALUE_STRING:Lcom/android/dx/rop/cst/CstString;

    new-instance v3, Lcom/android/dx/rop/cst/CstArray;

    invoke-direct {v3, v1}, Lcom/android/dx/rop/cst/CstArray;-><init>(Lcom/android/dx/rop/cst/CstArray$List;)V

    invoke-direct {p0, v2, v3}, Lcom/android/dx/rop/annotation/NameValuePair;-><init>(Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/Constant;)V

    invoke-virtual {v0, p0}, Lcom/android/dx/rop/annotation/Annotation;->put(Lcom/android/dx/rop/annotation/NameValuePair;)V

    invoke-virtual {v0}, Lcom/android/dx/util/MutabilityControl;->setImmutable()V

    return-object v0
.end method

.method public static makeSourceDebugExtension(Lcom/android/dx/rop/cst/CstString;)Lcom/android/dx/rop/annotation/Annotation;
    .locals 3

    new-instance v0, Lcom/android/dx/rop/annotation/Annotation;

    sget-object v1, Lcom/android/dx/dex/file/AnnotationUtils;->SOURCE_DEBUG_EXTENSION_TYPE:Lcom/android/dx/rop/cst/CstType;

    sget-object v2, Lcom/android/dx/rop/annotation/AnnotationVisibility;->SYSTEM:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/annotation/Annotation;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/annotation/AnnotationVisibility;)V

    new-instance v1, Lcom/android/dx/rop/annotation/NameValuePair;

    sget-object v2, Lcom/android/dx/dex/file/AnnotationUtils;->VALUE_STRING:Lcom/android/dx/rop/cst/CstString;

    invoke-direct {v1, v2, p0}, Lcom/android/dx/rop/annotation/NameValuePair;-><init>(Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/Constant;)V

    invoke-virtual {v0, v1}, Lcom/android/dx/rop/annotation/Annotation;->put(Lcom/android/dx/rop/annotation/NameValuePair;)V

    invoke-virtual {v0}, Lcom/android/dx/util/MutabilityControl;->setImmutable()V

    return-object v0
.end method

.method public static makeThrows(Lcom/android/dx/rop/type/TypeList;)Lcom/android/dx/rop/annotation/Annotation;
    .locals 3

    invoke-static {p0}, Lcom/android/dx/dex/file/AnnotationUtils;->makeCstArray(Lcom/android/dx/rop/type/TypeList;)Lcom/android/dx/rop/cst/CstArray;

    move-result-object p0

    new-instance v0, Lcom/android/dx/rop/annotation/Annotation;

    sget-object v1, Lcom/android/dx/dex/file/AnnotationUtils;->THROWS_TYPE:Lcom/android/dx/rop/cst/CstType;

    sget-object v2, Lcom/android/dx/rop/annotation/AnnotationVisibility;->SYSTEM:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/annotation/Annotation;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/annotation/AnnotationVisibility;)V

    new-instance v1, Lcom/android/dx/rop/annotation/NameValuePair;

    sget-object v2, Lcom/android/dx/dex/file/AnnotationUtils;->VALUE_STRING:Lcom/android/dx/rop/cst/CstString;

    invoke-direct {v1, v2, p0}, Lcom/android/dx/rop/annotation/NameValuePair;-><init>(Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/Constant;)V

    invoke-virtual {v0, v1}, Lcom/android/dx/rop/annotation/Annotation;->put(Lcom/android/dx/rop/annotation/NameValuePair;)V

    invoke-virtual {v0}, Lcom/android/dx/util/MutabilityControl;->setImmutable()V

    return-object v0
.end method

.class public interface abstract Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EXTENSION_CLASS:Ljava/lang/String; = "CLASS"

.field public static final EXTENSION_JAVA:Ljava/lang/String; = "JAVA"

.field public static final EXTENSION_JMOD:Ljava/lang/String; = "JMOD"

.field public static final EXTENSION_class:Ljava/lang/String; = "class"

.field public static final EXTENSION_java:Ljava/lang/String; = "java"

.field public static final EXTENSION_jmod:Ljava/lang/String; = "jmod"

.field public static final SUFFIX_CLASS:[C

.field public static final SUFFIX_JAVA:[C

.field public static final SUFFIX_STRING_CLASS:Ljava/lang/String; = ".CLASS"

.field public static final SUFFIX_STRING_JAVA:Ljava/lang/String; = ".JAVA"

.field public static final SUFFIX_STRING_class:Ljava/lang/String; = ".class"

.field public static final SUFFIX_STRING_java:Ljava/lang/String; = ".java"

.field public static final SUFFIX_class:[C

.field public static final SUFFIX_java:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ".class"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;->SUFFIX_class:[C

    const-string v0, ".CLASS"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;->SUFFIX_CLASS:[C

    const-string v0, ".java"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;->SUFFIX_java:[C

    const-string v0, ".JAVA"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;->SUFFIX_JAVA:[C

    return-void
.end method

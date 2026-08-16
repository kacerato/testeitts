.class public abstract Lorg/eclipse/jdt/core/compiler/CategorizedProblem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/compiler/IProblem;


# static fields
.field public static final CAT_BUILDPATH:I = 0xa

.field public static final CAT_CODE_STYLE:I = 0x50

.field public static final CAT_COMPLIANCE:I = 0xaa

.field public static final CAT_DEPRECATION:I = 0x6e

.field public static final CAT_IMPORT:I = 0x1e

.field public static final CAT_INTERNAL:I = 0x3c

.field public static final CAT_JAVADOC:I = 0x46

.field public static final CAT_MEMBER:I = 0x32

.field public static final CAT_MODULE:I = 0xa0

.field public static final CAT_NAME_SHADOWING_CONFLICT:I = 0x64

.field public static final CAT_NLS:I = 0x8c

.field public static final CAT_POTENTIAL_PROGRAMMING_PROBLEM:I = 0x5a

.field public static final CAT_RESTRICTION:I = 0x96

.field public static final CAT_SYNTAX:I = 0x14

.field public static final CAT_TYPE:I = 0x28

.field public static final CAT_UNCHECKED_RAW:I = 0x82

.field public static final CAT_UNNECESSARY_CODE:I = 0x78

.field public static final CAT_UNSPECIFIED:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCategoryID()I
.end method

.method public getExtraMarkerAttributeNames()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    return-object v0
.end method

.method public getExtraMarkerAttributeValues()[Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->EMPTY_VALUES:[Ljava/lang/Object;

    return-object v0
.end method

.method public abstract getMarkerType()Ljava/lang/String;
.end method

.method public isInfo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.class public final enum Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/ast/Annotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnnotationTargetAllowed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

.field public static final enum NO:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

.field public static final enum TYPE_ANNOTATION_ON_QUALIFIED_NAME:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

.field public static final enum YES:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    const-string v1, "YES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;->YES:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    const-string v2, "TYPE_ANNOTATION_ON_QUALIFIED_NAME"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;->TYPE_ANNOTATION_ON_QUALIFIED_NAME:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    const-string v3, "NO"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;->NO:Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    filled-new-array {v0, v1, v2}, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;->ENUM$VALUES:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;
    .locals 1

    const-class v0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;->ENUM$VALUES:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    array-length v1, v0

    new-array v2, v1, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation$AnnotationTargetAllowed;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

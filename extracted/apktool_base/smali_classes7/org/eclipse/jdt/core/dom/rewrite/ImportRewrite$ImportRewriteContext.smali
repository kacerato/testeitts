.class public abstract Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$ImportRewriteContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ImportRewriteContext"
.end annotation


# static fields
.field public static final KIND_STATIC_FIELD:I = 0x2

.field public static final KIND_STATIC_METHOD:I = 0x3

.field public static final KIND_TYPE:I = 0x1

.field public static final RES_NAME_CONFLICT:I = 0x3

.field public static final RES_NAME_FOUND:I = 0x1

.field public static final RES_NAME_UNKNOWN:I = 0x2

.field public static final RES_NAME_UNKNOWN_NEEDS_EXPLICIT_IMPORT:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract findInContext(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public removeRedundantTypeAnnotations([Lorg/eclipse/jdt/core/dom/IAnnotationBinding;Lorg/eclipse/jdt/core/dom/rewrite/ImportRewrite$TypeLocation;Lorg/eclipse/jdt/core/dom/ITypeBinding;)[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;
    .locals 0

    return-object p1
.end method

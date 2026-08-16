.class enum Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode$3;
.super Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4001
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;-><init>(Ljava/lang/String;ILorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;)V

    return-void
.end method


# virtual methods
.method public requiredNullableMatchesAll()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toDetail()Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;->OVERRIDE:Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching$CheckMode;

    return-object v0
.end method

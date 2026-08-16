.class public Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/formatter/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WrapPolicy"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DISABLE_WRAP:Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

.field public static final FORCE_FIRST_COLUMN:Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

.field public static final SUBSTITUTE_ONLY:Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;


# instance fields
.field public final extraIndent:I

.field public final groupEndIndex:I

.field public final indentOnColumn:Z

.field public final isFirstInGroup:Z

.field public final penaltyMultiplier:F

.field public final structureDepth:I

.field public final wrapMode:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

.field public final wrapParentIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    sget-object v1, Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;->DISABLED:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;-><init>(Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;II)V

    sput-object v0, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->DISABLE_WRAP:Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    invoke-direct {v0, v1, v2, v2}, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;-><init>(Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;II)V

    sput-object v0, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->SUBSTITUTE_ONLY:Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    new-instance v0, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    invoke-direct {v0, v1, v2, v2}, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;-><init>(Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;II)V

    sput-object v0, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->FORCE_FIRST_COLUMN:Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;II)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    .line 10
    invoke-direct/range {v0 .. v8}, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;-><init>(Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;IIIIFZZ)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;IIIIFZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->wrapMode:Lorg/eclipse/jdt/internal/formatter/Token$WrapMode;

    .line 3
    iput p2, p0, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->wrapParentIndex:I

    .line 4
    iput p3, p0, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->groupEndIndex:I

    .line 5
    iput p4, p0, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->extraIndent:I

    .line 6
    iput p5, p0, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->structureDepth:I

    .line 7
    iput p6, p0, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->penaltyMultiplier:F

    .line 8
    iput-boolean p7, p0, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->isFirstInGroup:Z

    .line 9
    iput-boolean p8, p0, Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;->indentOnColumn:Z

    return-void
.end method

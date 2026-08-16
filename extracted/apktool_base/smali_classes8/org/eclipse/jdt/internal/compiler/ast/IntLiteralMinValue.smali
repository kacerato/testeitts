.class public Lorg/eclipse/jdt/internal/compiler/ast/IntLiteralMinValue;
.super Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;
.source "SourceFile"


# static fields
.field static final CharValue:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteralMinValue;->CharValue:[C

    return-void

    :array_0
    .array-data 2
        0x2ds
        0x32s
        0x31s
        0x34s
        0x37s
        0x34s
        0x38s
        0x33s
        0x36s
        0x34s
        0x38s
    .end array-data
.end method

.method public constructor <init>([C[CII)V
    .locals 8

    const/high16 v0, -0x80000000

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/impl/IntConstant;->fromValue(I)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v7

    const/high16 v6, -0x80000000

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/compiler/ast/IntLiteral;-><init>([C[CIIILorg/eclipse/jdt/internal/compiler/impl/Constant;)V

    return-void
.end method


# virtual methods
.method public computeConstant()V
    .locals 0

    return-void
.end method

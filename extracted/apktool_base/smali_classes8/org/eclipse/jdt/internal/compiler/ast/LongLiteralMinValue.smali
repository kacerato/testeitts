.class public Lorg/eclipse/jdt/internal/compiler/ast/LongLiteralMinValue;
.super Lorg/eclipse/jdt/internal/compiler/ast/LongLiteral;
.source "SourceFile"


# static fields
.field static final CharValue:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x15

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/LongLiteralMinValue;->CharValue:[C

    return-void

    :array_0
    .array-data 2
        0x2ds
        0x39s
        0x32s
        0x32s
        0x33s
        0x33s
        0x37s
        0x32s
        0x30s
        0x33s
        0x36s
        0x38s
        0x35s
        0x34s
        0x37s
        0x37s
        0x35s
        0x38s
        0x30s
        0x38s
        0x4cs
    .end array-data
.end method

.method public constructor <init>([C[CII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/ast/LongLiteral;-><init>([C[CII)V

    const-wide/high16 p1, -0x8000000000000000L

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/impl/LongConstant;->fromValue(J)Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    return-void
.end method


# virtual methods
.method public computeConstant()V
    .locals 0

    return-void
.end method

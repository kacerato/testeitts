.class public abstract Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final CAPTURE:I = 0x6

.field protected static final COMPATIBLE:I = 0x1

.field static final EXCEPTIONS_CONTAINED:I = 0x7

.field protected static final FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

.field protected static final POTENTIALLY_COMPATIBLE:I = 0x8

.field protected static final SAME:I = 0x4

.field protected static final SUBTYPE:I = 0x2

.field protected static final SUPERTYPE:I = 0x3

.field protected static final TRUE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

.field protected static final TYPE_ARGUMENT_CONTAINED:I = 0x5


# instance fields
.field protected relation:I

.field protected right:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult$1;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult$1;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->TRUE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult$2;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult$2;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReductionResult;->FALSE:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintTypeFormula;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static relationToString(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown type relation "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const-string p0, " \u2192? "

    return-object p0

    :pswitch_2
    const-string p0, " captureOf "

    return-object p0

    :pswitch_3
    const-string p0, " <= "

    return-object p0

    :pswitch_4
    const-string p0, " = "

    return-object p0

    :pswitch_5
    const-string p0, " :> "

    return-object p0

    :pswitch_6
    const-string p0, " <: "

    return-object p0

    :pswitch_7
    const-string p0, " \u2192 "

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

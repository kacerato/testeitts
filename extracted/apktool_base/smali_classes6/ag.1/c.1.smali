.class public final enum Lag/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lag/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lag/c;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCharDirectionality.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CharDirectionality.kt\nkotlin/text/CharDirectionality\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,124:1\n1220#2,2:125\n1249#2,4:127\n*S KotlinDebug\n*F\n+ 1 CharDirectionality.kt\nkotlin/text/CharDirectionality\n*L\n118#1:125,2\n118#1:127,4\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nCharDirectionality.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CharDirectionality.kt\nkotlin/text/CharDirectionality\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,124:1\n1220#2,2:125\n1249#2,4:127\n*S KotlinDebug\n*F\n+ 1 CharDirectionality.kt\nkotlin/text/CharDirectionality\n*L\n118#1:125,2\n118#1:127,4\n*E\n"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[Lag/c;

.field public static final enum ARABIC_NUMBER:Lag/c;

.field public static final enum BOUNDARY_NEUTRAL:Lag/c;

.field public static final enum COMMON_NUMBER_SEPARATOR:Lag/c;

.field public static final Companion:Lag/c$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum EUROPEAN_NUMBER:Lag/c;

.field public static final enum EUROPEAN_NUMBER_SEPARATOR:Lag/c;

.field public static final enum EUROPEAN_NUMBER_TERMINATOR:Lag/c;

.field public static final enum LEFT_TO_RIGHT:Lag/c;

.field public static final enum LEFT_TO_RIGHT_EMBEDDING:Lag/c;

.field public static final enum LEFT_TO_RIGHT_OVERRIDE:Lag/c;

.field public static final enum NONSPACING_MARK:Lag/c;

.field public static final enum OTHER_NEUTRALS:Lag/c;

.field public static final enum PARAGRAPH_SEPARATOR:Lag/c;

.field public static final enum POP_DIRECTIONAL_FORMAT:Lag/c;

.field public static final enum RIGHT_TO_LEFT:Lag/c;

.field public static final enum RIGHT_TO_LEFT_ARABIC:Lag/c;

.field public static final enum RIGHT_TO_LEFT_EMBEDDING:Lag/c;

.field public static final enum RIGHT_TO_LEFT_OVERRIDE:Lag/c;

.field public static final enum SEGMENT_SEPARATOR:Lag/c;

.field public static final enum UNDEFINED:Lag/c;

.field public static final enum WHITESPACE:Lag/c;

.field private static final directionalityMap$delegate:Lnf/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnf/I<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lag/c;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lag/c;

    const/4 v1, -0x1

    const-string v2, "UNDEFINED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lag/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lag/c;->UNDEFINED:Lag/c;

    new-instance v0, Lag/c;

    const-string v1, "LEFT_TO_RIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lag/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lag/c;->LEFT_TO_RIGHT:Lag/c;

    new-instance v0, Lag/c;

    const-string v1, "RIGHT_TO_LEFT"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lag/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lag/c;->RIGHT_TO_LEFT:Lag/c;

    new-instance v0, Lag/c;

    const-string v1, "RIGHT_TO_LEFT_ARABIC"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lag/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lag/c;->RIGHT_TO_LEFT_ARABIC:Lag/c;

    new-instance v0, Lag/c;

    const-string v1, "EUROPEAN_NUMBER"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lag/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lag/c;->EUROPEAN_NUMBER:Lag/c;

    new-instance v0, Lag/c;

    const-string v1, "EUROPEAN_NUMBER_SEPARATOR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lag/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lag/c;->EUROPEAN_NUMBER_SEPARATOR:Lag/c;

    new-instance v0, Lag/c;

    const-string v1, "EUROPEAN_NUMBER_TERMINATOR"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2}, Lag/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lag/c;->EUROPEAN_NUMBER_TERMINATOR:Lag/c;

    new-instance v0, Lag/c;

    const-string v1, "ARABIC_NUMBER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lag/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lag/c;->ARABIC_NUMBER:Lag/c;

    new-instance v0, Lag/c;

    const-string v1, "COMMON_NUMBER_SEPARATOR"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v2}, Lag/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lag/c;->COMMON_NUMBER_SEPARATOR:Lag/c;

    new-instance v0, Lag/c;

    const-string v1, "NONSPACING_MARK"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lag/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lag/c;->NONSPACING_MARK:Lag/c;

    new-instance v0, Lag/c;

    const-string v1, "BOUNDARY_NEUTRAL"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v2}, Lag/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lag/c;->BOUNDARY_NEUTRAL:Lag/c;

    new-instance v0, Lag/c;

    const-string v1, "PARAGRAPH_SEPARATOR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v3}, Lag/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lag/c;->PARAGRAPH_SEPARATOR:Lag/c;

    new-instance v0, Lag/c;

    const-string v1, "SEGMENT_SEPARATOR"

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3, v2}, Lag/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lag/c;->SEGMENT_SEPARATOR:Lag/c;

    new-instance v0, Lag/c;

    const-string v1, "WHITESPACE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v3}, Lag/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lag/c;->WHITESPACE:Lag/c;

    new-instance v0, Lag/c;

    const-string v1, "OTHER_NEUTRALS"

    const/16 v3, 0xe

    invoke-direct {v0, v1, v3, v2}, Lag/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lag/c;->OTHER_NEUTRALS:Lag/c;

    new-instance v0, Lag/c;

    const-string v1, "LEFT_TO_RIGHT_EMBEDDING"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v3}, Lag/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lag/c;->LEFT_TO_RIGHT_EMBEDDING:Lag/c;

    new-instance v0, Lag/c;

    const-string v1, "LEFT_TO_RIGHT_OVERRIDE"

    const/16 v3, 0x10

    invoke-direct {v0, v1, v3, v2}, Lag/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lag/c;->LEFT_TO_RIGHT_OVERRIDE:Lag/c;

    new-instance v0, Lag/c;

    const-string v1, "RIGHT_TO_LEFT_EMBEDDING"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v3}, Lag/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lag/c;->RIGHT_TO_LEFT_EMBEDDING:Lag/c;

    new-instance v0, Lag/c;

    const-string v1, "RIGHT_TO_LEFT_OVERRIDE"

    const/16 v3, 0x12

    invoke-direct {v0, v1, v3, v2}, Lag/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lag/c;->RIGHT_TO_LEFT_OVERRIDE:Lag/c;

    new-instance v0, Lag/c;

    const-string v1, "POP_DIRECTIONAL_FORMAT"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2, v3}, Lag/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lag/c;->POP_DIRECTIONAL_FORMAT:Lag/c;

    invoke-static {}, Lag/c;->b()[Lag/c;

    move-result-object v0

    sput-object v0, Lag/c;->$VALUES:[Lag/c;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, Lag/c;->$ENTRIES:LCf/a;

    new-instance v0, Lag/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lag/c$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lag/c;->Companion:Lag/c$a;

    new-instance v0, Lag/b;

    invoke-direct {v0}, Lag/b;-><init>()V

    invoke-static {v0}, Lnf/K;->a(LMf/a;)Lnf/I;

    move-result-object v0

    sput-object v0, Lag/c;->directionalityMap$delegate:Lnf/I;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lag/c;->value:I

    return-void
.end method

.method public static synthetic a()Ljava/util/Map;
    .locals 1

    invoke-static {}, Lag/c;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic b()[Lag/c;
    .locals 20

    sget-object v0, Lag/c;->UNDEFINED:Lag/c;

    sget-object v1, Lag/c;->LEFT_TO_RIGHT:Lag/c;

    sget-object v2, Lag/c;->RIGHT_TO_LEFT:Lag/c;

    sget-object v3, Lag/c;->RIGHT_TO_LEFT_ARABIC:Lag/c;

    sget-object v4, Lag/c;->EUROPEAN_NUMBER:Lag/c;

    sget-object v5, Lag/c;->EUROPEAN_NUMBER_SEPARATOR:Lag/c;

    sget-object v6, Lag/c;->EUROPEAN_NUMBER_TERMINATOR:Lag/c;

    sget-object v7, Lag/c;->ARABIC_NUMBER:Lag/c;

    sget-object v8, Lag/c;->COMMON_NUMBER_SEPARATOR:Lag/c;

    sget-object v9, Lag/c;->NONSPACING_MARK:Lag/c;

    sget-object v10, Lag/c;->BOUNDARY_NEUTRAL:Lag/c;

    sget-object v11, Lag/c;->PARAGRAPH_SEPARATOR:Lag/c;

    sget-object v12, Lag/c;->SEGMENT_SEPARATOR:Lag/c;

    sget-object v13, Lag/c;->WHITESPACE:Lag/c;

    sget-object v14, Lag/c;->OTHER_NEUTRALS:Lag/c;

    sget-object v15, Lag/c;->LEFT_TO_RIGHT_EMBEDDING:Lag/c;

    sget-object v16, Lag/c;->LEFT_TO_RIGHT_OVERRIDE:Lag/c;

    sget-object v17, Lag/c;->RIGHT_TO_LEFT_EMBEDDING:Lag/c;

    sget-object v18, Lag/c;->RIGHT_TO_LEFT_OVERRIDE:Lag/c;

    sget-object v19, Lag/c;->POP_DIRECTIONAL_FORMAT:Lag/c;

    filled-new-array/range {v0 .. v19}, [Lag/c;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic c()Lnf/I;
    .locals 1

    sget-object v0, Lag/c;->directionalityMap$delegate:Lnf/I;

    return-object v0
.end method

.method public static final d()Ljava/util/Map;
    .locals 4

    invoke-static {}, Lag/c;->e()LCf/a;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lpf/I;->d0(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lpf/n0;->j(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, LVf/u;->w(II)I

    move-result v1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lag/c;

    iget v3, v3, Lag/c;->value:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static e()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "Lag/c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lag/c;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lag/c;
    .locals 1

    const-class v0, Lag/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lag/c;

    return-object p0
.end method

.method public static values()[Lag/c;
    .locals 1

    sget-object v0, Lag/c;->$VALUES:[Lag/c;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lag/c;

    return-object v0
.end method


# virtual methods
.method public final g()I
    .locals 1

    iget v0, p0, Lag/c;->value:I

    return v0
.end method

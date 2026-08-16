.class public final enum Lag/x;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lag/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lag/x;",
        ">;",
        "Lag/j;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[Lag/x;

.field public static final enum CANON_EQ:Lag/x;

.field public static final enum COMMENTS:Lag/x;

.field public static final enum DOT_MATCHES_ALL:Lag/x;

.field public static final enum IGNORE_CASE:Lag/x;

.field public static final enum LITERAL:Lag/x;

.field public static final enum MULTILINE:Lag/x;

.field public static final enum UNIX_LINES:Lag/x;


# instance fields
.field private final mask:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v7, Lag/x;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v1, "IGNORE_CASE"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lag/x;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/x;)V

    sput-object v7, Lag/x;->IGNORE_CASE:Lag/x;

    new-instance v0, Lag/x;

    const/4 v13, 0x2

    const/4 v14, 0x0

    const-string v9, "MULTILINE"

    const/4 v10, 0x1

    const/16 v11, 0x8

    const/4 v12, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lag/x;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/x;)V

    sput-object v0, Lag/x;->MULTILINE:Lag/x;

    new-instance v0, Lag/x;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-string v2, "LITERAL"

    const/16 v4, 0x10

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lag/x;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/x;)V

    sput-object v0, Lag/x;->LITERAL:Lag/x;

    new-instance v0, Lag/x;

    const-string v9, "UNIX_LINES"

    const/4 v10, 0x3

    const/4 v11, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lag/x;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/x;)V

    sput-object v0, Lag/x;->UNIX_LINES:Lag/x;

    new-instance v0, Lag/x;

    const-string v2, "COMMENTS"

    const/4 v3, 0x4

    const/4 v4, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lag/x;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/x;)V

    sput-object v0, Lag/x;->COMMENTS:Lag/x;

    new-instance v0, Lag/x;

    const-string v9, "DOT_MATCHES_ALL"

    const/4 v10, 0x5

    const/16 v11, 0x20

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lag/x;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/x;)V

    sput-object v0, Lag/x;->DOT_MATCHES_ALL:Lag/x;

    new-instance v0, Lag/x;

    const-string v2, "CANON_EQ"

    const/4 v3, 0x6

    const/16 v4, 0x80

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lag/x;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/x;)V

    sput-object v0, Lag/x;->CANON_EQ:Lag/x;

    invoke-static {}, Lag/x;->b()[Lag/x;

    move-result-object v0

    sput-object v0, Lag/x;->$VALUES:[Lag/x;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, Lag/x;->$ENTRIES:LCf/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lag/x;->value:I

    iput p4, p0, Lag/x;->mask:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIIILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    move p4, p3

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lag/x;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method public static final synthetic b()[Lag/x;
    .locals 7

    sget-object v0, Lag/x;->IGNORE_CASE:Lag/x;

    sget-object v1, Lag/x;->MULTILINE:Lag/x;

    sget-object v2, Lag/x;->LITERAL:Lag/x;

    sget-object v3, Lag/x;->UNIX_LINES:Lag/x;

    sget-object v4, Lag/x;->COMMENTS:Lag/x;

    sget-object v5, Lag/x;->DOT_MATCHES_ALL:Lag/x;

    sget-object v6, Lag/x;->CANON_EQ:Lag/x;

    filled-new-array/range {v0 .. v6}, [Lag/x;

    move-result-object v0

    return-object v0
.end method

.method public static c()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "Lag/x;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lag/x;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lag/x;
    .locals 1

    const-class v0, Lag/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lag/x;

    return-object p0
.end method

.method public static values()[Lag/x;
    .locals 1

    sget-object v0, Lag/x;->$VALUES:[Lag/x;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lag/x;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lag/x;->mask:I

    return v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lag/x;->value:I

    return v0
.end method

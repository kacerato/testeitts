.class public final enum LDc/d$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LDc/d$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LDc/d$a;

.field public static final enum Byte:LDc/d$a;

.field public static final enum Double:LDc/d$a;

.field public static final enum Float:LDc/d$a;

.field public static final enum Half:LDc/d$a;

.field public static final enum Int:LDc/d$a;

.field public static final enum Short:LDc/d$a;

.field public static final enum UnsignedByte:LDc/d$a;

.field public static final enum UnsignedInt:LDc/d$a;

.field public static final enum UnsignedShort:LDc/d$a;


# instance fields
.field private final componentSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LDc/d$a;

    const-string v1, "Half"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, LDc/d$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, LDc/d$a;->Half:LDc/d$a;

    new-instance v0, LDc/d$a;

    const-string v1, "Float"

    const/4 v2, 0x1

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v4}, LDc/d$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, LDc/d$a;->Float:LDc/d$a;

    new-instance v0, LDc/d$a;

    const-string v1, "Double"

    const/16 v5, 0x8

    invoke-direct {v0, v1, v3, v5}, LDc/d$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, LDc/d$a;->Double:LDc/d$a;

    new-instance v0, LDc/d$a;

    const-string v1, "Byte"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, LDc/d$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, LDc/d$a;->Byte:LDc/d$a;

    new-instance v0, LDc/d$a;

    const-string v1, "UnsignedByte"

    invoke-direct {v0, v1, v4, v2}, LDc/d$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, LDc/d$a;->UnsignedByte:LDc/d$a;

    new-instance v0, LDc/d$a;

    const-string v1, "Short"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, LDc/d$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, LDc/d$a;->Short:LDc/d$a;

    new-instance v0, LDc/d$a;

    const-string v1, "UnsignedShort"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, LDc/d$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, LDc/d$a;->UnsignedShort:LDc/d$a;

    new-instance v0, LDc/d$a;

    const-string v1, "Int"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, LDc/d$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, LDc/d$a;->Int:LDc/d$a;

    new-instance v0, LDc/d$a;

    const-string v1, "UnsignedInt"

    invoke-direct {v0, v1, v5, v4}, LDc/d$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, LDc/d$a;->UnsignedInt:LDc/d$a;

    invoke-static {}, LDc/d$a;->a()[LDc/d$a;

    move-result-object v0

    sput-object v0, LDc/d$a;->$VALUES:[LDc/d$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "componentSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LDc/d$a;->componentSize:I

    return-void
.end method

.method public static synthetic a()[LDc/d$a;
    .locals 9

    sget-object v0, LDc/d$a;->Half:LDc/d$a;

    sget-object v1, LDc/d$a;->Float:LDc/d$a;

    sget-object v2, LDc/d$a;->Double:LDc/d$a;

    sget-object v3, LDc/d$a;->Byte:LDc/d$a;

    sget-object v4, LDc/d$a;->UnsignedByte:LDc/d$a;

    sget-object v5, LDc/d$a;->Short:LDc/d$a;

    sget-object v6, LDc/d$a;->UnsignedShort:LDc/d$a;

    sget-object v7, LDc/d$a;->Int:LDc/d$a;

    sget-object v8, LDc/d$a;->UnsignedInt:LDc/d$a;

    filled-new-array/range {v0 .. v8}, [LDc/d$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LDc/d$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, LDc/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LDc/d$a;

    return-object p0
.end method

.method public static values()[LDc/d$a;
    .locals 1

    sget-object v0, LDc/d$a;->$VALUES:[LDc/d$a;

    invoke-virtual {v0}, [LDc/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LDc/d$a;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, LDc/d$a;->componentSize:I

    return v0
.end method

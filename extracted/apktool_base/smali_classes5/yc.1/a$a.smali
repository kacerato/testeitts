.class public final enum Lyc/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lyc/a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lyc/a$a;

.field public static final enum COLOR:Lyc/a$a;

.field public static final enum FLOAT16:Lyc/a$a;

.field public static final enum FLOAT32:Lyc/a$a;

.field public static final enum NORMAL_VECTOR:Lyc/a$a;

.field public static final enum SIGNED_BYTE_NORMALIZED:Lyc/a$a;

.field public static final enum UNSIGNED_BYTE:Lyc/a$a;

.field public static final enum UNSIGNED_BYTE_NORMALIZED:Lyc/a$a;


# instance fields
.field private final nativeType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lyc/a$a;

    const-string v1, "SIGNED_BYTE_NORMALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lyc/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lyc/a$a;->SIGNED_BYTE_NORMALIZED:Lyc/a$a;

    new-instance v0, Lyc/a$a;

    const-string v1, "NORMAL_VECTOR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lyc/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lyc/a$a;->NORMAL_VECTOR:Lyc/a$a;

    new-instance v0, Lyc/a$a;

    const-string v1, "UNSIGNED_BYTE_NORMALIZED"

    const/4 v2, 0x2

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v4}, Lyc/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lyc/a$a;->UNSIGNED_BYTE_NORMALIZED:Lyc/a$a;

    new-instance v0, Lyc/a$a;

    const-string v1, "COLOR"

    invoke-direct {v0, v1, v4, v4}, Lyc/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lyc/a$a;->COLOR:Lyc/a$a;

    new-instance v0, Lyc/a$a;

    const-string v1, "UNSIGNED_BYTE"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4, v4}, Lyc/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lyc/a$a;->UNSIGNED_BYTE:Lyc/a$a;

    new-instance v0, Lyc/a$a;

    const-string v1, "FLOAT16"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v4, v3}, Lyc/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lyc/a$a;->FLOAT16:Lyc/a$a;

    new-instance v0, Lyc/a$a;

    const-string v1, "FLOAT32"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2}, Lyc/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lyc/a$a;->FLOAT32:Lyc/a$a;

    invoke-static {}, Lyc/a$a;->a()[Lyc/a$a;

    move-result-object v0

    sput-object v0, Lyc/a$a;->$VALUES:[Lyc/a$a;

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
            "nativeType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lyc/a$a;->nativeType:I

    return-void
.end method

.method public static synthetic a()[Lyc/a$a;
    .locals 7

    sget-object v0, Lyc/a$a;->SIGNED_BYTE_NORMALIZED:Lyc/a$a;

    sget-object v1, Lyc/a$a;->NORMAL_VECTOR:Lyc/a$a;

    sget-object v2, Lyc/a$a;->UNSIGNED_BYTE_NORMALIZED:Lyc/a$a;

    sget-object v3, Lyc/a$a;->COLOR:Lyc/a$a;

    sget-object v4, Lyc/a$a;->UNSIGNED_BYTE:Lyc/a$a;

    sget-object v5, Lyc/a$a;->FLOAT16:Lyc/a$a;

    sget-object v6, Lyc/a$a;->FLOAT32:Lyc/a$a;

    filled-new-array/range {v0 .. v6}, [Lyc/a$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lyc/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lyc/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyc/a$a;

    return-object p0
.end method

.method public static values()[Lyc/a$a;
    .locals 1

    sget-object v0, Lyc/a$a;->$VALUES:[Lyc/a$a;

    invoke-virtual {v0}, [Lyc/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyc/a$a;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lyc/a$a;->nativeType:I

    return v0
.end method

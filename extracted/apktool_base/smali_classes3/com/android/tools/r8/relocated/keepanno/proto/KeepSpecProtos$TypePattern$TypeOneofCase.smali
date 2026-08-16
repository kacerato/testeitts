.class public final enum Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/QI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TypeOneofCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;",
        ">;",
        "Lcom/android/tools/r8/internal/QI;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;

.field public static final enum ARRAY:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;

.field public static final enum CLASS_PATTERN:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;

.field public static final enum PRIMITIVE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;

.field public static final enum TYPEONEOF_NOT_SET:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;

    const-string v1, "PRIMITIVE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;->PRIMITIVE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;

    new-instance v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;

    const-string v4, "ARRAY"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;->ARRAY:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;

    new-instance v3, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;

    const-string v4, "CLASS_PATTERN"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v5, v6}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;->CLASS_PATTERN:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;

    new-instance v4, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;

    const-string v5, "TYPEONEOF_NOT_SET"

    invoke-direct {v4, v5, v6, v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;->TYPEONEOF_NOT_SET:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;

    filled-new-array {v0, v1, v3, v4}, [Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;->$VALUES:[Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;->CLASS_PATTERN:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;->ARRAY:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;->PRIMITIVE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;

    return-object p0

    :cond_3
    sget-object p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;->TYPEONEOF_NOT_SET:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;

    return-object p0
.end method

.method public static valueOf(I)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;->forNumber(I)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;
    .locals 1

    .line 1
    const-class v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;

    return-object p0
.end method

.method public static values()[Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;->$VALUES:[Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;

    invoke-virtual {v0}, [Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;->value:I

    return v0
.end method

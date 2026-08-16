.class public final enum Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/QI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeclOneofCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;",
        ">;",
        "Lcom/android/tools/r8/internal/QI;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;

.field public static final enum CHECK:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;

.field public static final enum DECLONEOF_NOT_SET:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;

.field public static final enum EDGE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;

    const-string v1, "EDGE"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;->EDGE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;

    new-instance v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;

    const/4 v4, 0x1

    const/4 v5, 0x3

    const-string v6, "CHECK"

    invoke-direct {v1, v6, v4, v5}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;->CHECK:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;

    new-instance v4, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;

    const-string v5, "DECLONEOF_NOT_SET"

    invoke-direct {v4, v5, v3, v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;->DECLONEOF_NOT_SET:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;

    filled-new-array {v0, v1, v4}, [Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;->$VALUES:[Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;

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

    iput p3, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;->CHECK:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;->EDGE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;->DECLONEOF_NOT_SET:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;

    return-object p0
.end method

.method public static valueOf(I)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;->forNumber(I)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;
    .locals 1

    .line 1
    const-class v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;

    return-object p0
.end method

.method public static values()[Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;->$VALUES:[Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;

    invoke-virtual {v0}, [Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;->value:I

    return v0
.end method

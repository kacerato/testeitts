.class public final enum Lcom/android/tools/r8/DiagnosticsLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/DiagnosticsLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ERROR:Lcom/android/tools/r8/DiagnosticsLevel;

.field public static final enum INFO:Lcom/android/tools/r8/DiagnosticsLevel;

.field public static final enum NONE:Lcom/android/tools/r8/DiagnosticsLevel;

.field public static final enum WARNING:Lcom/android/tools/r8/DiagnosticsLevel;

.field private static final synthetic b:[Lcom/android/tools/r8/DiagnosticsLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/tools/r8/DiagnosticsLevel;

    const/4 v1, 0x0

    const-string v2, "ERROR"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/DiagnosticsLevel;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/DiagnosticsLevel;->ERROR:Lcom/android/tools/r8/DiagnosticsLevel;

    new-instance v1, Lcom/android/tools/r8/DiagnosticsLevel;

    const/4 v2, 0x1

    const-string v3, "WARNING"

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/DiagnosticsLevel;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/android/tools/r8/DiagnosticsLevel;->WARNING:Lcom/android/tools/r8/DiagnosticsLevel;

    new-instance v2, Lcom/android/tools/r8/DiagnosticsLevel;

    const/4 v3, 0x2

    const-string v4, "INFO"

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/DiagnosticsLevel;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/android/tools/r8/DiagnosticsLevel;->INFO:Lcom/android/tools/r8/DiagnosticsLevel;

    new-instance v3, Lcom/android/tools/r8/DiagnosticsLevel;

    const/4 v4, 0x3

    const-string v5, "NONE"

    invoke-direct {v3, v4, v5}, Lcom/android/tools/r8/DiagnosticsLevel;-><init>(ILjava/lang/String;)V

    sput-object v3, Lcom/android/tools/r8/DiagnosticsLevel;->NONE:Lcom/android/tools/r8/DiagnosticsLevel;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/tools/r8/DiagnosticsLevel;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/DiagnosticsLevel;->b:[Lcom/android/tools/r8/DiagnosticsLevel;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/tools/r8/DiagnosticsLevel;
    .locals 1

    const-class v0, Lcom/android/tools/r8/DiagnosticsLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/DiagnosticsLevel;

    return-object p0
.end method

.method public static values()[Lcom/android/tools/r8/DiagnosticsLevel;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/DiagnosticsLevel;->b:[Lcom/android/tools/r8/DiagnosticsLevel;

    invoke-virtual {v0}, [Lcom/android/tools/r8/DiagnosticsLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/DiagnosticsLevel;

    return-object v0
.end method

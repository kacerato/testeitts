.class public final enum Lcom/android/tools/r8/AndroidResourceInput$Kind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/AndroidResourceInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/AndroidResourceInput$Kind;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum KEEP_RULE_FILE:Lcom/android/tools/r8/AndroidResourceInput$Kind;

.field public static final enum MANIFEST:Lcom/android/tools/r8/AndroidResourceInput$Kind;

.field public static final enum RESOURCE_TABLE:Lcom/android/tools/r8/AndroidResourceInput$Kind;

.field public static final enum RES_FOLDER_FILE:Lcom/android/tools/r8/AndroidResourceInput$Kind;

.field public static final enum UNKNOWN:Lcom/android/tools/r8/AndroidResourceInput$Kind;

.field public static final enum XML_FILE:Lcom/android/tools/r8/AndroidResourceInput$Kind;

.field private static final synthetic b:[Lcom/android/tools/r8/AndroidResourceInput$Kind;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/tools/r8/AndroidResourceInput$Kind;

    const/4 v1, 0x0

    const-string v2, "MANIFEST"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/AndroidResourceInput$Kind;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/AndroidResourceInput$Kind;->MANIFEST:Lcom/android/tools/r8/AndroidResourceInput$Kind;

    new-instance v1, Lcom/android/tools/r8/AndroidResourceInput$Kind;

    const/4 v2, 0x1

    const-string v3, "RESOURCE_TABLE"

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/AndroidResourceInput$Kind;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/android/tools/r8/AndroidResourceInput$Kind;->RESOURCE_TABLE:Lcom/android/tools/r8/AndroidResourceInput$Kind;

    new-instance v2, Lcom/android/tools/r8/AndroidResourceInput$Kind;

    const/4 v3, 0x2

    const-string v4, "XML_FILE"

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/AndroidResourceInput$Kind;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/android/tools/r8/AndroidResourceInput$Kind;->XML_FILE:Lcom/android/tools/r8/AndroidResourceInput$Kind;

    new-instance v3, Lcom/android/tools/r8/AndroidResourceInput$Kind;

    const/4 v4, 0x3

    const-string v5, "RES_FOLDER_FILE"

    invoke-direct {v3, v4, v5}, Lcom/android/tools/r8/AndroidResourceInput$Kind;-><init>(ILjava/lang/String;)V

    sput-object v3, Lcom/android/tools/r8/AndroidResourceInput$Kind;->RES_FOLDER_FILE:Lcom/android/tools/r8/AndroidResourceInput$Kind;

    new-instance v4, Lcom/android/tools/r8/AndroidResourceInput$Kind;

    const/4 v5, 0x4

    const-string v6, "KEEP_RULE_FILE"

    invoke-direct {v4, v5, v6}, Lcom/android/tools/r8/AndroidResourceInput$Kind;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/android/tools/r8/AndroidResourceInput$Kind;->KEEP_RULE_FILE:Lcom/android/tools/r8/AndroidResourceInput$Kind;

    new-instance v5, Lcom/android/tools/r8/AndroidResourceInput$Kind;

    const/4 v6, 0x5

    const-string v7, "UNKNOWN"

    invoke-direct {v5, v6, v7}, Lcom/android/tools/r8/AndroidResourceInput$Kind;-><init>(ILjava/lang/String;)V

    sput-object v5, Lcom/android/tools/r8/AndroidResourceInput$Kind;->UNKNOWN:Lcom/android/tools/r8/AndroidResourceInput$Kind;

    filled-new-array/range {v0 .. v5}, [Lcom/android/tools/r8/AndroidResourceInput$Kind;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/AndroidResourceInput$Kind;->b:[Lcom/android/tools/r8/AndroidResourceInput$Kind;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/tools/r8/AndroidResourceInput$Kind;
    .locals 1

    const-class v0, Lcom/android/tools/r8/AndroidResourceInput$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/AndroidResourceInput$Kind;

    return-object p0
.end method

.method public static values()[Lcom/android/tools/r8/AndroidResourceInput$Kind;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/AndroidResourceInput$Kind;->b:[Lcom/android/tools/r8/AndroidResourceInput$Kind;

    invoke-virtual {v0}, [Lcom/android/tools/r8/AndroidResourceInput$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/AndroidResourceInput$Kind;

    return-object v0
.end method

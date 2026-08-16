.class public final enum Lcom/android/tools/r8/OutputMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/OutputMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ClassFile:Lcom/android/tools/r8/OutputMode;

.field public static final enum DexFilePerClass:Lcom/android/tools/r8/OutputMode;

.field public static final enum DexFilePerClassFile:Lcom/android/tools/r8/OutputMode;

.field public static final enum DexIndexed:Lcom/android/tools/r8/OutputMode;

.field private static final synthetic b:[Lcom/android/tools/r8/OutputMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/tools/r8/OutputMode;

    const/4 v1, 0x0

    const-string v2, "DexIndexed"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/OutputMode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/OutputMode;->DexIndexed:Lcom/android/tools/r8/OutputMode;

    new-instance v1, Lcom/android/tools/r8/OutputMode;

    const/4 v2, 0x1

    const-string v3, "DexFilePerClassFile"

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/OutputMode;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/android/tools/r8/OutputMode;->DexFilePerClassFile:Lcom/android/tools/r8/OutputMode;

    new-instance v2, Lcom/android/tools/r8/OutputMode;

    const/4 v3, 0x2

    const-string v4, "DexFilePerClass"

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/OutputMode;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/android/tools/r8/OutputMode;->DexFilePerClass:Lcom/android/tools/r8/OutputMode;

    new-instance v3, Lcom/android/tools/r8/OutputMode;

    const/4 v4, 0x3

    const-string v5, "ClassFile"

    invoke-direct {v3, v4, v5}, Lcom/android/tools/r8/OutputMode;-><init>(ILjava/lang/String;)V

    sput-object v3, Lcom/android/tools/r8/OutputMode;->ClassFile:Lcom/android/tools/r8/OutputMode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/tools/r8/OutputMode;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/OutputMode;->b:[Lcom/android/tools/r8/OutputMode;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/tools/r8/OutputMode;
    .locals 1

    const-class v0, Lcom/android/tools/r8/OutputMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/OutputMode;

    return-object p0
.end method

.method public static values()[Lcom/android/tools/r8/OutputMode;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/OutputMode;->b:[Lcom/android/tools/r8/OutputMode;

    invoke-virtual {v0}, [Lcom/android/tools/r8/OutputMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/OutputMode;

    return-object v0
.end method

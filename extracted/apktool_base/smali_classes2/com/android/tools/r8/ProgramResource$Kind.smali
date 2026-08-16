.class public final enum Lcom/android/tools/r8/ProgramResource$Kind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/ProgramResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/ProgramResource$Kind;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CF:Lcom/android/tools/r8/ProgramResource$Kind;

.field public static final enum DEX:Lcom/android/tools/r8/ProgramResource$Kind;

.field private static final synthetic b:[Lcom/android/tools/r8/ProgramResource$Kind;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/tools/r8/ProgramResource$Kind;

    const/4 v1, 0x0

    const-string v2, "CF"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/ProgramResource$Kind;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/ProgramResource$Kind;->CF:Lcom/android/tools/r8/ProgramResource$Kind;

    new-instance v1, Lcom/android/tools/r8/ProgramResource$Kind;

    const/4 v2, 0x1

    const-string v3, "DEX"

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/ProgramResource$Kind;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/android/tools/r8/ProgramResource$Kind;->DEX:Lcom/android/tools/r8/ProgramResource$Kind;

    filled-new-array {v0, v1}, [Lcom/android/tools/r8/ProgramResource$Kind;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/ProgramResource$Kind;->b:[Lcom/android/tools/r8/ProgramResource$Kind;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/tools/r8/ProgramResource$Kind;
    .locals 1

    const-class v0, Lcom/android/tools/r8/ProgramResource$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/ProgramResource$Kind;

    return-object p0
.end method

.method public static values()[Lcom/android/tools/r8/ProgramResource$Kind;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/ProgramResource$Kind;->b:[Lcom/android/tools/r8/ProgramResource$Kind;

    invoke-virtual {v0}, [Lcom/android/tools/r8/ProgramResource$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/ProgramResource$Kind;

    return-object v0
.end method

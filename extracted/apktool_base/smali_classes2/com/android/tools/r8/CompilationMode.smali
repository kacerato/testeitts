.class public final enum Lcom/android/tools/r8/CompilationMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/CompilationMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEBUG:Lcom/android/tools/r8/CompilationMode;

.field public static final enum RELEASE:Lcom/android/tools/r8/CompilationMode;

.field private static final synthetic b:[Lcom/android/tools/r8/CompilationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/tools/r8/CompilationMode;

    const/4 v1, 0x0

    const-string v2, "DEBUG"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/CompilationMode;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/CompilationMode;->DEBUG:Lcom/android/tools/r8/CompilationMode;

    new-instance v1, Lcom/android/tools/r8/CompilationMode;

    const/4 v2, 0x1

    const-string v3, "RELEASE"

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/CompilationMode;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/android/tools/r8/CompilationMode;->RELEASE:Lcom/android/tools/r8/CompilationMode;

    filled-new-array {v0, v1}, [Lcom/android/tools/r8/CompilationMode;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/CompilationMode;->b:[Lcom/android/tools/r8/CompilationMode;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/tools/r8/CompilationMode;
    .locals 1

    const-class v0, Lcom/android/tools/r8/CompilationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/CompilationMode;

    return-object p0
.end method

.method public static values()[Lcom/android/tools/r8/CompilationMode;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/CompilationMode;->b:[Lcom/android/tools/r8/CompilationMode;

    invoke-virtual {v0}, [Lcom/android/tools/r8/CompilationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/CompilationMode;

    return-object v0
.end method


# virtual methods
.method public isDebug()Z
    .locals 1

    sget-object v0, Lcom/android/tools/r8/CompilationMode;->DEBUG:Lcom/android/tools/r8/CompilationMode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRelease()Z
    .locals 1

    sget-object v0, Lcom/android/tools/r8/CompilationMode;->RELEASE:Lcom/android/tools/r8/CompilationMode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

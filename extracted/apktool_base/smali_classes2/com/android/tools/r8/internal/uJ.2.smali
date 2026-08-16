.class public final enum Lcom/android/tools/r8/internal/uJ;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/uJ;

.field public static final enum c:Lcom/android/tools/r8/internal/uJ;

.field public static final enum d:Lcom/android/tools/r8/internal/uJ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/uJ;

    const/4 v1, 0x0

    const-string v2, "DexIndexed"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/uJ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/uJ;->b:Lcom/android/tools/r8/internal/uJ;

    new-instance v0, Lcom/android/tools/r8/internal/uJ;

    const/4 v1, 0x1

    const-string v2, "DexFilePerClassFile"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/uJ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/uJ;->c:Lcom/android/tools/r8/internal/uJ;

    new-instance v0, Lcom/android/tools/r8/internal/uJ;

    const/4 v1, 0x2

    const-string v2, "ClassFile"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/uJ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/uJ;->d:Lcom/android/tools/r8/internal/uJ;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/uJ;->d:Lcom/android/tools/r8/internal/uJ;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

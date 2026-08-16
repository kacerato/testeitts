.class public final enum Lcom/android/tools/r8/internal/nJ$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/nJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/internal/nJ$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/nJ$f;

.field public static final enum c:Lcom/android/tools/r8/internal/nJ$f;

.field public static final synthetic d:[Lcom/android/tools/r8/internal/nJ$f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/nJ$f;

    const/4 v1, 0x0

    const-string v2, "OFF"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/nJ$f;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/nJ$f;->b:Lcom/android/tools/r8/internal/nJ$f;

    new-instance v1, Lcom/android/tools/r8/internal/nJ$f;

    const/4 v2, 0x1

    const-string v3, "ON"

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/internal/nJ$f;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/android/tools/r8/internal/nJ$f;->c:Lcom/android/tools/r8/internal/nJ$f;

    filled-new-array {v0, v1}, [Lcom/android/tools/r8/internal/nJ$f;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/nJ$f;->d:[Lcom/android/tools/r8/internal/nJ$f;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/android/tools/r8/internal/nJ$f;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/nJ$f;->d:[Lcom/android/tools/r8/internal/nJ$f;

    invoke-virtual {v0}, [Lcom/android/tools/r8/internal/nJ$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/internal/nJ$f;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/nJ$f;->b:Lcom/android/tools/r8/internal/nJ$f;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Z
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/nJ$f;->c:Lcom/android/tools/r8/internal/nJ$f;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

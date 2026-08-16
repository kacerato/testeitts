.class public final enum Lcom/android/tools/r8/dex/W$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/dex/W;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/dex/W$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/android/tools/r8/dex/W$a;

.field public static final enum c:Lcom/android/tools/r8/dex/W$a;

.field public static final synthetic d:[Lcom/android/tools/r8/dex/W$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/tools/r8/dex/W$a;

    const/4 v1, 0x0

    const-string v2, "CF"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/dex/W$a;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/dex/W$a;->b:Lcom/android/tools/r8/dex/W$a;

    new-instance v1, Lcom/android/tools/r8/dex/W$a;

    const/4 v2, 0x1

    const-string v3, "DEX"

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/dex/W$a;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/android/tools/r8/dex/W$a;->c:Lcom/android/tools/r8/dex/W$a;

    filled-new-array {v0, v1}, [Lcom/android/tools/r8/dex/W$a;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/dex/W$a;->d:[Lcom/android/tools/r8/dex/W$a;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/android/tools/r8/dex/W$a;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/dex/W$a;->d:[Lcom/android/tools/r8/dex/W$a;

    invoke-virtual {v0}, [Lcom/android/tools/r8/dex/W$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/dex/W$a;

    return-object v0
.end method

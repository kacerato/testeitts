.class public final enum Lcom/android/tools/r8/dex/W$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/dex/W;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/dex/W$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/android/tools/r8/dex/W$b;

.field public static final enum c:Lcom/android/tools/r8/dex/W$b;

.field public static final enum d:Lcom/android/tools/r8/dex/W$b;

.field public static final enum e:Lcom/android/tools/r8/dex/W$b;

.field public static final enum f:Lcom/android/tools/r8/dex/W$b;

.field public static final enum g:Lcom/android/tools/r8/dex/W$b;

.field public static final enum h:Lcom/android/tools/r8/dex/W$b;

.field public static final enum i:Lcom/android/tools/r8/dex/W$b;

.field public static final synthetic j:[Lcom/android/tools/r8/dex/W$b;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/android/tools/r8/dex/W$b;

    const/4 v1, 0x0

    const-string v2, "D8"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/dex/W$b;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/dex/W$b;->b:Lcom/android/tools/r8/dex/W$b;

    new-instance v1, Lcom/android/tools/r8/dex/W$b;

    const/4 v2, 0x1

    const-string v3, "GlobalSyntheticsGenerator"

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/dex/W$b;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/android/tools/r8/dex/W$b;->c:Lcom/android/tools/r8/dex/W$b;

    new-instance v2, Lcom/android/tools/r8/dex/W$b;

    const/4 v3, 0x2

    const-string v4, "L8"

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/dex/W$b;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/android/tools/r8/dex/W$b;->d:Lcom/android/tools/r8/dex/W$b;

    new-instance v3, Lcom/android/tools/r8/dex/W$b;

    const/4 v4, 0x3

    const-string v5, "R8"

    invoke-direct {v3, v4, v5}, Lcom/android/tools/r8/dex/W$b;-><init>(ILjava/lang/String;)V

    sput-object v3, Lcom/android/tools/r8/dex/W$b;->e:Lcom/android/tools/r8/dex/W$b;

    new-instance v4, Lcom/android/tools/r8/dex/W$b;

    const/4 v5, 0x4

    const-string v6, "R8Partial"

    invoke-direct {v4, v5, v6}, Lcom/android/tools/r8/dex/W$b;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/android/tools/r8/dex/W$b;->f:Lcom/android/tools/r8/dex/W$b;

    new-instance v5, Lcom/android/tools/r8/dex/W$b;

    const/4 v6, 0x5

    const-string v7, "Relocator"

    invoke-direct {v5, v6, v7}, Lcom/android/tools/r8/dex/W$b;-><init>(ILjava/lang/String;)V

    sput-object v5, Lcom/android/tools/r8/dex/W$b;->g:Lcom/android/tools/r8/dex/W$b;

    new-instance v6, Lcom/android/tools/r8/dex/W$b;

    const/4 v7, 0x6

    const-string v8, "TraceReferences"

    invoke-direct {v6, v7, v8}, Lcom/android/tools/r8/dex/W$b;-><init>(ILjava/lang/String;)V

    sput-object v6, Lcom/android/tools/r8/dex/W$b;->h:Lcom/android/tools/r8/dex/W$b;

    new-instance v7, Lcom/android/tools/r8/dex/W$b;

    const/4 v8, 0x7

    const-string v9, "R8Assistant"

    invoke-direct {v7, v8, v9}, Lcom/android/tools/r8/dex/W$b;-><init>(ILjava/lang/String;)V

    sput-object v7, Lcom/android/tools/r8/dex/W$b;->i:Lcom/android/tools/r8/dex/W$b;

    filled-new-array/range {v0 .. v7}, [Lcom/android/tools/r8/dex/W$b;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/dex/W$b;->j:[Lcom/android/tools/r8/dex/W$b;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lcom/android/tools/r8/dex/W$b;
    .locals 2

    sget-object v0, Lcom/android/tools/r8/dex/W$b;->b:Lcom/android/tools/r8/dex/W$b;

    sget-object v1, Lcom/android/tools/r8/dex/W$b;->e:Lcom/android/tools/r8/dex/W$b;

    filled-new-array {v0, v1}, [Lcom/android/tools/r8/dex/W$b;

    move-result-object v0

    return-object v0
.end method

.method public static values()[Lcom/android/tools/r8/dex/W$b;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/dex/W$b;->j:[Lcom/android/tools/r8/dex/W$b;

    invoke-virtual {v0}, [Lcom/android/tools/r8/dex/W$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/dex/W$b;

    return-object v0
.end method

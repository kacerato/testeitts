.class public final enum Lcom/android/tools/r8/internal/Ew0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/Ew0;

.field public static final enum c:Lcom/android/tools/r8/internal/Ew0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/Ew0;

    const/4 v1, 0x0

    const-string v2, "DEAD"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/Ew0;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Ew0;->b:Lcom/android/tools/r8/internal/Ew0;

    new-instance v0, Lcom/android/tools/r8/internal/Ew0;

    const/4 v1, 0x1

    const-string v2, "NOT_DEAD"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/Ew0;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Ew0;->c:Lcom/android/tools/r8/internal/Ew0;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

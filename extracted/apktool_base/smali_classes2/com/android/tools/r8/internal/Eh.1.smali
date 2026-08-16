.class public final enum Lcom/android/tools/r8/internal/Eh;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/Eh;

.field public static final enum c:Lcom/android/tools/r8/internal/Eh;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/Eh;

    const/4 v1, 0x0

    const-string v2, "CONSTRAINTS"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/Eh;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Eh;->b:Lcom/android/tools/r8/internal/Eh;

    new-instance v0, Lcom/android/tools/r8/internal/Eh;

    const/4 v1, 0x1

    const-string v2, "ADDITIONS"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/Eh;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Eh;->c:Lcom/android/tools/r8/internal/Eh;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

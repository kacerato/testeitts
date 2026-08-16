.class public final enum Lcom/android/tools/r8/internal/ay;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/ay;

.field public static final enum c:Lcom/android/tools/r8/internal/ay;

.field public static final enum d:Lcom/android/tools/r8/internal/ay;

.field public static final enum e:Lcom/android/tools/r8/internal/ay;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/ay;

    const/4 v1, 0x0

    const-string v2, "STATIC"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/ay;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/ay;->b:Lcom/android/tools/r8/internal/ay;

    new-instance v0, Lcom/android/tools/r8/internal/ay;

    const/4 v1, 0x1

    const-string v2, "VIRTUAL"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/ay;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/ay;->c:Lcom/android/tools/r8/internal/ay;

    new-instance v0, Lcom/android/tools/r8/internal/ay;

    const/4 v1, 0x2

    const-string v2, "INTERFACE"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/ay;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/ay;->d:Lcom/android/tools/r8/internal/ay;

    new-instance v0, Lcom/android/tools/r8/internal/ay;

    const/4 v1, 0x3

    const-string v2, "SPECIAL"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/ay;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/ay;->e:Lcom/android/tools/r8/internal/ay;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

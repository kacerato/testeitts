.class public final enum Lcom/android/tools/r8/internal/Vx0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/Vx0;

.field public static final enum c:Lcom/android/tools/r8/internal/Vx0;

.field public static final enum d:Lcom/android/tools/r8/internal/Vx0;

.field public static final enum e:Lcom/android/tools/r8/internal/Vx0;

.field public static final enum f:Lcom/android/tools/r8/internal/Vx0;

.field public static final enum g:Lcom/android/tools/r8/internal/Vx0;

.field public static final enum h:Lcom/android/tools/r8/internal/Vx0;

.field public static final enum i:Lcom/android/tools/r8/internal/Vx0;

.field public static final enum j:Lcom/android/tools/r8/internal/Vx0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/Vx0;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "INT"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/Vx0;-><init>(Ljava/lang/String;ILjava/io/Serializable;)V

    sput-object v0, Lcom/android/tools/r8/internal/Vx0;->b:Lcom/android/tools/r8/internal/Vx0;

    new-instance v0, Lcom/android/tools/r8/internal/Vx0;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "LONG"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/android/tools/r8/internal/Vx0;-><init>(Ljava/lang/String;ILjava/io/Serializable;)V

    sput-object v0, Lcom/android/tools/r8/internal/Vx0;->c:Lcom/android/tools/r8/internal/Vx0;

    new-instance v0, Lcom/android/tools/r8/internal/Vx0;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "FLOAT"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/android/tools/r8/internal/Vx0;-><init>(Ljava/lang/String;ILjava/io/Serializable;)V

    sput-object v0, Lcom/android/tools/r8/internal/Vx0;->d:Lcom/android/tools/r8/internal/Vx0;

    new-instance v0, Lcom/android/tools/r8/internal/Vx0;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "DOUBLE"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lcom/android/tools/r8/internal/Vx0;-><init>(Ljava/lang/String;ILjava/io/Serializable;)V

    sput-object v0, Lcom/android/tools/r8/internal/Vx0;->e:Lcom/android/tools/r8/internal/Vx0;

    new-instance v0, Lcom/android/tools/r8/internal/Vx0;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "BOOLEAN"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lcom/android/tools/r8/internal/Vx0;-><init>(Ljava/lang/String;ILjava/io/Serializable;)V

    sput-object v0, Lcom/android/tools/r8/internal/Vx0;->f:Lcom/android/tools/r8/internal/Vx0;

    new-instance v0, Lcom/android/tools/r8/internal/Vx0;

    const/4 v1, 0x5

    const-string v2, ""

    const-string v3, "STRING"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/Vx0;-><init>(Ljava/lang/String;ILjava/io/Serializable;)V

    sput-object v0, Lcom/android/tools/r8/internal/Vx0;->g:Lcom/android/tools/r8/internal/Vx0;

    new-instance v0, Lcom/android/tools/r8/internal/Vx0;

    sget-object v1, Lcom/android/tools/r8/internal/m8;->c:Lcom/android/tools/r8/internal/i8;

    const-string v2, "BYTE_STRING"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3, v1}, Lcom/android/tools/r8/internal/Vx0;-><init>(Ljava/lang/String;ILjava/io/Serializable;)V

    sput-object v0, Lcom/android/tools/r8/internal/Vx0;->h:Lcom/android/tools/r8/internal/Vx0;

    new-instance v0, Lcom/android/tools/r8/internal/Vx0;

    const-string v1, "ENUM"

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/Vx0;-><init>(Ljava/lang/String;ILjava/io/Serializable;)V

    sput-object v0, Lcom/android/tools/r8/internal/Vx0;->i:Lcom/android/tools/r8/internal/Vx0;

    new-instance v0, Lcom/android/tools/r8/internal/Vx0;

    const-string v1, "MESSAGE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/Vx0;-><init>(Ljava/lang/String;ILjava/io/Serializable;)V

    sput-object v0, Lcom/android/tools/r8/internal/Vx0;->j:Lcom/android/tools/r8/internal/Vx0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/io/Serializable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

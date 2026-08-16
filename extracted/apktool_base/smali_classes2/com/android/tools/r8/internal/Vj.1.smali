.class public final enum Lcom/android/tools/r8/internal/Vj;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/Vj;

.field public static final enum c:Lcom/android/tools/r8/internal/Vj;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/Vj;

    const/4 v1, 0x0

    const-string v2, "SEEN"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/Vj;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Vj;->b:Lcom/android/tools/r8/internal/Vj;

    new-instance v0, Lcom/android/tools/r8/internal/Vj;

    const/4 v1, 0x1

    const-string v2, "FINISHED"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/Vj;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Vj;->c:Lcom/android/tools/r8/internal/Vj;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

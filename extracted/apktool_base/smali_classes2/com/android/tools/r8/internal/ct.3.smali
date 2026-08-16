.class public final enum Lcom/android/tools/r8/internal/ct;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/ct;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/ct;

    const/4 v1, 0x1

    const-string v2, "NO"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/ct;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/ct;->b:Lcom/android/tools/r8/internal/ct;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

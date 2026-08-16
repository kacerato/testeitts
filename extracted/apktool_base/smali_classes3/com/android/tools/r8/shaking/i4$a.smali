.class public final enum Lcom/android/tools/r8/shaking/i4$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/shaking/i4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/shaking/i4$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/android/tools/r8/shaking/i4$a;

.field public static final enum c:Lcom/android/tools/r8/shaking/i4$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/shaking/i4$a;

    const/4 v1, 0x0

    const-string v2, "CLASS"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/shaking/i4$a;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/shaking/i4$a;->b:Lcom/android/tools/r8/shaking/i4$a;

    new-instance v0, Lcom/android/tools/r8/shaking/i4$a;

    const/4 v1, 0x1

    const-string v2, "TYPE"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/shaking/i4$a;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/shaking/i4$a;->c:Lcom/android/tools/r8/shaking/i4$a;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

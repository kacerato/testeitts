.class public final enum Lcom/android/tools/r8/graph/H3$k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/H3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/graph/H3$k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/android/tools/r8/graph/H3$k;

.field public static final enum c:Lcom/android/tools/r8/graph/H3$k;

.field public static final enum d:Lcom/android/tools/r8/graph/H3$k;

.field public static final enum e:Lcom/android/tools/r8/graph/H3$k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/graph/H3$k;

    const/4 v1, 0x0

    const-string v2, "NOT_AN_ARGUMENT"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/graph/H3$k;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/graph/H3$k;->b:Lcom/android/tools/r8/graph/H3$k;

    new-instance v0, Lcom/android/tools/r8/graph/H3$k;

    const/4 v1, 0x1

    const-string v2, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/graph/H3$k;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/graph/H3$k;->c:Lcom/android/tools/r8/graph/H3$k;

    new-instance v0, Lcom/android/tools/r8/graph/H3$k;

    const/4 v1, 0x2

    const-string v2, "NEGATIVE"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/graph/H3$k;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/graph/H3$k;->d:Lcom/android/tools/r8/graph/H3$k;

    new-instance v0, Lcom/android/tools/r8/graph/H3$k;

    const/4 v1, 0x3

    const-string v2, "POSITIVE"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/graph/H3$k;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/graph/H3$k;->e:Lcom/android/tools/r8/graph/H3$k;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

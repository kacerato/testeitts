.class public abstract enum Lcom/android/tools/r8/internal/d70;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/V60;


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/Z60;

.field public static final enum c:Lcom/android/tools/r8/internal/a70;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Z60;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Z60;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    new-instance v0, Lcom/android/tools/r8/internal/a70;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/a70;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

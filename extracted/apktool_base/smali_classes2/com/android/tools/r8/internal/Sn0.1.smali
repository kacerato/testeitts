.class public final Lcom/android/tools/r8/internal/Sn0;
.super Lcom/android/tools/r8/internal/Un0;
.source "SourceFile"


# static fields
.field public static final e:Lcom/android/tools/r8/internal/Sn0;


# instance fields
.field public final d:Lcom/android/tools/r8/internal/Rn0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/Sn0;

    sget-object v1, Lcom/android/tools/r8/internal/Rn0;->c:Lcom/android/tools/r8/internal/Rn0;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v2, v3, v1}, Lcom/android/tools/r8/internal/Sn0;-><init>(IILcom/android/tools/r8/internal/gt0;Lcom/android/tools/r8/internal/Rn0;)V

    sput-object v0, Lcom/android/tools/r8/internal/Sn0;->e:Lcom/android/tools/r8/internal/Sn0;

    return-void
.end method

.method public constructor <init>(IILcom/android/tools/r8/internal/gt0;Lcom/android/tools/r8/internal/Rn0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/Un0;-><init>(IILcom/android/tools/r8/internal/gt0;)V

    iput-object p4, p0, Lcom/android/tools/r8/internal/Sn0;->d:Lcom/android/tools/r8/internal/Rn0;

    return-void
.end method

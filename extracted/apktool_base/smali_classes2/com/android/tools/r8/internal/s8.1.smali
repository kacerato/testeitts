.class public final Lcom/android/tools/r8/internal/s8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Z


# direct methods
.method public constructor <init>(Ljava/util/Set;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/s8;->a:Ljava/util/Set;

    iput-boolean p2, p0, Lcom/android/tools/r8/internal/s8;->b:Z

    return-void
.end method

.method public static a()Lcom/android/tools/r8/internal/r8;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/r8;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/r8;-><init>()V

    return-object v0
.end method

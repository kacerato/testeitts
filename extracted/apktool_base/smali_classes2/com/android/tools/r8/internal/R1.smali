.class public final Lcom/android/tools/r8/internal/R1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/r6;

.field public final b:Ljava/util/Set;

.field public final c:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/r6;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/r6;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/R1;->a:Lcom/android/tools/r8/internal/r6;

    invoke-static {}, Lcom/android/tools/r8/internal/Al0;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/R1;->b:Ljava/util/Set;

    invoke-static {}, Lcom/android/tools/r8/internal/Al0;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/R1;->c:Ljava/util/Set;

    return-void
.end method

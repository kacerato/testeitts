.class public final Lcom/android/tools/r8/synthesis/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/n6;

.field public final b:Lcom/android/tools/r8/internal/n6;

.field public final c:Lcom/android/tools/r8/internal/n6;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/n6;->a()Lcom/android/tools/r8/internal/n6;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/synthesis/v;->a:Lcom/android/tools/r8/internal/n6;

    invoke-static {}, Lcom/android/tools/r8/internal/n6;->a()Lcom/android/tools/r8/internal/n6;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/synthesis/v;->b:Lcom/android/tools/r8/internal/n6;

    invoke-static {}, Lcom/android/tools/r8/internal/n6;->a()Lcom/android/tools/r8/internal/n6;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/synthesis/v;->c:Lcom/android/tools/r8/internal/n6;

    return-void
.end method

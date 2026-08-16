.class public final Lcom/android/tools/r8/internal/tf0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/r6;

.field public final b:Lcom/android/tools/r8/internal/r6;

.field public final c:Lcom/android/tools/r8/internal/r6;


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

    iput-object v0, p0, Lcom/android/tools/r8/internal/tf0;->a:Lcom/android/tools/r8/internal/r6;

    new-instance v0, Lcom/android/tools/r8/internal/r6;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/r6;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/tf0;->b:Lcom/android/tools/r8/internal/r6;

    new-instance v0, Lcom/android/tools/r8/internal/r6;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/r6;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/tf0;->c:Lcom/android/tools/r8/internal/r6;

    return-void
.end method

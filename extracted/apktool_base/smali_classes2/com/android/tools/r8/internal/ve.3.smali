.class public final Lcom/android/tools/r8/internal/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/we;


# instance fields
.field public final d:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/ve;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/t40;
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/ve;->d:Z

    invoke-static {v0}, Lcom/android/tools/r8/internal/t40;->a(Z)Lcom/android/tools/r8/internal/t40;

    move-result-object v0

    return-object v0
.end method

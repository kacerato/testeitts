.class public abstract Lcom/android/tools/r8/internal/Ff;
.super Lcom/android/tools/r8/internal/Bf;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Ef;

.field public b:I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Ef;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Bf;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/Ff;->b:I

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ff;->a:Lcom/android/tools/r8/internal/Ef;

    return-void
.end method

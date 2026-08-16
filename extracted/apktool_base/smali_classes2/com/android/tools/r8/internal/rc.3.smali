.class public final Lcom/android/tools/r8/internal/rc;
.super Lcom/android/tools/r8/internal/DX;
.source "SourceFile"


# instance fields
.field public final c:I

.field public final d:Lcom/android/tools/r8/internal/he;


# direct methods
.method public constructor <init>(IILcom/android/tools/r8/internal/he;Lcom/android/tools/r8/internal/DX;)V
    .locals 0

    invoke-direct {p0, p1, p4}, Lcom/android/tools/r8/internal/DX;-><init>(ILcom/android/tools/r8/internal/DX;)V

    iput p2, p0, Lcom/android/tools/r8/internal/rc;->c:I

    iput-object p3, p0, Lcom/android/tools/r8/internal/rc;->d:Lcom/android/tools/r8/internal/he;

    return-void
.end method

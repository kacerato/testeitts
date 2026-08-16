.class public final Lcom/android/tools/r8/internal/WA;
.super Lcom/android/tools/r8/internal/ZA;
.source "SourceFile"


# instance fields
.field public final d:Lcom/android/tools/r8/graph/M2;

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/graph/M2;II)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/tools/r8/internal/ZA;-><init>(Lcom/android/tools/r8/internal/W5;I)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/WA;->d:Lcom/android/tools/r8/graph/M2;

    iput p3, p0, Lcom/android/tools/r8/internal/WA;->e:I

    iput p4, p0, Lcom/android/tools/r8/internal/WA;->f:I

    return-void
.end method

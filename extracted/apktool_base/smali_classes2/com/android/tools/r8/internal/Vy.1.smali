.class public final Lcom/android/tools/r8/internal/Vy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final b:I

.field public final c:Lcom/android/tools/r8/internal/Sx0;

.field public final d:Z


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/internal/Sx0;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/Vy;->b:I

    iput-object p2, p0, Lcom/android/tools/r8/internal/Vy;->c:Lcom/android/tools/r8/internal/Sx0;

    iput-boolean p3, p0, Lcom/android/tools/r8/internal/Vy;->d:Z

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/tools/r8/internal/Vy;

    iget v0, p0, Lcom/android/tools/r8/internal/Vy;->b:I

    iget p1, p1, Lcom/android/tools/r8/internal/Vy;->b:I

    sub-int/2addr v0, p1

    return v0
.end method

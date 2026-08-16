.class public final Lcom/android/tools/r8/internal/LI;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lcom/android/tools/r8/graph/M2;

.field public final c:Lcom/android/tools/r8/graph/M2;


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/LI;->a:I

    iput-object p2, p0, Lcom/android/tools/r8/internal/LI;->b:Lcom/android/tools/r8/graph/M2;

    iput-object p3, p0, Lcom/android/tools/r8/internal/LI;->c:Lcom/android/tools/r8/graph/M2;

    return-void
.end method

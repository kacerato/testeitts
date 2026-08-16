.class public final Lcom/android/tools/r8/internal/dC;
.super Lcom/android/tools/r8/internal/G;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/android/tools/r8/internal/hC;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/hC;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/dC;->d:Lcom/android/tools/r8/internal/hC;

    invoke-direct {p0, p2, p3}, Lcom/android/tools/r8/internal/G;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/dC;->d:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

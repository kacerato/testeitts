.class public final Lcom/android/tools/r8/internal/Tx;
.super Lcom/android/tools/r8/internal/G;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/android/tools/r8/internal/Ux;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Ux;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Tx;->d:Lcom/android/tools/r8/internal/Ux;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/android/tools/r8/internal/G;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Tx;->d:Lcom/android/tools/r8/internal/Ux;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Ux;->b:[Ljava/lang/Iterable;

    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

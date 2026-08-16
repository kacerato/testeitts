.class public final Lcom/android/tools/r8/internal/iF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/jF;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/jF;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/iF;->b:Lcom/android/tools/r8/internal/jF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/tools/r8/internal/EF;

    check-cast p2, Lcom/android/tools/r8/internal/EF;

    iget-object v0, p0, Lcom/android/tools/r8/internal/iF;->b:Lcom/android/tools/r8/internal/jF;

    iget-object v0, v0, Lcom/android/tools/r8/internal/jF;->c:Lcom/android/tools/r8/internal/zF;

    iget-object v0, v0, Lcom/android/tools/r8/internal/zF;->j:Lcom/android/tools/r8/internal/gI;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/EF;->a()I

    move-result p1

    invoke-interface {p2}, Lcom/android/tools/r8/internal/EF;->a()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/gI;->a(II)I

    move-result p1

    return p1
.end method

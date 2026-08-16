.class public final Lcom/android/tools/r8/internal/RF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/SF;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/SF;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/RF;->b:Lcom/android/tools/r8/internal/SF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/tools/r8/internal/EF;

    check-cast p2, Lcom/android/tools/r8/internal/EF;

    iget-object v0, p0, Lcom/android/tools/r8/internal/RF;->b:Lcom/android/tools/r8/internal/SF;

    iget-object v0, v0, Lcom/android/tools/r8/internal/SF;->c:Lcom/android/tools/r8/internal/iG;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/EF;->a()I

    invoke-interface {p2}, Lcom/android/tools/r8/internal/EF;->a()I

    const/4 p1, 0x0

    throw p1
.end method

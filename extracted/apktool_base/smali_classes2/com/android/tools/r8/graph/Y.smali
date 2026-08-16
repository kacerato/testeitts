.class public abstract Lcom/android/tools/r8/graph/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/b0;


# instance fields
.field public final b:Lcom/android/tools/r8/graph/E0;

.field public final c:Lcom/android/tools/r8/graph/u2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/u2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/Y;->b:Lcom/android/tools/r8/graph/E0;

    iput-object p2, p0, Lcom/android/tools/r8/graph/Y;->c:Lcom/android/tools/r8/graph/u2;

    return-void
.end method


# virtual methods
.method public final X()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/Y;->b:Lcom/android/tools/r8/graph/E0;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/tools/r8/graph/Y;->c:Lcom/android/tools/r8/graph/u2;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final n()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

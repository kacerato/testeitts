.class public final Lcom/android/tools/r8/internal/Lx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Qx;


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/r;

.field public final synthetic b:Lcom/android/tools/r8/internal/Gx;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/r;Lcom/android/tools/r8/internal/Gx;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Lx;->a:Lcom/android/tools/r8/internal/r;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Lx;->b:Lcom/android/tools/r8/internal/Gx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/Iw0;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/Lx;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Lx;->a:Lcom/android/tools/r8/internal/r;

    new-instance v1, Lcom/android/tools/r8/internal/Pw;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/Pw;-><init>(Lcom/android/tools/r8/graph/l1;)V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/r;->a(Lcom/android/tools/r8/internal/Q5;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lx;->b:Lcom/android/tools/r8/internal/Gx;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Gx;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/Iw0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/aX;Ljava/util/function/Supplier;)Lcom/android/tools/r8/internal/Iw0;
    .locals 1

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/Lx;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Lx;->a:Lcom/android/tools/r8/internal/r;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/r;->a(Lcom/android/tools/r8/internal/Q5;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lx;->b:Lcom/android/tools/r8/internal/Gx;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/Gx;->a(Lcom/android/tools/r8/internal/aX;Ljava/util/function/Supplier;)Lcom/android/tools/r8/internal/Iw0;

    move-result-object p1

    return-object p1
.end method

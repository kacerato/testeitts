.class public final synthetic Lcom/android/tools/r8/internal/Wt1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/es0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/te;

.field public final synthetic b:Lcom/android/tools/r8/internal/fB;

.field public final synthetic c:Lcom/android/tools/r8/internal/dX;

.field public final synthetic d:Lcom/android/tools/r8/internal/Df;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/te;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Wt1;->a:Lcom/android/tools/r8/internal/te;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Wt1;->b:Lcom/android/tools/r8/internal/fB;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Wt1;->c:Lcom/android/tools/r8/internal/dX;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Wt1;->d:Lcom/android/tools/r8/internal/Df;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wt1;->a:Lcom/android/tools/r8/internal/te;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Wt1;->b:Lcom/android/tools/r8/internal/fB;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Wt1;->c:Lcom/android/tools/r8/internal/dX;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Wt1;->d:Lcom/android/tools/r8/internal/Df;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/te;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/internal/we;

    move-result-object v0

    return-object v0
.end method

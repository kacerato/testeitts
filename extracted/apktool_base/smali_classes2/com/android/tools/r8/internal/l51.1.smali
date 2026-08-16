.class public final synthetic Lcom/android/tools/r8/internal/l51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/ax0;

.field public final synthetic c:Lcom/android/tools/r8/internal/jx0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/ax0;Lcom/android/tools/r8/internal/jx0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/l51;->b:Lcom/android/tools/r8/internal/ax0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/l51;->c:Lcom/android/tools/r8/internal/jx0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/l51;->b:Lcom/android/tools/r8/internal/ax0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/l51;->c:Lcom/android/tools/r8/internal/jx0;

    check-cast p1, Lcom/android/tools/r8/shaking/x1;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/ax0;->a(Lcom/android/tools/r8/internal/jx0;Lcom/android/tools/r8/shaking/x1;)V

    return-void
.end method

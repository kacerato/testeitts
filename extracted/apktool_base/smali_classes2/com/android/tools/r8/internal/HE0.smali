.class public final synthetic Lcom/android/tools/r8/internal/HE0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Fg;

.field public final synthetic c:Lcom/android/tools/r8/internal/f6;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Fg;Lcom/android/tools/r8/internal/f6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/HE0;->b:Lcom/android/tools/r8/internal/Fg;

    iput-object p2, p0, Lcom/android/tools/r8/internal/HE0;->c:Lcom/android/tools/r8/internal/f6;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/HE0;->b:Lcom/android/tools/r8/internal/Fg;

    iget-object v1, p0, Lcom/android/tools/r8/internal/HE0;->c:Lcom/android/tools/r8/internal/f6;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Fg;->a(Lcom/android/tools/r8/internal/f6;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

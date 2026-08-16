.class public final synthetic Lcom/android/tools/r8/internal/gd1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/hi;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/hi;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/gd1;->b:Lcom/android/tools/r8/internal/hi;

    iput-object p2, p0, Lcom/android/tools/r8/internal/gd1;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/gd1;->b:Lcom/android/tools/r8/internal/hi;

    iget-object v1, p0, Lcom/android/tools/r8/internal/gd1;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/function/Function;

    invoke-interface {v0, v1, p1}, Lcom/android/tools/r8/internal/hi;->c(Ljava/lang/Object;Ljava/util/function/Function;)V

    return-void
.end method

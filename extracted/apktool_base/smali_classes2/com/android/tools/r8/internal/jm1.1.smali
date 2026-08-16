.class public final synthetic Lcom/android/tools/r8/internal/jm1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/n6;

.field public final synthetic b:Lcom/android/tools/r8/internal/ft0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/n6;Lcom/android/tools/r8/internal/ft0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/jm1;->a:Lcom/android/tools/r8/internal/n6;

    iput-object p2, p0, Lcom/android/tools/r8/internal/jm1;->b:Lcom/android/tools/r8/internal/ft0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/jm1;->a:Lcom/android/tools/r8/internal/n6;

    iget-object v1, p0, Lcom/android/tools/r8/internal/jm1;->b:Lcom/android/tools/r8/internal/ft0;

    check-cast p1, Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/n6;->a(Lcom/android/tools/r8/internal/ft0;Ljava/util/Set;Ljava/lang/Object;)V

    return-void
.end method

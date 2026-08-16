.class public final synthetic Lcom/android/tools/r8/naming/a4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/naming/t;

.field public final synthetic b:Lcom/android/tools/r8/internal/WE;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/naming/t;Lcom/android/tools/r8/internal/WE;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/a4;->a:Lcom/android/tools/r8/naming/t;

    iput-object p2, p0, Lcom/android/tools/r8/naming/a4;->b:Lcom/android/tools/r8/internal/WE;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/naming/a4;->a:Lcom/android/tools/r8/naming/t;

    iget-object v1, p0, Lcom/android/tools/r8/naming/a4;->b:Lcom/android/tools/r8/internal/WE;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/naming/s;->a(Lcom/android/tools/r8/naming/t;Lcom/android/tools/r8/internal/WE;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

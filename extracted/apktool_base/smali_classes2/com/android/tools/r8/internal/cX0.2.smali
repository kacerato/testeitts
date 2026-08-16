.class public final synthetic Lcom/android/tools/r8/internal/cX0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/T8;

.field public final synthetic c:Lcom/android/tools/r8/ClassFileConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/T8;Lcom/android/tools/r8/ClassFileConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/cX0;->b:Lcom/android/tools/r8/internal/T8;

    iput-object p2, p0, Lcom/android/tools/r8/internal/cX0;->c:Lcom/android/tools/r8/ClassFileConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/cX0;->b:Lcom/android/tools/r8/internal/T8;

    iget-object v1, p0, Lcom/android/tools/r8/internal/cX0;->c:Lcom/android/tools/r8/ClassFileConsumer;

    check-cast p1, Lcom/android/tools/r8/internal/Q8;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/T8;->a(Lcom/android/tools/r8/ClassFileConsumer;Lcom/android/tools/r8/internal/Q8;)V

    return-void
.end method

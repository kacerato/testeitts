.class public final synthetic Lcom/android/tools/r8/internal/Ai1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/l6;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/l6;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ai1;->b:Lcom/android/tools/r8/internal/l6;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ai1;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ai1;->b:Lcom/android/tools/r8/internal/l6;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ai1;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/l6;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

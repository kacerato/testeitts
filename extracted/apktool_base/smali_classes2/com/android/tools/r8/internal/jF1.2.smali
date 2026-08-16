.class public final synthetic Lcom/android/tools/r8/internal/jF1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/zi;

.field public final synthetic c:Lcom/android/tools/r8/internal/Ai;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/zi;Lcom/android/tools/r8/internal/Ai;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/jF1;->b:Lcom/android/tools/r8/internal/zi;

    iput-object p2, p0, Lcom/android/tools/r8/internal/jF1;->c:Lcom/android/tools/r8/internal/Ai;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/jF1;->b:Lcom/android/tools/r8/internal/zi;

    iget-object v1, p0, Lcom/android/tools/r8/internal/jF1;->c:Lcom/android/tools/r8/internal/Ai;

    check-cast p1, Lcom/android/tools/r8/internal/Ei;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/zi;->a(Lcom/android/tools/r8/internal/Ai;Lcom/android/tools/r8/internal/Ei;)V

    return-void
.end method

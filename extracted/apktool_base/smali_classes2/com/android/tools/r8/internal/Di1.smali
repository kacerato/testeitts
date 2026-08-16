.class public final synthetic Lcom/android/tools/r8/internal/Di1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Ef;

.field public final synthetic c:Lcom/android/tools/r8/internal/o9;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Ef;Lcom/android/tools/r8/internal/o9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Di1;->b:Lcom/android/tools/r8/internal/Ef;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Di1;->c:Lcom/android/tools/r8/internal/o9;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Di1;->b:Lcom/android/tools/r8/internal/Ef;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Di1;->c:Lcom/android/tools/r8/internal/o9;

    check-cast p1, Lcom/android/tools/r8/internal/j9;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/l9;->a(Lcom/android/tools/r8/internal/Ef;Lcom/android/tools/r8/internal/o9;Lcom/android/tools/r8/internal/j9;)V

    return-void
.end method

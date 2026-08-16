.class public final synthetic Lcom/android/tools/r8/internal/AB0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/hP;

.field public final synthetic c:Lcom/android/tools/r8/internal/RM;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/hP;Lcom/android/tools/r8/internal/RM;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/AB0;->b:Lcom/android/tools/r8/internal/hP;

    iput-object p2, p0, Lcom/android/tools/r8/internal/AB0;->c:Lcom/android/tools/r8/internal/RM;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/AB0;->b:Lcom/android/tools/r8/internal/hP;

    iget-object v1, p0, Lcom/android/tools/r8/internal/AB0;->c:Lcom/android/tools/r8/internal/RM;

    check-cast p1, Lcom/android/tools/r8/internal/ZM;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/CN;->a(Lcom/android/tools/r8/internal/hP;Lcom/android/tools/r8/internal/RM;Lcom/android/tools/r8/internal/ZM;)V

    return-void
.end method

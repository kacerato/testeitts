.class public final synthetic Lcom/android/tools/r8/internal/I31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/ZH;

.field public final synthetic c:Lcom/android/tools/r8/internal/IH;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/ZH;Lcom/android/tools/r8/internal/IH;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/I31;->b:Lcom/android/tools/r8/internal/ZH;

    iput-object p2, p0, Lcom/android/tools/r8/internal/I31;->c:Lcom/android/tools/r8/internal/IH;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/I31;->b:Lcom/android/tools/r8/internal/ZH;

    iget-object v1, p0, Lcom/android/tools/r8/internal/I31;->c:Lcom/android/tools/r8/internal/IH;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Yx;->a(Lcom/android/tools/r8/internal/ZH;Lcom/android/tools/r8/internal/IH;Ljava/lang/Object;)V

    return-void
.end method

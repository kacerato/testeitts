.class public final synthetic Lcom/android/tools/r8/internal/AT0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Pn0;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Pn0;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/AT0;->b:Lcom/android/tools/r8/internal/Pn0;

    iput-boolean p2, p0, Lcom/android/tools/r8/internal/AT0;->c:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/AT0;->b:Lcom/android/tools/r8/internal/Pn0;

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/AT0;->c:Z

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Qn0;->a(Lcom/android/tools/r8/internal/Pn0;ZLjava/util/List;)Lcom/android/tools/r8/internal/Pn0;

    move-result-object p1

    return-object p1
.end method

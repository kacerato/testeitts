.class public final synthetic Lcom/android/tools/r8/internal/vT0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/vT0;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/android/tools/r8/internal/vT0;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/vT0;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vT0;->c:Ljava/util/List;

    check-cast p1, Lcom/android/tools/r8/retrace/RetraceTypeElement;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Qn0;->a(Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceTypeElement;)V

    return-void
.end method

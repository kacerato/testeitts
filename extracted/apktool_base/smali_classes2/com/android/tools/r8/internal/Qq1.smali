.class public final synthetic Lcom/android/tools/r8/internal/Qq1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/QM;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/QM;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Qq1;->b:Lcom/android/tools/r8/internal/QM;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Qq1;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Qq1;->b:Lcom/android/tools/r8/internal/QM;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qq1;->c:Ljava/util/Map;

    check-cast p1, Lcom/android/tools/r8/internal/ZM;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/qP;->a(Lcom/android/tools/r8/internal/QM;Ljava/util/Map;Lcom/android/tools/r8/internal/ZM;)V

    return-void
.end method

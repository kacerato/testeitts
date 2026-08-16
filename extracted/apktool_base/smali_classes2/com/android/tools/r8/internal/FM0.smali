.class public final synthetic Lcom/android/tools/r8/internal/FM0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/Z4$c;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/Z4$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/FM0;->b:Lcom/android/tools/r8/graph/Z4$c;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/FM0;->b:Lcom/android/tools/r8/graph/Z4$c;

    invoke-static {v0}, Lcom/android/tools/r8/internal/MV;->a(Lcom/android/tools/r8/graph/Z4$c;)Lcom/android/tools/r8/internal/NV;

    move-result-object v0

    return-object v0
.end method

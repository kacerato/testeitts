.class public final synthetic Lcom/android/tools/r8/internal/wC0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/TM;

.field public final synthetic c:Lcom/android/tools/r8/internal/BM;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/TM;Lcom/android/tools/r8/internal/BM;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/wC0;->b:Lcom/android/tools/r8/internal/TM;

    iput-object p2, p0, Lcom/android/tools/r8/internal/wC0;->c:Lcom/android/tools/r8/internal/BM;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/wC0;->b:Lcom/android/tools/r8/internal/TM;

    iget-object v1, p0, Lcom/android/tools/r8/internal/wC0;->c:Lcom/android/tools/r8/internal/BM;

    check-cast p1, Lcom/android/tools/r8/shaking/s2;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/DM;->b(Lcom/android/tools/r8/internal/TM;Lcom/android/tools/r8/internal/BM;Lcom/android/tools/r8/shaking/s2;)V

    return-void
.end method

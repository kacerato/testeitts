.class public final synthetic Lcom/android/tools/r8/internal/sN0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/ng0;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/ng0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/sN0;->b:Lcom/android/tools/r8/internal/ng0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/sN0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/sN0;->b:Lcom/android/tools/r8/internal/ng0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/sN0;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/N60;->a(Lcom/android/tools/r8/internal/ng0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

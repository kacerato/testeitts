.class public final Lcom/android/tools/r8/internal/qr0;
.super Lcom/android/tools/r8/internal/yY;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/synthesis/J;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/yY;-><init>()V

    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/qr0;->b:Lcom/android/tools/r8/synthesis/J;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/qr0;->b:Lcom/android/tools/r8/synthesis/J;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/synthesis/J;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/tools/r8/internal/pr0;->b:Lcom/android/tools/r8/internal/pr0;

    return-object p1

    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/pr0;->c:Lcom/android/tools/r8/internal/pr0;

    return-object p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "SyntheticItemsPolicy"

    return-object v0
.end method

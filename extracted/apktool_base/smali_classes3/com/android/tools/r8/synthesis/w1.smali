.class public final synthetic Lcom/android/tools/r8/synthesis/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/nC;

.field public final synthetic c:Lcom/android/tools/r8/internal/nC;

.field public final synthetic d:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/w1;->b:Lcom/android/tools/r8/internal/nC;

    iput-object p2, p0, Lcom/android/tools/r8/synthesis/w1;->c:Lcom/android/tools/r8/internal/nC;

    iput-object p3, p0, Lcom/android/tools/r8/synthesis/w1;->d:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/w1;->b:Lcom/android/tools/r8/internal/nC;

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/w1;->c:Lcom/android/tools/r8/internal/nC;

    iget-object v2, p0, Lcom/android/tools/r8/synthesis/w1;->d:Ljava/util/Set;

    check-cast p1, Lcom/android/tools/r8/synthesis/a0;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/synthesis/z;->a(Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Ljava/util/Set;Lcom/android/tools/r8/synthesis/a0;)V

    return-void
.end method

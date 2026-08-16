.class public final synthetic Lcom/android/tools/r8/internal/zp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/naming/b;

.field public final synthetic c:Ljava/util/Set;

.field public final synthetic d:Lcom/android/tools/r8/internal/K50;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/naming/b;Ljava/util/Set;Lcom/android/tools/r8/internal/K50;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/zp1;->b:Lcom/android/tools/r8/naming/b;

    iput-object p2, p0, Lcom/android/tools/r8/internal/zp1;->c:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/tools/r8/internal/zp1;->d:Lcom/android/tools/r8/internal/K50;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/zp1;->b:Lcom/android/tools/r8/naming/b;

    iget-object v1, p0, Lcom/android/tools/r8/internal/zp1;->c:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/tools/r8/internal/zp1;->d:Lcom/android/tools/r8/internal/K50;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/p80;->a(Lcom/android/tools/r8/naming/b;Ljava/util/Set;Lcom/android/tools/r8/internal/K50;Ljava/lang/String;)V

    return-void
.end method

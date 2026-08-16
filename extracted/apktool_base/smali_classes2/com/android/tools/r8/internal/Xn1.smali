.class public final synthetic Lcom/android/tools/r8/internal/Xn1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/Set;

.field public final synthetic b:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Xn1;->a:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Xn1;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xn1;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Xn1;->b:Ljava/util/Set;

    check-cast p1, Lcom/android/tools/r8/internal/f60;

    check-cast p2, Lcom/android/tools/r8/internal/Yx0;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/o3;->a(Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/f60;Lcom/android/tools/r8/internal/Yx0;)V

    return-void
.end method

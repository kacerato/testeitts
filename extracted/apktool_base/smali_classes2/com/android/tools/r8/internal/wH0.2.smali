.class public final synthetic Lcom/android/tools/r8/internal/wH0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/wH0;->b:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/tools/r8/internal/wH0;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/wH0;->b:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/tools/r8/internal/wH0;->c:Ljava/util/Set;

    check-cast p1, Lcom/android/tools/r8/internal/Aw0;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Hw0;->a(Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/Aw0;)Z

    move-result p1

    return p1
.end method

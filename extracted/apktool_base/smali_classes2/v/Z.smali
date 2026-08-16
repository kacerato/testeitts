.class public final synthetic Lv/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/Z;->b:Ljava/util/Set;

    iput-object p2, p0, Lv/Z;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lv/Z;->b:Ljava/util/Set;

    iget-object v1, p0, Lv/Z;->c:Ljava/util/Set;

    check-cast p1, Lcom/android/tools/r8/internal/W5;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/ir/optimize/W;->a(Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/W5;)V

    return-void
.end method

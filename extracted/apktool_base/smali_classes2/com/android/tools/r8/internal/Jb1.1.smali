.class public final synthetic Lcom/android/tools/r8/internal/Jb1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/hx0;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/hx0;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Jb1;->b:Lcom/android/tools/r8/internal/hx0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Jb1;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Jb1;->b:Lcom/android/tools/r8/internal/hx0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Jb1;->c:Ljava/lang/Object;

    check-cast p1, Lcom/android/tools/r8/internal/lx0;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/fx0;->a(Lcom/android/tools/r8/internal/hx0;Ljava/lang/Object;Lcom/android/tools/r8/internal/lx0;)Z

    move-result p1

    return p1
.end method

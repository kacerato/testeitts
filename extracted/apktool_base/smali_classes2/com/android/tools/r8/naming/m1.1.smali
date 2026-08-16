.class public final synthetic Lcom/android/tools/r8/naming/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/vh;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/vh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/m1;->b:Lcom/android/tools/r8/internal/vh;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/naming/m1;->b:Lcom/android/tools/r8/internal/vh;

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    invoke-static {v0, p1}, Lcom/android/tools/r8/naming/E;->a(Lcom/android/tools/r8/internal/vh;Lcom/android/tools/r8/internal/zE;)Z

    move-result p1

    return p1
.end method

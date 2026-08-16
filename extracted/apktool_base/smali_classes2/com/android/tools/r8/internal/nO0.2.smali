.class public final synthetic Lcom/android/tools/r8/internal/nO0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/naming/V$a;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/naming/V$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/nO0;->b:Lcom/android/tools/r8/naming/V$a;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/nO0;->b:Lcom/android/tools/r8/naming/V$a;

    check-cast p1, Lcom/android/tools/r8/naming/V;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/Nj0;->a(Lcom/android/tools/r8/naming/V$a;Lcom/android/tools/r8/naming/V;)Z

    move-result p1

    return p1
.end method

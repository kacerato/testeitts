.class public final synthetic Lcom/android/tools/r8/internal/gp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/op0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/op0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/gp1;->b:Lcom/android/tools/r8/internal/op0;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/gp1;->b:Lcom/android/tools/r8/internal/op0;

    check-cast p1, Ljava/util/Set;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/op0;->a(Ljava/util/Set;)Z

    move-result p1

    return p1
.end method

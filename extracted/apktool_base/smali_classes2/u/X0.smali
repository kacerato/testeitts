.class public final synthetic Lu/X0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Oa0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Oa0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/X0;->b:Lcom/android/tools/r8/internal/Oa0;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lu/X0;->b:Lcom/android/tools/r8/internal/Oa0;

    check-cast p1, Lcom/android/tools/r8/dex/t0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Oa0;->a(Lcom/android/tools/r8/dex/t0;)Z

    move-result p1

    return p1
.end method

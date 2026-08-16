.class public final synthetic Lu/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/dex/Q;

.field public final synthetic c:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/dex/Q;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/X;->b:Lcom/android/tools/r8/dex/Q;

    iput-object p2, p0, Lu/X;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lu/X;->b:Lcom/android/tools/r8/dex/Q;

    iget-object v1, p0, Lu/X;->c:Ljava/util/Set;

    check-cast p1, Lcom/android/tools/r8/dex/t0;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/dex/Q;->d(Ljava/util/Set;Lcom/android/tools/r8/dex/t0;)Z

    move-result p1

    return p1
.end method

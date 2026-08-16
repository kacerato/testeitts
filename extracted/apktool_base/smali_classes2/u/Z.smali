.class public final synthetic Lu/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/dex/Q;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/dex/Q;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/Z;->b:Lcom/android/tools/r8/dex/Q;

    iput-object p2, p0, Lu/Z;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lu/Z;->b:Lcom/android/tools/r8/dex/Q;

    iget-object v1, p0, Lu/Z;->c:Ljava/util/List;

    check-cast p1, Lcom/android/tools/r8/dex/t0;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/dex/Q;->b(Ljava/util/List;Lcom/android/tools/r8/dex/t0;)Z

    move-result p1

    return p1
.end method

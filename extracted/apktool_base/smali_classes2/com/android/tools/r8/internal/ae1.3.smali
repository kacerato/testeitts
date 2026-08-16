.class public final synthetic Lcom/android/tools/r8/internal/ae1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/iO;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/iO;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ae1;->b:Lcom/android/tools/r8/internal/iO;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ae1;->b:Lcom/android/tools/r8/internal/iO;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/iO;->a(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method
